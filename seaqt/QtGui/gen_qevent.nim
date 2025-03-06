import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qevent.cpp", cflags).}


type QWheelEventEnumEnum* = distinct cint
template DefaultDeltasPerStep*(_: type QWheelEventEnumEnum): untyped = 120


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
  ../QtCore/gen_qnamespace_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qaction_types,
  ./gen_qeventpoint_types,
  ./gen_qinputdevice_types,
  ./gen_qkeysequence_types,
  ./gen_qpointingdevice_types,
  ./gen_qregion_types,
  ./gen_qscreen_types
export
  gen_qcoreevent,
  gen_qfile_types,
  gen_qmimedata_types,
  gen_qnamespace_types,
  gen_qobject_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qaction_types,
  gen_qeventpoint_types,
  gen_qinputdevice_types,
  gen_qkeysequence_types,
  gen_qpointingdevice_types,
  gen_qregion_types,
  gen_qscreen_types

type cQInputEvent*{.exportc: "QInputEvent", incompleteStruct.} = object
type cQPointerEvent*{.exportc: "QPointerEvent", incompleteStruct.} = object
type cQSinglePointEvent*{.exportc: "QSinglePointEvent", incompleteStruct.} = object
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
type cQTouchEvent*{.exportc: "QTouchEvent", incompleteStruct.} = object
type cQScrollPrepareEvent*{.exportc: "QScrollPrepareEvent", incompleteStruct.} = object
type cQScrollEvent*{.exportc: "QScrollEvent", incompleteStruct.} = object
type cQScreenOrientationChangeEvent*{.exportc: "QScreenOrientationChangeEvent", incompleteStruct.} = object
type cQApplicationStateChangeEvent*{.exportc: "QApplicationStateChangeEvent", incompleteStruct.} = object
type cQInputMethodEventAttribute*{.exportc: "QInputMethodEvent__Attribute", incompleteStruct.} = object

proc fcQInputEvent_new(typeVal: cint, m_dev: pointer): ptr cQInputEvent {.importc: "QInputEvent_new".}
proc fcQInputEvent_new2(typeVal: cint, m_dev: pointer, modifiers: cint): ptr cQInputEvent {.importc: "QInputEvent_new2".}
proc fcQInputEvent_clone(self: pointer, ): pointer {.importc: "QInputEvent_clone".}
proc fcQInputEvent_device(self: pointer, ): pointer {.importc: "QInputEvent_device".}
proc fcQInputEvent_deviceType(self: pointer, ): cint {.importc: "QInputEvent_deviceType".}
proc fcQInputEvent_modifiers(self: pointer, ): cint {.importc: "QInputEvent_modifiers".}
proc fcQInputEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QInputEvent_setModifiers".}
proc fcQInputEvent_timestamp(self: pointer, ): culonglong {.importc: "QInputEvent_timestamp".}
proc fcQInputEvent_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QInputEvent_setTimestamp".}
proc fQInputEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QInputEvent_virtualbase_clone".}
proc fcQInputEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QInputEvent_override_virtual_clone".}
proc fQInputEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QInputEvent_virtualbase_setTimestamp".}
proc fcQInputEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QInputEvent_override_virtual_setTimestamp".}
proc fQInputEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QInputEvent_virtualbase_setAccepted".}
proc fcQInputEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QInputEvent_override_virtual_setAccepted".}
proc fcQInputEvent_delete(self: pointer) {.importc: "QInputEvent_delete".}
proc fcQPointerEvent_new(typeVal: cint, dev: pointer): ptr cQPointerEvent {.importc: "QPointerEvent_new".}
proc fcQPointerEvent_new2(typeVal: cint, dev: pointer, modifiers: cint): ptr cQPointerEvent {.importc: "QPointerEvent_new2".}
proc fcQPointerEvent_new3(typeVal: cint, dev: pointer, modifiers: cint, points: struct_miqt_array): ptr cQPointerEvent {.importc: "QPointerEvent_new3".}
proc fcQPointerEvent_clone(self: pointer, ): pointer {.importc: "QPointerEvent_clone".}
proc fcQPointerEvent_pointingDevice(self: pointer, ): pointer {.importc: "QPointerEvent_pointingDevice".}
proc fcQPointerEvent_pointerType(self: pointer, ): cint {.importc: "QPointerEvent_pointerType".}
proc fcQPointerEvent_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QPointerEvent_setTimestamp".}
proc fcQPointerEvent_pointCount(self: pointer, ): int64 {.importc: "QPointerEvent_pointCount".}
proc fcQPointerEvent_point(self: pointer, i: int64): pointer {.importc: "QPointerEvent_point".}
proc fcQPointerEvent_points(self: pointer, ): struct_miqt_array {.importc: "QPointerEvent_points".}
proc fcQPointerEvent_pointById(self: pointer, id: cint): pointer {.importc: "QPointerEvent_pointById".}
proc fcQPointerEvent_allPointsGrabbed(self: pointer, ): bool {.importc: "QPointerEvent_allPointsGrabbed".}
proc fcQPointerEvent_isBeginEvent(self: pointer, ): bool {.importc: "QPointerEvent_isBeginEvent".}
proc fcQPointerEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QPointerEvent_isUpdateEvent".}
proc fcQPointerEvent_isEndEvent(self: pointer, ): bool {.importc: "QPointerEvent_isEndEvent".}
proc fcQPointerEvent_allPointsAccepted(self: pointer, ): bool {.importc: "QPointerEvent_allPointsAccepted".}
proc fcQPointerEvent_setAccepted(self: pointer, accepted: bool): void {.importc: "QPointerEvent_setAccepted".}
proc fcQPointerEvent_exclusiveGrabber(self: pointer, point: pointer): pointer {.importc: "QPointerEvent_exclusiveGrabber".}
proc fcQPointerEvent_setExclusiveGrabber(self: pointer, point: pointer, exclusiveGrabber: pointer): void {.importc: "QPointerEvent_setExclusiveGrabber".}
proc fcQPointerEvent_clearPassiveGrabbers(self: pointer, point: pointer): void {.importc: "QPointerEvent_clearPassiveGrabbers".}
proc fcQPointerEvent_addPassiveGrabber(self: pointer, point: pointer, grabber: pointer): bool {.importc: "QPointerEvent_addPassiveGrabber".}
proc fcQPointerEvent_removePassiveGrabber(self: pointer, point: pointer, grabber: pointer): bool {.importc: "QPointerEvent_removePassiveGrabber".}
proc fQPointerEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QPointerEvent_virtualbase_clone".}
proc fcQPointerEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_clone".}
proc fQPointerEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QPointerEvent_virtualbase_setTimestamp".}
proc fcQPointerEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_setTimestamp".}
proc fQPointerEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QPointerEvent_virtualbase_isBeginEvent".}
proc fcQPointerEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_isBeginEvent".}
proc fQPointerEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QPointerEvent_virtualbase_isUpdateEvent".}
proc fcQPointerEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_isUpdateEvent".}
proc fQPointerEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QPointerEvent_virtualbase_isEndEvent".}
proc fcQPointerEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_isEndEvent".}
proc fQPointerEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QPointerEvent_virtualbase_setAccepted".}
proc fcQPointerEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QPointerEvent_override_virtual_setAccepted".}
proc fcQPointerEvent_delete(self: pointer) {.importc: "QPointerEvent_delete".}
proc fcQSinglePointEvent_clone(self: pointer, ): pointer {.importc: "QSinglePointEvent_clone".}
proc fcQSinglePointEvent_button(self: pointer, ): cint {.importc: "QSinglePointEvent_button".}
proc fcQSinglePointEvent_buttons(self: pointer, ): cint {.importc: "QSinglePointEvent_buttons".}
proc fcQSinglePointEvent_position(self: pointer, ): pointer {.importc: "QSinglePointEvent_position".}
proc fcQSinglePointEvent_scenePosition(self: pointer, ): pointer {.importc: "QSinglePointEvent_scenePosition".}
proc fcQSinglePointEvent_globalPosition(self: pointer, ): pointer {.importc: "QSinglePointEvent_globalPosition".}
proc fcQSinglePointEvent_isBeginEvent(self: pointer, ): bool {.importc: "QSinglePointEvent_isBeginEvent".}
proc fcQSinglePointEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QSinglePointEvent_isUpdateEvent".}
proc fcQSinglePointEvent_isEndEvent(self: pointer, ): bool {.importc: "QSinglePointEvent_isEndEvent".}
proc fcQSinglePointEvent_exclusivePointGrabber(self: pointer, ): pointer {.importc: "QSinglePointEvent_exclusivePointGrabber".}
proc fcQSinglePointEvent_setExclusivePointGrabber(self: pointer, exclusiveGrabber: pointer): void {.importc: "QSinglePointEvent_setExclusivePointGrabber".}
proc fcQSinglePointEvent_delete(self: pointer) {.importc: "QSinglePointEvent_delete".}
proc fcQEnterEvent_new(localPos: pointer, scenePos: pointer, globalPos: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new".}
proc fcQEnterEvent_new2(localPos: pointer, scenePos: pointer, globalPos: pointer, device: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new2".}
proc fcQEnterEvent_clone(self: pointer, ): pointer {.importc: "QEnterEvent_clone".}
proc fcQEnterEvent_pos(self: pointer, ): pointer {.importc: "QEnterEvent_pos".}
proc fcQEnterEvent_globalPos(self: pointer, ): pointer {.importc: "QEnterEvent_globalPos".}
proc fcQEnterEvent_x(self: pointer, ): cint {.importc: "QEnterEvent_x".}
proc fcQEnterEvent_y(self: pointer, ): cint {.importc: "QEnterEvent_y".}
proc fcQEnterEvent_globalX(self: pointer, ): cint {.importc: "QEnterEvent_globalX".}
proc fcQEnterEvent_globalY(self: pointer, ): cint {.importc: "QEnterEvent_globalY".}
proc fcQEnterEvent_localPos(self: pointer, ): pointer {.importc: "QEnterEvent_localPos".}
proc fcQEnterEvent_windowPos(self: pointer, ): pointer {.importc: "QEnterEvent_windowPos".}
proc fcQEnterEvent_screenPos(self: pointer, ): pointer {.importc: "QEnterEvent_screenPos".}
proc fQEnterEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QEnterEvent_virtualbase_clone".}
proc fcQEnterEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_clone".}
proc fQEnterEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QEnterEvent_virtualbase_isBeginEvent".}
proc fcQEnterEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_isBeginEvent".}
proc fQEnterEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QEnterEvent_virtualbase_isUpdateEvent".}
proc fcQEnterEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_isUpdateEvent".}
proc fQEnterEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QEnterEvent_virtualbase_isEndEvent".}
proc fcQEnterEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_isEndEvent".}
proc fQEnterEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QEnterEvent_virtualbase_setTimestamp".}
proc fcQEnterEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_setTimestamp".}
proc fQEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QEnterEvent_virtualbase_setAccepted".}
proc fcQEnterEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QEnterEvent_override_virtual_setAccepted".}
proc fcQEnterEvent_delete(self: pointer) {.importc: "QEnterEvent_delete".}
proc fcQMouseEvent_new(typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new".}
proc fcQMouseEvent_new2(typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new2".}
proc fcQMouseEvent_new3(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new3".}
proc fcQMouseEvent_new4(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new4".}
proc fcQMouseEvent_new5(typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new5".}
proc fcQMouseEvent_new6(typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new6".}
proc fcQMouseEvent_new7(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new7".}
proc fcQMouseEvent_new8(typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new8".}
proc fcQMouseEvent_clone(self: pointer, ): pointer {.importc: "QMouseEvent_clone".}
proc fcQMouseEvent_pos(self: pointer, ): pointer {.importc: "QMouseEvent_pos".}
proc fcQMouseEvent_globalPos(self: pointer, ): pointer {.importc: "QMouseEvent_globalPos".}
proc fcQMouseEvent_x(self: pointer, ): cint {.importc: "QMouseEvent_x".}
proc fcQMouseEvent_y(self: pointer, ): cint {.importc: "QMouseEvent_y".}
proc fcQMouseEvent_globalX(self: pointer, ): cint {.importc: "QMouseEvent_globalX".}
proc fcQMouseEvent_globalY(self: pointer, ): cint {.importc: "QMouseEvent_globalY".}
proc fcQMouseEvent_localPos(self: pointer, ): pointer {.importc: "QMouseEvent_localPos".}
proc fcQMouseEvent_windowPos(self: pointer, ): pointer {.importc: "QMouseEvent_windowPos".}
proc fcQMouseEvent_screenPos(self: pointer, ): pointer {.importc: "QMouseEvent_screenPos".}
proc fcQMouseEvent_source(self: pointer, ): cint {.importc: "QMouseEvent_source".}
proc fcQMouseEvent_flags(self: pointer, ): cint {.importc: "QMouseEvent_flags".}
proc fQMouseEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QMouseEvent_virtualbase_clone".}
proc fcQMouseEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_clone".}
proc fQMouseEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QMouseEvent_virtualbase_isBeginEvent".}
proc fcQMouseEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_isBeginEvent".}
proc fQMouseEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QMouseEvent_virtualbase_isUpdateEvent".}
proc fcQMouseEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_isUpdateEvent".}
proc fQMouseEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QMouseEvent_virtualbase_isEndEvent".}
proc fcQMouseEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_isEndEvent".}
proc fQMouseEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QMouseEvent_virtualbase_setTimestamp".}
proc fcQMouseEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_setTimestamp".}
proc fQMouseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QMouseEvent_virtualbase_setAccepted".}
proc fcQMouseEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QMouseEvent_override_virtual_setAccepted".}
proc fcQMouseEvent_delete(self: pointer) {.importc: "QMouseEvent_delete".}
proc fcQHoverEvent_new(typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new".}
proc fcQHoverEvent_new2(typeVal: cint, pos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new2".}
proc fcQHoverEvent_new3(typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new3".}
proc fcQHoverEvent_new4(typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new4".}
proc fcQHoverEvent_new5(typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new5".}
proc fcQHoverEvent_new6(typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new6".}
proc fcQHoverEvent_clone(self: pointer, ): pointer {.importc: "QHoverEvent_clone".}
proc fcQHoverEvent_pos(self: pointer, ): pointer {.importc: "QHoverEvent_pos".}
proc fcQHoverEvent_posF(self: pointer, ): pointer {.importc: "QHoverEvent_posF".}
proc fcQHoverEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QHoverEvent_isUpdateEvent".}
proc fcQHoverEvent_oldPos(self: pointer, ): pointer {.importc: "QHoverEvent_oldPos".}
proc fcQHoverEvent_oldPosF(self: pointer, ): pointer {.importc: "QHoverEvent_oldPosF".}
proc fQHoverEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QHoverEvent_virtualbase_clone".}
proc fcQHoverEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_clone".}
proc fQHoverEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QHoverEvent_virtualbase_isUpdateEvent".}
proc fcQHoverEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_isUpdateEvent".}
proc fQHoverEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QHoverEvent_virtualbase_isBeginEvent".}
proc fcQHoverEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_isBeginEvent".}
proc fQHoverEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QHoverEvent_virtualbase_isEndEvent".}
proc fcQHoverEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_isEndEvent".}
proc fQHoverEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QHoverEvent_virtualbase_setTimestamp".}
proc fcQHoverEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_setTimestamp".}
proc fQHoverEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QHoverEvent_virtualbase_setAccepted".}
proc fcQHoverEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QHoverEvent_override_virtual_setAccepted".}
proc fcQHoverEvent_delete(self: pointer) {.importc: "QHoverEvent_delete".}
proc fcQWheelEvent_new(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new".}
proc fcQWheelEvent_new2(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new2".}
proc fcQWheelEvent_new3(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: pointer): ptr cQWheelEvent {.importc: "QWheelEvent_new3".}
proc fcQWheelEvent_clone(self: pointer, ): pointer {.importc: "QWheelEvent_clone".}
proc fcQWheelEvent_pixelDelta(self: pointer, ): pointer {.importc: "QWheelEvent_pixelDelta".}
proc fcQWheelEvent_angleDelta(self: pointer, ): pointer {.importc: "QWheelEvent_angleDelta".}
proc fcQWheelEvent_phase(self: pointer, ): cint {.importc: "QWheelEvent_phase".}
proc fcQWheelEvent_inverted(self: pointer, ): bool {.importc: "QWheelEvent_inverted".}
proc fcQWheelEvent_isInverted(self: pointer, ): bool {.importc: "QWheelEvent_isInverted".}
proc fcQWheelEvent_hasPixelDelta(self: pointer, ): bool {.importc: "QWheelEvent_hasPixelDelta".}
proc fcQWheelEvent_isBeginEvent(self: pointer, ): bool {.importc: "QWheelEvent_isBeginEvent".}
proc fcQWheelEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QWheelEvent_isUpdateEvent".}
proc fcQWheelEvent_isEndEvent(self: pointer, ): bool {.importc: "QWheelEvent_isEndEvent".}
proc fcQWheelEvent_source(self: pointer, ): cint {.importc: "QWheelEvent_source".}
proc fQWheelEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QWheelEvent_virtualbase_clone".}
proc fcQWheelEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_clone".}
proc fQWheelEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QWheelEvent_virtualbase_isBeginEvent".}
proc fcQWheelEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_isBeginEvent".}
proc fQWheelEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QWheelEvent_virtualbase_isUpdateEvent".}
proc fcQWheelEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_isUpdateEvent".}
proc fQWheelEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QWheelEvent_virtualbase_isEndEvent".}
proc fcQWheelEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_isEndEvent".}
proc fQWheelEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QWheelEvent_virtualbase_setTimestamp".}
proc fcQWheelEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_setTimestamp".}
proc fQWheelEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QWheelEvent_virtualbase_setAccepted".}
proc fcQWheelEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QWheelEvent_override_virtual_setAccepted".}
proc fcQWheelEvent_delete(self: pointer) {.importc: "QWheelEvent_delete".}
proc fcQTabletEvent_new(t: cint, device: pointer, pos: pointer, globalPos: pointer, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint): ptr cQTabletEvent {.importc: "QTabletEvent_new".}
proc fcQTabletEvent_clone(self: pointer, ): pointer {.importc: "QTabletEvent_clone".}
proc fcQTabletEvent_pos(self: pointer, ): pointer {.importc: "QTabletEvent_pos".}
proc fcQTabletEvent_globalPos(self: pointer, ): pointer {.importc: "QTabletEvent_globalPos".}
proc fcQTabletEvent_posF(self: pointer, ): pointer {.importc: "QTabletEvent_posF".}
proc fcQTabletEvent_globalPosF(self: pointer, ): pointer {.importc: "QTabletEvent_globalPosF".}
proc fcQTabletEvent_x(self: pointer, ): cint {.importc: "QTabletEvent_x".}
proc fcQTabletEvent_y(self: pointer, ): cint {.importc: "QTabletEvent_y".}
proc fcQTabletEvent_globalX(self: pointer, ): cint {.importc: "QTabletEvent_globalX".}
proc fcQTabletEvent_globalY(self: pointer, ): cint {.importc: "QTabletEvent_globalY".}
proc fcQTabletEvent_hiResGlobalX(self: pointer, ): float64 {.importc: "QTabletEvent_hiResGlobalX".}
proc fcQTabletEvent_hiResGlobalY(self: pointer, ): float64 {.importc: "QTabletEvent_hiResGlobalY".}
proc fcQTabletEvent_uniqueId(self: pointer, ): clonglong {.importc: "QTabletEvent_uniqueId".}
proc fcQTabletEvent_pressure(self: pointer, ): float64 {.importc: "QTabletEvent_pressure".}
proc fcQTabletEvent_rotation(self: pointer, ): float64 {.importc: "QTabletEvent_rotation".}
proc fcQTabletEvent_z(self: pointer, ): float64 {.importc: "QTabletEvent_z".}
proc fcQTabletEvent_tangentialPressure(self: pointer, ): float64 {.importc: "QTabletEvent_tangentialPressure".}
proc fcQTabletEvent_xTilt(self: pointer, ): float64 {.importc: "QTabletEvent_xTilt".}
proc fcQTabletEvent_yTilt(self: pointer, ): float64 {.importc: "QTabletEvent_yTilt".}
proc fQTabletEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QTabletEvent_virtualbase_clone".}
proc fcQTabletEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_clone".}
proc fQTabletEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QTabletEvent_virtualbase_isBeginEvent".}
proc fcQTabletEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_isBeginEvent".}
proc fQTabletEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QTabletEvent_virtualbase_isUpdateEvent".}
proc fcQTabletEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_isUpdateEvent".}
proc fQTabletEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QTabletEvent_virtualbase_isEndEvent".}
proc fcQTabletEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_isEndEvent".}
proc fQTabletEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QTabletEvent_virtualbase_setTimestamp".}
proc fcQTabletEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_setTimestamp".}
proc fQTabletEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QTabletEvent_virtualbase_setAccepted".}
proc fcQTabletEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QTabletEvent_override_virtual_setAccepted".}
proc fcQTabletEvent_delete(self: pointer) {.importc: "QTabletEvent_delete".}
proc fcQNativeGestureEvent_new(typeVal: cint, dev: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, sequenceId: culonglong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new".}
proc fcQNativeGestureEvent_new2(typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new2".}
proc fcQNativeGestureEvent_new3(typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer, sequenceId: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new3".}
proc fcQNativeGestureEvent_clone(self: pointer, ): pointer {.importc: "QNativeGestureEvent_clone".}
proc fcQNativeGestureEvent_gestureType(self: pointer, ): cint {.importc: "QNativeGestureEvent_gestureType".}
proc fcQNativeGestureEvent_fingerCount(self: pointer, ): cint {.importc: "QNativeGestureEvent_fingerCount".}
proc fcQNativeGestureEvent_value(self: pointer, ): float64 {.importc: "QNativeGestureEvent_value".}
proc fcQNativeGestureEvent_delta(self: pointer, ): pointer {.importc: "QNativeGestureEvent_delta".}
proc fcQNativeGestureEvent_pos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_pos".}
proc fcQNativeGestureEvent_globalPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_globalPos".}
proc fcQNativeGestureEvent_localPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_localPos".}
proc fcQNativeGestureEvent_windowPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_windowPos".}
proc fcQNativeGestureEvent_screenPos(self: pointer, ): pointer {.importc: "QNativeGestureEvent_screenPos".}
proc fQNativeGestureEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QNativeGestureEvent_virtualbase_clone".}
proc fcQNativeGestureEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_clone".}
proc fQNativeGestureEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QNativeGestureEvent_virtualbase_isBeginEvent".}
proc fcQNativeGestureEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_isBeginEvent".}
proc fQNativeGestureEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QNativeGestureEvent_virtualbase_isUpdateEvent".}
proc fcQNativeGestureEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_isUpdateEvent".}
proc fQNativeGestureEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QNativeGestureEvent_virtualbase_isEndEvent".}
proc fcQNativeGestureEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_isEndEvent".}
proc fQNativeGestureEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QNativeGestureEvent_virtualbase_setTimestamp".}
proc fcQNativeGestureEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_setTimestamp".}
proc fQNativeGestureEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QNativeGestureEvent_virtualbase_setAccepted".}
proc fcQNativeGestureEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QNativeGestureEvent_override_virtual_setAccepted".}
proc fcQNativeGestureEvent_delete(self: pointer) {.importc: "QNativeGestureEvent_delete".}
proc fcQKeyEvent_new(typeVal: cint, key: cint, modifiers: cint): ptr cQKeyEvent {.importc: "QKeyEvent_new".}
proc fcQKeyEvent_new2(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): ptr cQKeyEvent {.importc: "QKeyEvent_new2".}
proc fcQKeyEvent_new3(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new3".}
proc fcQKeyEvent_new4(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new4".}
proc fcQKeyEvent_new5(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new5".}
proc fcQKeyEvent_new6(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new6".}
proc fcQKeyEvent_new7(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new7".}
proc fcQKeyEvent_new8(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new8".}
proc fcQKeyEvent_new9(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort, device: pointer): ptr cQKeyEvent {.importc: "QKeyEvent_new9".}
proc fcQKeyEvent_clone(self: pointer, ): pointer {.importc: "QKeyEvent_clone".}
proc fcQKeyEvent_key(self: pointer, ): cint {.importc: "QKeyEvent_key".}
proc fcQKeyEvent_matches(self: pointer, key: cint): bool {.importc: "QKeyEvent_matches".}
proc fcQKeyEvent_modifiers(self: pointer, ): cint {.importc: "QKeyEvent_modifiers".}
proc fcQKeyEvent_keyCombination(self: pointer, ): pointer {.importc: "QKeyEvent_keyCombination".}
proc fcQKeyEvent_text(self: pointer, ): struct_miqt_string {.importc: "QKeyEvent_text".}
proc fcQKeyEvent_isAutoRepeat(self: pointer, ): bool {.importc: "QKeyEvent_isAutoRepeat".}
proc fcQKeyEvent_count(self: pointer, ): cint {.importc: "QKeyEvent_count".}
proc fcQKeyEvent_nativeScanCode(self: pointer, ): cuint {.importc: "QKeyEvent_nativeScanCode".}
proc fcQKeyEvent_nativeVirtualKey(self: pointer, ): cuint {.importc: "QKeyEvent_nativeVirtualKey".}
proc fcQKeyEvent_nativeModifiers(self: pointer, ): cuint {.importc: "QKeyEvent_nativeModifiers".}
proc fQKeyEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QKeyEvent_virtualbase_clone".}
proc fcQKeyEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QKeyEvent_override_virtual_clone".}
proc fQKeyEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QKeyEvent_virtualbase_setTimestamp".}
proc fcQKeyEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QKeyEvent_override_virtual_setTimestamp".}
proc fQKeyEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QKeyEvent_virtualbase_setAccepted".}
proc fcQKeyEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QKeyEvent_override_virtual_setAccepted".}
proc fcQKeyEvent_delete(self: pointer) {.importc: "QKeyEvent_delete".}
proc fcQFocusEvent_new(typeVal: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new".}
proc fcQFocusEvent_new2(typeVal: cint, reason: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new2".}
proc fcQFocusEvent_clone(self: pointer, ): pointer {.importc: "QFocusEvent_clone".}
proc fcQFocusEvent_gotFocus(self: pointer, ): bool {.importc: "QFocusEvent_gotFocus".}
proc fcQFocusEvent_lostFocus(self: pointer, ): bool {.importc: "QFocusEvent_lostFocus".}
proc fcQFocusEvent_reason(self: pointer, ): cint {.importc: "QFocusEvent_reason".}
proc fQFocusEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QFocusEvent_virtualbase_clone".}
proc fcQFocusEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QFocusEvent_override_virtual_clone".}
proc fQFocusEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QFocusEvent_virtualbase_setAccepted".}
proc fcQFocusEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QFocusEvent_override_virtual_setAccepted".}
proc fcQFocusEvent_delete(self: pointer) {.importc: "QFocusEvent_delete".}
proc fcQPaintEvent_new(paintRegion: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new".}
proc fcQPaintEvent_new2(paintRect: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new2".}
proc fcQPaintEvent_clone(self: pointer, ): pointer {.importc: "QPaintEvent_clone".}
proc fcQPaintEvent_rect(self: pointer, ): pointer {.importc: "QPaintEvent_rect".}
proc fcQPaintEvent_region(self: pointer, ): pointer {.importc: "QPaintEvent_region".}
proc fQPaintEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QPaintEvent_virtualbase_clone".}
proc fcQPaintEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QPaintEvent_override_virtual_clone".}
proc fQPaintEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QPaintEvent_virtualbase_setAccepted".}
proc fcQPaintEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QPaintEvent_override_virtual_setAccepted".}
proc fcQPaintEvent_delete(self: pointer) {.importc: "QPaintEvent_delete".}
proc fcQMoveEvent_new(pos: pointer, oldPos: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new".}
proc fcQMoveEvent_clone(self: pointer, ): pointer {.importc: "QMoveEvent_clone".}
proc fcQMoveEvent_pos(self: pointer, ): pointer {.importc: "QMoveEvent_pos".}
proc fcQMoveEvent_oldPos(self: pointer, ): pointer {.importc: "QMoveEvent_oldPos".}
proc fQMoveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QMoveEvent_virtualbase_clone".}
proc fcQMoveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QMoveEvent_override_virtual_clone".}
proc fQMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QMoveEvent_virtualbase_setAccepted".}
proc fcQMoveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QMoveEvent_override_virtual_setAccepted".}
proc fcQMoveEvent_delete(self: pointer) {.importc: "QMoveEvent_delete".}
proc fcQExposeEvent_new(m_region: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new".}
proc fcQExposeEvent_clone(self: pointer, ): pointer {.importc: "QExposeEvent_clone".}
proc fcQExposeEvent_region(self: pointer, ): pointer {.importc: "QExposeEvent_region".}
proc fQExposeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QExposeEvent_virtualbase_clone".}
proc fcQExposeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QExposeEvent_override_virtual_clone".}
proc fQExposeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QExposeEvent_virtualbase_setAccepted".}
proc fcQExposeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QExposeEvent_override_virtual_setAccepted".}
proc fcQExposeEvent_delete(self: pointer) {.importc: "QExposeEvent_delete".}
proc fcQPlatformSurfaceEvent_new(surfaceEventType: cint): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new".}
proc fcQPlatformSurfaceEvent_clone(self: pointer, ): pointer {.importc: "QPlatformSurfaceEvent_clone".}
proc fcQPlatformSurfaceEvent_surfaceEventType(self: pointer, ): cint {.importc: "QPlatformSurfaceEvent_surfaceEventType".}
proc fQPlatformSurfaceEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QPlatformSurfaceEvent_virtualbase_clone".}
proc fcQPlatformSurfaceEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QPlatformSurfaceEvent_override_virtual_clone".}
proc fQPlatformSurfaceEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QPlatformSurfaceEvent_virtualbase_setAccepted".}
proc fcQPlatformSurfaceEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QPlatformSurfaceEvent_override_virtual_setAccepted".}
proc fcQPlatformSurfaceEvent_delete(self: pointer) {.importc: "QPlatformSurfaceEvent_delete".}
proc fcQResizeEvent_new(size: pointer, oldSize: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new".}
proc fcQResizeEvent_clone(self: pointer, ): pointer {.importc: "QResizeEvent_clone".}
proc fcQResizeEvent_size(self: pointer, ): pointer {.importc: "QResizeEvent_size".}
proc fcQResizeEvent_oldSize(self: pointer, ): pointer {.importc: "QResizeEvent_oldSize".}
proc fQResizeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QResizeEvent_virtualbase_clone".}
proc fcQResizeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QResizeEvent_override_virtual_clone".}
proc fQResizeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QResizeEvent_virtualbase_setAccepted".}
proc fcQResizeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QResizeEvent_override_virtual_setAccepted".}
proc fcQResizeEvent_delete(self: pointer) {.importc: "QResizeEvent_delete".}
proc fcQCloseEvent_new(): ptr cQCloseEvent {.importc: "QCloseEvent_new".}
proc fcQCloseEvent_clone(self: pointer, ): pointer {.importc: "QCloseEvent_clone".}
proc fQCloseEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QCloseEvent_virtualbase_clone".}
proc fcQCloseEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QCloseEvent_override_virtual_clone".}
proc fQCloseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QCloseEvent_virtualbase_setAccepted".}
proc fcQCloseEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QCloseEvent_override_virtual_setAccepted".}
proc fcQCloseEvent_delete(self: pointer) {.importc: "QCloseEvent_delete".}
proc fcQIconDragEvent_new(): ptr cQIconDragEvent {.importc: "QIconDragEvent_new".}
proc fcQIconDragEvent_clone(self: pointer, ): pointer {.importc: "QIconDragEvent_clone".}
proc fQIconDragEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QIconDragEvent_virtualbase_clone".}
proc fcQIconDragEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QIconDragEvent_override_virtual_clone".}
proc fQIconDragEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QIconDragEvent_virtualbase_setAccepted".}
proc fcQIconDragEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QIconDragEvent_override_virtual_setAccepted".}
proc fcQIconDragEvent_delete(self: pointer) {.importc: "QIconDragEvent_delete".}
proc fcQShowEvent_new(): ptr cQShowEvent {.importc: "QShowEvent_new".}
proc fcQShowEvent_clone(self: pointer, ): pointer {.importc: "QShowEvent_clone".}
proc fQShowEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QShowEvent_virtualbase_clone".}
proc fcQShowEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QShowEvent_override_virtual_clone".}
proc fQShowEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QShowEvent_virtualbase_setAccepted".}
proc fcQShowEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QShowEvent_override_virtual_setAccepted".}
proc fcQShowEvent_delete(self: pointer) {.importc: "QShowEvent_delete".}
proc fcQHideEvent_new(): ptr cQHideEvent {.importc: "QHideEvent_new".}
proc fcQHideEvent_clone(self: pointer, ): pointer {.importc: "QHideEvent_clone".}
proc fQHideEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QHideEvent_virtualbase_clone".}
proc fcQHideEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QHideEvent_override_virtual_clone".}
proc fQHideEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QHideEvent_virtualbase_setAccepted".}
proc fcQHideEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QHideEvent_override_virtual_setAccepted".}
proc fcQHideEvent_delete(self: pointer) {.importc: "QHideEvent_delete".}
proc fcQContextMenuEvent_new(reason: cint, pos: pointer, globalPos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new".}
proc fcQContextMenuEvent_new2(reason: cint, pos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new2".}
proc fcQContextMenuEvent_new3(reason: cint, pos: pointer, globalPos: pointer, modifiers: cint): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new3".}
proc fcQContextMenuEvent_clone(self: pointer, ): pointer {.importc: "QContextMenuEvent_clone".}
proc fcQContextMenuEvent_x(self: pointer, ): cint {.importc: "QContextMenuEvent_x".}
proc fcQContextMenuEvent_y(self: pointer, ): cint {.importc: "QContextMenuEvent_y".}
proc fcQContextMenuEvent_globalX(self: pointer, ): cint {.importc: "QContextMenuEvent_globalX".}
proc fcQContextMenuEvent_globalY(self: pointer, ): cint {.importc: "QContextMenuEvent_globalY".}
proc fcQContextMenuEvent_pos(self: pointer, ): pointer {.importc: "QContextMenuEvent_pos".}
proc fcQContextMenuEvent_globalPos(self: pointer, ): pointer {.importc: "QContextMenuEvent_globalPos".}
proc fcQContextMenuEvent_reason(self: pointer, ): cint {.importc: "QContextMenuEvent_reason".}
proc fQContextMenuEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QContextMenuEvent_virtualbase_clone".}
proc fcQContextMenuEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QContextMenuEvent_override_virtual_clone".}
proc fQContextMenuEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QContextMenuEvent_virtualbase_setTimestamp".}
proc fcQContextMenuEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QContextMenuEvent_override_virtual_setTimestamp".}
proc fQContextMenuEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QContextMenuEvent_virtualbase_setAccepted".}
proc fcQContextMenuEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QContextMenuEvent_override_virtual_setAccepted".}
proc fcQContextMenuEvent_delete(self: pointer) {.importc: "QContextMenuEvent_delete".}
proc fcQInputMethodEvent_new(): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new".}
proc fcQInputMethodEvent_new2(preeditText: struct_miqt_string, attributes: struct_miqt_array): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new2".}
proc fcQInputMethodEvent_clone(self: pointer, ): pointer {.importc: "QInputMethodEvent_clone".}
proc fcQInputMethodEvent_setCommitString(self: pointer, commitString: struct_miqt_string): void {.importc: "QInputMethodEvent_setCommitString".}
proc fcQInputMethodEvent_attributes(self: pointer, ): struct_miqt_array {.importc: "QInputMethodEvent_attributes".}
proc fcQInputMethodEvent_preeditString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_preeditString".}
proc fcQInputMethodEvent_commitString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_commitString".}
proc fcQInputMethodEvent_replacementStart(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementStart".}
proc fcQInputMethodEvent_replacementLength(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementLength".}
proc fcQInputMethodEvent_setCommitString2(self: pointer, commitString: struct_miqt_string, replaceFrom: cint): void {.importc: "QInputMethodEvent_setCommitString2".}
proc fcQInputMethodEvent_setCommitString3(self: pointer, commitString: struct_miqt_string, replaceFrom: cint, replaceLength: cint): void {.importc: "QInputMethodEvent_setCommitString3".}
proc fQInputMethodEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QInputMethodEvent_virtualbase_clone".}
proc fcQInputMethodEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QInputMethodEvent_override_virtual_clone".}
proc fQInputMethodEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QInputMethodEvent_virtualbase_setAccepted".}
proc fcQInputMethodEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QInputMethodEvent_override_virtual_setAccepted".}
proc fcQInputMethodEvent_delete(self: pointer) {.importc: "QInputMethodEvent_delete".}
proc fcQInputMethodQueryEvent_new(queries: cint): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new".}
proc fcQInputMethodQueryEvent_clone(self: pointer, ): pointer {.importc: "QInputMethodQueryEvent_clone".}
proc fcQInputMethodQueryEvent_queries(self: pointer, ): cint {.importc: "QInputMethodQueryEvent_queries".}
proc fcQInputMethodQueryEvent_setValue(self: pointer, query: cint, value: pointer): void {.importc: "QInputMethodQueryEvent_setValue".}
proc fcQInputMethodQueryEvent_value(self: pointer, query: cint): pointer {.importc: "QInputMethodQueryEvent_value".}
proc fQInputMethodQueryEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QInputMethodQueryEvent_virtualbase_clone".}
proc fcQInputMethodQueryEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QInputMethodQueryEvent_override_virtual_clone".}
proc fQInputMethodQueryEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QInputMethodQueryEvent_virtualbase_setAccepted".}
proc fcQInputMethodQueryEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QInputMethodQueryEvent_override_virtual_setAccepted".}
proc fcQInputMethodQueryEvent_delete(self: pointer) {.importc: "QInputMethodQueryEvent_delete".}
proc fcQDropEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDropEvent {.importc: "QDropEvent_new".}
proc fcQDropEvent_new2(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDropEvent {.importc: "QDropEvent_new2".}
proc fcQDropEvent_clone(self: pointer, ): pointer {.importc: "QDropEvent_clone".}
proc fcQDropEvent_pos(self: pointer, ): pointer {.importc: "QDropEvent_pos".}
proc fcQDropEvent_posF(self: pointer, ): pointer {.importc: "QDropEvent_posF".}
proc fcQDropEvent_mouseButtons(self: pointer, ): cint {.importc: "QDropEvent_mouseButtons".}
proc fcQDropEvent_keyboardModifiers(self: pointer, ): cint {.importc: "QDropEvent_keyboardModifiers".}
proc fcQDropEvent_position(self: pointer, ): pointer {.importc: "QDropEvent_position".}
proc fcQDropEvent_buttons(self: pointer, ): cint {.importc: "QDropEvent_buttons".}
proc fcQDropEvent_modifiers(self: pointer, ): cint {.importc: "QDropEvent_modifiers".}
proc fcQDropEvent_possibleActions(self: pointer, ): cint {.importc: "QDropEvent_possibleActions".}
proc fcQDropEvent_proposedAction(self: pointer, ): cint {.importc: "QDropEvent_proposedAction".}
proc fcQDropEvent_acceptProposedAction(self: pointer, ): void {.importc: "QDropEvent_acceptProposedAction".}
proc fcQDropEvent_dropAction(self: pointer, ): cint {.importc: "QDropEvent_dropAction".}
proc fcQDropEvent_setDropAction(self: pointer, action: cint): void {.importc: "QDropEvent_setDropAction".}
proc fcQDropEvent_source(self: pointer, ): pointer {.importc: "QDropEvent_source".}
proc fcQDropEvent_mimeData(self: pointer, ): pointer {.importc: "QDropEvent_mimeData".}
proc fQDropEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDropEvent_virtualbase_clone".}
proc fcQDropEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDropEvent_override_virtual_clone".}
proc fQDropEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDropEvent_virtualbase_setAccepted".}
proc fcQDropEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDropEvent_override_virtual_setAccepted".}
proc fcQDropEvent_delete(self: pointer) {.importc: "QDropEvent_delete".}
proc fcQDragMoveEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new".}
proc fcQDragMoveEvent_new2(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new2".}
proc fcQDragMoveEvent_clone(self: pointer, ): pointer {.importc: "QDragMoveEvent_clone".}
proc fcQDragMoveEvent_answerRect(self: pointer, ): pointer {.importc: "QDragMoveEvent_answerRect".}
proc fcQDragMoveEvent_accept(self: pointer, ): void {.importc: "QDragMoveEvent_accept".}
proc fcQDragMoveEvent_ignore(self: pointer, ): void {.importc: "QDragMoveEvent_ignore".}
proc fcQDragMoveEvent_acceptWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_acceptWithQRect".}
proc fcQDragMoveEvent_ignoreWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_ignoreWithQRect".}
proc fQDragMoveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDragMoveEvent_virtualbase_clone".}
proc fcQDragMoveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDragMoveEvent_override_virtual_clone".}
proc fQDragMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDragMoveEvent_virtualbase_setAccepted".}
proc fcQDragMoveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDragMoveEvent_override_virtual_setAccepted".}
proc fcQDragMoveEvent_delete(self: pointer) {.importc: "QDragMoveEvent_delete".}
proc fcQDragEnterEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new".}
proc fcQDragEnterEvent_clone(self: pointer, ): pointer {.importc: "QDragEnterEvent_clone".}
proc fQDragEnterEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDragEnterEvent_virtualbase_clone".}
proc fcQDragEnterEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDragEnterEvent_override_virtual_clone".}
proc fQDragEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDragEnterEvent_virtualbase_setAccepted".}
proc fcQDragEnterEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDragEnterEvent_override_virtual_setAccepted".}
proc fcQDragEnterEvent_delete(self: pointer) {.importc: "QDragEnterEvent_delete".}
proc fcQDragLeaveEvent_new(): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new".}
proc fcQDragLeaveEvent_clone(self: pointer, ): pointer {.importc: "QDragLeaveEvent_clone".}
proc fQDragLeaveEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDragLeaveEvent_virtualbase_clone".}
proc fcQDragLeaveEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDragLeaveEvent_override_virtual_clone".}
proc fQDragLeaveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDragLeaveEvent_virtualbase_setAccepted".}
proc fcQDragLeaveEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDragLeaveEvent_override_virtual_setAccepted".}
proc fcQDragLeaveEvent_delete(self: pointer) {.importc: "QDragLeaveEvent_delete".}
proc fcQHelpEvent_new(typeVal: cint, pos: pointer, globalPos: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new".}
proc fcQHelpEvent_clone(self: pointer, ): pointer {.importc: "QHelpEvent_clone".}
proc fcQHelpEvent_x(self: pointer, ): cint {.importc: "QHelpEvent_x".}
proc fcQHelpEvent_y(self: pointer, ): cint {.importc: "QHelpEvent_y".}
proc fcQHelpEvent_globalX(self: pointer, ): cint {.importc: "QHelpEvent_globalX".}
proc fcQHelpEvent_globalY(self: pointer, ): cint {.importc: "QHelpEvent_globalY".}
proc fcQHelpEvent_pos(self: pointer, ): pointer {.importc: "QHelpEvent_pos".}
proc fcQHelpEvent_globalPos(self: pointer, ): pointer {.importc: "QHelpEvent_globalPos".}
proc fQHelpEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QHelpEvent_virtualbase_clone".}
proc fcQHelpEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QHelpEvent_override_virtual_clone".}
proc fQHelpEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QHelpEvent_virtualbase_setAccepted".}
proc fcQHelpEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QHelpEvent_override_virtual_setAccepted".}
proc fcQHelpEvent_delete(self: pointer) {.importc: "QHelpEvent_delete".}
proc fcQStatusTipEvent_new(tip: struct_miqt_string): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new".}
proc fcQStatusTipEvent_clone(self: pointer, ): pointer {.importc: "QStatusTipEvent_clone".}
proc fcQStatusTipEvent_tip(self: pointer, ): struct_miqt_string {.importc: "QStatusTipEvent_tip".}
proc fQStatusTipEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QStatusTipEvent_virtualbase_clone".}
proc fcQStatusTipEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QStatusTipEvent_override_virtual_clone".}
proc fQStatusTipEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QStatusTipEvent_virtualbase_setAccepted".}
proc fcQStatusTipEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QStatusTipEvent_override_virtual_setAccepted".}
proc fcQStatusTipEvent_delete(self: pointer) {.importc: "QStatusTipEvent_delete".}
proc fcQWhatsThisClickedEvent_new(href: struct_miqt_string): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new".}
proc fcQWhatsThisClickedEvent_clone(self: pointer, ): pointer {.importc: "QWhatsThisClickedEvent_clone".}
proc fcQWhatsThisClickedEvent_href(self: pointer, ): struct_miqt_string {.importc: "QWhatsThisClickedEvent_href".}
proc fQWhatsThisClickedEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QWhatsThisClickedEvent_virtualbase_clone".}
proc fcQWhatsThisClickedEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QWhatsThisClickedEvent_override_virtual_clone".}
proc fQWhatsThisClickedEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QWhatsThisClickedEvent_virtualbase_setAccepted".}
proc fcQWhatsThisClickedEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QWhatsThisClickedEvent_override_virtual_setAccepted".}
proc fcQWhatsThisClickedEvent_delete(self: pointer) {.importc: "QWhatsThisClickedEvent_delete".}
proc fcQActionEvent_new(typeVal: cint, action: pointer): ptr cQActionEvent {.importc: "QActionEvent_new".}
proc fcQActionEvent_new2(typeVal: cint, action: pointer, before: pointer): ptr cQActionEvent {.importc: "QActionEvent_new2".}
proc fcQActionEvent_clone(self: pointer, ): pointer {.importc: "QActionEvent_clone".}
proc fQActionEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QActionEvent_virtualbase_clone".}
proc fcQActionEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QActionEvent_override_virtual_clone".}
proc fQActionEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QActionEvent_virtualbase_setAccepted".}
proc fcQActionEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QActionEvent_override_virtual_setAccepted".}
proc fcQActionEvent_delete(self: pointer) {.importc: "QActionEvent_delete".}
proc fcQFileOpenEvent_new(file: struct_miqt_string): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new".}
proc fcQFileOpenEvent_new2(url: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new2".}
proc fcQFileOpenEvent_clone(self: pointer, ): pointer {.importc: "QFileOpenEvent_clone".}
proc fcQFileOpenEvent_file(self: pointer, ): struct_miqt_string {.importc: "QFileOpenEvent_file".}
proc fcQFileOpenEvent_url(self: pointer, ): pointer {.importc: "QFileOpenEvent_url".}
proc fcQFileOpenEvent_openFile(self: pointer, file: pointer, flags: cint): bool {.importc: "QFileOpenEvent_openFile".}
proc fQFileOpenEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QFileOpenEvent_virtualbase_clone".}
proc fcQFileOpenEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QFileOpenEvent_override_virtual_clone".}
proc fQFileOpenEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QFileOpenEvent_virtualbase_setAccepted".}
proc fcQFileOpenEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QFileOpenEvent_override_virtual_setAccepted".}
proc fcQFileOpenEvent_delete(self: pointer) {.importc: "QFileOpenEvent_delete".}
proc fcQToolBarChangeEvent_new(t: bool): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new".}
proc fcQToolBarChangeEvent_clone(self: pointer, ): pointer {.importc: "QToolBarChangeEvent_clone".}
proc fcQToolBarChangeEvent_toggle(self: pointer, ): bool {.importc: "QToolBarChangeEvent_toggle".}
proc fQToolBarChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QToolBarChangeEvent_virtualbase_clone".}
proc fcQToolBarChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QToolBarChangeEvent_override_virtual_clone".}
proc fQToolBarChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QToolBarChangeEvent_virtualbase_setAccepted".}
proc fcQToolBarChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QToolBarChangeEvent_override_virtual_setAccepted".}
proc fcQToolBarChangeEvent_delete(self: pointer) {.importc: "QToolBarChangeEvent_delete".}
proc fcQShortcutEvent_new(key: pointer, id: cint): ptr cQShortcutEvent {.importc: "QShortcutEvent_new".}
proc fcQShortcutEvent_new2(key: pointer, id: cint, ambiguous: bool): ptr cQShortcutEvent {.importc: "QShortcutEvent_new2".}
proc fcQShortcutEvent_clone(self: pointer, ): pointer {.importc: "QShortcutEvent_clone".}
proc fcQShortcutEvent_key(self: pointer, ): pointer {.importc: "QShortcutEvent_key".}
proc fcQShortcutEvent_shortcutId(self: pointer, ): cint {.importc: "QShortcutEvent_shortcutId".}
proc fcQShortcutEvent_isAmbiguous(self: pointer, ): bool {.importc: "QShortcutEvent_isAmbiguous".}
proc fQShortcutEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QShortcutEvent_virtualbase_clone".}
proc fcQShortcutEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QShortcutEvent_override_virtual_clone".}
proc fQShortcutEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QShortcutEvent_virtualbase_setAccepted".}
proc fcQShortcutEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QShortcutEvent_override_virtual_setAccepted".}
proc fcQShortcutEvent_delete(self: pointer) {.importc: "QShortcutEvent_delete".}
proc fcQWindowStateChangeEvent_new(oldState: cint): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new".}
proc fcQWindowStateChangeEvent_new2(oldState: cint, isOverride: bool): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new2".}
proc fcQWindowStateChangeEvent_clone(self: pointer, ): pointer {.importc: "QWindowStateChangeEvent_clone".}
proc fcQWindowStateChangeEvent_oldState(self: pointer, ): cint {.importc: "QWindowStateChangeEvent_oldState".}
proc fcQWindowStateChangeEvent_isOverride(self: pointer, ): bool {.importc: "QWindowStateChangeEvent_isOverride".}
proc fQWindowStateChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QWindowStateChangeEvent_virtualbase_clone".}
proc fcQWindowStateChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QWindowStateChangeEvent_override_virtual_clone".}
proc fQWindowStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QWindowStateChangeEvent_virtualbase_setAccepted".}
proc fcQWindowStateChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QWindowStateChangeEvent_override_virtual_setAccepted".}
proc fcQWindowStateChangeEvent_delete(self: pointer) {.importc: "QWindowStateChangeEvent_delete".}
proc fcQTouchEvent_new(eventType: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new".}
proc fcQTouchEvent_new2(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new2".}
proc fcQTouchEvent_new3(eventType: cint, device: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new3".}
proc fcQTouchEvent_new4(eventType: cint, device: pointer, modifiers: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new4".}
proc fcQTouchEvent_new5(eventType: cint, device: pointer, modifiers: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new5".}
proc fcQTouchEvent_new6(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new6".}
proc fcQTouchEvent_clone(self: pointer, ): pointer {.importc: "QTouchEvent_clone".}
proc fcQTouchEvent_target(self: pointer, ): pointer {.importc: "QTouchEvent_target".}
proc fcQTouchEvent_touchPointStates(self: pointer, ): cint {.importc: "QTouchEvent_touchPointStates".}
proc fcQTouchEvent_touchPoints(self: pointer, ): struct_miqt_array {.importc: "QTouchEvent_touchPoints".}
proc fcQTouchEvent_isBeginEvent(self: pointer, ): bool {.importc: "QTouchEvent_isBeginEvent".}
proc fcQTouchEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QTouchEvent_isUpdateEvent".}
proc fcQTouchEvent_isEndEvent(self: pointer, ): bool {.importc: "QTouchEvent_isEndEvent".}
proc fQTouchEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QTouchEvent_virtualbase_clone".}
proc fcQTouchEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_clone".}
proc fQTouchEvent_virtualbase_isBeginEvent(self: pointer, ): bool{.importc: "QTouchEvent_virtualbase_isBeginEvent".}
proc fcQTouchEvent_override_virtual_isBeginEvent(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_isBeginEvent".}
proc fQTouchEvent_virtualbase_isUpdateEvent(self: pointer, ): bool{.importc: "QTouchEvent_virtualbase_isUpdateEvent".}
proc fcQTouchEvent_override_virtual_isUpdateEvent(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_isUpdateEvent".}
proc fQTouchEvent_virtualbase_isEndEvent(self: pointer, ): bool{.importc: "QTouchEvent_virtualbase_isEndEvent".}
proc fcQTouchEvent_override_virtual_isEndEvent(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_isEndEvent".}
proc fQTouchEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void{.importc: "QTouchEvent_virtualbase_setTimestamp".}
proc fcQTouchEvent_override_virtual_setTimestamp(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_setTimestamp".}
proc fQTouchEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QTouchEvent_virtualbase_setAccepted".}
proc fcQTouchEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QTouchEvent_override_virtual_setAccepted".}
proc fcQTouchEvent_delete(self: pointer) {.importc: "QTouchEvent_delete".}
proc fcQScrollPrepareEvent_new(startPos: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new".}
proc fcQScrollPrepareEvent_clone(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_clone".}
proc fcQScrollPrepareEvent_startPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_startPos".}
proc fcQScrollPrepareEvent_viewportSize(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_viewportSize".}
proc fcQScrollPrepareEvent_contentPosRange(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPosRange".}
proc fcQScrollPrepareEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPos".}
proc fcQScrollPrepareEvent_setViewportSize(self: pointer, size: pointer): void {.importc: "QScrollPrepareEvent_setViewportSize".}
proc fcQScrollPrepareEvent_setContentPosRange(self: pointer, rect: pointer): void {.importc: "QScrollPrepareEvent_setContentPosRange".}
proc fcQScrollPrepareEvent_setContentPos(self: pointer, pos: pointer): void {.importc: "QScrollPrepareEvent_setContentPos".}
proc fQScrollPrepareEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QScrollPrepareEvent_virtualbase_clone".}
proc fcQScrollPrepareEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QScrollPrepareEvent_override_virtual_clone".}
proc fQScrollPrepareEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QScrollPrepareEvent_virtualbase_setAccepted".}
proc fcQScrollPrepareEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QScrollPrepareEvent_override_virtual_setAccepted".}
proc fcQScrollPrepareEvent_delete(self: pointer) {.importc: "QScrollPrepareEvent_delete".}
proc fcQScrollEvent_new(contentPos: pointer, overshoot: pointer, scrollState: cint): ptr cQScrollEvent {.importc: "QScrollEvent_new".}
proc fcQScrollEvent_clone(self: pointer, ): pointer {.importc: "QScrollEvent_clone".}
proc fcQScrollEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollEvent_contentPos".}
proc fcQScrollEvent_overshootDistance(self: pointer, ): pointer {.importc: "QScrollEvent_overshootDistance".}
proc fcQScrollEvent_scrollState(self: pointer, ): cint {.importc: "QScrollEvent_scrollState".}
proc fQScrollEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QScrollEvent_virtualbase_clone".}
proc fcQScrollEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QScrollEvent_override_virtual_clone".}
proc fQScrollEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QScrollEvent_virtualbase_setAccepted".}
proc fcQScrollEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QScrollEvent_override_virtual_setAccepted".}
proc fcQScrollEvent_delete(self: pointer) {.importc: "QScrollEvent_delete".}
proc fcQScreenOrientationChangeEvent_new(screen: pointer, orientation: cint): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new".}
proc fcQScreenOrientationChangeEvent_clone(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_clone".}
proc fcQScreenOrientationChangeEvent_screen(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_screen".}
proc fcQScreenOrientationChangeEvent_orientation(self: pointer, ): cint {.importc: "QScreenOrientationChangeEvent_orientation".}
proc fQScreenOrientationChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QScreenOrientationChangeEvent_virtualbase_clone".}
proc fcQScreenOrientationChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QScreenOrientationChangeEvent_override_virtual_clone".}
proc fQScreenOrientationChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QScreenOrientationChangeEvent_virtualbase_setAccepted".}
proc fcQScreenOrientationChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QScreenOrientationChangeEvent_override_virtual_setAccepted".}
proc fcQScreenOrientationChangeEvent_delete(self: pointer) {.importc: "QScreenOrientationChangeEvent_delete".}
proc fcQApplicationStateChangeEvent_new(state: cint): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new".}
proc fcQApplicationStateChangeEvent_clone(self: pointer, ): pointer {.importc: "QApplicationStateChangeEvent_clone".}
proc fcQApplicationStateChangeEvent_applicationState(self: pointer, ): cint {.importc: "QApplicationStateChangeEvent_applicationState".}
proc fQApplicationStateChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QApplicationStateChangeEvent_virtualbase_clone".}
proc fcQApplicationStateChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QApplicationStateChangeEvent_override_virtual_clone".}
proc fQApplicationStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QApplicationStateChangeEvent_virtualbase_setAccepted".}
proc fcQApplicationStateChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QApplicationStateChangeEvent_override_virtual_setAccepted".}
proc fcQApplicationStateChangeEvent_delete(self: pointer) {.importc: "QApplicationStateChangeEvent_delete".}
proc fcQInputMethodEventAttribute_new(typ: cint, s: cint, l: cint, val: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new".}
proc fcQInputMethodEventAttribute_new2(typ: cint, s: cint, l: cint): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new2".}
proc fcQInputMethodEventAttribute_new3(param1: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new3".}
proc fcQInputMethodEventAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QInputMethodEvent__Attribute_operatorAssign".}
proc fcQInputMethodEventAttribute_delete(self: pointer) {.importc: "QInputMethodEvent__Attribute_delete".}


func init*(T: type gen_qevent_types.QInputEvent, h: ptr cQInputEvent): gen_qevent_types.QInputEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QInputEvent, typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent.init(fcQInputEvent_new(cint(typeVal), m_dev.h))

proc create*(T: type gen_qevent_types.QInputEvent, typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice, modifiers: cint): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent.init(fcQInputEvent_new2(cint(typeVal), m_dev.h, cint(modifiers)))

proc clone*(self: gen_qevent_types.QInputEvent, ): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fcQInputEvent_clone(self.h))

proc device*(self: gen_qevent_types.QInputEvent, ): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice(h: fcQInputEvent_device(self.h))

proc deviceType*(self: gen_qevent_types.QInputEvent, ): cint =
  cint(fcQInputEvent_deviceType(self.h))

proc modifiers*(self: gen_qevent_types.QInputEvent, ): cint =
  cint(fcQInputEvent_modifiers(self.h))

proc setModifiers*(self: gen_qevent_types.QInputEvent, modifiers: cint): void =
  fcQInputEvent_setModifiers(self.h, cint(modifiers))

proc timestamp*(self: gen_qevent_types.QInputEvent, ): culonglong =
  fcQInputEvent_timestamp(self.h)

proc setTimestamp*(self: gen_qevent_types.QInputEvent, timestamp: culonglong): void =
  fcQInputEvent_setTimestamp(self.h, timestamp)

proc QInputEventclone*(self: gen_qevent_types.QInputEvent, ): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fQInputEvent_virtualbase_clone(self.h))

type QInputEventcloneProc* = proc(): gen_qevent_types.QInputEvent
proc onclone*(self: gen_qevent_types.QInputEvent, slot: QInputEventcloneProc) =
  # TODO check subclass
  var tmp = new QInputEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputEvent_clone(self: ptr cQInputEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QInputEvent_clone ".} =
  var nimfunc = cast[ptr QInputEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputEventsetTimestamp*(self: gen_qevent_types.QInputEvent, timestamp: culonglong): void =
  fQInputEvent_virtualbase_setTimestamp(self.h, timestamp)

type QInputEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QInputEvent, slot: QInputEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QInputEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputEvent_setTimestamp(self: ptr cQInputEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QInputEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QInputEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QInputEventsetAccepted*(self: gen_qevent_types.QInputEvent, accepted: bool): void =
  fQInputEvent_virtualbase_setAccepted(self.h, accepted)

type QInputEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QInputEvent, slot: QInputEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QInputEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputEvent_setAccepted(self: ptr cQInputEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QInputEvent_setAccepted ".} =
  var nimfunc = cast[ptr QInputEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QInputEvent) =
  fcQInputEvent_delete(self.h)

func init*(T: type gen_qevent_types.QPointerEvent, h: ptr cQPointerEvent): gen_qevent_types.QPointerEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QPointerEvent, typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QPointerEvent =
  gen_qevent_types.QPointerEvent.init(fcQPointerEvent_new(cint(typeVal), dev.h))

proc create*(T: type gen_qevent_types.QPointerEvent, typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint): gen_qevent_types.QPointerEvent =
  gen_qevent_types.QPointerEvent.init(fcQPointerEvent_new2(cint(typeVal), dev.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QPointerEvent, typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, points: seq[gen_qeventpoint_types.QEventPoint]): gen_qevent_types.QPointerEvent =
  var points_CArray = newSeq[pointer](len(points))
  for i in 0..<len(points):
    points_CArray[i] = points[i].h

  gen_qevent_types.QPointerEvent.init(fcQPointerEvent_new3(cint(typeVal), dev.h, cint(modifiers), struct_miqt_array(len: csize_t(len(points)), data: if len(points) == 0: nil else: addr(points_CArray[0]))))

proc clone*(self: gen_qevent_types.QPointerEvent, ): gen_qevent_types.QPointerEvent =
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_clone(self.h))

proc pointingDevice*(self: gen_qevent_types.QPointerEvent, ): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointerEvent_pointingDevice(self.h))

proc pointerType*(self: gen_qevent_types.QPointerEvent, ): cint =
  cint(fcQPointerEvent_pointerType(self.h))

proc setTimestamp*(self: gen_qevent_types.QPointerEvent, timestamp: culonglong): void =
  fcQPointerEvent_setTimestamp(self.h, timestamp)

proc pointCount*(self: gen_qevent_types.QPointerEvent, ): int64 =
  fcQPointerEvent_pointCount(self.h)

proc point*(self: gen_qevent_types.QPointerEvent, i: int64): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQPointerEvent_point(self.h, i))

proc points*(self: gen_qevent_types.QPointerEvent, ): seq[gen_qeventpoint_types.QEventPoint] =
  var v_ma = fcQPointerEvent_points(self.h)
  var vx_ret = newSeq[gen_qeventpoint_types.QEventPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qeventpoint_types.QEventPoint(h: v_outCast[i])
  vx_ret

proc pointById*(self: gen_qevent_types.QPointerEvent, id: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQPointerEvent_pointById(self.h, id))

proc allPointsGrabbed*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_allPointsGrabbed(self.h)

proc isBeginEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_isEndEvent(self.h)

proc allPointsAccepted*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_allPointsAccepted(self.h)

proc setAccepted*(self: gen_qevent_types.QPointerEvent, accepted: bool): void =
  fcQPointerEvent_setAccepted(self.h, accepted)

proc exclusiveGrabber*(self: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPointerEvent_exclusiveGrabber(self.h, point.h))

proc setExclusiveGrabber*(self: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint, exclusiveGrabber: gen_qobject_types.QObject): void =
  fcQPointerEvent_setExclusiveGrabber(self.h, point.h, exclusiveGrabber.h)

proc clearPassiveGrabbers*(self: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint): void =
  fcQPointerEvent_clearPassiveGrabbers(self.h, point.h)

proc addPassiveGrabber*(self: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint, grabber: gen_qobject_types.QObject): bool =
  fcQPointerEvent_addPassiveGrabber(self.h, point.h, grabber.h)

proc removePassiveGrabber*(self: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint, grabber: gen_qobject_types.QObject): bool =
  fcQPointerEvent_removePassiveGrabber(self.h, point.h, grabber.h)

proc QPointerEventclone*(self: gen_qevent_types.QPointerEvent, ): gen_qevent_types.QPointerEvent =
  gen_qevent_types.QPointerEvent(h: fQPointerEvent_virtualbase_clone(self.h))

type QPointerEventcloneProc* = proc(): gen_qevent_types.QPointerEvent
proc onclone*(self: gen_qevent_types.QPointerEvent, slot: QPointerEventcloneProc) =
  # TODO check subclass
  var tmp = new QPointerEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_clone(self: ptr cQPointerEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QPointerEvent_clone ".} =
  var nimfunc = cast[ptr QPointerEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPointerEventsetTimestamp*(self: gen_qevent_types.QPointerEvent, timestamp: culonglong): void =
  fQPointerEvent_virtualbase_setTimestamp(self.h, timestamp)

type QPointerEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QPointerEvent, slot: QPointerEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QPointerEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_setTimestamp(self: ptr cQPointerEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QPointerEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QPointerEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QPointerEventisBeginEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fQPointerEvent_virtualbase_isBeginEvent(self.h)

type QPointerEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QPointerEvent, slot: QPointerEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QPointerEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_isBeginEvent(self: ptr cQPointerEvent, slot: int): bool {.exportc: "miqt_exec_callback_QPointerEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QPointerEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPointerEventisUpdateEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fQPointerEvent_virtualbase_isUpdateEvent(self.h)

type QPointerEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QPointerEvent, slot: QPointerEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QPointerEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_isUpdateEvent(self: ptr cQPointerEvent, slot: int): bool {.exportc: "miqt_exec_callback_QPointerEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QPointerEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPointerEventisEndEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fQPointerEvent_virtualbase_isEndEvent(self.h)

type QPointerEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QPointerEvent, slot: QPointerEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QPointerEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_isEndEvent(self: ptr cQPointerEvent, slot: int): bool {.exportc: "miqt_exec_callback_QPointerEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QPointerEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPointerEventsetAccepted*(self: gen_qevent_types.QPointerEvent, accepted: bool): void =
  fQPointerEvent_virtualbase_setAccepted(self.h, accepted)

type QPointerEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QPointerEvent, slot: QPointerEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QPointerEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointerEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointerEvent_setAccepted(self: ptr cQPointerEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QPointerEvent_setAccepted ".} =
  var nimfunc = cast[ptr QPointerEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QPointerEvent) =
  fcQPointerEvent_delete(self.h)

func init*(T: type gen_qevent_types.QSinglePointEvent, h: ptr cQSinglePointEvent): gen_qevent_types.QSinglePointEvent =
  T(h: h)
proc clone*(self: gen_qevent_types.QSinglePointEvent, ): gen_qevent_types.QSinglePointEvent =
  gen_qevent_types.QSinglePointEvent(h: fcQSinglePointEvent_clone(self.h))

proc button*(self: gen_qevent_types.QSinglePointEvent, ): cint =
  cint(fcQSinglePointEvent_button(self.h))

proc buttons*(self: gen_qevent_types.QSinglePointEvent, ): cint =
  cint(fcQSinglePointEvent_buttons(self.h))

proc position*(self: gen_qevent_types.QSinglePointEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQSinglePointEvent_position(self.h))

proc scenePosition*(self: gen_qevent_types.QSinglePointEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQSinglePointEvent_scenePosition(self.h))

proc globalPosition*(self: gen_qevent_types.QSinglePointEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQSinglePointEvent_globalPosition(self.h))

proc isBeginEvent*(self: gen_qevent_types.QSinglePointEvent, ): bool =
  fcQSinglePointEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QSinglePointEvent, ): bool =
  fcQSinglePointEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QSinglePointEvent, ): bool =
  fcQSinglePointEvent_isEndEvent(self.h)

proc exclusivePointGrabber*(self: gen_qevent_types.QSinglePointEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSinglePointEvent_exclusivePointGrabber(self.h))

proc setExclusivePointGrabber*(self: gen_qevent_types.QSinglePointEvent, exclusiveGrabber: gen_qobject_types.QObject): void =
  fcQSinglePointEvent_setExclusivePointGrabber(self.h, exclusiveGrabber.h)

proc delete*(self: gen_qevent_types.QSinglePointEvent) =
  fcQSinglePointEvent_delete(self.h)

func init*(T: type gen_qevent_types.QEnterEvent, h: ptr cQEnterEvent): gen_qevent_types.QEnterEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QEnterEvent, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent.init(fcQEnterEvent_new(localPos.h, scenePos.h, globalPos.h))

proc create*(T: type gen_qevent_types.QEnterEvent, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent.init(fcQEnterEvent_new2(localPos.h, scenePos.h, globalPos.h, device.h))

proc clone*(self: gen_qevent_types.QEnterEvent, ): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_clone(self.h))

proc pos*(self: gen_qevent_types.QEnterEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQEnterEvent_pos(self.h))

proc globalPos*(self: gen_qevent_types.QEnterEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQEnterEvent_globalPos(self.h))

proc x*(self: gen_qevent_types.QEnterEvent, ): cint =
  fcQEnterEvent_x(self.h)

proc y*(self: gen_qevent_types.QEnterEvent, ): cint =
  fcQEnterEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QEnterEvent, ): cint =
  fcQEnterEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QEnterEvent, ): cint =
  fcQEnterEvent_globalY(self.h)

proc localPos*(self: gen_qevent_types.QEnterEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_localPos(self.h))

proc windowPos*(self: gen_qevent_types.QEnterEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_windowPos(self.h))

proc screenPos*(self: gen_qevent_types.QEnterEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_screenPos(self.h))

proc QEnterEventclone*(self: gen_qevent_types.QEnterEvent, ): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent(h: fQEnterEvent_virtualbase_clone(self.h))

type QEnterEventcloneProc* = proc(): gen_qevent_types.QEnterEvent
proc onclone*(self: gen_qevent_types.QEnterEvent, slot: QEnterEventcloneProc) =
  # TODO check subclass
  var tmp = new QEnterEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_clone(self: ptr cQEnterEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QEnterEvent_clone ".} =
  var nimfunc = cast[ptr QEnterEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QEnterEventisBeginEvent*(self: gen_qevent_types.QEnterEvent, ): bool =
  fQEnterEvent_virtualbase_isBeginEvent(self.h)

type QEnterEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QEnterEvent, slot: QEnterEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QEnterEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_isBeginEvent(self: ptr cQEnterEvent, slot: int): bool {.exportc: "miqt_exec_callback_QEnterEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QEnterEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QEnterEventisUpdateEvent*(self: gen_qevent_types.QEnterEvent, ): bool =
  fQEnterEvent_virtualbase_isUpdateEvent(self.h)

type QEnterEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QEnterEvent, slot: QEnterEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QEnterEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_isUpdateEvent(self: ptr cQEnterEvent, slot: int): bool {.exportc: "miqt_exec_callback_QEnterEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QEnterEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QEnterEventisEndEvent*(self: gen_qevent_types.QEnterEvent, ): bool =
  fQEnterEvent_virtualbase_isEndEvent(self.h)

type QEnterEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QEnterEvent, slot: QEnterEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QEnterEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_isEndEvent(self: ptr cQEnterEvent, slot: int): bool {.exportc: "miqt_exec_callback_QEnterEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QEnterEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QEnterEventsetTimestamp*(self: gen_qevent_types.QEnterEvent, timestamp: culonglong): void =
  fQEnterEvent_virtualbase_setTimestamp(self.h, timestamp)

type QEnterEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QEnterEvent, slot: QEnterEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QEnterEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_setTimestamp(self: ptr cQEnterEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QEnterEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QEnterEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QEnterEventsetAccepted*(self: gen_qevent_types.QEnterEvent, accepted: bool): void =
  fQEnterEvent_virtualbase_setAccepted(self.h, accepted)

type QEnterEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QEnterEvent, slot: QEnterEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QEnterEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQEnterEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEnterEvent_setAccepted(self: ptr cQEnterEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QEnterEvent_setAccepted ".} =
  var nimfunc = cast[ptr QEnterEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QEnterEvent) =
  fcQEnterEvent_delete(self.h)

func init*(T: type gen_qevent_types.QMouseEvent, h: ptr cQMouseEvent): gen_qevent_types.QMouseEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new(cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new2(cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new3(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new4(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source)))

proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new5(cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new6(cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new7(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QMouseEvent, typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent.init(fcQMouseEvent_new8(cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source), device.h))

proc clone*(self: gen_qevent_types.QMouseEvent, ): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_clone(self.h))

proc pos*(self: gen_qevent_types.QMouseEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMouseEvent_pos(self.h))

proc globalPos*(self: gen_qevent_types.QMouseEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMouseEvent_globalPos(self.h))

proc x*(self: gen_qevent_types.QMouseEvent, ): cint =
  fcQMouseEvent_x(self.h)

proc y*(self: gen_qevent_types.QMouseEvent, ): cint =
  fcQMouseEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QMouseEvent, ): cint =
  fcQMouseEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QMouseEvent, ): cint =
  fcQMouseEvent_globalY(self.h)

proc localPos*(self: gen_qevent_types.QMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_localPos(self.h))

proc windowPos*(self: gen_qevent_types.QMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_windowPos(self.h))

proc screenPos*(self: gen_qevent_types.QMouseEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_screenPos(self.h))

proc source*(self: gen_qevent_types.QMouseEvent, ): cint =
  cint(fcQMouseEvent_source(self.h))

proc flags*(self: gen_qevent_types.QMouseEvent, ): cint =
  cint(fcQMouseEvent_flags(self.h))

proc QMouseEventclone*(self: gen_qevent_types.QMouseEvent, ): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fQMouseEvent_virtualbase_clone(self.h))

type QMouseEventcloneProc* = proc(): gen_qevent_types.QMouseEvent
proc onclone*(self: gen_qevent_types.QMouseEvent, slot: QMouseEventcloneProc) =
  # TODO check subclass
  var tmp = new QMouseEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_clone(self: ptr cQMouseEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QMouseEvent_clone ".} =
  var nimfunc = cast[ptr QMouseEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMouseEventisBeginEvent*(self: gen_qevent_types.QMouseEvent, ): bool =
  fQMouseEvent_virtualbase_isBeginEvent(self.h)

type QMouseEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QMouseEvent, slot: QMouseEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QMouseEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_isBeginEvent(self: ptr cQMouseEvent, slot: int): bool {.exportc: "miqt_exec_callback_QMouseEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QMouseEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMouseEventisUpdateEvent*(self: gen_qevent_types.QMouseEvent, ): bool =
  fQMouseEvent_virtualbase_isUpdateEvent(self.h)

type QMouseEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QMouseEvent, slot: QMouseEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QMouseEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_isUpdateEvent(self: ptr cQMouseEvent, slot: int): bool {.exportc: "miqt_exec_callback_QMouseEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QMouseEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMouseEventisEndEvent*(self: gen_qevent_types.QMouseEvent, ): bool =
  fQMouseEvent_virtualbase_isEndEvent(self.h)

type QMouseEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QMouseEvent, slot: QMouseEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QMouseEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_isEndEvent(self: ptr cQMouseEvent, slot: int): bool {.exportc: "miqt_exec_callback_QMouseEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QMouseEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMouseEventsetTimestamp*(self: gen_qevent_types.QMouseEvent, timestamp: culonglong): void =
  fQMouseEvent_virtualbase_setTimestamp(self.h, timestamp)

type QMouseEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QMouseEvent, slot: QMouseEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QMouseEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_setTimestamp(self: ptr cQMouseEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QMouseEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QMouseEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QMouseEventsetAccepted*(self: gen_qevent_types.QMouseEvent, accepted: bool): void =
  fQMouseEvent_virtualbase_setAccepted(self.h, accepted)

type QMouseEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QMouseEvent, slot: QMouseEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QMouseEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEvent_setAccepted(self: ptr cQMouseEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QMouseEvent_setAccepted ".} =
  var nimfunc = cast[ptr QMouseEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QMouseEvent) =
  fcQMouseEvent_delete(self.h)

func init*(T: type gen_qevent_types.QHoverEvent, h: ptr cQHoverEvent): gen_qevent_types.QHoverEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QHoverEvent, typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent.init(fcQHoverEvent_new(cint(typeVal), scenePos.h, globalPos.h, oldPos.h))

proc create*(T: type gen_qevent_types.QHoverEvent, typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent.init(fcQHoverEvent_new2(cint(typeVal), pos.h, oldPos.h))

proc create*(T: type gen_qevent_types.QHoverEvent, typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent.init(fcQHoverEvent_new3(cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QHoverEvent, typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent.init(fcQHoverEvent_new4(cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QHoverEvent, typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent.init(fcQHoverEvent_new5(cint(typeVal), pos.h, oldPos.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QHoverEvent, typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent.init(fcQHoverEvent_new6(cint(typeVal), pos.h, oldPos.h, cint(modifiers), device.h))

proc clone*(self: gen_qevent_types.QHoverEvent, ): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_clone(self.h))

proc pos*(self: gen_qevent_types.QHoverEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHoverEvent_pos(self.h))

proc posF*(self: gen_qevent_types.QHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQHoverEvent_posF(self.h))

proc isUpdateEvent*(self: gen_qevent_types.QHoverEvent, ): bool =
  fcQHoverEvent_isUpdateEvent(self.h)

proc oldPos*(self: gen_qevent_types.QHoverEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHoverEvent_oldPos(self.h))

proc oldPosF*(self: gen_qevent_types.QHoverEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQHoverEvent_oldPosF(self.h))

proc QHoverEventclone*(self: gen_qevent_types.QHoverEvent, ): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fQHoverEvent_virtualbase_clone(self.h))

type QHoverEventcloneProc* = proc(): gen_qevent_types.QHoverEvent
proc onclone*(self: gen_qevent_types.QHoverEvent, slot: QHoverEventcloneProc) =
  # TODO check subclass
  var tmp = new QHoverEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_clone(self: ptr cQHoverEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QHoverEvent_clone ".} =
  var nimfunc = cast[ptr QHoverEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHoverEventisUpdateEvent*(self: gen_qevent_types.QHoverEvent, ): bool =
  fQHoverEvent_virtualbase_isUpdateEvent(self.h)

type QHoverEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QHoverEvent, slot: QHoverEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QHoverEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_isUpdateEvent(self: ptr cQHoverEvent, slot: int): bool {.exportc: "miqt_exec_callback_QHoverEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QHoverEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHoverEventisBeginEvent*(self: gen_qevent_types.QHoverEvent, ): bool =
  fQHoverEvent_virtualbase_isBeginEvent(self.h)

type QHoverEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QHoverEvent, slot: QHoverEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QHoverEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_isBeginEvent(self: ptr cQHoverEvent, slot: int): bool {.exportc: "miqt_exec_callback_QHoverEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QHoverEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHoverEventisEndEvent*(self: gen_qevent_types.QHoverEvent, ): bool =
  fQHoverEvent_virtualbase_isEndEvent(self.h)

type QHoverEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QHoverEvent, slot: QHoverEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QHoverEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_isEndEvent(self: ptr cQHoverEvent, slot: int): bool {.exportc: "miqt_exec_callback_QHoverEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QHoverEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QHoverEventsetTimestamp*(self: gen_qevent_types.QHoverEvent, timestamp: culonglong): void =
  fQHoverEvent_virtualbase_setTimestamp(self.h, timestamp)

type QHoverEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QHoverEvent, slot: QHoverEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QHoverEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_setTimestamp(self: ptr cQHoverEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QHoverEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QHoverEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QHoverEventsetAccepted*(self: gen_qevent_types.QHoverEvent, accepted: bool): void =
  fQHoverEvent_virtualbase_setAccepted(self.h, accepted)

type QHoverEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QHoverEvent, slot: QHoverEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QHoverEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHoverEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHoverEvent_setAccepted(self: ptr cQHoverEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QHoverEvent_setAccepted ".} =
  var nimfunc = cast[ptr QHoverEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QHoverEvent) =
  fcQHoverEvent_delete(self.h)

func init*(T: type gen_qevent_types.QWheelEvent, h: ptr cQWheelEvent): gen_qevent_types.QWheelEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QWheelEvent, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent.init(fcQWheelEvent_new(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted))

proc create*(T: type gen_qevent_types.QWheelEvent, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent.init(fcQWheelEvent_new2(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source)))

proc create*(T: type gen_qevent_types.QWheelEvent, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent.init(fcQWheelEvent_new3(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source), device.h))

proc clone*(self: gen_qevent_types.QWheelEvent, ): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_clone(self.h))

proc pixelDelta*(self: gen_qevent_types.QWheelEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_pixelDelta(self.h))

proc angleDelta*(self: gen_qevent_types.QWheelEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_angleDelta(self.h))

proc phase*(self: gen_qevent_types.QWheelEvent, ): cint =
  cint(fcQWheelEvent_phase(self.h))

proc inverted*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_inverted(self.h)

proc isInverted*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_isInverted(self.h)

proc hasPixelDelta*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_hasPixelDelta(self.h)

proc isBeginEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_isEndEvent(self.h)

proc source*(self: gen_qevent_types.QWheelEvent, ): cint =
  cint(fcQWheelEvent_source(self.h))

proc QWheelEventclone*(self: gen_qevent_types.QWheelEvent, ): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fQWheelEvent_virtualbase_clone(self.h))

type QWheelEventcloneProc* = proc(): gen_qevent_types.QWheelEvent
proc onclone*(self: gen_qevent_types.QWheelEvent, slot: QWheelEventcloneProc) =
  # TODO check subclass
  var tmp = new QWheelEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_clone(self: ptr cQWheelEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QWheelEvent_clone ".} =
  var nimfunc = cast[ptr QWheelEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWheelEventisBeginEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fQWheelEvent_virtualbase_isBeginEvent(self.h)

type QWheelEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QWheelEvent, slot: QWheelEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QWheelEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_isBeginEvent(self: ptr cQWheelEvent, slot: int): bool {.exportc: "miqt_exec_callback_QWheelEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QWheelEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWheelEventisUpdateEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fQWheelEvent_virtualbase_isUpdateEvent(self.h)

type QWheelEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QWheelEvent, slot: QWheelEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QWheelEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_isUpdateEvent(self: ptr cQWheelEvent, slot: int): bool {.exportc: "miqt_exec_callback_QWheelEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QWheelEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWheelEventisEndEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fQWheelEvent_virtualbase_isEndEvent(self.h)

type QWheelEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QWheelEvent, slot: QWheelEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QWheelEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_isEndEvent(self: ptr cQWheelEvent, slot: int): bool {.exportc: "miqt_exec_callback_QWheelEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QWheelEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWheelEventsetTimestamp*(self: gen_qevent_types.QWheelEvent, timestamp: culonglong): void =
  fQWheelEvent_virtualbase_setTimestamp(self.h, timestamp)

type QWheelEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QWheelEvent, slot: QWheelEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QWheelEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_setTimestamp(self: ptr cQWheelEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QWheelEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QWheelEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QWheelEventsetAccepted*(self: gen_qevent_types.QWheelEvent, accepted: bool): void =
  fQWheelEvent_virtualbase_setAccepted(self.h, accepted)

type QWheelEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QWheelEvent, slot: QWheelEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QWheelEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWheelEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWheelEvent_setAccepted(self: ptr cQWheelEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QWheelEvent_setAccepted ".} =
  var nimfunc = cast[ptr QWheelEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QWheelEvent) =
  fcQWheelEvent_delete(self.h)

func init*(T: type gen_qevent_types.QTabletEvent, h: ptr cQTabletEvent): gen_qevent_types.QTabletEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QTabletEvent, t: cint, device: gen_qpointingdevice_types.QPointingDevice, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent.init(fcQTabletEvent_new(cint(t), device.h, pos.h, globalPos.h, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), cint(button), cint(buttons)))

proc clone*(self: gen_qevent_types.QTabletEvent, ): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_clone(self.h))

proc pos*(self: gen_qevent_types.QTabletEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTabletEvent_pos(self.h))

proc globalPos*(self: gen_qevent_types.QTabletEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTabletEvent_globalPos(self.h))

proc posF*(self: gen_qevent_types.QTabletEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTabletEvent_posF(self.h))

proc globalPosF*(self: gen_qevent_types.QTabletEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTabletEvent_globalPosF(self.h))

proc x*(self: gen_qevent_types.QTabletEvent, ): cint =
  fcQTabletEvent_x(self.h)

proc y*(self: gen_qevent_types.QTabletEvent, ): cint =
  fcQTabletEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QTabletEvent, ): cint =
  fcQTabletEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QTabletEvent, ): cint =
  fcQTabletEvent_globalY(self.h)

proc hiResGlobalX*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_hiResGlobalX(self.h)

proc hiResGlobalY*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_hiResGlobalY(self.h)

proc uniqueId*(self: gen_qevent_types.QTabletEvent, ): clonglong =
  fcQTabletEvent_uniqueId(self.h)

proc pressure*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_pressure(self.h)

proc rotation*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_rotation(self.h)

proc z*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_z(self.h)

proc tangentialPressure*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_tangentialPressure(self.h)

proc xTilt*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_xTilt(self.h)

proc yTilt*(self: gen_qevent_types.QTabletEvent, ): float64 =
  fcQTabletEvent_yTilt(self.h)

proc QTabletEventclone*(self: gen_qevent_types.QTabletEvent, ): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fQTabletEvent_virtualbase_clone(self.h))

type QTabletEventcloneProc* = proc(): gen_qevent_types.QTabletEvent
proc onclone*(self: gen_qevent_types.QTabletEvent, slot: QTabletEventcloneProc) =
  # TODO check subclass
  var tmp = new QTabletEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_clone(self: ptr cQTabletEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QTabletEvent_clone ".} =
  var nimfunc = cast[ptr QTabletEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTabletEventisBeginEvent*(self: gen_qevent_types.QTabletEvent, ): bool =
  fQTabletEvent_virtualbase_isBeginEvent(self.h)

type QTabletEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QTabletEvent, slot: QTabletEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QTabletEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_isBeginEvent(self: ptr cQTabletEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTabletEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QTabletEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTabletEventisUpdateEvent*(self: gen_qevent_types.QTabletEvent, ): bool =
  fQTabletEvent_virtualbase_isUpdateEvent(self.h)

type QTabletEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QTabletEvent, slot: QTabletEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QTabletEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_isUpdateEvent(self: ptr cQTabletEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTabletEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QTabletEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTabletEventisEndEvent*(self: gen_qevent_types.QTabletEvent, ): bool =
  fQTabletEvent_virtualbase_isEndEvent(self.h)

type QTabletEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QTabletEvent, slot: QTabletEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QTabletEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_isEndEvent(self: ptr cQTabletEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTabletEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QTabletEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTabletEventsetTimestamp*(self: gen_qevent_types.QTabletEvent, timestamp: culonglong): void =
  fQTabletEvent_virtualbase_setTimestamp(self.h, timestamp)

type QTabletEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QTabletEvent, slot: QTabletEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QTabletEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_setTimestamp(self: ptr cQTabletEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QTabletEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QTabletEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QTabletEventsetAccepted*(self: gen_qevent_types.QTabletEvent, accepted: bool): void =
  fQTabletEvent_virtualbase_setAccepted(self.h, accepted)

type QTabletEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QTabletEvent, slot: QTabletEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QTabletEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTabletEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTabletEvent_setAccepted(self: ptr cQTabletEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QTabletEvent_setAccepted ".} =
  var nimfunc = cast[ptr QTabletEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QTabletEvent) =
  fcQTabletEvent_delete(self.h)

func init*(T: type gen_qevent_types.QNativeGestureEvent, h: ptr cQNativeGestureEvent): gen_qevent_types.QNativeGestureEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QNativeGestureEvent, typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, sequenceId: culonglong, intArgument: culonglong): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent.init(fcQNativeGestureEvent_new(cint(typeVal), dev.h, localPos.h, scenePos.h, globalPos.h, value, sequenceId, intArgument))

proc create*(T: type gen_qevent_types.QNativeGestureEvent, typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent.init(fcQNativeGestureEvent_new2(cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h))

proc create*(T: type gen_qevent_types.QNativeGestureEvent, typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF, sequenceId: culonglong): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent.init(fcQNativeGestureEvent_new3(cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h, sequenceId))

proc clone*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_clone(self.h))

proc gestureType*(self: gen_qevent_types.QNativeGestureEvent, ): cint =
  cint(fcQNativeGestureEvent_gestureType(self.h))

proc fingerCount*(self: gen_qevent_types.QNativeGestureEvent, ): cint =
  fcQNativeGestureEvent_fingerCount(self.h)

proc value*(self: gen_qevent_types.QNativeGestureEvent, ): float64 =
  fcQNativeGestureEvent_value(self.h)

proc delta*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_delta(self.h))

proc pos*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQNativeGestureEvent_pos(self.h))

proc globalPos*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQNativeGestureEvent_globalPos(self.h))

proc localPos*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_localPos(self.h))

proc windowPos*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_windowPos(self.h))

proc screenPos*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_screenPos(self.h))

proc QNativeGestureEventclone*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fQNativeGestureEvent_virtualbase_clone(self.h))

type QNativeGestureEventcloneProc* = proc(): gen_qevent_types.QNativeGestureEvent
proc onclone*(self: gen_qevent_types.QNativeGestureEvent, slot: QNativeGestureEventcloneProc) =
  # TODO check subclass
  var tmp = new QNativeGestureEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_clone(self: ptr cQNativeGestureEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QNativeGestureEvent_clone ".} =
  var nimfunc = cast[ptr QNativeGestureEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QNativeGestureEventisBeginEvent*(self: gen_qevent_types.QNativeGestureEvent, ): bool =
  fQNativeGestureEvent_virtualbase_isBeginEvent(self.h)

type QNativeGestureEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QNativeGestureEvent, slot: QNativeGestureEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QNativeGestureEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_isBeginEvent(self: ptr cQNativeGestureEvent, slot: int): bool {.exportc: "miqt_exec_callback_QNativeGestureEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QNativeGestureEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QNativeGestureEventisUpdateEvent*(self: gen_qevent_types.QNativeGestureEvent, ): bool =
  fQNativeGestureEvent_virtualbase_isUpdateEvent(self.h)

type QNativeGestureEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QNativeGestureEvent, slot: QNativeGestureEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QNativeGestureEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_isUpdateEvent(self: ptr cQNativeGestureEvent, slot: int): bool {.exportc: "miqt_exec_callback_QNativeGestureEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QNativeGestureEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QNativeGestureEventisEndEvent*(self: gen_qevent_types.QNativeGestureEvent, ): bool =
  fQNativeGestureEvent_virtualbase_isEndEvent(self.h)

type QNativeGestureEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QNativeGestureEvent, slot: QNativeGestureEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QNativeGestureEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_isEndEvent(self: ptr cQNativeGestureEvent, slot: int): bool {.exportc: "miqt_exec_callback_QNativeGestureEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QNativeGestureEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QNativeGestureEventsetTimestamp*(self: gen_qevent_types.QNativeGestureEvent, timestamp: culonglong): void =
  fQNativeGestureEvent_virtualbase_setTimestamp(self.h, timestamp)

type QNativeGestureEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QNativeGestureEvent, slot: QNativeGestureEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QNativeGestureEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_setTimestamp(self: ptr cQNativeGestureEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QNativeGestureEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QNativeGestureEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QNativeGestureEventsetAccepted*(self: gen_qevent_types.QNativeGestureEvent, accepted: bool): void =
  fQNativeGestureEvent_virtualbase_setAccepted(self.h, accepted)

type QNativeGestureEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QNativeGestureEvent, slot: QNativeGestureEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QNativeGestureEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeGestureEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeGestureEvent_setAccepted(self: ptr cQNativeGestureEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QNativeGestureEvent_setAccepted ".} =
  var nimfunc = cast[ptr QNativeGestureEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QNativeGestureEvent) =
  fcQNativeGestureEvent_delete(self.h)

func init*(T: type gen_qevent_types.QKeyEvent, h: ptr cQKeyEvent): gen_qevent_types.QKeyEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new(cint(typeVal), key, cint(modifiers)))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new2(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, text: string): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new3(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, text: string, autorep: bool): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new4(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, text: string, autorep: bool, count: cushort): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new5(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new6(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new7(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool, count: cushort): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new8(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))

proc create*(T: type gen_qevent_types.QKeyEvent, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool, count: cushort, device: gen_qinputdevice_types.QInputDevice): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent.init(fcQKeyEvent_new9(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count, device.h))

proc clone*(self: gen_qevent_types.QKeyEvent, ): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_clone(self.h))

proc key*(self: gen_qevent_types.QKeyEvent, ): cint =
  fcQKeyEvent_key(self.h)

proc matches*(self: gen_qevent_types.QKeyEvent, key: cint): bool =
  fcQKeyEvent_matches(self.h, cint(key))

proc modifiers*(self: gen_qevent_types.QKeyEvent, ): cint =
  cint(fcQKeyEvent_modifiers(self.h))

proc keyCombination*(self: gen_qevent_types.QKeyEvent, ): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyEvent_keyCombination(self.h))

proc text*(self: gen_qevent_types.QKeyEvent, ): string =
  let v_ms = fcQKeyEvent_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isAutoRepeat*(self: gen_qevent_types.QKeyEvent, ): bool =
  fcQKeyEvent_isAutoRepeat(self.h)

proc count*(self: gen_qevent_types.QKeyEvent, ): cint =
  fcQKeyEvent_count(self.h)

proc nativeScanCode*(self: gen_qevent_types.QKeyEvent, ): cuint =
  fcQKeyEvent_nativeScanCode(self.h)

proc nativeVirtualKey*(self: gen_qevent_types.QKeyEvent, ): cuint =
  fcQKeyEvent_nativeVirtualKey(self.h)

proc nativeModifiers*(self: gen_qevent_types.QKeyEvent, ): cuint =
  fcQKeyEvent_nativeModifiers(self.h)

proc QKeyEventclone*(self: gen_qevent_types.QKeyEvent, ): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fQKeyEvent_virtualbase_clone(self.h))

type QKeyEventcloneProc* = proc(): gen_qevent_types.QKeyEvent
proc onclone*(self: gen_qevent_types.QKeyEvent, slot: QKeyEventcloneProc) =
  # TODO check subclass
  var tmp = new QKeyEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEvent_clone(self: ptr cQKeyEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QKeyEvent_clone ".} =
  var nimfunc = cast[ptr QKeyEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QKeyEventsetTimestamp*(self: gen_qevent_types.QKeyEvent, timestamp: culonglong): void =
  fQKeyEvent_virtualbase_setTimestamp(self.h, timestamp)

type QKeyEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QKeyEvent, slot: QKeyEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QKeyEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEvent_setTimestamp(self: ptr cQKeyEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QKeyEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QKeyEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QKeyEventsetAccepted*(self: gen_qevent_types.QKeyEvent, accepted: bool): void =
  fQKeyEvent_virtualbase_setAccepted(self.h, accepted)

type QKeyEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QKeyEvent, slot: QKeyEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QKeyEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEvent_setAccepted(self: ptr cQKeyEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QKeyEvent_setAccepted ".} =
  var nimfunc = cast[ptr QKeyEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QKeyEvent) =
  fcQKeyEvent_delete(self.h)

func init*(T: type gen_qevent_types.QFocusEvent, h: ptr cQFocusEvent): gen_qevent_types.QFocusEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QFocusEvent, typeVal: cint): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent.init(fcQFocusEvent_new(cint(typeVal)))

proc create*(T: type gen_qevent_types.QFocusEvent, typeVal: cint, reason: cint): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent.init(fcQFocusEvent_new2(cint(typeVal), cint(reason)))

proc clone*(self: gen_qevent_types.QFocusEvent, ): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_clone(self.h))

proc gotFocus*(self: gen_qevent_types.QFocusEvent, ): bool =
  fcQFocusEvent_gotFocus(self.h)

proc lostFocus*(self: gen_qevent_types.QFocusEvent, ): bool =
  fcQFocusEvent_lostFocus(self.h)

proc reason*(self: gen_qevent_types.QFocusEvent, ): cint =
  cint(fcQFocusEvent_reason(self.h))

proc QFocusEventclone*(self: gen_qevent_types.QFocusEvent, ): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fQFocusEvent_virtualbase_clone(self.h))

type QFocusEventcloneProc* = proc(): gen_qevent_types.QFocusEvent
proc onclone*(self: gen_qevent_types.QFocusEvent, slot: QFocusEventcloneProc) =
  # TODO check subclass
  var tmp = new QFocusEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusEvent_clone(self: ptr cQFocusEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QFocusEvent_clone ".} =
  var nimfunc = cast[ptr QFocusEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFocusEventsetAccepted*(self: gen_qevent_types.QFocusEvent, accepted: bool): void =
  fQFocusEvent_virtualbase_setAccepted(self.h, accepted)

type QFocusEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QFocusEvent, slot: QFocusEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QFocusEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFocusEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFocusEvent_setAccepted(self: ptr cQFocusEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QFocusEvent_setAccepted ".} =
  var nimfunc = cast[ptr QFocusEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QFocusEvent) =
  fcQFocusEvent_delete(self.h)

func init*(T: type gen_qevent_types.QPaintEvent, h: ptr cQPaintEvent): gen_qevent_types.QPaintEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QPaintEvent, paintRegion: gen_qregion_types.QRegion): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent.init(fcQPaintEvent_new(paintRegion.h))

proc create*(T: type gen_qevent_types.QPaintEvent, paintRect: gen_qrect_types.QRect): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent.init(fcQPaintEvent_new2(paintRect.h))

proc clone*(self: gen_qevent_types.QPaintEvent, ): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_clone(self.h))

proc rect*(self: gen_qevent_types.QPaintEvent, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPaintEvent_rect(self.h))

proc region*(self: gen_qevent_types.QPaintEvent, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQPaintEvent_region(self.h))

proc QPaintEventclone*(self: gen_qevent_types.QPaintEvent, ): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fQPaintEvent_virtualbase_clone(self.h))

type QPaintEventcloneProc* = proc(): gen_qevent_types.QPaintEvent
proc onclone*(self: gen_qevent_types.QPaintEvent, slot: QPaintEventcloneProc) =
  # TODO check subclass
  var tmp = new QPaintEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEvent_clone(self: ptr cQPaintEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QPaintEvent_clone ".} =
  var nimfunc = cast[ptr QPaintEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPaintEventsetAccepted*(self: gen_qevent_types.QPaintEvent, accepted: bool): void =
  fQPaintEvent_virtualbase_setAccepted(self.h, accepted)

type QPaintEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QPaintEvent, slot: QPaintEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QPaintEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPaintEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPaintEvent_setAccepted(self: ptr cQPaintEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QPaintEvent_setAccepted ".} =
  var nimfunc = cast[ptr QPaintEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QPaintEvent) =
  fcQPaintEvent_delete(self.h)

func init*(T: type gen_qevent_types.QMoveEvent, h: ptr cQMoveEvent): gen_qevent_types.QMoveEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QMoveEvent, pos: gen_qpoint_types.QPoint, oldPos: gen_qpoint_types.QPoint): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent.init(fcQMoveEvent_new(pos.h, oldPos.h))

proc clone*(self: gen_qevent_types.QMoveEvent, ): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_clone(self.h))

proc pos*(self: gen_qevent_types.QMoveEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_pos(self.h))

proc oldPos*(self: gen_qevent_types.QMoveEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_oldPos(self.h))

proc QMoveEventclone*(self: gen_qevent_types.QMoveEvent, ): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fQMoveEvent_virtualbase_clone(self.h))

type QMoveEventcloneProc* = proc(): gen_qevent_types.QMoveEvent
proc onclone*(self: gen_qevent_types.QMoveEvent, slot: QMoveEventcloneProc) =
  # TODO check subclass
  var tmp = new QMoveEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMoveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMoveEvent_clone(self: ptr cQMoveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QMoveEvent_clone ".} =
  var nimfunc = cast[ptr QMoveEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMoveEventsetAccepted*(self: gen_qevent_types.QMoveEvent, accepted: bool): void =
  fQMoveEvent_virtualbase_setAccepted(self.h, accepted)

type QMoveEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QMoveEvent, slot: QMoveEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QMoveEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMoveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMoveEvent_setAccepted(self: ptr cQMoveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QMoveEvent_setAccepted ".} =
  var nimfunc = cast[ptr QMoveEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QMoveEvent) =
  fcQMoveEvent_delete(self.h)

func init*(T: type gen_qevent_types.QExposeEvent, h: ptr cQExposeEvent): gen_qevent_types.QExposeEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QExposeEvent, m_region: gen_qregion_types.QRegion): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent.init(fcQExposeEvent_new(m_region.h))

proc clone*(self: gen_qevent_types.QExposeEvent, ): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_clone(self.h))

proc region*(self: gen_qevent_types.QExposeEvent, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQExposeEvent_region(self.h))

proc QExposeEventclone*(self: gen_qevent_types.QExposeEvent, ): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fQExposeEvent_virtualbase_clone(self.h))

type QExposeEventcloneProc* = proc(): gen_qevent_types.QExposeEvent
proc onclone*(self: gen_qevent_types.QExposeEvent, slot: QExposeEventcloneProc) =
  # TODO check subclass
  var tmp = new QExposeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQExposeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QExposeEvent_clone(self: ptr cQExposeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QExposeEvent_clone ".} =
  var nimfunc = cast[ptr QExposeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QExposeEventsetAccepted*(self: gen_qevent_types.QExposeEvent, accepted: bool): void =
  fQExposeEvent_virtualbase_setAccepted(self.h, accepted)

type QExposeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QExposeEvent, slot: QExposeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QExposeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQExposeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QExposeEvent_setAccepted(self: ptr cQExposeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QExposeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QExposeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QExposeEvent) =
  fcQExposeEvent_delete(self.h)

func init*(T: type gen_qevent_types.QPlatformSurfaceEvent, h: ptr cQPlatformSurfaceEvent): gen_qevent_types.QPlatformSurfaceEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QPlatformSurfaceEvent, surfaceEventType: cint): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent.init(fcQPlatformSurfaceEvent_new(cint(surfaceEventType)))

proc clone*(self: gen_qevent_types.QPlatformSurfaceEvent, ): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_clone(self.h))

proc surfaceEventType*(self: gen_qevent_types.QPlatformSurfaceEvent, ): cint =
  cint(fcQPlatformSurfaceEvent_surfaceEventType(self.h))

proc QPlatformSurfaceEventclone*(self: gen_qevent_types.QPlatformSurfaceEvent, ): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fQPlatformSurfaceEvent_virtualbase_clone(self.h))

type QPlatformSurfaceEventcloneProc* = proc(): gen_qevent_types.QPlatformSurfaceEvent
proc onclone*(self: gen_qevent_types.QPlatformSurfaceEvent, slot: QPlatformSurfaceEventcloneProc) =
  # TODO check subclass
  var tmp = new QPlatformSurfaceEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlatformSurfaceEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlatformSurfaceEvent_clone(self: ptr cQPlatformSurfaceEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QPlatformSurfaceEvent_clone ".} =
  var nimfunc = cast[ptr QPlatformSurfaceEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPlatformSurfaceEventsetAccepted*(self: gen_qevent_types.QPlatformSurfaceEvent, accepted: bool): void =
  fQPlatformSurfaceEvent_virtualbase_setAccepted(self.h, accepted)

type QPlatformSurfaceEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QPlatformSurfaceEvent, slot: QPlatformSurfaceEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QPlatformSurfaceEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPlatformSurfaceEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPlatformSurfaceEvent_setAccepted(self: ptr cQPlatformSurfaceEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QPlatformSurfaceEvent_setAccepted ".} =
  var nimfunc = cast[ptr QPlatformSurfaceEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QPlatformSurfaceEvent) =
  fcQPlatformSurfaceEvent_delete(self.h)

func init*(T: type gen_qevent_types.QResizeEvent, h: ptr cQResizeEvent): gen_qevent_types.QResizeEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QResizeEvent, size: gen_qsize_types.QSize, oldSize: gen_qsize_types.QSize): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent.init(fcQResizeEvent_new(size.h, oldSize.h))

proc clone*(self: gen_qevent_types.QResizeEvent, ): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_clone(self.h))

proc size*(self: gen_qevent_types.QResizeEvent, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_size(self.h))

proc oldSize*(self: gen_qevent_types.QResizeEvent, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_oldSize(self.h))

proc QResizeEventclone*(self: gen_qevent_types.QResizeEvent, ): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fQResizeEvent_virtualbase_clone(self.h))

type QResizeEventcloneProc* = proc(): gen_qevent_types.QResizeEvent
proc onclone*(self: gen_qevent_types.QResizeEvent, slot: QResizeEventcloneProc) =
  # TODO check subclass
  var tmp = new QResizeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQResizeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QResizeEvent_clone(self: ptr cQResizeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QResizeEvent_clone ".} =
  var nimfunc = cast[ptr QResizeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QResizeEventsetAccepted*(self: gen_qevent_types.QResizeEvent, accepted: bool): void =
  fQResizeEvent_virtualbase_setAccepted(self.h, accepted)

type QResizeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QResizeEvent, slot: QResizeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QResizeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQResizeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QResizeEvent_setAccepted(self: ptr cQResizeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QResizeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QResizeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QResizeEvent) =
  fcQResizeEvent_delete(self.h)

func init*(T: type gen_qevent_types.QCloseEvent, h: ptr cQCloseEvent): gen_qevent_types.QCloseEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QCloseEvent, ): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent.init(fcQCloseEvent_new())

proc clone*(self: gen_qevent_types.QCloseEvent, ): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_clone(self.h))

proc QCloseEventclone*(self: gen_qevent_types.QCloseEvent, ): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fQCloseEvent_virtualbase_clone(self.h))

type QCloseEventcloneProc* = proc(): gen_qevent_types.QCloseEvent
proc onclone*(self: gen_qevent_types.QCloseEvent, slot: QCloseEventcloneProc) =
  # TODO check subclass
  var tmp = new QCloseEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCloseEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCloseEvent_clone(self: ptr cQCloseEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QCloseEvent_clone ".} =
  var nimfunc = cast[ptr QCloseEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCloseEventsetAccepted*(self: gen_qevent_types.QCloseEvent, accepted: bool): void =
  fQCloseEvent_virtualbase_setAccepted(self.h, accepted)

type QCloseEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QCloseEvent, slot: QCloseEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QCloseEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCloseEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCloseEvent_setAccepted(self: ptr cQCloseEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QCloseEvent_setAccepted ".} =
  var nimfunc = cast[ptr QCloseEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QCloseEvent) =
  fcQCloseEvent_delete(self.h)

func init*(T: type gen_qevent_types.QIconDragEvent, h: ptr cQIconDragEvent): gen_qevent_types.QIconDragEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QIconDragEvent, ): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent.init(fcQIconDragEvent_new())

proc clone*(self: gen_qevent_types.QIconDragEvent, ): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_clone(self.h))

proc QIconDragEventclone*(self: gen_qevent_types.QIconDragEvent, ): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fQIconDragEvent_virtualbase_clone(self.h))

type QIconDragEventcloneProc* = proc(): gen_qevent_types.QIconDragEvent
proc onclone*(self: gen_qevent_types.QIconDragEvent, slot: QIconDragEventcloneProc) =
  # TODO check subclass
  var tmp = new QIconDragEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconDragEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconDragEvent_clone(self: ptr cQIconDragEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QIconDragEvent_clone ".} =
  var nimfunc = cast[ptr QIconDragEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QIconDragEventsetAccepted*(self: gen_qevent_types.QIconDragEvent, accepted: bool): void =
  fQIconDragEvent_virtualbase_setAccepted(self.h, accepted)

type QIconDragEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QIconDragEvent, slot: QIconDragEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QIconDragEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQIconDragEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIconDragEvent_setAccepted(self: ptr cQIconDragEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QIconDragEvent_setAccepted ".} =
  var nimfunc = cast[ptr QIconDragEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QIconDragEvent) =
  fcQIconDragEvent_delete(self.h)

func init*(T: type gen_qevent_types.QShowEvent, h: ptr cQShowEvent): gen_qevent_types.QShowEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QShowEvent, ): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent.init(fcQShowEvent_new())

proc clone*(self: gen_qevent_types.QShowEvent, ): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fcQShowEvent_clone(self.h))

proc QShowEventclone*(self: gen_qevent_types.QShowEvent, ): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fQShowEvent_virtualbase_clone(self.h))

type QShowEventcloneProc* = proc(): gen_qevent_types.QShowEvent
proc onclone*(self: gen_qevent_types.QShowEvent, slot: QShowEventcloneProc) =
  # TODO check subclass
  var tmp = new QShowEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShowEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShowEvent_clone(self: ptr cQShowEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QShowEvent_clone ".} =
  var nimfunc = cast[ptr QShowEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QShowEventsetAccepted*(self: gen_qevent_types.QShowEvent, accepted: bool): void =
  fQShowEvent_virtualbase_setAccepted(self.h, accepted)

type QShowEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QShowEvent, slot: QShowEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QShowEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShowEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShowEvent_setAccepted(self: ptr cQShowEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QShowEvent_setAccepted ".} =
  var nimfunc = cast[ptr QShowEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QShowEvent) =
  fcQShowEvent_delete(self.h)

func init*(T: type gen_qevent_types.QHideEvent, h: ptr cQHideEvent): gen_qevent_types.QHideEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QHideEvent, ): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent.init(fcQHideEvent_new())

proc clone*(self: gen_qevent_types.QHideEvent, ): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fcQHideEvent_clone(self.h))

proc QHideEventclone*(self: gen_qevent_types.QHideEvent, ): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fQHideEvent_virtualbase_clone(self.h))

type QHideEventcloneProc* = proc(): gen_qevent_types.QHideEvent
proc onclone*(self: gen_qevent_types.QHideEvent, slot: QHideEventcloneProc) =
  # TODO check subclass
  var tmp = new QHideEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHideEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHideEvent_clone(self: ptr cQHideEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QHideEvent_clone ".} =
  var nimfunc = cast[ptr QHideEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHideEventsetAccepted*(self: gen_qevent_types.QHideEvent, accepted: bool): void =
  fQHideEvent_virtualbase_setAccepted(self.h, accepted)

type QHideEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QHideEvent, slot: QHideEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QHideEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHideEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHideEvent_setAccepted(self: ptr cQHideEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QHideEvent_setAccepted ".} =
  var nimfunc = cast[ptr QHideEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QHideEvent) =
  fcQHideEvent_delete(self.h)

func init*(T: type gen_qevent_types.QContextMenuEvent, h: ptr cQContextMenuEvent): gen_qevent_types.QContextMenuEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QContextMenuEvent, reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent.init(fcQContextMenuEvent_new(cint(reason), pos.h, globalPos.h))

proc create*(T: type gen_qevent_types.QContextMenuEvent, reason: cint, pos: gen_qpoint_types.QPoint): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent.init(fcQContextMenuEvent_new2(cint(reason), pos.h))

proc create*(T: type gen_qevent_types.QContextMenuEvent, reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint, modifiers: cint): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent.init(fcQContextMenuEvent_new3(cint(reason), pos.h, globalPos.h, cint(modifiers)))

proc clone*(self: gen_qevent_types.QContextMenuEvent, ): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_clone(self.h))

proc x*(self: gen_qevent_types.QContextMenuEvent, ): cint =
  fcQContextMenuEvent_x(self.h)

proc y*(self: gen_qevent_types.QContextMenuEvent, ): cint =
  fcQContextMenuEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QContextMenuEvent, ): cint =
  fcQContextMenuEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QContextMenuEvent, ): cint =
  fcQContextMenuEvent_globalY(self.h)

proc pos*(self: gen_qevent_types.QContextMenuEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQContextMenuEvent_pos(self.h))

proc globalPos*(self: gen_qevent_types.QContextMenuEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQContextMenuEvent_globalPos(self.h))

proc reason*(self: gen_qevent_types.QContextMenuEvent, ): cint =
  cint(fcQContextMenuEvent_reason(self.h))

proc QContextMenuEventclone*(self: gen_qevent_types.QContextMenuEvent, ): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fQContextMenuEvent_virtualbase_clone(self.h))

type QContextMenuEventcloneProc* = proc(): gen_qevent_types.QContextMenuEvent
proc onclone*(self: gen_qevent_types.QContextMenuEvent, slot: QContextMenuEventcloneProc) =
  # TODO check subclass
  var tmp = new QContextMenuEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQContextMenuEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QContextMenuEvent_clone(self: ptr cQContextMenuEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QContextMenuEvent_clone ".} =
  var nimfunc = cast[ptr QContextMenuEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QContextMenuEventsetTimestamp*(self: gen_qevent_types.QContextMenuEvent, timestamp: culonglong): void =
  fQContextMenuEvent_virtualbase_setTimestamp(self.h, timestamp)

type QContextMenuEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QContextMenuEvent, slot: QContextMenuEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QContextMenuEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQContextMenuEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QContextMenuEvent_setTimestamp(self: ptr cQContextMenuEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QContextMenuEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QContextMenuEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QContextMenuEventsetAccepted*(self: gen_qevent_types.QContextMenuEvent, accepted: bool): void =
  fQContextMenuEvent_virtualbase_setAccepted(self.h, accepted)

type QContextMenuEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QContextMenuEvent, slot: QContextMenuEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QContextMenuEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQContextMenuEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QContextMenuEvent_setAccepted(self: ptr cQContextMenuEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QContextMenuEvent_setAccepted ".} =
  var nimfunc = cast[ptr QContextMenuEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QContextMenuEvent) =
  fcQContextMenuEvent_delete(self.h)

func init*(T: type gen_qevent_types.QInputMethodEvent, h: ptr cQInputMethodEvent): gen_qevent_types.QInputMethodEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QInputMethodEvent, ): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent.init(fcQInputMethodEvent_new())

proc create*(T: type gen_qevent_types.QInputMethodEvent, preeditText: string, attributes: seq[gen_qevent_types.QInputMethodEventAttribute]): gen_qevent_types.QInputMethodEvent =
  var attributes_CArray = newSeq[pointer](len(attributes))
  for i in 0..<len(attributes):
    attributes_CArray[i] = attributes[i].h

  gen_qevent_types.QInputMethodEvent.init(fcQInputMethodEvent_new2(struct_miqt_string(data: preeditText, len: csize_t(len(preeditText))), struct_miqt_array(len: csize_t(len(attributes)), data: if len(attributes) == 0: nil else: addr(attributes_CArray[0]))))

proc clone*(self: gen_qevent_types.QInputMethodEvent, ): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_clone(self.h))

proc setCommitString*(self: gen_qevent_types.QInputMethodEvent, commitString: string): void =
  fcQInputMethodEvent_setCommitString(self.h, struct_miqt_string(data: commitString, len: csize_t(len(commitString))))

proc attributes*(self: gen_qevent_types.QInputMethodEvent, ): seq[gen_qevent_types.QInputMethodEventAttribute] =
  var v_ma = fcQInputMethodEvent_attributes(self.h)
  var vx_ret = newSeq[gen_qevent_types.QInputMethodEventAttribute](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qevent_types.QInputMethodEventAttribute(h: v_outCast[i])
  vx_ret

proc preeditString*(self: gen_qevent_types.QInputMethodEvent, ): string =
  let v_ms = fcQInputMethodEvent_preeditString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc commitString*(self: gen_qevent_types.QInputMethodEvent, ): string =
  let v_ms = fcQInputMethodEvent_commitString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc replacementStart*(self: gen_qevent_types.QInputMethodEvent, ): cint =
  fcQInputMethodEvent_replacementStart(self.h)

proc replacementLength*(self: gen_qevent_types.QInputMethodEvent, ): cint =
  fcQInputMethodEvent_replacementLength(self.h)

proc setCommitString*(self: gen_qevent_types.QInputMethodEvent, commitString: string, replaceFrom: cint): void =
  fcQInputMethodEvent_setCommitString2(self.h, struct_miqt_string(data: commitString, len: csize_t(len(commitString))), replaceFrom)

proc setCommitString*(self: gen_qevent_types.QInputMethodEvent, commitString: string, replaceFrom: cint, replaceLength: cint): void =
  fcQInputMethodEvent_setCommitString3(self.h, struct_miqt_string(data: commitString, len: csize_t(len(commitString))), replaceFrom, replaceLength)

proc QInputMethodEventclone*(self: gen_qevent_types.QInputMethodEvent, ): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent(h: fQInputMethodEvent_virtualbase_clone(self.h))

type QInputMethodEventcloneProc* = proc(): gen_qevent_types.QInputMethodEvent
proc onclone*(self: gen_qevent_types.QInputMethodEvent, slot: QInputMethodEventcloneProc) =
  # TODO check subclass
  var tmp = new QInputMethodEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodEvent_clone(self: ptr cQInputMethodEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QInputMethodEvent_clone ".} =
  var nimfunc = cast[ptr QInputMethodEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputMethodEventsetAccepted*(self: gen_qevent_types.QInputMethodEvent, accepted: bool): void =
  fQInputMethodEvent_virtualbase_setAccepted(self.h, accepted)

type QInputMethodEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QInputMethodEvent, slot: QInputMethodEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QInputMethodEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodEvent_setAccepted(self: ptr cQInputMethodEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QInputMethodEvent_setAccepted ".} =
  var nimfunc = cast[ptr QInputMethodEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QInputMethodEvent) =
  fcQInputMethodEvent_delete(self.h)

func init*(T: type gen_qevent_types.QInputMethodQueryEvent, h: ptr cQInputMethodQueryEvent): gen_qevent_types.QInputMethodQueryEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QInputMethodQueryEvent, queries: cint): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent.init(fcQInputMethodQueryEvent_new(cint(queries)))

proc clone*(self: gen_qevent_types.QInputMethodQueryEvent, ): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_clone(self.h))

proc queries*(self: gen_qevent_types.QInputMethodQueryEvent, ): cint =
  cint(fcQInputMethodQueryEvent_queries(self.h))

proc setValue*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint, value: gen_qvariant_types.QVariant): void =
  fcQInputMethodQueryEvent_setValue(self.h, cint(query), value.h)

proc value*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQInputMethodQueryEvent_value(self.h, cint(query)))

proc QInputMethodQueryEventclone*(self: gen_qevent_types.QInputMethodQueryEvent, ): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fQInputMethodQueryEvent_virtualbase_clone(self.h))

type QInputMethodQueryEventcloneProc* = proc(): gen_qevent_types.QInputMethodQueryEvent
proc onclone*(self: gen_qevent_types.QInputMethodQueryEvent, slot: QInputMethodQueryEventcloneProc) =
  # TODO check subclass
  var tmp = new QInputMethodQueryEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodQueryEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodQueryEvent_clone(self: ptr cQInputMethodQueryEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QInputMethodQueryEvent_clone ".} =
  var nimfunc = cast[ptr QInputMethodQueryEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputMethodQueryEventsetAccepted*(self: gen_qevent_types.QInputMethodQueryEvent, accepted: bool): void =
  fQInputMethodQueryEvent_virtualbase_setAccepted(self.h, accepted)

type QInputMethodQueryEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QInputMethodQueryEvent, slot: QInputMethodQueryEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QInputMethodQueryEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputMethodQueryEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputMethodQueryEvent_setAccepted(self: ptr cQInputMethodQueryEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QInputMethodQueryEvent_setAccepted ".} =
  var nimfunc = cast[ptr QInputMethodQueryEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QInputMethodQueryEvent) =
  fcQInputMethodQueryEvent_delete(self.h)

func init*(T: type gen_qevent_types.QDropEvent, h: ptr cQDropEvent): gen_qevent_types.QDropEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QDropEvent, pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent.init(fcQDropEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QDropEvent, pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent.init(fcQDropEvent_new2(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))

proc clone*(self: gen_qevent_types.QDropEvent, ): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fcQDropEvent_clone(self.h))

proc pos*(self: gen_qevent_types.QDropEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQDropEvent_pos(self.h))

proc posF*(self: gen_qevent_types.QDropEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQDropEvent_posF(self.h))

proc mouseButtons*(self: gen_qevent_types.QDropEvent, ): cint =
  cint(fcQDropEvent_mouseButtons(self.h))

proc keyboardModifiers*(self: gen_qevent_types.QDropEvent, ): cint =
  cint(fcQDropEvent_keyboardModifiers(self.h))

proc position*(self: gen_qevent_types.QDropEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQDropEvent_position(self.h))

proc buttons*(self: gen_qevent_types.QDropEvent, ): cint =
  cint(fcQDropEvent_buttons(self.h))

proc modifiers*(self: gen_qevent_types.QDropEvent, ): cint =
  cint(fcQDropEvent_modifiers(self.h))

proc possibleActions*(self: gen_qevent_types.QDropEvent, ): cint =
  cint(fcQDropEvent_possibleActions(self.h))

proc proposedAction*(self: gen_qevent_types.QDropEvent, ): cint =
  cint(fcQDropEvent_proposedAction(self.h))

proc acceptProposedAction*(self: gen_qevent_types.QDropEvent, ): void =
  fcQDropEvent_acceptProposedAction(self.h)

proc dropAction*(self: gen_qevent_types.QDropEvent, ): cint =
  cint(fcQDropEvent_dropAction(self.h))

proc setDropAction*(self: gen_qevent_types.QDropEvent, action: cint): void =
  fcQDropEvent_setDropAction(self.h, cint(action))

proc source*(self: gen_qevent_types.QDropEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDropEvent_source(self.h))

proc mimeData*(self: gen_qevent_types.QDropEvent, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQDropEvent_mimeData(self.h))

proc QDropEventclone*(self: gen_qevent_types.QDropEvent, ): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fQDropEvent_virtualbase_clone(self.h))

type QDropEventcloneProc* = proc(): gen_qevent_types.QDropEvent
proc onclone*(self: gen_qevent_types.QDropEvent, slot: QDropEventcloneProc) =
  # TODO check subclass
  var tmp = new QDropEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDropEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDropEvent_clone(self: ptr cQDropEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDropEvent_clone ".} =
  var nimfunc = cast[ptr QDropEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDropEventsetAccepted*(self: gen_qevent_types.QDropEvent, accepted: bool): void =
  fQDropEvent_virtualbase_setAccepted(self.h, accepted)

type QDropEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QDropEvent, slot: QDropEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QDropEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDropEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDropEvent_setAccepted(self: ptr cQDropEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDropEvent_setAccepted ".} =
  var nimfunc = cast[ptr QDropEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QDropEvent) =
  fcQDropEvent_delete(self.h)

func init*(T: type gen_qevent_types.QDragMoveEvent, h: ptr cQDragMoveEvent): gen_qevent_types.QDragMoveEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QDragMoveEvent, pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent.init(fcQDragMoveEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QDragMoveEvent, pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent.init(fcQDragMoveEvent_new2(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))

proc clone*(self: gen_qevent_types.QDragMoveEvent, ): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_clone(self.h))

proc answerRect*(self: gen_qevent_types.QDragMoveEvent, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDragMoveEvent_answerRect(self.h))

proc accept*(self: gen_qevent_types.QDragMoveEvent, ): void =
  fcQDragMoveEvent_accept(self.h)

proc ignore*(self: gen_qevent_types.QDragMoveEvent, ): void =
  fcQDragMoveEvent_ignore(self.h)

proc accept*(self: gen_qevent_types.QDragMoveEvent, r: gen_qrect_types.QRect): void =
  fcQDragMoveEvent_acceptWithQRect(self.h, r.h)

proc ignore*(self: gen_qevent_types.QDragMoveEvent, r: gen_qrect_types.QRect): void =
  fcQDragMoveEvent_ignoreWithQRect(self.h, r.h)

proc QDragMoveEventclone*(self: gen_qevent_types.QDragMoveEvent, ): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fQDragMoveEvent_virtualbase_clone(self.h))

type QDragMoveEventcloneProc* = proc(): gen_qevent_types.QDragMoveEvent
proc onclone*(self: gen_qevent_types.QDragMoveEvent, slot: QDragMoveEventcloneProc) =
  # TODO check subclass
  var tmp = new QDragMoveEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDragMoveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragMoveEvent_clone(self: ptr cQDragMoveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDragMoveEvent_clone ".} =
  var nimfunc = cast[ptr QDragMoveEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDragMoveEventsetAccepted*(self: gen_qevent_types.QDragMoveEvent, accepted: bool): void =
  fQDragMoveEvent_virtualbase_setAccepted(self.h, accepted)

type QDragMoveEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QDragMoveEvent, slot: QDragMoveEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QDragMoveEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDragMoveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragMoveEvent_setAccepted(self: ptr cQDragMoveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDragMoveEvent_setAccepted ".} =
  var nimfunc = cast[ptr QDragMoveEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QDragMoveEvent) =
  fcQDragMoveEvent_delete(self.h)

func init*(T: type gen_qevent_types.QDragEnterEvent, h: ptr cQDragEnterEvent): gen_qevent_types.QDragEnterEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QDragEnterEvent, pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent.init(fcQDragEnterEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))

proc clone*(self: gen_qevent_types.QDragEnterEvent, ): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_clone(self.h))

proc QDragEnterEventclone*(self: gen_qevent_types.QDragEnterEvent, ): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fQDragEnterEvent_virtualbase_clone(self.h))

type QDragEnterEventcloneProc* = proc(): gen_qevent_types.QDragEnterEvent
proc onclone*(self: gen_qevent_types.QDragEnterEvent, slot: QDragEnterEventcloneProc) =
  # TODO check subclass
  var tmp = new QDragEnterEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDragEnterEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragEnterEvent_clone(self: ptr cQDragEnterEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDragEnterEvent_clone ".} =
  var nimfunc = cast[ptr QDragEnterEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDragEnterEventsetAccepted*(self: gen_qevent_types.QDragEnterEvent, accepted: bool): void =
  fQDragEnterEvent_virtualbase_setAccepted(self.h, accepted)

type QDragEnterEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QDragEnterEvent, slot: QDragEnterEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QDragEnterEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDragEnterEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragEnterEvent_setAccepted(self: ptr cQDragEnterEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDragEnterEvent_setAccepted ".} =
  var nimfunc = cast[ptr QDragEnterEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QDragEnterEvent) =
  fcQDragEnterEvent_delete(self.h)

func init*(T: type gen_qevent_types.QDragLeaveEvent, h: ptr cQDragLeaveEvent): gen_qevent_types.QDragLeaveEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QDragLeaveEvent, ): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent.init(fcQDragLeaveEvent_new())

proc clone*(self: gen_qevent_types.QDragLeaveEvent, ): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_clone(self.h))

proc QDragLeaveEventclone*(self: gen_qevent_types.QDragLeaveEvent, ): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fQDragLeaveEvent_virtualbase_clone(self.h))

type QDragLeaveEventcloneProc* = proc(): gen_qevent_types.QDragLeaveEvent
proc onclone*(self: gen_qevent_types.QDragLeaveEvent, slot: QDragLeaveEventcloneProc) =
  # TODO check subclass
  var tmp = new QDragLeaveEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDragLeaveEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragLeaveEvent_clone(self: ptr cQDragLeaveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDragLeaveEvent_clone ".} =
  var nimfunc = cast[ptr QDragLeaveEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDragLeaveEventsetAccepted*(self: gen_qevent_types.QDragLeaveEvent, accepted: bool): void =
  fQDragLeaveEvent_virtualbase_setAccepted(self.h, accepted)

type QDragLeaveEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QDragLeaveEvent, slot: QDragLeaveEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QDragLeaveEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDragLeaveEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDragLeaveEvent_setAccepted(self: ptr cQDragLeaveEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDragLeaveEvent_setAccepted ".} =
  var nimfunc = cast[ptr QDragLeaveEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QDragLeaveEvent) =
  fcQDragLeaveEvent_delete(self.h)

func init*(T: type gen_qevent_types.QHelpEvent, h: ptr cQHelpEvent): gen_qevent_types.QHelpEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QHelpEvent, typeVal: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent.init(fcQHelpEvent_new(cint(typeVal), pos.h, globalPos.h))

proc clone*(self: gen_qevent_types.QHelpEvent, ): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_clone(self.h))

proc x*(self: gen_qevent_types.QHelpEvent, ): cint =
  fcQHelpEvent_x(self.h)

proc y*(self: gen_qevent_types.QHelpEvent, ): cint =
  fcQHelpEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QHelpEvent, ): cint =
  fcQHelpEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QHelpEvent, ): cint =
  fcQHelpEvent_globalY(self.h)

proc pos*(self: gen_qevent_types.QHelpEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHelpEvent_pos(self.h))

proc globalPos*(self: gen_qevent_types.QHelpEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHelpEvent_globalPos(self.h))

proc QHelpEventclone*(self: gen_qevent_types.QHelpEvent, ): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent(h: fQHelpEvent_virtualbase_clone(self.h))

type QHelpEventcloneProc* = proc(): gen_qevent_types.QHelpEvent
proc onclone*(self: gen_qevent_types.QHelpEvent, slot: QHelpEventcloneProc) =
  # TODO check subclass
  var tmp = new QHelpEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHelpEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHelpEvent_clone(self: ptr cQHelpEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QHelpEvent_clone ".} =
  var nimfunc = cast[ptr QHelpEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QHelpEventsetAccepted*(self: gen_qevent_types.QHelpEvent, accepted: bool): void =
  fQHelpEvent_virtualbase_setAccepted(self.h, accepted)

type QHelpEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QHelpEvent, slot: QHelpEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QHelpEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHelpEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHelpEvent_setAccepted(self: ptr cQHelpEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QHelpEvent_setAccepted ".} =
  var nimfunc = cast[ptr QHelpEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QHelpEvent) =
  fcQHelpEvent_delete(self.h)

func init*(T: type gen_qevent_types.QStatusTipEvent, h: ptr cQStatusTipEvent): gen_qevent_types.QStatusTipEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QStatusTipEvent, tip: string): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent.init(fcQStatusTipEvent_new(struct_miqt_string(data: tip, len: csize_t(len(tip)))))

proc clone*(self: gen_qevent_types.QStatusTipEvent, ): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_clone(self.h))

proc tip*(self: gen_qevent_types.QStatusTipEvent, ): string =
  let v_ms = fcQStatusTipEvent_tip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QStatusTipEventclone*(self: gen_qevent_types.QStatusTipEvent, ): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fQStatusTipEvent_virtualbase_clone(self.h))

type QStatusTipEventcloneProc* = proc(): gen_qevent_types.QStatusTipEvent
proc onclone*(self: gen_qevent_types.QStatusTipEvent, slot: QStatusTipEventcloneProc) =
  # TODO check subclass
  var tmp = new QStatusTipEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusTipEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusTipEvent_clone(self: ptr cQStatusTipEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusTipEvent_clone ".} =
  var nimfunc = cast[ptr QStatusTipEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStatusTipEventsetAccepted*(self: gen_qevent_types.QStatusTipEvent, accepted: bool): void =
  fQStatusTipEvent_virtualbase_setAccepted(self.h, accepted)

type QStatusTipEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QStatusTipEvent, slot: QStatusTipEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QStatusTipEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusTipEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusTipEvent_setAccepted(self: ptr cQStatusTipEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QStatusTipEvent_setAccepted ".} =
  var nimfunc = cast[ptr QStatusTipEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QStatusTipEvent) =
  fcQStatusTipEvent_delete(self.h)

func init*(T: type gen_qevent_types.QWhatsThisClickedEvent, h: ptr cQWhatsThisClickedEvent): gen_qevent_types.QWhatsThisClickedEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QWhatsThisClickedEvent, href: string): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent.init(fcQWhatsThisClickedEvent_new(struct_miqt_string(data: href, len: csize_t(len(href)))))

proc clone*(self: gen_qevent_types.QWhatsThisClickedEvent, ): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_clone(self.h))

proc href*(self: gen_qevent_types.QWhatsThisClickedEvent, ): string =
  let v_ms = fcQWhatsThisClickedEvent_href(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWhatsThisClickedEventclone*(self: gen_qevent_types.QWhatsThisClickedEvent, ): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fQWhatsThisClickedEvent_virtualbase_clone(self.h))

type QWhatsThisClickedEventcloneProc* = proc(): gen_qevent_types.QWhatsThisClickedEvent
proc onclone*(self: gen_qevent_types.QWhatsThisClickedEvent, slot: QWhatsThisClickedEventcloneProc) =
  # TODO check subclass
  var tmp = new QWhatsThisClickedEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWhatsThisClickedEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWhatsThisClickedEvent_clone(self: ptr cQWhatsThisClickedEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QWhatsThisClickedEvent_clone ".} =
  var nimfunc = cast[ptr QWhatsThisClickedEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWhatsThisClickedEventsetAccepted*(self: gen_qevent_types.QWhatsThisClickedEvent, accepted: bool): void =
  fQWhatsThisClickedEvent_virtualbase_setAccepted(self.h, accepted)

type QWhatsThisClickedEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QWhatsThisClickedEvent, slot: QWhatsThisClickedEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QWhatsThisClickedEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWhatsThisClickedEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWhatsThisClickedEvent_setAccepted(self: ptr cQWhatsThisClickedEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QWhatsThisClickedEvent_setAccepted ".} =
  var nimfunc = cast[ptr QWhatsThisClickedEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QWhatsThisClickedEvent) =
  fcQWhatsThisClickedEvent_delete(self.h)

func init*(T: type gen_qevent_types.QActionEvent, h: ptr cQActionEvent): gen_qevent_types.QActionEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QActionEvent, typeVal: cint, action: gen_qaction_types.QAction): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent.init(fcQActionEvent_new(typeVal, action.h))

proc create*(T: type gen_qevent_types.QActionEvent, typeVal: cint, action: gen_qaction_types.QAction, before: gen_qaction_types.QAction): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent.init(fcQActionEvent_new2(typeVal, action.h, before.h))

proc clone*(self: gen_qevent_types.QActionEvent, ): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_clone(self.h))

proc QActionEventclone*(self: gen_qevent_types.QActionEvent, ): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fQActionEvent_virtualbase_clone(self.h))

type QActionEventcloneProc* = proc(): gen_qevent_types.QActionEvent
proc onclone*(self: gen_qevent_types.QActionEvent, slot: QActionEventcloneProc) =
  # TODO check subclass
  var tmp = new QActionEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionEvent_clone(self: ptr cQActionEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QActionEvent_clone ".} =
  var nimfunc = cast[ptr QActionEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QActionEventsetAccepted*(self: gen_qevent_types.QActionEvent, accepted: bool): void =
  fQActionEvent_virtualbase_setAccepted(self.h, accepted)

type QActionEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QActionEvent, slot: QActionEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QActionEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQActionEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QActionEvent_setAccepted(self: ptr cQActionEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QActionEvent_setAccepted ".} =
  var nimfunc = cast[ptr QActionEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QActionEvent) =
  fcQActionEvent_delete(self.h)

func init*(T: type gen_qevent_types.QFileOpenEvent, h: ptr cQFileOpenEvent): gen_qevent_types.QFileOpenEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QFileOpenEvent, file: string): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent.init(fcQFileOpenEvent_new(struct_miqt_string(data: file, len: csize_t(len(file)))))

proc create*(T: type gen_qevent_types.QFileOpenEvent, url: gen_qurl_types.QUrl): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent.init(fcQFileOpenEvent_new2(url.h))

proc clone*(self: gen_qevent_types.QFileOpenEvent, ): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_clone(self.h))

proc file*(self: gen_qevent_types.QFileOpenEvent, ): string =
  let v_ms = fcQFileOpenEvent_file(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc url*(self: gen_qevent_types.QFileOpenEvent, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileOpenEvent_url(self.h))

proc openFile*(self: gen_qevent_types.QFileOpenEvent, file: gen_qfile_types.QFile, flags: cint): bool =
  fcQFileOpenEvent_openFile(self.h, file.h, cint(flags))

proc QFileOpenEventclone*(self: gen_qevent_types.QFileOpenEvent, ): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fQFileOpenEvent_virtualbase_clone(self.h))

type QFileOpenEventcloneProc* = proc(): gen_qevent_types.QFileOpenEvent
proc onclone*(self: gen_qevent_types.QFileOpenEvent, slot: QFileOpenEventcloneProc) =
  # TODO check subclass
  var tmp = new QFileOpenEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileOpenEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileOpenEvent_clone(self: ptr cQFileOpenEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QFileOpenEvent_clone ".} =
  var nimfunc = cast[ptr QFileOpenEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFileOpenEventsetAccepted*(self: gen_qevent_types.QFileOpenEvent, accepted: bool): void =
  fQFileOpenEvent_virtualbase_setAccepted(self.h, accepted)

type QFileOpenEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QFileOpenEvent, slot: QFileOpenEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QFileOpenEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileOpenEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileOpenEvent_setAccepted(self: ptr cQFileOpenEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QFileOpenEvent_setAccepted ".} =
  var nimfunc = cast[ptr QFileOpenEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QFileOpenEvent) =
  fcQFileOpenEvent_delete(self.h)

func init*(T: type gen_qevent_types.QToolBarChangeEvent, h: ptr cQToolBarChangeEvent): gen_qevent_types.QToolBarChangeEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QToolBarChangeEvent, t: bool): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent.init(fcQToolBarChangeEvent_new(t))

proc clone*(self: gen_qevent_types.QToolBarChangeEvent, ): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_clone(self.h))

proc toggle*(self: gen_qevent_types.QToolBarChangeEvent, ): bool =
  fcQToolBarChangeEvent_toggle(self.h)

proc QToolBarChangeEventclone*(self: gen_qevent_types.QToolBarChangeEvent, ): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fQToolBarChangeEvent_virtualbase_clone(self.h))

type QToolBarChangeEventcloneProc* = proc(): gen_qevent_types.QToolBarChangeEvent
proc onclone*(self: gen_qevent_types.QToolBarChangeEvent, slot: QToolBarChangeEventcloneProc) =
  # TODO check subclass
  var tmp = new QToolBarChangeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBarChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBarChangeEvent_clone(self: ptr cQToolBarChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBarChangeEvent_clone ".} =
  var nimfunc = cast[ptr QToolBarChangeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBarChangeEventsetAccepted*(self: gen_qevent_types.QToolBarChangeEvent, accepted: bool): void =
  fQToolBarChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QToolBarChangeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QToolBarChangeEvent, slot: QToolBarChangeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QToolBarChangeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBarChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBarChangeEvent_setAccepted(self: ptr cQToolBarChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QToolBarChangeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QToolBarChangeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QToolBarChangeEvent) =
  fcQToolBarChangeEvent_delete(self.h)

func init*(T: type gen_qevent_types.QShortcutEvent, h: ptr cQShortcutEvent): gen_qevent_types.QShortcutEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QShortcutEvent, key: gen_qkeysequence_types.QKeySequence, id: cint): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent.init(fcQShortcutEvent_new(key.h, id))

proc create*(T: type gen_qevent_types.QShortcutEvent, key: gen_qkeysequence_types.QKeySequence, id: cint, ambiguous: bool): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent.init(fcQShortcutEvent_new2(key.h, id, ambiguous))

proc clone*(self: gen_qevent_types.QShortcutEvent, ): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_clone(self.h))

proc key*(self: gen_qevent_types.QShortcutEvent, ): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQShortcutEvent_key(self.h))

proc shortcutId*(self: gen_qevent_types.QShortcutEvent, ): cint =
  fcQShortcutEvent_shortcutId(self.h)

proc isAmbiguous*(self: gen_qevent_types.QShortcutEvent, ): bool =
  fcQShortcutEvent_isAmbiguous(self.h)

proc QShortcutEventclone*(self: gen_qevent_types.QShortcutEvent, ): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fQShortcutEvent_virtualbase_clone(self.h))

type QShortcutEventcloneProc* = proc(): gen_qevent_types.QShortcutEvent
proc onclone*(self: gen_qevent_types.QShortcutEvent, slot: QShortcutEventcloneProc) =
  # TODO check subclass
  var tmp = new QShortcutEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcutEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcutEvent_clone(self: ptr cQShortcutEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QShortcutEvent_clone ".} =
  var nimfunc = cast[ptr QShortcutEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QShortcutEventsetAccepted*(self: gen_qevent_types.QShortcutEvent, accepted: bool): void =
  fQShortcutEvent_virtualbase_setAccepted(self.h, accepted)

type QShortcutEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QShortcutEvent, slot: QShortcutEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QShortcutEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcutEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcutEvent_setAccepted(self: ptr cQShortcutEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QShortcutEvent_setAccepted ".} =
  var nimfunc = cast[ptr QShortcutEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QShortcutEvent) =
  fcQShortcutEvent_delete(self.h)

func init*(T: type gen_qevent_types.QWindowStateChangeEvent, h: ptr cQWindowStateChangeEvent): gen_qevent_types.QWindowStateChangeEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QWindowStateChangeEvent, oldState: cint): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent.init(fcQWindowStateChangeEvent_new(cint(oldState)))

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent, oldState: cint, isOverride: bool): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent.init(fcQWindowStateChangeEvent_new2(cint(oldState), isOverride))

proc clone*(self: gen_qevent_types.QWindowStateChangeEvent, ): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_clone(self.h))

proc oldState*(self: gen_qevent_types.QWindowStateChangeEvent, ): cint =
  cint(fcQWindowStateChangeEvent_oldState(self.h))

proc isOverride*(self: gen_qevent_types.QWindowStateChangeEvent, ): bool =
  fcQWindowStateChangeEvent_isOverride(self.h)

proc QWindowStateChangeEventclone*(self: gen_qevent_types.QWindowStateChangeEvent, ): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fQWindowStateChangeEvent_virtualbase_clone(self.h))

type QWindowStateChangeEventcloneProc* = proc(): gen_qevent_types.QWindowStateChangeEvent
proc onclone*(self: gen_qevent_types.QWindowStateChangeEvent, slot: QWindowStateChangeEventcloneProc) =
  # TODO check subclass
  var tmp = new QWindowStateChangeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowStateChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindowStateChangeEvent_clone(self: ptr cQWindowStateChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QWindowStateChangeEvent_clone ".} =
  var nimfunc = cast[ptr QWindowStateChangeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWindowStateChangeEventsetAccepted*(self: gen_qevent_types.QWindowStateChangeEvent, accepted: bool): void =
  fQWindowStateChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QWindowStateChangeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QWindowStateChangeEvent, slot: QWindowStateChangeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QWindowStateChangeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowStateChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWindowStateChangeEvent_setAccepted(self: ptr cQWindowStateChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QWindowStateChangeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QWindowStateChangeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QWindowStateChangeEvent) =
  fcQWindowStateChangeEvent_delete(self.h)

func init*(T: type gen_qevent_types.QTouchEvent, h: ptr cQTouchEvent): gen_qevent_types.QTouchEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QTouchEvent, eventType: cint): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent.init(fcQTouchEvent_new(cint(eventType)))

proc create*(T: type gen_qevent_types.QTouchEvent, eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent.init(fcQTouchEvent_new2(cint(eventType), device.h, cint(modifiers), cint(touchPointStates)))

proc create*(T: type gen_qevent_types.QTouchEvent, eventType: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent.init(fcQTouchEvent_new3(cint(eventType), device.h))

proc create*(T: type gen_qevent_types.QTouchEvent, eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent.init(fcQTouchEvent_new4(cint(eventType), device.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QTouchEvent, eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPoints: seq[gen_qeventpoint_types.QEventPoint]): gen_qevent_types.QTouchEvent =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  gen_qevent_types.QTouchEvent.init(fcQTouchEvent_new5(cint(eventType), device.h, cint(modifiers), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))))

proc create*(T: type gen_qevent_types.QTouchEvent, eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint, touchPoints: seq[gen_qeventpoint_types.QEventPoint]): gen_qevent_types.QTouchEvent =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  gen_qevent_types.QTouchEvent.init(fcQTouchEvent_new6(cint(eventType), device.h, cint(modifiers), cint(touchPointStates), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))))

proc clone*(self: gen_qevent_types.QTouchEvent, ): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_clone(self.h))

proc target*(self: gen_qevent_types.QTouchEvent, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTouchEvent_target(self.h))

proc touchPointStates*(self: gen_qevent_types.QTouchEvent, ): cint =
  cint(fcQTouchEvent_touchPointStates(self.h))

proc touchPoints*(self: gen_qevent_types.QTouchEvent, ): seq[gen_qeventpoint_types.QEventPoint] =
  var v_ma = fcQTouchEvent_touchPoints(self.h)
  var vx_ret = newSeq[gen_qeventpoint_types.QEventPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qeventpoint_types.QEventPoint(h: v_outCast[i])
  vx_ret

proc isBeginEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_isEndEvent(self.h)

proc QTouchEventclone*(self: gen_qevent_types.QTouchEvent, ): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fQTouchEvent_virtualbase_clone(self.h))

type QTouchEventcloneProc* = proc(): gen_qevent_types.QTouchEvent
proc onclone*(self: gen_qevent_types.QTouchEvent, slot: QTouchEventcloneProc) =
  # TODO check subclass
  var tmp = new QTouchEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_clone(self: ptr cQTouchEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QTouchEvent_clone ".} =
  var nimfunc = cast[ptr QTouchEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTouchEventisBeginEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fQTouchEvent_virtualbase_isBeginEvent(self.h)

type QTouchEventisBeginEventProc* = proc(): bool
proc onisBeginEvent*(self: gen_qevent_types.QTouchEvent, slot: QTouchEventisBeginEventProc) =
  # TODO check subclass
  var tmp = new QTouchEventisBeginEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_isBeginEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_isBeginEvent(self: ptr cQTouchEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTouchEvent_isBeginEvent ".} =
  var nimfunc = cast[ptr QTouchEventisBeginEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTouchEventisUpdateEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fQTouchEvent_virtualbase_isUpdateEvent(self.h)

type QTouchEventisUpdateEventProc* = proc(): bool
proc onisUpdateEvent*(self: gen_qevent_types.QTouchEvent, slot: QTouchEventisUpdateEventProc) =
  # TODO check subclass
  var tmp = new QTouchEventisUpdateEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_isUpdateEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_isUpdateEvent(self: ptr cQTouchEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTouchEvent_isUpdateEvent ".} =
  var nimfunc = cast[ptr QTouchEventisUpdateEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTouchEventisEndEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fQTouchEvent_virtualbase_isEndEvent(self.h)

type QTouchEventisEndEventProc* = proc(): bool
proc onisEndEvent*(self: gen_qevent_types.QTouchEvent, slot: QTouchEventisEndEventProc) =
  # TODO check subclass
  var tmp = new QTouchEventisEndEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_isEndEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_isEndEvent(self: ptr cQTouchEvent, slot: int): bool {.exportc: "miqt_exec_callback_QTouchEvent_isEndEvent ".} =
  var nimfunc = cast[ptr QTouchEventisEndEventProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTouchEventsetTimestamp*(self: gen_qevent_types.QTouchEvent, timestamp: culonglong): void =
  fQTouchEvent_virtualbase_setTimestamp(self.h, timestamp)

type QTouchEventsetTimestampProc* = proc(timestamp: culonglong): void
proc onsetTimestamp*(self: gen_qevent_types.QTouchEvent, slot: QTouchEventsetTimestampProc) =
  # TODO check subclass
  var tmp = new QTouchEventsetTimestampProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_setTimestamp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_setTimestamp(self: ptr cQTouchEvent, slot: int, timestamp: culonglong): void {.exportc: "miqt_exec_callback_QTouchEvent_setTimestamp ".} =
  var nimfunc = cast[ptr QTouchEventsetTimestampProc](cast[pointer](slot))
  let slotval1 = timestamp


  nimfunc[](slotval1)
proc QTouchEventsetAccepted*(self: gen_qevent_types.QTouchEvent, accepted: bool): void =
  fQTouchEvent_virtualbase_setAccepted(self.h, accepted)

type QTouchEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QTouchEvent, slot: QTouchEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QTouchEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTouchEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTouchEvent_setAccepted(self: ptr cQTouchEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QTouchEvent_setAccepted ".} =
  var nimfunc = cast[ptr QTouchEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QTouchEvent) =
  fcQTouchEvent_delete(self.h)

func init*(T: type gen_qevent_types.QScrollPrepareEvent, h: ptr cQScrollPrepareEvent): gen_qevent_types.QScrollPrepareEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QScrollPrepareEvent, startPos: gen_qpoint_types.QPointF): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent.init(fcQScrollPrepareEvent_new(startPos.h))

proc clone*(self: gen_qevent_types.QScrollPrepareEvent, ): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_clone(self.h))

proc startPos*(self: gen_qevent_types.QScrollPrepareEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollPrepareEvent_startPos(self.h))

proc viewportSize*(self: gen_qevent_types.QScrollPrepareEvent, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQScrollPrepareEvent_viewportSize(self.h))

proc contentPosRange*(self: gen_qevent_types.QScrollPrepareEvent, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQScrollPrepareEvent_contentPosRange(self.h))

proc contentPos*(self: gen_qevent_types.QScrollPrepareEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollPrepareEvent_contentPos(self.h))

proc setViewportSize*(self: gen_qevent_types.QScrollPrepareEvent, size: gen_qsize_types.QSizeF): void =
  fcQScrollPrepareEvent_setViewportSize(self.h, size.h)

proc setContentPosRange*(self: gen_qevent_types.QScrollPrepareEvent, rect: gen_qrect_types.QRectF): void =
  fcQScrollPrepareEvent_setContentPosRange(self.h, rect.h)

proc setContentPos*(self: gen_qevent_types.QScrollPrepareEvent, pos: gen_qpoint_types.QPointF): void =
  fcQScrollPrepareEvent_setContentPos(self.h, pos.h)

proc QScrollPrepareEventclone*(self: gen_qevent_types.QScrollPrepareEvent, ): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent(h: fQScrollPrepareEvent_virtualbase_clone(self.h))

type QScrollPrepareEventcloneProc* = proc(): gen_qevent_types.QScrollPrepareEvent
proc onclone*(self: gen_qevent_types.QScrollPrepareEvent, slot: QScrollPrepareEventcloneProc) =
  # TODO check subclass
  var tmp = new QScrollPrepareEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollPrepareEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollPrepareEvent_clone(self: ptr cQScrollPrepareEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollPrepareEvent_clone ".} =
  var nimfunc = cast[ptr QScrollPrepareEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollPrepareEventsetAccepted*(self: gen_qevent_types.QScrollPrepareEvent, accepted: bool): void =
  fQScrollPrepareEvent_virtualbase_setAccepted(self.h, accepted)

type QScrollPrepareEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QScrollPrepareEvent, slot: QScrollPrepareEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QScrollPrepareEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollPrepareEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollPrepareEvent_setAccepted(self: ptr cQScrollPrepareEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QScrollPrepareEvent_setAccepted ".} =
  var nimfunc = cast[ptr QScrollPrepareEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QScrollPrepareEvent) =
  fcQScrollPrepareEvent_delete(self.h)

func init*(T: type gen_qevent_types.QScrollEvent, h: ptr cQScrollEvent): gen_qevent_types.QScrollEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QScrollEvent, contentPos: gen_qpoint_types.QPointF, overshoot: gen_qpoint_types.QPointF, scrollState: cint): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent.init(fcQScrollEvent_new(contentPos.h, overshoot.h, cint(scrollState)))

proc clone*(self: gen_qevent_types.QScrollEvent, ): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_clone(self.h))

proc contentPos*(self: gen_qevent_types.QScrollEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_contentPos(self.h))

proc overshootDistance*(self: gen_qevent_types.QScrollEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_overshootDistance(self.h))

proc scrollState*(self: gen_qevent_types.QScrollEvent, ): cint =
  cint(fcQScrollEvent_scrollState(self.h))

proc QScrollEventclone*(self: gen_qevent_types.QScrollEvent, ): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fQScrollEvent_virtualbase_clone(self.h))

type QScrollEventcloneProc* = proc(): gen_qevent_types.QScrollEvent
proc onclone*(self: gen_qevent_types.QScrollEvent, slot: QScrollEventcloneProc) =
  # TODO check subclass
  var tmp = new QScrollEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollEvent_clone(self: ptr cQScrollEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollEvent_clone ".} =
  var nimfunc = cast[ptr QScrollEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollEventsetAccepted*(self: gen_qevent_types.QScrollEvent, accepted: bool): void =
  fQScrollEvent_virtualbase_setAccepted(self.h, accepted)

type QScrollEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QScrollEvent, slot: QScrollEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QScrollEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollEvent_setAccepted(self: ptr cQScrollEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QScrollEvent_setAccepted ".} =
  var nimfunc = cast[ptr QScrollEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QScrollEvent) =
  fcQScrollEvent_delete(self.h)

func init*(T: type gen_qevent_types.QScreenOrientationChangeEvent, h: ptr cQScreenOrientationChangeEvent): gen_qevent_types.QScreenOrientationChangeEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QScreenOrientationChangeEvent, screen: gen_qscreen_types.QScreen, orientation: cint): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent.init(fcQScreenOrientationChangeEvent_new(screen.h, cint(orientation)))

proc clone*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_clone(self.h))

proc screen*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQScreenOrientationChangeEvent_screen(self.h))

proc orientation*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): cint =
  cint(fcQScreenOrientationChangeEvent_orientation(self.h))

proc QScreenOrientationChangeEventclone*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fQScreenOrientationChangeEvent_virtualbase_clone(self.h))

type QScreenOrientationChangeEventcloneProc* = proc(): gen_qevent_types.QScreenOrientationChangeEvent
proc onclone*(self: gen_qevent_types.QScreenOrientationChangeEvent, slot: QScreenOrientationChangeEventcloneProc) =
  # TODO check subclass
  var tmp = new QScreenOrientationChangeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenOrientationChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScreenOrientationChangeEvent_clone(self: ptr cQScreenOrientationChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QScreenOrientationChangeEvent_clone ".} =
  var nimfunc = cast[ptr QScreenOrientationChangeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScreenOrientationChangeEventsetAccepted*(self: gen_qevent_types.QScreenOrientationChangeEvent, accepted: bool): void =
  fQScreenOrientationChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QScreenOrientationChangeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QScreenOrientationChangeEvent, slot: QScreenOrientationChangeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QScreenOrientationChangeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenOrientationChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScreenOrientationChangeEvent_setAccepted(self: ptr cQScreenOrientationChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QScreenOrientationChangeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QScreenOrientationChangeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QScreenOrientationChangeEvent) =
  fcQScreenOrientationChangeEvent_delete(self.h)

func init*(T: type gen_qevent_types.QApplicationStateChangeEvent, h: ptr cQApplicationStateChangeEvent): gen_qevent_types.QApplicationStateChangeEvent =
  T(h: h)
proc create*(T: type gen_qevent_types.QApplicationStateChangeEvent, state: cint): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent.init(fcQApplicationStateChangeEvent_new(cint(state)))

proc clone*(self: gen_qevent_types.QApplicationStateChangeEvent, ): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_clone(self.h))

proc applicationState*(self: gen_qevent_types.QApplicationStateChangeEvent, ): cint =
  cint(fcQApplicationStateChangeEvent_applicationState(self.h))

proc QApplicationStateChangeEventclone*(self: gen_qevent_types.QApplicationStateChangeEvent, ): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fQApplicationStateChangeEvent_virtualbase_clone(self.h))

type QApplicationStateChangeEventcloneProc* = proc(): gen_qevent_types.QApplicationStateChangeEvent
proc onclone*(self: gen_qevent_types.QApplicationStateChangeEvent, slot: QApplicationStateChangeEventcloneProc) =
  # TODO check subclass
  var tmp = new QApplicationStateChangeEventcloneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplicationStateChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplicationStateChangeEvent_clone(self: ptr cQApplicationStateChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QApplicationStateChangeEvent_clone ".} =
  var nimfunc = cast[ptr QApplicationStateChangeEventcloneProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QApplicationStateChangeEventsetAccepted*(self: gen_qevent_types.QApplicationStateChangeEvent, accepted: bool): void =
  fQApplicationStateChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QApplicationStateChangeEventsetAcceptedProc* = proc(accepted: bool): void
proc onsetAccepted*(self: gen_qevent_types.QApplicationStateChangeEvent, slot: QApplicationStateChangeEventsetAcceptedProc) =
  # TODO check subclass
  var tmp = new QApplicationStateChangeEventsetAcceptedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQApplicationStateChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QApplicationStateChangeEvent_setAccepted(self: ptr cQApplicationStateChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QApplicationStateChangeEvent_setAccepted ".} =
  var nimfunc = cast[ptr QApplicationStateChangeEventsetAcceptedProc](cast[pointer](slot))
  let slotval1 = accepted


  nimfunc[](slotval1)
proc delete*(self: gen_qevent_types.QApplicationStateChangeEvent) =
  fcQApplicationStateChangeEvent_delete(self.h)

func init*(T: type gen_qevent_types.QInputMethodEventAttribute, h: ptr cQInputMethodEventAttribute): gen_qevent_types.QInputMethodEventAttribute =
  T(h: h)
proc create*(T: type gen_qevent_types.QInputMethodEventAttribute, typ: cint, s: cint, l: cint, val: gen_qvariant_types.QVariant): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute.init(fcQInputMethodEventAttribute_new(cint(typ), s, l, val.h))

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute, typ: cint, s: cint, l: cint): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute.init(fcQInputMethodEventAttribute_new2(cint(typ), s, l))

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute, param1: gen_qevent_types.QInputMethodEventAttribute): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute.init(fcQInputMethodEventAttribute_new3(param1.h))

proc operatorAssign*(self: gen_qevent_types.QInputMethodEventAttribute, param1: gen_qevent_types.QInputMethodEventAttribute): void =
  fcQInputMethodEventAttribute_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qevent_types.QInputMethodEventAttribute) =
  fcQInputMethodEventAttribute_delete(self.h)
