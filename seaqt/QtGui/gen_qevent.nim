import ./Qt6Gui_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
  ../QtCore/gen_qobjectdefs_types,
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
  gen_qobjectdefs_types,
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

proc fcQInputEvent_clone(self: pointer, ): pointer {.importc: "QInputEvent_clone".}
proc fcQInputEvent_device(self: pointer, ): pointer {.importc: "QInputEvent_device".}
proc fcQInputEvent_deviceType(self: pointer, ): cint {.importc: "QInputEvent_deviceType".}
proc fcQInputEvent_modifiers(self: pointer, ): cint {.importc: "QInputEvent_modifiers".}
proc fcQInputEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QInputEvent_setModifiers".}
proc fcQInputEvent_timestamp(self: pointer, ): culonglong {.importc: "QInputEvent_timestamp".}
proc fcQInputEvent_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QInputEvent_setTimestamp".}
type cQInputEventVTable = object
  destructor*: proc(vtbl: ptr cQInputEventVTable, self: ptr cQInputEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQInputEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QInputEvent_virtualbase_clone".}
proc fcQInputEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QInputEvent_virtualbase_setTimestamp".}
proc fcQInputEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QInputEvent_virtualbase_setAccepted".}
proc fcQInputEvent_new(vtbl: pointer, typeVal: cint, m_dev: pointer): ptr cQInputEvent {.importc: "QInputEvent_new".}
proc fcQInputEvent_new2(vtbl: pointer, typeVal: cint, m_dev: pointer, modifiers: cint): ptr cQInputEvent {.importc: "QInputEvent_new2".}
proc fcQInputEvent_delete(self: pointer) {.importc: "QInputEvent_delete".}
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
type cQPointerEventVTable = object
  destructor*: proc(vtbl: ptr cQPointerEventVTable, self: ptr cQPointerEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQPointerEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QPointerEvent_virtualbase_clone".}
proc fcQPointerEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QPointerEvent_virtualbase_setTimestamp".}
proc fcQPointerEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QPointerEvent_virtualbase_isBeginEvent".}
proc fcQPointerEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QPointerEvent_virtualbase_isUpdateEvent".}
proc fcQPointerEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QPointerEvent_virtualbase_isEndEvent".}
proc fcQPointerEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QPointerEvent_virtualbase_setAccepted".}
proc fcQPointerEvent_new(vtbl: pointer, typeVal: cint, dev: pointer): ptr cQPointerEvent {.importc: "QPointerEvent_new".}
proc fcQPointerEvent_new2(vtbl: pointer, typeVal: cint, dev: pointer, modifiers: cint): ptr cQPointerEvent {.importc: "QPointerEvent_new2".}
proc fcQPointerEvent_new3(vtbl: pointer, typeVal: cint, dev: pointer, modifiers: cint, points: struct_miqt_array): ptr cQPointerEvent {.importc: "QPointerEvent_new3".}
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
proc fcQSinglePointEvent_staticMetaObject(): pointer {.importc: "QSinglePointEvent_staticMetaObject".}
proc fcQSinglePointEvent_delete(self: pointer) {.importc: "QSinglePointEvent_delete".}
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
type cQEnterEventVTable = object
  destructor*: proc(vtbl: ptr cQEnterEventVTable, self: ptr cQEnterEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQEnterEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QEnterEvent_virtualbase_clone".}
proc fcQEnterEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QEnterEvent_virtualbase_isBeginEvent".}
proc fcQEnterEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QEnterEvent_virtualbase_isUpdateEvent".}
proc fcQEnterEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QEnterEvent_virtualbase_isEndEvent".}
proc fcQEnterEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QEnterEvent_virtualbase_setTimestamp".}
proc fcQEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QEnterEvent_virtualbase_setAccepted".}
proc fcQEnterEvent_new(vtbl: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new".}
proc fcQEnterEvent_new2(vtbl: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer, device: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new2".}
proc fcQEnterEvent_delete(self: pointer) {.importc: "QEnterEvent_delete".}
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
type cQMouseEventVTable = object
  destructor*: proc(vtbl: ptr cQMouseEventVTable, self: ptr cQMouseEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQMouseEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QMouseEvent_virtualbase_clone".}
proc fcQMouseEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QMouseEvent_virtualbase_isBeginEvent".}
proc fcQMouseEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QMouseEvent_virtualbase_isUpdateEvent".}
proc fcQMouseEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QMouseEvent_virtualbase_isEndEvent".}
proc fcQMouseEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QMouseEvent_virtualbase_setTimestamp".}
proc fcQMouseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QMouseEvent_virtualbase_setAccepted".}
proc fcQMouseEvent_new(vtbl: pointer, typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new".}
proc fcQMouseEvent_new2(vtbl: pointer, typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new2".}
proc fcQMouseEvent_new3(vtbl: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new3".}
proc fcQMouseEvent_new4(vtbl: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new4".}
proc fcQMouseEvent_new5(vtbl: pointer, typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new5".}
proc fcQMouseEvent_new6(vtbl: pointer, typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new6".}
proc fcQMouseEvent_new7(vtbl: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new7".}
proc fcQMouseEvent_new8(vtbl: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new8".}
proc fcQMouseEvent_delete(self: pointer) {.importc: "QMouseEvent_delete".}
proc fcQHoverEvent_clone(self: pointer, ): pointer {.importc: "QHoverEvent_clone".}
proc fcQHoverEvent_pos(self: pointer, ): pointer {.importc: "QHoverEvent_pos".}
proc fcQHoverEvent_posF(self: pointer, ): pointer {.importc: "QHoverEvent_posF".}
proc fcQHoverEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QHoverEvent_isUpdateEvent".}
proc fcQHoverEvent_oldPos(self: pointer, ): pointer {.importc: "QHoverEvent_oldPos".}
proc fcQHoverEvent_oldPosF(self: pointer, ): pointer {.importc: "QHoverEvent_oldPosF".}
type cQHoverEventVTable = object
  destructor*: proc(vtbl: ptr cQHoverEventVTable, self: ptr cQHoverEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQHoverEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QHoverEvent_virtualbase_clone".}
proc fcQHoverEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QHoverEvent_virtualbase_isUpdateEvent".}
proc fcQHoverEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QHoverEvent_virtualbase_isBeginEvent".}
proc fcQHoverEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QHoverEvent_virtualbase_isEndEvent".}
proc fcQHoverEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QHoverEvent_virtualbase_setTimestamp".}
proc fcQHoverEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QHoverEvent_virtualbase_setAccepted".}
proc fcQHoverEvent_new(vtbl: pointer, typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new".}
proc fcQHoverEvent_new2(vtbl: pointer, typeVal: cint, pos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new2".}
proc fcQHoverEvent_new3(vtbl: pointer, typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new3".}
proc fcQHoverEvent_new4(vtbl: pointer, typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new4".}
proc fcQHoverEvent_new5(vtbl: pointer, typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new5".}
proc fcQHoverEvent_new6(vtbl: pointer, typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new6".}
proc fcQHoverEvent_delete(self: pointer) {.importc: "QHoverEvent_delete".}
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
type cQWheelEventVTable = object
  destructor*: proc(vtbl: ptr cQWheelEventVTable, self: ptr cQWheelEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQWheelEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QWheelEvent_virtualbase_clone".}
proc fcQWheelEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QWheelEvent_virtualbase_isBeginEvent".}
proc fcQWheelEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QWheelEvent_virtualbase_isUpdateEvent".}
proc fcQWheelEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QWheelEvent_virtualbase_isEndEvent".}
proc fcQWheelEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QWheelEvent_virtualbase_setTimestamp".}
proc fcQWheelEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QWheelEvent_virtualbase_setAccepted".}
proc fcQWheelEvent_new(vtbl: pointer, pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new".}
proc fcQWheelEvent_new2(vtbl: pointer, pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new2".}
proc fcQWheelEvent_new3(vtbl: pointer, pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: pointer): ptr cQWheelEvent {.importc: "QWheelEvent_new3".}
proc fcQWheelEvent_staticMetaObject(): pointer {.importc: "QWheelEvent_staticMetaObject".}
proc fcQWheelEvent_delete(self: pointer) {.importc: "QWheelEvent_delete".}
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
type cQTabletEventVTable = object
  destructor*: proc(vtbl: ptr cQTabletEventVTable, self: ptr cQTabletEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQTabletEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QTabletEvent_virtualbase_clone".}
proc fcQTabletEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QTabletEvent_virtualbase_isBeginEvent".}
proc fcQTabletEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QTabletEvent_virtualbase_isUpdateEvent".}
proc fcQTabletEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QTabletEvent_virtualbase_isEndEvent".}
proc fcQTabletEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QTabletEvent_virtualbase_setTimestamp".}
proc fcQTabletEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QTabletEvent_virtualbase_setAccepted".}
proc fcQTabletEvent_new(vtbl: pointer, t: cint, device: pointer, pos: pointer, globalPos: pointer, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint): ptr cQTabletEvent {.importc: "QTabletEvent_new".}
proc fcQTabletEvent_delete(self: pointer) {.importc: "QTabletEvent_delete".}
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
type cQNativeGestureEventVTable = object
  destructor*: proc(vtbl: ptr cQNativeGestureEventVTable, self: ptr cQNativeGestureEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQNativeGestureEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QNativeGestureEvent_virtualbase_clone".}
proc fcQNativeGestureEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QNativeGestureEvent_virtualbase_isBeginEvent".}
proc fcQNativeGestureEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QNativeGestureEvent_virtualbase_isUpdateEvent".}
proc fcQNativeGestureEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QNativeGestureEvent_virtualbase_isEndEvent".}
proc fcQNativeGestureEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QNativeGestureEvent_virtualbase_setTimestamp".}
proc fcQNativeGestureEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QNativeGestureEvent_virtualbase_setAccepted".}
proc fcQNativeGestureEvent_new(vtbl: pointer, typeVal: cint, dev: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, sequenceId: culonglong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new".}
proc fcQNativeGestureEvent_new2(vtbl: pointer, typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new2".}
proc fcQNativeGestureEvent_new3(vtbl: pointer, typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer, sequenceId: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new3".}
proc fcQNativeGestureEvent_delete(self: pointer) {.importc: "QNativeGestureEvent_delete".}
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
type cQKeyEventVTable = object
  destructor*: proc(vtbl: ptr cQKeyEventVTable, self: ptr cQKeyEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQKeyEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QKeyEvent_virtualbase_clone".}
proc fcQKeyEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QKeyEvent_virtualbase_setTimestamp".}
proc fcQKeyEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QKeyEvent_virtualbase_setAccepted".}
proc fcQKeyEvent_new(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint): ptr cQKeyEvent {.importc: "QKeyEvent_new".}
proc fcQKeyEvent_new2(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): ptr cQKeyEvent {.importc: "QKeyEvent_new2".}
proc fcQKeyEvent_new3(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new3".}
proc fcQKeyEvent_new4(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new4".}
proc fcQKeyEvent_new5(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new5".}
proc fcQKeyEvent_new6(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new6".}
proc fcQKeyEvent_new7(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new7".}
proc fcQKeyEvent_new8(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new8".}
proc fcQKeyEvent_new9(vtbl: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort, device: pointer): ptr cQKeyEvent {.importc: "QKeyEvent_new9".}
proc fcQKeyEvent_delete(self: pointer) {.importc: "QKeyEvent_delete".}
proc fcQFocusEvent_clone(self: pointer, ): pointer {.importc: "QFocusEvent_clone".}
proc fcQFocusEvent_gotFocus(self: pointer, ): bool {.importc: "QFocusEvent_gotFocus".}
proc fcQFocusEvent_lostFocus(self: pointer, ): bool {.importc: "QFocusEvent_lostFocus".}
proc fcQFocusEvent_reason(self: pointer, ): cint {.importc: "QFocusEvent_reason".}
type cQFocusEventVTable = object
  destructor*: proc(vtbl: ptr cQFocusEventVTable, self: ptr cQFocusEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQFocusEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QFocusEvent_virtualbase_clone".}
proc fcQFocusEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QFocusEvent_virtualbase_setAccepted".}
proc fcQFocusEvent_new(vtbl: pointer, typeVal: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new".}
proc fcQFocusEvent_new2(vtbl: pointer, typeVal: cint, reason: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new2".}
proc fcQFocusEvent_delete(self: pointer) {.importc: "QFocusEvent_delete".}
proc fcQPaintEvent_clone(self: pointer, ): pointer {.importc: "QPaintEvent_clone".}
proc fcQPaintEvent_rect(self: pointer, ): pointer {.importc: "QPaintEvent_rect".}
proc fcQPaintEvent_region(self: pointer, ): pointer {.importc: "QPaintEvent_region".}
type cQPaintEventVTable = object
  destructor*: proc(vtbl: ptr cQPaintEventVTable, self: ptr cQPaintEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQPaintEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QPaintEvent_virtualbase_clone".}
proc fcQPaintEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QPaintEvent_virtualbase_setAccepted".}
proc fcQPaintEvent_new(vtbl: pointer, paintRegion: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new".}
proc fcQPaintEvent_new2(vtbl: pointer, paintRect: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new2".}
proc fcQPaintEvent_delete(self: pointer) {.importc: "QPaintEvent_delete".}
proc fcQMoveEvent_clone(self: pointer, ): pointer {.importc: "QMoveEvent_clone".}
proc fcQMoveEvent_pos(self: pointer, ): pointer {.importc: "QMoveEvent_pos".}
proc fcQMoveEvent_oldPos(self: pointer, ): pointer {.importc: "QMoveEvent_oldPos".}
type cQMoveEventVTable = object
  destructor*: proc(vtbl: ptr cQMoveEventVTable, self: ptr cQMoveEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQMoveEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QMoveEvent_virtualbase_clone".}
proc fcQMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QMoveEvent_virtualbase_setAccepted".}
proc fcQMoveEvent_new(vtbl: pointer, pos: pointer, oldPos: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new".}
proc fcQMoveEvent_delete(self: pointer) {.importc: "QMoveEvent_delete".}
proc fcQExposeEvent_clone(self: pointer, ): pointer {.importc: "QExposeEvent_clone".}
proc fcQExposeEvent_region(self: pointer, ): pointer {.importc: "QExposeEvent_region".}
type cQExposeEventVTable = object
  destructor*: proc(vtbl: ptr cQExposeEventVTable, self: ptr cQExposeEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQExposeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QExposeEvent_virtualbase_clone".}
proc fcQExposeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QExposeEvent_virtualbase_setAccepted".}
proc fcQExposeEvent_new(vtbl: pointer, m_region: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new".}
proc fcQExposeEvent_delete(self: pointer) {.importc: "QExposeEvent_delete".}
proc fcQPlatformSurfaceEvent_clone(self: pointer, ): pointer {.importc: "QPlatformSurfaceEvent_clone".}
proc fcQPlatformSurfaceEvent_surfaceEventType(self: pointer, ): cint {.importc: "QPlatformSurfaceEvent_surfaceEventType".}
type cQPlatformSurfaceEventVTable = object
  destructor*: proc(vtbl: ptr cQPlatformSurfaceEventVTable, self: ptr cQPlatformSurfaceEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQPlatformSurfaceEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QPlatformSurfaceEvent_virtualbase_clone".}
proc fcQPlatformSurfaceEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QPlatformSurfaceEvent_virtualbase_setAccepted".}
proc fcQPlatformSurfaceEvent_new(vtbl: pointer, surfaceEventType: cint): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new".}
proc fcQPlatformSurfaceEvent_delete(self: pointer) {.importc: "QPlatformSurfaceEvent_delete".}
proc fcQResizeEvent_clone(self: pointer, ): pointer {.importc: "QResizeEvent_clone".}
proc fcQResizeEvent_size(self: pointer, ): pointer {.importc: "QResizeEvent_size".}
proc fcQResizeEvent_oldSize(self: pointer, ): pointer {.importc: "QResizeEvent_oldSize".}
type cQResizeEventVTable = object
  destructor*: proc(vtbl: ptr cQResizeEventVTable, self: ptr cQResizeEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQResizeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QResizeEvent_virtualbase_clone".}
proc fcQResizeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QResizeEvent_virtualbase_setAccepted".}
proc fcQResizeEvent_new(vtbl: pointer, size: pointer, oldSize: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new".}
proc fcQResizeEvent_delete(self: pointer) {.importc: "QResizeEvent_delete".}
proc fcQCloseEvent_clone(self: pointer, ): pointer {.importc: "QCloseEvent_clone".}
type cQCloseEventVTable = object
  destructor*: proc(vtbl: ptr cQCloseEventVTable, self: ptr cQCloseEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQCloseEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QCloseEvent_virtualbase_clone".}
proc fcQCloseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QCloseEvent_virtualbase_setAccepted".}
proc fcQCloseEvent_new(vtbl: pointer, ): ptr cQCloseEvent {.importc: "QCloseEvent_new".}
proc fcQCloseEvent_delete(self: pointer) {.importc: "QCloseEvent_delete".}
proc fcQIconDragEvent_clone(self: pointer, ): pointer {.importc: "QIconDragEvent_clone".}
type cQIconDragEventVTable = object
  destructor*: proc(vtbl: ptr cQIconDragEventVTable, self: ptr cQIconDragEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQIconDragEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QIconDragEvent_virtualbase_clone".}
proc fcQIconDragEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QIconDragEvent_virtualbase_setAccepted".}
proc fcQIconDragEvent_new(vtbl: pointer, ): ptr cQIconDragEvent {.importc: "QIconDragEvent_new".}
proc fcQIconDragEvent_delete(self: pointer) {.importc: "QIconDragEvent_delete".}
proc fcQShowEvent_clone(self: pointer, ): pointer {.importc: "QShowEvent_clone".}
type cQShowEventVTable = object
  destructor*: proc(vtbl: ptr cQShowEventVTable, self: ptr cQShowEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQShowEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QShowEvent_virtualbase_clone".}
proc fcQShowEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QShowEvent_virtualbase_setAccepted".}
proc fcQShowEvent_new(vtbl: pointer, ): ptr cQShowEvent {.importc: "QShowEvent_new".}
proc fcQShowEvent_delete(self: pointer) {.importc: "QShowEvent_delete".}
proc fcQHideEvent_clone(self: pointer, ): pointer {.importc: "QHideEvent_clone".}
type cQHideEventVTable = object
  destructor*: proc(vtbl: ptr cQHideEventVTable, self: ptr cQHideEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQHideEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QHideEvent_virtualbase_clone".}
proc fcQHideEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QHideEvent_virtualbase_setAccepted".}
proc fcQHideEvent_new(vtbl: pointer, ): ptr cQHideEvent {.importc: "QHideEvent_new".}
proc fcQHideEvent_delete(self: pointer) {.importc: "QHideEvent_delete".}
proc fcQContextMenuEvent_clone(self: pointer, ): pointer {.importc: "QContextMenuEvent_clone".}
proc fcQContextMenuEvent_x(self: pointer, ): cint {.importc: "QContextMenuEvent_x".}
proc fcQContextMenuEvent_y(self: pointer, ): cint {.importc: "QContextMenuEvent_y".}
proc fcQContextMenuEvent_globalX(self: pointer, ): cint {.importc: "QContextMenuEvent_globalX".}
proc fcQContextMenuEvent_globalY(self: pointer, ): cint {.importc: "QContextMenuEvent_globalY".}
proc fcQContextMenuEvent_pos(self: pointer, ): pointer {.importc: "QContextMenuEvent_pos".}
proc fcQContextMenuEvent_globalPos(self: pointer, ): pointer {.importc: "QContextMenuEvent_globalPos".}
proc fcQContextMenuEvent_reason(self: pointer, ): cint {.importc: "QContextMenuEvent_reason".}
type cQContextMenuEventVTable = object
  destructor*: proc(vtbl: ptr cQContextMenuEventVTable, self: ptr cQContextMenuEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQContextMenuEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QContextMenuEvent_virtualbase_clone".}
proc fcQContextMenuEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QContextMenuEvent_virtualbase_setTimestamp".}
proc fcQContextMenuEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QContextMenuEvent_virtualbase_setAccepted".}
proc fcQContextMenuEvent_new(vtbl: pointer, reason: cint, pos: pointer, globalPos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new".}
proc fcQContextMenuEvent_new2(vtbl: pointer, reason: cint, pos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new2".}
proc fcQContextMenuEvent_new3(vtbl: pointer, reason: cint, pos: pointer, globalPos: pointer, modifiers: cint): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new3".}
proc fcQContextMenuEvent_delete(self: pointer) {.importc: "QContextMenuEvent_delete".}
proc fcQInputMethodEvent_clone(self: pointer, ): pointer {.importc: "QInputMethodEvent_clone".}
proc fcQInputMethodEvent_setCommitString(self: pointer, commitString: struct_miqt_string): void {.importc: "QInputMethodEvent_setCommitString".}
proc fcQInputMethodEvent_attributes(self: pointer, ): struct_miqt_array {.importc: "QInputMethodEvent_attributes".}
proc fcQInputMethodEvent_preeditString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_preeditString".}
proc fcQInputMethodEvent_commitString(self: pointer, ): struct_miqt_string {.importc: "QInputMethodEvent_commitString".}
proc fcQInputMethodEvent_replacementStart(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementStart".}
proc fcQInputMethodEvent_replacementLength(self: pointer, ): cint {.importc: "QInputMethodEvent_replacementLength".}
proc fcQInputMethodEvent_setCommitString2(self: pointer, commitString: struct_miqt_string, replaceFrom: cint): void {.importc: "QInputMethodEvent_setCommitString2".}
proc fcQInputMethodEvent_setCommitString3(self: pointer, commitString: struct_miqt_string, replaceFrom: cint, replaceLength: cint): void {.importc: "QInputMethodEvent_setCommitString3".}
type cQInputMethodEventVTable = object
  destructor*: proc(vtbl: ptr cQInputMethodEventVTable, self: ptr cQInputMethodEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQInputMethodEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QInputMethodEvent_virtualbase_clone".}
proc fcQInputMethodEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QInputMethodEvent_virtualbase_setAccepted".}
proc fcQInputMethodEvent_new(vtbl: pointer, ): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new".}
proc fcQInputMethodEvent_new2(vtbl: pointer, preeditText: struct_miqt_string, attributes: struct_miqt_array): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new2".}
proc fcQInputMethodEvent_delete(self: pointer) {.importc: "QInputMethodEvent_delete".}
proc fcQInputMethodQueryEvent_clone(self: pointer, ): pointer {.importc: "QInputMethodQueryEvent_clone".}
proc fcQInputMethodQueryEvent_queries(self: pointer, ): cint {.importc: "QInputMethodQueryEvent_queries".}
proc fcQInputMethodQueryEvent_setValue(self: pointer, query: cint, value: pointer): void {.importc: "QInputMethodQueryEvent_setValue".}
proc fcQInputMethodQueryEvent_value(self: pointer, query: cint): pointer {.importc: "QInputMethodQueryEvent_value".}
type cQInputMethodQueryEventVTable = object
  destructor*: proc(vtbl: ptr cQInputMethodQueryEventVTable, self: ptr cQInputMethodQueryEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQInputMethodQueryEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QInputMethodQueryEvent_virtualbase_clone".}
proc fcQInputMethodQueryEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QInputMethodQueryEvent_virtualbase_setAccepted".}
proc fcQInputMethodQueryEvent_new(vtbl: pointer, queries: cint): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new".}
proc fcQInputMethodQueryEvent_delete(self: pointer) {.importc: "QInputMethodQueryEvent_delete".}
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
type cQDropEventVTable = object
  destructor*: proc(vtbl: ptr cQDropEventVTable, self: ptr cQDropEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDropEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QDropEvent_virtualbase_clone".}
proc fcQDropEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDropEvent_virtualbase_setAccepted".}
proc fcQDropEvent_new(vtbl: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDropEvent {.importc: "QDropEvent_new".}
proc fcQDropEvent_new2(vtbl: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDropEvent {.importc: "QDropEvent_new2".}
proc fcQDropEvent_delete(self: pointer) {.importc: "QDropEvent_delete".}
proc fcQDragMoveEvent_clone(self: pointer, ): pointer {.importc: "QDragMoveEvent_clone".}
proc fcQDragMoveEvent_answerRect(self: pointer, ): pointer {.importc: "QDragMoveEvent_answerRect".}
proc fcQDragMoveEvent_accept(self: pointer, ): void {.importc: "QDragMoveEvent_accept".}
proc fcQDragMoveEvent_ignore(self: pointer, ): void {.importc: "QDragMoveEvent_ignore".}
proc fcQDragMoveEvent_acceptWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_acceptWithQRect".}
proc fcQDragMoveEvent_ignoreWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_ignoreWithQRect".}
type cQDragMoveEventVTable = object
  destructor*: proc(vtbl: ptr cQDragMoveEventVTable, self: ptr cQDragMoveEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDragMoveEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QDragMoveEvent_virtualbase_clone".}
proc fcQDragMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDragMoveEvent_virtualbase_setAccepted".}
proc fcQDragMoveEvent_new(vtbl: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new".}
proc fcQDragMoveEvent_new2(vtbl: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new2".}
proc fcQDragMoveEvent_delete(self: pointer) {.importc: "QDragMoveEvent_delete".}
proc fcQDragEnterEvent_clone(self: pointer, ): pointer {.importc: "QDragEnterEvent_clone".}
type cQDragEnterEventVTable = object
  destructor*: proc(vtbl: ptr cQDragEnterEventVTable, self: ptr cQDragEnterEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDragEnterEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QDragEnterEvent_virtualbase_clone".}
proc fcQDragEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDragEnterEvent_virtualbase_setAccepted".}
proc fcQDragEnterEvent_new(vtbl: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new".}
proc fcQDragEnterEvent_delete(self: pointer) {.importc: "QDragEnterEvent_delete".}
proc fcQDragLeaveEvent_clone(self: pointer, ): pointer {.importc: "QDragLeaveEvent_clone".}
type cQDragLeaveEventVTable = object
  destructor*: proc(vtbl: ptr cQDragLeaveEventVTable, self: ptr cQDragLeaveEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDragLeaveEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QDragLeaveEvent_virtualbase_clone".}
proc fcQDragLeaveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDragLeaveEvent_virtualbase_setAccepted".}
proc fcQDragLeaveEvent_new(vtbl: pointer, ): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new".}
proc fcQDragLeaveEvent_delete(self: pointer) {.importc: "QDragLeaveEvent_delete".}
proc fcQHelpEvent_clone(self: pointer, ): pointer {.importc: "QHelpEvent_clone".}
proc fcQHelpEvent_x(self: pointer, ): cint {.importc: "QHelpEvent_x".}
proc fcQHelpEvent_y(self: pointer, ): cint {.importc: "QHelpEvent_y".}
proc fcQHelpEvent_globalX(self: pointer, ): cint {.importc: "QHelpEvent_globalX".}
proc fcQHelpEvent_globalY(self: pointer, ): cint {.importc: "QHelpEvent_globalY".}
proc fcQHelpEvent_pos(self: pointer, ): pointer {.importc: "QHelpEvent_pos".}
proc fcQHelpEvent_globalPos(self: pointer, ): pointer {.importc: "QHelpEvent_globalPos".}
type cQHelpEventVTable = object
  destructor*: proc(vtbl: ptr cQHelpEventVTable, self: ptr cQHelpEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQHelpEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QHelpEvent_virtualbase_clone".}
proc fcQHelpEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QHelpEvent_virtualbase_setAccepted".}
proc fcQHelpEvent_new(vtbl: pointer, typeVal: cint, pos: pointer, globalPos: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new".}
proc fcQHelpEvent_delete(self: pointer) {.importc: "QHelpEvent_delete".}
proc fcQStatusTipEvent_clone(self: pointer, ): pointer {.importc: "QStatusTipEvent_clone".}
proc fcQStatusTipEvent_tip(self: pointer, ): struct_miqt_string {.importc: "QStatusTipEvent_tip".}
type cQStatusTipEventVTable = object
  destructor*: proc(vtbl: ptr cQStatusTipEventVTable, self: ptr cQStatusTipEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQStatusTipEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QStatusTipEvent_virtualbase_clone".}
proc fcQStatusTipEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QStatusTipEvent_virtualbase_setAccepted".}
proc fcQStatusTipEvent_new(vtbl: pointer, tip: struct_miqt_string): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new".}
proc fcQStatusTipEvent_delete(self: pointer) {.importc: "QStatusTipEvent_delete".}
proc fcQWhatsThisClickedEvent_clone(self: pointer, ): pointer {.importc: "QWhatsThisClickedEvent_clone".}
proc fcQWhatsThisClickedEvent_href(self: pointer, ): struct_miqt_string {.importc: "QWhatsThisClickedEvent_href".}
type cQWhatsThisClickedEventVTable = object
  destructor*: proc(vtbl: ptr cQWhatsThisClickedEventVTable, self: ptr cQWhatsThisClickedEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQWhatsThisClickedEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QWhatsThisClickedEvent_virtualbase_clone".}
proc fcQWhatsThisClickedEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QWhatsThisClickedEvent_virtualbase_setAccepted".}
proc fcQWhatsThisClickedEvent_new(vtbl: pointer, href: struct_miqt_string): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new".}
proc fcQWhatsThisClickedEvent_delete(self: pointer) {.importc: "QWhatsThisClickedEvent_delete".}
proc fcQActionEvent_clone(self: pointer, ): pointer {.importc: "QActionEvent_clone".}
type cQActionEventVTable = object
  destructor*: proc(vtbl: ptr cQActionEventVTable, self: ptr cQActionEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQActionEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QActionEvent_virtualbase_clone".}
proc fcQActionEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QActionEvent_virtualbase_setAccepted".}
proc fcQActionEvent_new(vtbl: pointer, typeVal: cint, action: pointer): ptr cQActionEvent {.importc: "QActionEvent_new".}
proc fcQActionEvent_new2(vtbl: pointer, typeVal: cint, action: pointer, before: pointer): ptr cQActionEvent {.importc: "QActionEvent_new2".}
proc fcQActionEvent_delete(self: pointer) {.importc: "QActionEvent_delete".}
proc fcQFileOpenEvent_clone(self: pointer, ): pointer {.importc: "QFileOpenEvent_clone".}
proc fcQFileOpenEvent_file(self: pointer, ): struct_miqt_string {.importc: "QFileOpenEvent_file".}
proc fcQFileOpenEvent_url(self: pointer, ): pointer {.importc: "QFileOpenEvent_url".}
proc fcQFileOpenEvent_openFile(self: pointer, file: pointer, flags: cint): bool {.importc: "QFileOpenEvent_openFile".}
type cQFileOpenEventVTable = object
  destructor*: proc(vtbl: ptr cQFileOpenEventVTable, self: ptr cQFileOpenEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQFileOpenEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QFileOpenEvent_virtualbase_clone".}
proc fcQFileOpenEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QFileOpenEvent_virtualbase_setAccepted".}
proc fcQFileOpenEvent_new(vtbl: pointer, file: struct_miqt_string): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new".}
proc fcQFileOpenEvent_new2(vtbl: pointer, url: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new2".}
proc fcQFileOpenEvent_delete(self: pointer) {.importc: "QFileOpenEvent_delete".}
proc fcQToolBarChangeEvent_clone(self: pointer, ): pointer {.importc: "QToolBarChangeEvent_clone".}
proc fcQToolBarChangeEvent_toggle(self: pointer, ): bool {.importc: "QToolBarChangeEvent_toggle".}
type cQToolBarChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQToolBarChangeEventVTable, self: ptr cQToolBarChangeEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQToolBarChangeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QToolBarChangeEvent_virtualbase_clone".}
proc fcQToolBarChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QToolBarChangeEvent_virtualbase_setAccepted".}
proc fcQToolBarChangeEvent_new(vtbl: pointer, t: bool): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new".}
proc fcQToolBarChangeEvent_delete(self: pointer) {.importc: "QToolBarChangeEvent_delete".}
proc fcQShortcutEvent_clone(self: pointer, ): pointer {.importc: "QShortcutEvent_clone".}
proc fcQShortcutEvent_key(self: pointer, ): pointer {.importc: "QShortcutEvent_key".}
proc fcQShortcutEvent_shortcutId(self: pointer, ): cint {.importc: "QShortcutEvent_shortcutId".}
proc fcQShortcutEvent_isAmbiguous(self: pointer, ): bool {.importc: "QShortcutEvent_isAmbiguous".}
type cQShortcutEventVTable = object
  destructor*: proc(vtbl: ptr cQShortcutEventVTable, self: ptr cQShortcutEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQShortcutEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QShortcutEvent_virtualbase_clone".}
proc fcQShortcutEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QShortcutEvent_virtualbase_setAccepted".}
proc fcQShortcutEvent_new(vtbl: pointer, key: pointer, id: cint): ptr cQShortcutEvent {.importc: "QShortcutEvent_new".}
proc fcQShortcutEvent_new2(vtbl: pointer, key: pointer, id: cint, ambiguous: bool): ptr cQShortcutEvent {.importc: "QShortcutEvent_new2".}
proc fcQShortcutEvent_delete(self: pointer) {.importc: "QShortcutEvent_delete".}
proc fcQWindowStateChangeEvent_clone(self: pointer, ): pointer {.importc: "QWindowStateChangeEvent_clone".}
proc fcQWindowStateChangeEvent_oldState(self: pointer, ): cint {.importc: "QWindowStateChangeEvent_oldState".}
proc fcQWindowStateChangeEvent_isOverride(self: pointer, ): bool {.importc: "QWindowStateChangeEvent_isOverride".}
type cQWindowStateChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQWindowStateChangeEventVTable, self: ptr cQWindowStateChangeEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQWindowStateChangeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QWindowStateChangeEvent_virtualbase_clone".}
proc fcQWindowStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QWindowStateChangeEvent_virtualbase_setAccepted".}
proc fcQWindowStateChangeEvent_new(vtbl: pointer, oldState: cint): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new".}
proc fcQWindowStateChangeEvent_new2(vtbl: pointer, oldState: cint, isOverride: bool): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new2".}
proc fcQWindowStateChangeEvent_delete(self: pointer) {.importc: "QWindowStateChangeEvent_delete".}
proc fcQTouchEvent_clone(self: pointer, ): pointer {.importc: "QTouchEvent_clone".}
proc fcQTouchEvent_target(self: pointer, ): pointer {.importc: "QTouchEvent_target".}
proc fcQTouchEvent_touchPointStates(self: pointer, ): cint {.importc: "QTouchEvent_touchPointStates".}
proc fcQTouchEvent_touchPoints(self: pointer, ): struct_miqt_array {.importc: "QTouchEvent_touchPoints".}
proc fcQTouchEvent_isBeginEvent(self: pointer, ): bool {.importc: "QTouchEvent_isBeginEvent".}
proc fcQTouchEvent_isUpdateEvent(self: pointer, ): bool {.importc: "QTouchEvent_isUpdateEvent".}
proc fcQTouchEvent_isEndEvent(self: pointer, ): bool {.importc: "QTouchEvent_isEndEvent".}
type cQTouchEventVTable = object
  destructor*: proc(vtbl: ptr cQTouchEventVTable, self: ptr cQTouchEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(vtbl, self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQTouchEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QTouchEvent_virtualbase_clone".}
proc fcQTouchEvent_virtualbase_isBeginEvent(self: pointer, ): bool {.importc: "QTouchEvent_virtualbase_isBeginEvent".}
proc fcQTouchEvent_virtualbase_isUpdateEvent(self: pointer, ): bool {.importc: "QTouchEvent_virtualbase_isUpdateEvent".}
proc fcQTouchEvent_virtualbase_isEndEvent(self: pointer, ): bool {.importc: "QTouchEvent_virtualbase_isEndEvent".}
proc fcQTouchEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QTouchEvent_virtualbase_setTimestamp".}
proc fcQTouchEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QTouchEvent_virtualbase_setAccepted".}
proc fcQTouchEvent_new(vtbl: pointer, eventType: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new".}
proc fcQTouchEvent_new2(vtbl: pointer, eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new2".}
proc fcQTouchEvent_new3(vtbl: pointer, eventType: cint, device: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new3".}
proc fcQTouchEvent_new4(vtbl: pointer, eventType: cint, device: pointer, modifiers: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new4".}
proc fcQTouchEvent_new5(vtbl: pointer, eventType: cint, device: pointer, modifiers: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new5".}
proc fcQTouchEvent_new6(vtbl: pointer, eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new6".}
proc fcQTouchEvent_delete(self: pointer) {.importc: "QTouchEvent_delete".}
proc fcQScrollPrepareEvent_clone(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_clone".}
proc fcQScrollPrepareEvent_startPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_startPos".}
proc fcQScrollPrepareEvent_viewportSize(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_viewportSize".}
proc fcQScrollPrepareEvent_contentPosRange(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPosRange".}
proc fcQScrollPrepareEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_contentPos".}
proc fcQScrollPrepareEvent_setViewportSize(self: pointer, size: pointer): void {.importc: "QScrollPrepareEvent_setViewportSize".}
proc fcQScrollPrepareEvent_setContentPosRange(self: pointer, rect: pointer): void {.importc: "QScrollPrepareEvent_setContentPosRange".}
proc fcQScrollPrepareEvent_setContentPos(self: pointer, pos: pointer): void {.importc: "QScrollPrepareEvent_setContentPos".}
type cQScrollPrepareEventVTable = object
  destructor*: proc(vtbl: ptr cQScrollPrepareEventVTable, self: ptr cQScrollPrepareEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollPrepareEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QScrollPrepareEvent_virtualbase_clone".}
proc fcQScrollPrepareEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QScrollPrepareEvent_virtualbase_setAccepted".}
proc fcQScrollPrepareEvent_new(vtbl: pointer, startPos: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new".}
proc fcQScrollPrepareEvent_delete(self: pointer) {.importc: "QScrollPrepareEvent_delete".}
proc fcQScrollEvent_clone(self: pointer, ): pointer {.importc: "QScrollEvent_clone".}
proc fcQScrollEvent_contentPos(self: pointer, ): pointer {.importc: "QScrollEvent_contentPos".}
proc fcQScrollEvent_overshootDistance(self: pointer, ): pointer {.importc: "QScrollEvent_overshootDistance".}
proc fcQScrollEvent_scrollState(self: pointer, ): cint {.importc: "QScrollEvent_scrollState".}
type cQScrollEventVTable = object
  destructor*: proc(vtbl: ptr cQScrollEventVTable, self: ptr cQScrollEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QScrollEvent_virtualbase_clone".}
proc fcQScrollEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QScrollEvent_virtualbase_setAccepted".}
proc fcQScrollEvent_new(vtbl: pointer, contentPos: pointer, overshoot: pointer, scrollState: cint): ptr cQScrollEvent {.importc: "QScrollEvent_new".}
proc fcQScrollEvent_delete(self: pointer) {.importc: "QScrollEvent_delete".}
proc fcQScreenOrientationChangeEvent_clone(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_clone".}
proc fcQScreenOrientationChangeEvent_screen(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_screen".}
proc fcQScreenOrientationChangeEvent_orientation(self: pointer, ): cint {.importc: "QScreenOrientationChangeEvent_orientation".}
type cQScreenOrientationChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQScreenOrientationChangeEventVTable, self: ptr cQScreenOrientationChangeEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQScreenOrientationChangeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QScreenOrientationChangeEvent_virtualbase_clone".}
proc fcQScreenOrientationChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QScreenOrientationChangeEvent_virtualbase_setAccepted".}
proc fcQScreenOrientationChangeEvent_new(vtbl: pointer, screen: pointer, orientation: cint): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new".}
proc fcQScreenOrientationChangeEvent_delete(self: pointer) {.importc: "QScreenOrientationChangeEvent_delete".}
proc fcQApplicationStateChangeEvent_clone(self: pointer, ): pointer {.importc: "QApplicationStateChangeEvent_clone".}
proc fcQApplicationStateChangeEvent_applicationState(self: pointer, ): cint {.importc: "QApplicationStateChangeEvent_applicationState".}
type cQApplicationStateChangeEventVTable = object
  destructor*: proc(vtbl: ptr cQApplicationStateChangeEventVTable, self: ptr cQApplicationStateChangeEvent) {.cdecl, raises:[], gcsafe.}
  clone*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(vtbl, self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQApplicationStateChangeEvent_virtualbase_clone(self: pointer, ): pointer {.importc: "QApplicationStateChangeEvent_virtualbase_clone".}
proc fcQApplicationStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QApplicationStateChangeEvent_virtualbase_setAccepted".}
proc fcQApplicationStateChangeEvent_new(vtbl: pointer, state: cint): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new".}
proc fcQApplicationStateChangeEvent_delete(self: pointer) {.importc: "QApplicationStateChangeEvent_delete".}
proc fcQInputMethodEventAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QInputMethodEvent__Attribute_operatorAssign".}
proc fcQInputMethodEventAttribute_new(typ: cint, s: cint, l: cint, val: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new".}
proc fcQInputMethodEventAttribute_new2(typ: cint, s: cint, l: cint): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new2".}
proc fcQInputMethodEventAttribute_new3(param1: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new3".}
proc fcQInputMethodEventAttribute_delete(self: pointer) {.importc: "QInputMethodEvent__Attribute_delete".}

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

type QInputEventcloneProc* = proc(self: QInputEvent): gen_qevent_types.QInputEvent {.raises: [], gcsafe.}
type QInputEventsetTimestampProc* = proc(self: QInputEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QInputEventsetAcceptedProc* = proc(self: QInputEvent, accepted: bool): void {.raises: [], gcsafe.}
type QInputEventVTable* = object
  vtbl: cQInputEventVTable
  clone*: QInputEventcloneProc
  setTimestamp*: QInputEventsetTimestampProc
  setAccepted*: QInputEventsetAcceptedProc
proc QInputEventclone*(self: gen_qevent_types.QInputEvent, ): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fcQInputEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQInputEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputEventVTable](vtbl)
  let self = QInputEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QInputEventsetTimestamp*(self: gen_qevent_types.QInputEvent, timestamp: culonglong): void =
  fcQInputEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQInputEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QInputEventVTable](vtbl)
  let self = QInputEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QInputEventsetAccepted*(self: gen_qevent_types.QInputEvent, accepted: bool): void =
  fcQInputEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQInputEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputEventVTable](vtbl)
  let self = QInputEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice,
    vtbl: ref QInputEventVTable = nil): gen_qevent_types.QInputEvent =
  let vtbl = if vtbl == nil: new QInputEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputEventVTable, _: ptr cQInputEvent) {.cdecl.} =
    let vtbl = cast[ref QInputEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQInputEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQInputEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQInputEvent_setAccepted
  gen_qevent_types.QInputEvent(h: fcQInputEvent_new(addr(vtbl[]), cint(typeVal), m_dev.h))

proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice, modifiers: cint,
    vtbl: ref QInputEventVTable = nil): gen_qevent_types.QInputEvent =
  let vtbl = if vtbl == nil: new QInputEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputEventVTable, _: ptr cQInputEvent) {.cdecl.} =
    let vtbl = cast[ref QInputEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQInputEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQInputEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQInputEvent_setAccepted
  gen_qevent_types.QInputEvent(h: fcQInputEvent_new2(addr(vtbl[]), cint(typeVal), m_dev.h, cint(modifiers)))

proc delete*(self: gen_qevent_types.QInputEvent) =
  fcQInputEvent_delete(self.h)
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
  c_free(v_ma.data)
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

type QPointerEventcloneProc* = proc(self: QPointerEvent): gen_qevent_types.QPointerEvent {.raises: [], gcsafe.}
type QPointerEventsetTimestampProc* = proc(self: QPointerEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QPointerEventisBeginEventProc* = proc(self: QPointerEvent): bool {.raises: [], gcsafe.}
type QPointerEventisUpdateEventProc* = proc(self: QPointerEvent): bool {.raises: [], gcsafe.}
type QPointerEventisEndEventProc* = proc(self: QPointerEvent): bool {.raises: [], gcsafe.}
type QPointerEventsetAcceptedProc* = proc(self: QPointerEvent, accepted: bool): void {.raises: [], gcsafe.}
type QPointerEventVTable* = object
  vtbl: cQPointerEventVTable
  clone*: QPointerEventcloneProc
  setTimestamp*: QPointerEventsetTimestampProc
  isBeginEvent*: QPointerEventisBeginEventProc
  isUpdateEvent*: QPointerEventisUpdateEventProc
  isEndEvent*: QPointerEventisEndEventProc
  setAccepted*: QPointerEventsetAcceptedProc
proc QPointerEventclone*(self: gen_qevent_types.QPointerEvent, ): gen_qevent_types.QPointerEvent =
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQPointerEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](vtbl)
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QPointerEventsetTimestamp*(self: gen_qevent_types.QPointerEvent, timestamp: culonglong): void =
  fcQPointerEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQPointerEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](vtbl)
  let self = QPointerEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QPointerEventisBeginEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQPointerEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](vtbl)
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QPointerEventisUpdateEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQPointerEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](vtbl)
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QPointerEventisEndEvent*(self: gen_qevent_types.QPointerEvent, ): bool =
  fcQPointerEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQPointerEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](vtbl)
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QPointerEventsetAccepted*(self: gen_qevent_types.QPointerEvent, accepted: bool): void =
  fcQPointerEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQPointerEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](vtbl)
  let self = QPointerEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QPointerEventVTable = nil): gen_qevent_types.QPointerEvent =
  let vtbl = if vtbl == nil: new QPointerEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointerEventVTable, _: ptr cQPointerEvent) {.cdecl.} =
    let vtbl = cast[ref QPointerEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQPointerEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQPointerEvent_setTimestamp
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQPointerEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQPointerEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQPointerEvent_isEndEvent
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQPointerEvent_setAccepted
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_new(addr(vtbl[]), cint(typeVal), dev.h))

proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint,
    vtbl: ref QPointerEventVTable = nil): gen_qevent_types.QPointerEvent =
  let vtbl = if vtbl == nil: new QPointerEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointerEventVTable, _: ptr cQPointerEvent) {.cdecl.} =
    let vtbl = cast[ref QPointerEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQPointerEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQPointerEvent_setTimestamp
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQPointerEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQPointerEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQPointerEvent_isEndEvent
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQPointerEvent_setAccepted
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_new2(addr(vtbl[]), cint(typeVal), dev.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, points: seq[gen_qeventpoint_types.QEventPoint],
    vtbl: ref QPointerEventVTable = nil): gen_qevent_types.QPointerEvent =
  var points_CArray = newSeq[pointer](len(points))
  for i in 0..<len(points):
    points_CArray[i] = points[i].h

  let vtbl = if vtbl == nil: new QPointerEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointerEventVTable, _: ptr cQPointerEvent) {.cdecl.} =
    let vtbl = cast[ref QPointerEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQPointerEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQPointerEvent_setTimestamp
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQPointerEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQPointerEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQPointerEvent_isEndEvent
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQPointerEvent_setAccepted
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_new3(addr(vtbl[]), cint(typeVal), dev.h, cint(modifiers), struct_miqt_array(len: csize_t(len(points)), data: if len(points) == 0: nil else: addr(points_CArray[0]))))

proc delete*(self: gen_qevent_types.QPointerEvent) =
  fcQPointerEvent_delete(self.h)
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

proc staticMetaObject*(_: type gen_qevent_types.QSinglePointEvent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSinglePointEvent_staticMetaObject())
proc delete*(self: gen_qevent_types.QSinglePointEvent) =
  fcQSinglePointEvent_delete(self.h)
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

type QEnterEventcloneProc* = proc(self: QEnterEvent): gen_qevent_types.QEnterEvent {.raises: [], gcsafe.}
type QEnterEventisBeginEventProc* = proc(self: QEnterEvent): bool {.raises: [], gcsafe.}
type QEnterEventisUpdateEventProc* = proc(self: QEnterEvent): bool {.raises: [], gcsafe.}
type QEnterEventisEndEventProc* = proc(self: QEnterEvent): bool {.raises: [], gcsafe.}
type QEnterEventsetTimestampProc* = proc(self: QEnterEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QEnterEventsetAcceptedProc* = proc(self: QEnterEvent, accepted: bool): void {.raises: [], gcsafe.}
type QEnterEventVTable* = object
  vtbl: cQEnterEventVTable
  clone*: QEnterEventcloneProc
  isBeginEvent*: QEnterEventisBeginEventProc
  isUpdateEvent*: QEnterEventisUpdateEventProc
  isEndEvent*: QEnterEventisEndEventProc
  setTimestamp*: QEnterEventsetTimestampProc
  setAccepted*: QEnterEventsetAcceptedProc
proc QEnterEventclone*(self: gen_qevent_types.QEnterEvent, ): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQEnterEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](vtbl)
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QEnterEventisBeginEvent*(self: gen_qevent_types.QEnterEvent, ): bool =
  fcQEnterEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQEnterEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](vtbl)
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QEnterEventisUpdateEvent*(self: gen_qevent_types.QEnterEvent, ): bool =
  fcQEnterEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQEnterEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](vtbl)
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QEnterEventisEndEvent*(self: gen_qevent_types.QEnterEvent, ): bool =
  fcQEnterEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQEnterEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](vtbl)
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QEnterEventsetTimestamp*(self: gen_qevent_types.QEnterEvent, timestamp: culonglong): void =
  fcQEnterEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQEnterEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](vtbl)
  let self = QEnterEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QEnterEventsetAccepted*(self: gen_qevent_types.QEnterEvent, accepted: bool): void =
  fcQEnterEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQEnterEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](vtbl)
  let self = QEnterEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QEnterEvent,
    localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF,
    vtbl: ref QEnterEventVTable = nil): gen_qevent_types.QEnterEvent =
  let vtbl = if vtbl == nil: new QEnterEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQEnterEventVTable, _: ptr cQEnterEvent) {.cdecl.} =
    let vtbl = cast[ref QEnterEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQEnterEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQEnterEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQEnterEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQEnterEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQEnterEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQEnterEvent_setAccepted
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_new(addr(vtbl[]), localPos.h, scenePos.h, globalPos.h))

proc create*(T: type gen_qevent_types.QEnterEvent,
    localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QEnterEventVTable = nil): gen_qevent_types.QEnterEvent =
  let vtbl = if vtbl == nil: new QEnterEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQEnterEventVTable, _: ptr cQEnterEvent) {.cdecl.} =
    let vtbl = cast[ref QEnterEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQEnterEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQEnterEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQEnterEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQEnterEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQEnterEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQEnterEvent_setAccepted
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_new2(addr(vtbl[]), localPos.h, scenePos.h, globalPos.h, device.h))

proc delete*(self: gen_qevent_types.QEnterEvent) =
  fcQEnterEvent_delete(self.h)
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

type QMouseEventcloneProc* = proc(self: QMouseEvent): gen_qevent_types.QMouseEvent {.raises: [], gcsafe.}
type QMouseEventisBeginEventProc* = proc(self: QMouseEvent): bool {.raises: [], gcsafe.}
type QMouseEventisUpdateEventProc* = proc(self: QMouseEvent): bool {.raises: [], gcsafe.}
type QMouseEventisEndEventProc* = proc(self: QMouseEvent): bool {.raises: [], gcsafe.}
type QMouseEventsetTimestampProc* = proc(self: QMouseEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QMouseEventsetAcceptedProc* = proc(self: QMouseEvent, accepted: bool): void {.raises: [], gcsafe.}
type QMouseEventVTable* = object
  vtbl: cQMouseEventVTable
  clone*: QMouseEventcloneProc
  isBeginEvent*: QMouseEventisBeginEventProc
  isUpdateEvent*: QMouseEventisUpdateEventProc
  isEndEvent*: QMouseEventisEndEventProc
  setTimestamp*: QMouseEventsetTimestampProc
  setAccepted*: QMouseEventsetAcceptedProc
proc QMouseEventclone*(self: gen_qevent_types.QMouseEvent, ): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQMouseEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](vtbl)
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QMouseEventisBeginEvent*(self: gen_qevent_types.QMouseEvent, ): bool =
  fcQMouseEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQMouseEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](vtbl)
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QMouseEventisUpdateEvent*(self: gen_qevent_types.QMouseEvent, ): bool =
  fcQMouseEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQMouseEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](vtbl)
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QMouseEventisEndEvent*(self: gen_qevent_types.QMouseEvent, ): bool =
  fcQMouseEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQMouseEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](vtbl)
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QMouseEventsetTimestamp*(self: gen_qevent_types.QMouseEvent, timestamp: culonglong): void =
  fcQMouseEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQMouseEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](vtbl)
  let self = QMouseEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QMouseEventsetAccepted*(self: gen_qevent_types.QMouseEvent, accepted: bool): void =
  fcQMouseEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQMouseEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](vtbl)
  let self = QMouseEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new(addr(vtbl[]), cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new2(addr(vtbl[]), cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new3(addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new4(addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source)))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new5(addr(vtbl[]), cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new6(addr(vtbl[]), cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new7(addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMouseEventVTable, _: ptr cQMouseEvent) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMouseEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQMouseEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQMouseEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQMouseEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQMouseEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMouseEvent_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new8(addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source), device.h))

proc delete*(self: gen_qevent_types.QMouseEvent) =
  fcQMouseEvent_delete(self.h)
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

type QHoverEventcloneProc* = proc(self: QHoverEvent): gen_qevent_types.QHoverEvent {.raises: [], gcsafe.}
type QHoverEventisUpdateEventProc* = proc(self: QHoverEvent): bool {.raises: [], gcsafe.}
type QHoverEventisBeginEventProc* = proc(self: QHoverEvent): bool {.raises: [], gcsafe.}
type QHoverEventisEndEventProc* = proc(self: QHoverEvent): bool {.raises: [], gcsafe.}
type QHoverEventsetTimestampProc* = proc(self: QHoverEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QHoverEventsetAcceptedProc* = proc(self: QHoverEvent, accepted: bool): void {.raises: [], gcsafe.}
type QHoverEventVTable* = object
  vtbl: cQHoverEventVTable
  clone*: QHoverEventcloneProc
  isUpdateEvent*: QHoverEventisUpdateEventProc
  isBeginEvent*: QHoverEventisBeginEventProc
  isEndEvent*: QHoverEventisEndEventProc
  setTimestamp*: QHoverEventsetTimestampProc
  setAccepted*: QHoverEventsetAcceptedProc
proc QHoverEventclone*(self: gen_qevent_types.QHoverEvent, ): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQHoverEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](vtbl)
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QHoverEventisUpdateEvent*(self: gen_qevent_types.QHoverEvent, ): bool =
  fcQHoverEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQHoverEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](vtbl)
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QHoverEventisBeginEvent*(self: gen_qevent_types.QHoverEvent, ): bool =
  fcQHoverEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQHoverEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](vtbl)
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QHoverEventisEndEvent*(self: gen_qevent_types.QHoverEvent, ): bool =
  fcQHoverEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQHoverEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](vtbl)
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QHoverEventsetTimestamp*(self: gen_qevent_types.QHoverEvent, timestamp: culonglong): void =
  fcQHoverEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQHoverEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](vtbl)
  let self = QHoverEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QHoverEventsetAccepted*(self: gen_qevent_types.QHoverEvent, accepted: bool): void =
  fcQHoverEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQHoverEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](vtbl)
  let self = QHoverEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHoverEventVTable, _: ptr cQHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHoverEvent_clone
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQHoverEvent_isUpdateEvent
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQHoverEvent_isBeginEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQHoverEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQHoverEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHoverEvent_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new(addr(vtbl[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h))

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHoverEventVTable, _: ptr cQHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHoverEvent_clone
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQHoverEvent_isUpdateEvent
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQHoverEvent_isBeginEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQHoverEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQHoverEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHoverEvent_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new2(addr(vtbl[]), cint(typeVal), pos.h, oldPos.h))

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHoverEventVTable, _: ptr cQHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHoverEvent_clone
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQHoverEvent_isUpdateEvent
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQHoverEvent_isBeginEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQHoverEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQHoverEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHoverEvent_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new3(addr(vtbl[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHoverEventVTable, _: ptr cQHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHoverEvent_clone
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQHoverEvent_isUpdateEvent
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQHoverEvent_isBeginEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQHoverEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQHoverEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHoverEvent_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new4(addr(vtbl[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers), device.h))

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHoverEventVTable, _: ptr cQHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHoverEvent_clone
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQHoverEvent_isUpdateEvent
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQHoverEvent_isBeginEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQHoverEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQHoverEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHoverEvent_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new5(addr(vtbl[]), cint(typeVal), pos.h, oldPos.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHoverEventVTable, _: ptr cQHoverEvent) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHoverEvent_clone
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQHoverEvent_isUpdateEvent
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQHoverEvent_isBeginEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQHoverEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQHoverEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHoverEvent_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new6(addr(vtbl[]), cint(typeVal), pos.h, oldPos.h, cint(modifiers), device.h))

proc delete*(self: gen_qevent_types.QHoverEvent) =
  fcQHoverEvent_delete(self.h)
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

type QWheelEventcloneProc* = proc(self: QWheelEvent): gen_qevent_types.QWheelEvent {.raises: [], gcsafe.}
type QWheelEventisBeginEventProc* = proc(self: QWheelEvent): bool {.raises: [], gcsafe.}
type QWheelEventisUpdateEventProc* = proc(self: QWheelEvent): bool {.raises: [], gcsafe.}
type QWheelEventisEndEventProc* = proc(self: QWheelEvent): bool {.raises: [], gcsafe.}
type QWheelEventsetTimestampProc* = proc(self: QWheelEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QWheelEventsetAcceptedProc* = proc(self: QWheelEvent, accepted: bool): void {.raises: [], gcsafe.}
type QWheelEventVTable* = object
  vtbl: cQWheelEventVTable
  clone*: QWheelEventcloneProc
  isBeginEvent*: QWheelEventisBeginEventProc
  isUpdateEvent*: QWheelEventisUpdateEventProc
  isEndEvent*: QWheelEventisEndEventProc
  setTimestamp*: QWheelEventsetTimestampProc
  setAccepted*: QWheelEventsetAcceptedProc
proc QWheelEventclone*(self: gen_qevent_types.QWheelEvent, ): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQWheelEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](vtbl)
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QWheelEventisBeginEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQWheelEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](vtbl)
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QWheelEventisUpdateEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQWheelEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](vtbl)
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QWheelEventisEndEvent*(self: gen_qevent_types.QWheelEvent, ): bool =
  fcQWheelEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQWheelEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](vtbl)
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QWheelEventsetTimestamp*(self: gen_qevent_types.QWheelEvent, timestamp: culonglong): void =
  fcQWheelEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQWheelEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](vtbl)
  let self = QWheelEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QWheelEventsetAccepted*(self: gen_qevent_types.QWheelEvent, accepted: bool): void =
  fcQWheelEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQWheelEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](vtbl)
  let self = QWheelEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool,
    vtbl: ref QWheelEventVTable = nil): gen_qevent_types.QWheelEvent =
  let vtbl = if vtbl == nil: new QWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWheelEventVTable, _: ptr cQWheelEvent) {.cdecl.} =
    let vtbl = cast[ref QWheelEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQWheelEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQWheelEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQWheelEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQWheelEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQWheelEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQWheelEvent_setAccepted
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new(addr(vtbl[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted))

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint,
    vtbl: ref QWheelEventVTable = nil): gen_qevent_types.QWheelEvent =
  let vtbl = if vtbl == nil: new QWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWheelEventVTable, _: ptr cQWheelEvent) {.cdecl.} =
    let vtbl = cast[ref QWheelEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQWheelEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQWheelEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQWheelEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQWheelEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQWheelEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQWheelEvent_setAccepted
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new2(addr(vtbl[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source)))

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QWheelEventVTable = nil): gen_qevent_types.QWheelEvent =
  let vtbl = if vtbl == nil: new QWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWheelEventVTable, _: ptr cQWheelEvent) {.cdecl.} =
    let vtbl = cast[ref QWheelEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQWheelEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQWheelEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQWheelEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQWheelEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQWheelEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQWheelEvent_setAccepted
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new3(addr(vtbl[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source), device.h))

proc staticMetaObject*(_: type gen_qevent_types.QWheelEvent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWheelEvent_staticMetaObject())
proc delete*(self: gen_qevent_types.QWheelEvent) =
  fcQWheelEvent_delete(self.h)
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

type QTabletEventcloneProc* = proc(self: QTabletEvent): gen_qevent_types.QTabletEvent {.raises: [], gcsafe.}
type QTabletEventisBeginEventProc* = proc(self: QTabletEvent): bool {.raises: [], gcsafe.}
type QTabletEventisUpdateEventProc* = proc(self: QTabletEvent): bool {.raises: [], gcsafe.}
type QTabletEventisEndEventProc* = proc(self: QTabletEvent): bool {.raises: [], gcsafe.}
type QTabletEventsetTimestampProc* = proc(self: QTabletEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QTabletEventsetAcceptedProc* = proc(self: QTabletEvent, accepted: bool): void {.raises: [], gcsafe.}
type QTabletEventVTable* = object
  vtbl: cQTabletEventVTable
  clone*: QTabletEventcloneProc
  isBeginEvent*: QTabletEventisBeginEventProc
  isUpdateEvent*: QTabletEventisUpdateEventProc
  isEndEvent*: QTabletEventisEndEventProc
  setTimestamp*: QTabletEventsetTimestampProc
  setAccepted*: QTabletEventsetAcceptedProc
proc QTabletEventclone*(self: gen_qevent_types.QTabletEvent, ): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQTabletEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](vtbl)
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QTabletEventisBeginEvent*(self: gen_qevent_types.QTabletEvent, ): bool =
  fcQTabletEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQTabletEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](vtbl)
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QTabletEventisUpdateEvent*(self: gen_qevent_types.QTabletEvent, ): bool =
  fcQTabletEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQTabletEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](vtbl)
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QTabletEventisEndEvent*(self: gen_qevent_types.QTabletEvent, ): bool =
  fcQTabletEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQTabletEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](vtbl)
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QTabletEventsetTimestamp*(self: gen_qevent_types.QTabletEvent, timestamp: culonglong): void =
  fcQTabletEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQTabletEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](vtbl)
  let self = QTabletEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QTabletEventsetAccepted*(self: gen_qevent_types.QTabletEvent, accepted: bool): void =
  fcQTabletEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQTabletEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](vtbl)
  let self = QTabletEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QTabletEvent,
    t: cint, device: gen_qpointingdevice_types.QPointingDevice, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint,
    vtbl: ref QTabletEventVTable = nil): gen_qevent_types.QTabletEvent =
  let vtbl = if vtbl == nil: new QTabletEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTabletEventVTable, _: ptr cQTabletEvent) {.cdecl.} =
    let vtbl = cast[ref QTabletEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTabletEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQTabletEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQTabletEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQTabletEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQTabletEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTabletEvent_setAccepted
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_new(addr(vtbl[]), cint(t), device.h, pos.h, globalPos.h, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), cint(button), cint(buttons)))

proc delete*(self: gen_qevent_types.QTabletEvent) =
  fcQTabletEvent_delete(self.h)
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

type QNativeGestureEventcloneProc* = proc(self: QNativeGestureEvent): gen_qevent_types.QNativeGestureEvent {.raises: [], gcsafe.}
type QNativeGestureEventisBeginEventProc* = proc(self: QNativeGestureEvent): bool {.raises: [], gcsafe.}
type QNativeGestureEventisUpdateEventProc* = proc(self: QNativeGestureEvent): bool {.raises: [], gcsafe.}
type QNativeGestureEventisEndEventProc* = proc(self: QNativeGestureEvent): bool {.raises: [], gcsafe.}
type QNativeGestureEventsetTimestampProc* = proc(self: QNativeGestureEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QNativeGestureEventsetAcceptedProc* = proc(self: QNativeGestureEvent, accepted: bool): void {.raises: [], gcsafe.}
type QNativeGestureEventVTable* = object
  vtbl: cQNativeGestureEventVTable
  clone*: QNativeGestureEventcloneProc
  isBeginEvent*: QNativeGestureEventisBeginEventProc
  isUpdateEvent*: QNativeGestureEventisUpdateEventProc
  isEndEvent*: QNativeGestureEventisEndEventProc
  setTimestamp*: QNativeGestureEventsetTimestampProc
  setAccepted*: QNativeGestureEventsetAcceptedProc
proc QNativeGestureEventclone*(self: gen_qevent_types.QNativeGestureEvent, ): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQNativeGestureEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](vtbl)
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QNativeGestureEventisBeginEvent*(self: gen_qevent_types.QNativeGestureEvent, ): bool =
  fcQNativeGestureEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQNativeGestureEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](vtbl)
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QNativeGestureEventisUpdateEvent*(self: gen_qevent_types.QNativeGestureEvent, ): bool =
  fcQNativeGestureEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQNativeGestureEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](vtbl)
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QNativeGestureEventisEndEvent*(self: gen_qevent_types.QNativeGestureEvent, ): bool =
  fcQNativeGestureEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQNativeGestureEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](vtbl)
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QNativeGestureEventsetTimestamp*(self: gen_qevent_types.QNativeGestureEvent, timestamp: culonglong): void =
  fcQNativeGestureEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQNativeGestureEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](vtbl)
  let self = QNativeGestureEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QNativeGestureEventsetAccepted*(self: gen_qevent_types.QNativeGestureEvent, accepted: bool): void =
  fcQNativeGestureEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQNativeGestureEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](vtbl)
  let self = QNativeGestureEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, sequenceId: culonglong, intArgument: culonglong,
    vtbl: ref QNativeGestureEventVTable = nil): gen_qevent_types.QNativeGestureEvent =
  let vtbl = if vtbl == nil: new QNativeGestureEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNativeGestureEventVTable, _: ptr cQNativeGestureEvent) {.cdecl.} =
    let vtbl = cast[ref QNativeGestureEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQNativeGestureEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQNativeGestureEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQNativeGestureEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQNativeGestureEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQNativeGestureEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQNativeGestureEvent_setAccepted
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new(addr(vtbl[]), cint(typeVal), dev.h, localPos.h, scenePos.h, globalPos.h, value, sequenceId, intArgument))

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF,
    vtbl: ref QNativeGestureEventVTable = nil): gen_qevent_types.QNativeGestureEvent =
  let vtbl = if vtbl == nil: new QNativeGestureEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNativeGestureEventVTable, _: ptr cQNativeGestureEvent) {.cdecl.} =
    let vtbl = cast[ref QNativeGestureEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQNativeGestureEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQNativeGestureEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQNativeGestureEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQNativeGestureEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQNativeGestureEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQNativeGestureEvent_setAccepted
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new2(addr(vtbl[]), cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h))

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF, sequenceId: culonglong,
    vtbl: ref QNativeGestureEventVTable = nil): gen_qevent_types.QNativeGestureEvent =
  let vtbl = if vtbl == nil: new QNativeGestureEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNativeGestureEventVTable, _: ptr cQNativeGestureEvent) {.cdecl.} =
    let vtbl = cast[ref QNativeGestureEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQNativeGestureEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQNativeGestureEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQNativeGestureEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQNativeGestureEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQNativeGestureEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQNativeGestureEvent_setAccepted
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new3(addr(vtbl[]), cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h, sequenceId))

proc delete*(self: gen_qevent_types.QNativeGestureEvent) =
  fcQNativeGestureEvent_delete(self.h)
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

type QKeyEventcloneProc* = proc(self: QKeyEvent): gen_qevent_types.QKeyEvent {.raises: [], gcsafe.}
type QKeyEventsetTimestampProc* = proc(self: QKeyEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QKeyEventsetAcceptedProc* = proc(self: QKeyEvent, accepted: bool): void {.raises: [], gcsafe.}
type QKeyEventVTable* = object
  vtbl: cQKeyEventVTable
  clone*: QKeyEventcloneProc
  setTimestamp*: QKeyEventsetTimestampProc
  setAccepted*: QKeyEventsetAcceptedProc
proc QKeyEventclone*(self: gen_qevent_types.QKeyEvent, ): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQKeyEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeyEventVTable](vtbl)
  let self = QKeyEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QKeyEventsetTimestamp*(self: gen_qevent_types.QKeyEvent, timestamp: culonglong): void =
  fcQKeyEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQKeyEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventVTable](vtbl)
  let self = QKeyEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QKeyEventsetAccepted*(self: gen_qevent_types.QKeyEvent, accepted: bool): void =
  fcQKeyEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQKeyEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventVTable](vtbl)
  let self = QKeyEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new(addr(vtbl[]), cint(typeVal), key, cint(modifiers)))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new2(addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: string,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new3(addr(vtbl[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: string, autorep: bool,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new4(addr(vtbl[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: string, autorep: bool, count: cushort,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new5(addr(vtbl[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new6(addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new7(addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool, count: cushort,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new8(addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count))

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: string, autorep: bool, count: cushort, device: gen_qinputdevice_types.QInputDevice,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventVTable, _: ptr cQKeyEvent) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQKeyEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQKeyEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQKeyEvent_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new9(addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: text, len: csize_t(len(text))), autorep, count, device.h))

proc delete*(self: gen_qevent_types.QKeyEvent) =
  fcQKeyEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QFocusEvent, ): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_clone(self.h))

proc gotFocus*(self: gen_qevent_types.QFocusEvent, ): bool =
  fcQFocusEvent_gotFocus(self.h)

proc lostFocus*(self: gen_qevent_types.QFocusEvent, ): bool =
  fcQFocusEvent_lostFocus(self.h)

proc reason*(self: gen_qevent_types.QFocusEvent, ): cint =
  cint(fcQFocusEvent_reason(self.h))

type QFocusEventcloneProc* = proc(self: QFocusEvent): gen_qevent_types.QFocusEvent {.raises: [], gcsafe.}
type QFocusEventsetAcceptedProc* = proc(self: QFocusEvent, accepted: bool): void {.raises: [], gcsafe.}
type QFocusEventVTable* = object
  vtbl: cQFocusEventVTable
  clone*: QFocusEventcloneProc
  setAccepted*: QFocusEventsetAcceptedProc
proc QFocusEventclone*(self: gen_qevent_types.QFocusEvent, ): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQFocusEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusEventVTable](vtbl)
  let self = QFocusEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QFocusEventsetAccepted*(self: gen_qevent_types.QFocusEvent, accepted: bool): void =
  fcQFocusEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQFocusEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFocusEventVTable](vtbl)
  let self = QFocusEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint,
    vtbl: ref QFocusEventVTable = nil): gen_qevent_types.QFocusEvent =
  let vtbl = if vtbl == nil: new QFocusEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFocusEventVTable, _: ptr cQFocusEvent) {.cdecl.} =
    let vtbl = cast[ref QFocusEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQFocusEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQFocusEvent_setAccepted
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_new(addr(vtbl[]), cint(typeVal)))

proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint, reason: cint,
    vtbl: ref QFocusEventVTable = nil): gen_qevent_types.QFocusEvent =
  let vtbl = if vtbl == nil: new QFocusEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFocusEventVTable, _: ptr cQFocusEvent) {.cdecl.} =
    let vtbl = cast[ref QFocusEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQFocusEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQFocusEvent_setAccepted
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_new2(addr(vtbl[]), cint(typeVal), cint(reason)))

proc delete*(self: gen_qevent_types.QFocusEvent) =
  fcQFocusEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QPaintEvent, ): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_clone(self.h))

proc rect*(self: gen_qevent_types.QPaintEvent, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPaintEvent_rect(self.h))

proc region*(self: gen_qevent_types.QPaintEvent, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQPaintEvent_region(self.h))

type QPaintEventcloneProc* = proc(self: QPaintEvent): gen_qevent_types.QPaintEvent {.raises: [], gcsafe.}
type QPaintEventsetAcceptedProc* = proc(self: QPaintEvent, accepted: bool): void {.raises: [], gcsafe.}
type QPaintEventVTable* = object
  vtbl: cQPaintEventVTable
  clone*: QPaintEventcloneProc
  setAccepted*: QPaintEventsetAcceptedProc
proc QPaintEventclone*(self: gen_qevent_types.QPaintEvent, ): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQPaintEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPaintEventVTable](vtbl)
  let self = QPaintEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QPaintEventsetAccepted*(self: gen_qevent_types.QPaintEvent, accepted: bool): void =
  fcQPaintEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQPaintEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEventVTable](vtbl)
  let self = QPaintEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRegion: gen_qregion_types.QRegion,
    vtbl: ref QPaintEventVTable = nil): gen_qevent_types.QPaintEvent =
  let vtbl = if vtbl == nil: new QPaintEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPaintEventVTable, _: ptr cQPaintEvent) {.cdecl.} =
    let vtbl = cast[ref QPaintEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQPaintEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQPaintEvent_setAccepted
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_new(addr(vtbl[]), paintRegion.h))

proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRect: gen_qrect_types.QRect,
    vtbl: ref QPaintEventVTable = nil): gen_qevent_types.QPaintEvent =
  let vtbl = if vtbl == nil: new QPaintEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPaintEventVTable, _: ptr cQPaintEvent) {.cdecl.} =
    let vtbl = cast[ref QPaintEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQPaintEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQPaintEvent_setAccepted
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_new2(addr(vtbl[]), paintRect.h))

proc delete*(self: gen_qevent_types.QPaintEvent) =
  fcQPaintEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QMoveEvent, ): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_clone(self.h))

proc pos*(self: gen_qevent_types.QMoveEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_pos(self.h))

proc oldPos*(self: gen_qevent_types.QMoveEvent, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_oldPos(self.h))

type QMoveEventcloneProc* = proc(self: QMoveEvent): gen_qevent_types.QMoveEvent {.raises: [], gcsafe.}
type QMoveEventsetAcceptedProc* = proc(self: QMoveEvent, accepted: bool): void {.raises: [], gcsafe.}
type QMoveEventVTable* = object
  vtbl: cQMoveEventVTable
  clone*: QMoveEventcloneProc
  setAccepted*: QMoveEventsetAcceptedProc
proc QMoveEventclone*(self: gen_qevent_types.QMoveEvent, ): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQMoveEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMoveEventVTable](vtbl)
  let self = QMoveEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QMoveEventsetAccepted*(self: gen_qevent_types.QMoveEvent, accepted: bool): void =
  fcQMoveEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQMoveEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMoveEventVTable](vtbl)
  let self = QMoveEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QMoveEvent,
    pos: gen_qpoint_types.QPoint, oldPos: gen_qpoint_types.QPoint,
    vtbl: ref QMoveEventVTable = nil): gen_qevent_types.QMoveEvent =
  let vtbl = if vtbl == nil: new QMoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMoveEventVTable, _: ptr cQMoveEvent) {.cdecl.} =
    let vtbl = cast[ref QMoveEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQMoveEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQMoveEvent_setAccepted
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_new(addr(vtbl[]), pos.h, oldPos.h))

proc delete*(self: gen_qevent_types.QMoveEvent) =
  fcQMoveEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QExposeEvent, ): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_clone(self.h))

proc region*(self: gen_qevent_types.QExposeEvent, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQExposeEvent_region(self.h))

type QExposeEventcloneProc* = proc(self: QExposeEvent): gen_qevent_types.QExposeEvent {.raises: [], gcsafe.}
type QExposeEventsetAcceptedProc* = proc(self: QExposeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QExposeEventVTable* = object
  vtbl: cQExposeEventVTable
  clone*: QExposeEventcloneProc
  setAccepted*: QExposeEventsetAcceptedProc
proc QExposeEventclone*(self: gen_qevent_types.QExposeEvent, ): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQExposeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QExposeEventVTable](vtbl)
  let self = QExposeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QExposeEventsetAccepted*(self: gen_qevent_types.QExposeEvent, accepted: bool): void =
  fcQExposeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQExposeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QExposeEventVTable](vtbl)
  let self = QExposeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QExposeEvent,
    m_region: gen_qregion_types.QRegion,
    vtbl: ref QExposeEventVTable = nil): gen_qevent_types.QExposeEvent =
  let vtbl = if vtbl == nil: new QExposeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQExposeEventVTable, _: ptr cQExposeEvent) {.cdecl.} =
    let vtbl = cast[ref QExposeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQExposeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQExposeEvent_setAccepted
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_new(addr(vtbl[]), m_region.h))

proc delete*(self: gen_qevent_types.QExposeEvent) =
  fcQExposeEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QPlatformSurfaceEvent, ): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_clone(self.h))

proc surfaceEventType*(self: gen_qevent_types.QPlatformSurfaceEvent, ): cint =
  cint(fcQPlatformSurfaceEvent_surfaceEventType(self.h))

type QPlatformSurfaceEventcloneProc* = proc(self: QPlatformSurfaceEvent): gen_qevent_types.QPlatformSurfaceEvent {.raises: [], gcsafe.}
type QPlatformSurfaceEventsetAcceptedProc* = proc(self: QPlatformSurfaceEvent, accepted: bool): void {.raises: [], gcsafe.}
type QPlatformSurfaceEventVTable* = object
  vtbl: cQPlatformSurfaceEventVTable
  clone*: QPlatformSurfaceEventcloneProc
  setAccepted*: QPlatformSurfaceEventsetAcceptedProc
proc QPlatformSurfaceEventclone*(self: gen_qevent_types.QPlatformSurfaceEvent, ): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQPlatformSurfaceEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlatformSurfaceEventVTable](vtbl)
  let self = QPlatformSurfaceEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QPlatformSurfaceEventsetAccepted*(self: gen_qevent_types.QPlatformSurfaceEvent, accepted: bool): void =
  fcQPlatformSurfaceEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQPlatformSurfaceEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPlatformSurfaceEventVTable](vtbl)
  let self = QPlatformSurfaceEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QPlatformSurfaceEvent,
    surfaceEventType: cint,
    vtbl: ref QPlatformSurfaceEventVTable = nil): gen_qevent_types.QPlatformSurfaceEvent =
  let vtbl = if vtbl == nil: new QPlatformSurfaceEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPlatformSurfaceEventVTable, _: ptr cQPlatformSurfaceEvent) {.cdecl.} =
    let vtbl = cast[ref QPlatformSurfaceEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQPlatformSurfaceEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQPlatformSurfaceEvent_setAccepted
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_new(addr(vtbl[]), cint(surfaceEventType)))

proc delete*(self: gen_qevent_types.QPlatformSurfaceEvent) =
  fcQPlatformSurfaceEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QResizeEvent, ): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_clone(self.h))

proc size*(self: gen_qevent_types.QResizeEvent, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_size(self.h))

proc oldSize*(self: gen_qevent_types.QResizeEvent, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_oldSize(self.h))

type QResizeEventcloneProc* = proc(self: QResizeEvent): gen_qevent_types.QResizeEvent {.raises: [], gcsafe.}
type QResizeEventsetAcceptedProc* = proc(self: QResizeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QResizeEventVTable* = object
  vtbl: cQResizeEventVTable
  clone*: QResizeEventcloneProc
  setAccepted*: QResizeEventsetAcceptedProc
proc QResizeEventclone*(self: gen_qevent_types.QResizeEvent, ): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQResizeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QResizeEventVTable](vtbl)
  let self = QResizeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QResizeEventsetAccepted*(self: gen_qevent_types.QResizeEvent, accepted: bool): void =
  fcQResizeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQResizeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QResizeEventVTable](vtbl)
  let self = QResizeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QResizeEvent,
    size: gen_qsize_types.QSize, oldSize: gen_qsize_types.QSize,
    vtbl: ref QResizeEventVTable = nil): gen_qevent_types.QResizeEvent =
  let vtbl = if vtbl == nil: new QResizeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQResizeEventVTable, _: ptr cQResizeEvent) {.cdecl.} =
    let vtbl = cast[ref QResizeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQResizeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQResizeEvent_setAccepted
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_new(addr(vtbl[]), size.h, oldSize.h))

proc delete*(self: gen_qevent_types.QResizeEvent) =
  fcQResizeEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QCloseEvent, ): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_clone(self.h))

type QCloseEventcloneProc* = proc(self: QCloseEvent): gen_qevent_types.QCloseEvent {.raises: [], gcsafe.}
type QCloseEventsetAcceptedProc* = proc(self: QCloseEvent, accepted: bool): void {.raises: [], gcsafe.}
type QCloseEventVTable* = object
  vtbl: cQCloseEventVTable
  clone*: QCloseEventcloneProc
  setAccepted*: QCloseEventsetAcceptedProc
proc QCloseEventclone*(self: gen_qevent_types.QCloseEvent, ): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQCloseEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCloseEventVTable](vtbl)
  let self = QCloseEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QCloseEventsetAccepted*(self: gen_qevent_types.QCloseEvent, accepted: bool): void =
  fcQCloseEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQCloseEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCloseEventVTable](vtbl)
  let self = QCloseEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QCloseEvent,
    vtbl: ref QCloseEventVTable = nil): gen_qevent_types.QCloseEvent =
  let vtbl = if vtbl == nil: new QCloseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCloseEventVTable, _: ptr cQCloseEvent) {.cdecl.} =
    let vtbl = cast[ref QCloseEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQCloseEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQCloseEvent_setAccepted
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_new(addr(vtbl[]), ))

proc delete*(self: gen_qevent_types.QCloseEvent) =
  fcQCloseEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QIconDragEvent, ): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_clone(self.h))

type QIconDragEventcloneProc* = proc(self: QIconDragEvent): gen_qevent_types.QIconDragEvent {.raises: [], gcsafe.}
type QIconDragEventsetAcceptedProc* = proc(self: QIconDragEvent, accepted: bool): void {.raises: [], gcsafe.}
type QIconDragEventVTable* = object
  vtbl: cQIconDragEventVTable
  clone*: QIconDragEventcloneProc
  setAccepted*: QIconDragEventsetAcceptedProc
proc QIconDragEventclone*(self: gen_qevent_types.QIconDragEvent, ): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQIconDragEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconDragEventVTable](vtbl)
  let self = QIconDragEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QIconDragEventsetAccepted*(self: gen_qevent_types.QIconDragEvent, accepted: bool): void =
  fcQIconDragEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQIconDragEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QIconDragEventVTable](vtbl)
  let self = QIconDragEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QIconDragEvent,
    vtbl: ref QIconDragEventVTable = nil): gen_qevent_types.QIconDragEvent =
  let vtbl = if vtbl == nil: new QIconDragEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIconDragEventVTable, _: ptr cQIconDragEvent) {.cdecl.} =
    let vtbl = cast[ref QIconDragEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQIconDragEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQIconDragEvent_setAccepted
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_new(addr(vtbl[]), ))

proc delete*(self: gen_qevent_types.QIconDragEvent) =
  fcQIconDragEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QShowEvent, ): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fcQShowEvent_clone(self.h))

type QShowEventcloneProc* = proc(self: QShowEvent): gen_qevent_types.QShowEvent {.raises: [], gcsafe.}
type QShowEventsetAcceptedProc* = proc(self: QShowEvent, accepted: bool): void {.raises: [], gcsafe.}
type QShowEventVTable* = object
  vtbl: cQShowEventVTable
  clone*: QShowEventcloneProc
  setAccepted*: QShowEventsetAcceptedProc
proc QShowEventclone*(self: gen_qevent_types.QShowEvent, ): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fcQShowEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQShowEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QShowEventVTable](vtbl)
  let self = QShowEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QShowEventsetAccepted*(self: gen_qevent_types.QShowEvent, accepted: bool): void =
  fcQShowEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQShowEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QShowEventVTable](vtbl)
  let self = QShowEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QShowEvent,
    vtbl: ref QShowEventVTable = nil): gen_qevent_types.QShowEvent =
  let vtbl = if vtbl == nil: new QShowEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShowEventVTable, _: ptr cQShowEvent) {.cdecl.} =
    let vtbl = cast[ref QShowEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQShowEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQShowEvent_setAccepted
  gen_qevent_types.QShowEvent(h: fcQShowEvent_new(addr(vtbl[]), ))

proc delete*(self: gen_qevent_types.QShowEvent) =
  fcQShowEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QHideEvent, ): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fcQHideEvent_clone(self.h))

type QHideEventcloneProc* = proc(self: QHideEvent): gen_qevent_types.QHideEvent {.raises: [], gcsafe.}
type QHideEventsetAcceptedProc* = proc(self: QHideEvent, accepted: bool): void {.raises: [], gcsafe.}
type QHideEventVTable* = object
  vtbl: cQHideEventVTable
  clone*: QHideEventcloneProc
  setAccepted*: QHideEventsetAcceptedProc
proc QHideEventclone*(self: gen_qevent_types.QHideEvent, ): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fcQHideEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQHideEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHideEventVTable](vtbl)
  let self = QHideEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QHideEventsetAccepted*(self: gen_qevent_types.QHideEvent, accepted: bool): void =
  fcQHideEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQHideEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QHideEventVTable](vtbl)
  let self = QHideEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QHideEvent,
    vtbl: ref QHideEventVTable = nil): gen_qevent_types.QHideEvent =
  let vtbl = if vtbl == nil: new QHideEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHideEventVTable, _: ptr cQHideEvent) {.cdecl.} =
    let vtbl = cast[ref QHideEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHideEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHideEvent_setAccepted
  gen_qevent_types.QHideEvent(h: fcQHideEvent_new(addr(vtbl[]), ))

proc delete*(self: gen_qevent_types.QHideEvent) =
  fcQHideEvent_delete(self.h)
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

type QContextMenuEventcloneProc* = proc(self: QContextMenuEvent): gen_qevent_types.QContextMenuEvent {.raises: [], gcsafe.}
type QContextMenuEventsetTimestampProc* = proc(self: QContextMenuEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QContextMenuEventsetAcceptedProc* = proc(self: QContextMenuEvent, accepted: bool): void {.raises: [], gcsafe.}
type QContextMenuEventVTable* = object
  vtbl: cQContextMenuEventVTable
  clone*: QContextMenuEventcloneProc
  setTimestamp*: QContextMenuEventsetTimestampProc
  setAccepted*: QContextMenuEventsetAcceptedProc
proc QContextMenuEventclone*(self: gen_qevent_types.QContextMenuEvent, ): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQContextMenuEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QContextMenuEventVTable](vtbl)
  let self = QContextMenuEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QContextMenuEventsetTimestamp*(self: gen_qevent_types.QContextMenuEvent, timestamp: culonglong): void =
  fcQContextMenuEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQContextMenuEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QContextMenuEventVTable](vtbl)
  let self = QContextMenuEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QContextMenuEventsetAccepted*(self: gen_qevent_types.QContextMenuEvent, accepted: bool): void =
  fcQContextMenuEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQContextMenuEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QContextMenuEventVTable](vtbl)
  let self = QContextMenuEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint,
    vtbl: ref QContextMenuEventVTable = nil): gen_qevent_types.QContextMenuEvent =
  let vtbl = if vtbl == nil: new QContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQContextMenuEventVTable, _: ptr cQContextMenuEvent) {.cdecl.} =
    let vtbl = cast[ref QContextMenuEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQContextMenuEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQContextMenuEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQContextMenuEvent_setAccepted
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new(addr(vtbl[]), cint(reason), pos.h, globalPos.h))

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint,
    vtbl: ref QContextMenuEventVTable = nil): gen_qevent_types.QContextMenuEvent =
  let vtbl = if vtbl == nil: new QContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQContextMenuEventVTable, _: ptr cQContextMenuEvent) {.cdecl.} =
    let vtbl = cast[ref QContextMenuEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQContextMenuEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQContextMenuEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQContextMenuEvent_setAccepted
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new2(addr(vtbl[]), cint(reason), pos.h))

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint, modifiers: cint,
    vtbl: ref QContextMenuEventVTable = nil): gen_qevent_types.QContextMenuEvent =
  let vtbl = if vtbl == nil: new QContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQContextMenuEventVTable, _: ptr cQContextMenuEvent) {.cdecl.} =
    let vtbl = cast[ref QContextMenuEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQContextMenuEvent_clone
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQContextMenuEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQContextMenuEvent_setAccepted
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new3(addr(vtbl[]), cint(reason), pos.h, globalPos.h, cint(modifiers)))

proc delete*(self: gen_qevent_types.QContextMenuEvent) =
  fcQContextMenuEvent_delete(self.h)
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
  c_free(v_ma.data)
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

type QInputMethodEventcloneProc* = proc(self: QInputMethodEvent): gen_qevent_types.QInputMethodEvent {.raises: [], gcsafe.}
type QInputMethodEventsetAcceptedProc* = proc(self: QInputMethodEvent, accepted: bool): void {.raises: [], gcsafe.}
type QInputMethodEventVTable* = object
  vtbl: cQInputMethodEventVTable
  clone*: QInputMethodEventcloneProc
  setAccepted*: QInputMethodEventsetAcceptedProc
proc QInputMethodEventclone*(self: gen_qevent_types.QInputMethodEvent, ): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQInputMethodEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputMethodEventVTable](vtbl)
  let self = QInputMethodEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QInputMethodEventsetAccepted*(self: gen_qevent_types.QInputMethodEvent, accepted: bool): void =
  fcQInputMethodEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQInputMethodEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputMethodEventVTable](vtbl)
  let self = QInputMethodEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QInputMethodEvent,
    vtbl: ref QInputMethodEventVTable = nil): gen_qevent_types.QInputMethodEvent =
  let vtbl = if vtbl == nil: new QInputMethodEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputMethodEventVTable, _: ptr cQInputMethodEvent) {.cdecl.} =
    let vtbl = cast[ref QInputMethodEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQInputMethodEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQInputMethodEvent_setAccepted
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_new(addr(vtbl[]), ))

proc create*(T: type gen_qevent_types.QInputMethodEvent,
    preeditText: string, attributes: seq[gen_qevent_types.QInputMethodEventAttribute],
    vtbl: ref QInputMethodEventVTable = nil): gen_qevent_types.QInputMethodEvent =
  var attributes_CArray = newSeq[pointer](len(attributes))
  for i in 0..<len(attributes):
    attributes_CArray[i] = attributes[i].h

  let vtbl = if vtbl == nil: new QInputMethodEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputMethodEventVTable, _: ptr cQInputMethodEvent) {.cdecl.} =
    let vtbl = cast[ref QInputMethodEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQInputMethodEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQInputMethodEvent_setAccepted
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_new2(addr(vtbl[]), struct_miqt_string(data: preeditText, len: csize_t(len(preeditText))), struct_miqt_array(len: csize_t(len(attributes)), data: if len(attributes) == 0: nil else: addr(attributes_CArray[0]))))

proc delete*(self: gen_qevent_types.QInputMethodEvent) =
  fcQInputMethodEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QInputMethodQueryEvent, ): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_clone(self.h))

proc queries*(self: gen_qevent_types.QInputMethodQueryEvent, ): cint =
  cint(fcQInputMethodQueryEvent_queries(self.h))

proc setValue*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint, value: gen_qvariant_types.QVariant): void =
  fcQInputMethodQueryEvent_setValue(self.h, cint(query), value.h)

proc value*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQInputMethodQueryEvent_value(self.h, cint(query)))

type QInputMethodQueryEventcloneProc* = proc(self: QInputMethodQueryEvent): gen_qevent_types.QInputMethodQueryEvent {.raises: [], gcsafe.}
type QInputMethodQueryEventsetAcceptedProc* = proc(self: QInputMethodQueryEvent, accepted: bool): void {.raises: [], gcsafe.}
type QInputMethodQueryEventVTable* = object
  vtbl: cQInputMethodQueryEventVTable
  clone*: QInputMethodQueryEventcloneProc
  setAccepted*: QInputMethodQueryEventsetAcceptedProc
proc QInputMethodQueryEventclone*(self: gen_qevent_types.QInputMethodQueryEvent, ): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQInputMethodQueryEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputMethodQueryEventVTable](vtbl)
  let self = QInputMethodQueryEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QInputMethodQueryEventsetAccepted*(self: gen_qevent_types.QInputMethodQueryEvent, accepted: bool): void =
  fcQInputMethodQueryEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQInputMethodQueryEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputMethodQueryEventVTable](vtbl)
  let self = QInputMethodQueryEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QInputMethodQueryEvent,
    queries: cint,
    vtbl: ref QInputMethodQueryEventVTable = nil): gen_qevent_types.QInputMethodQueryEvent =
  let vtbl = if vtbl == nil: new QInputMethodQueryEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputMethodQueryEventVTable, _: ptr cQInputMethodQueryEvent) {.cdecl.} =
    let vtbl = cast[ref QInputMethodQueryEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQInputMethodQueryEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQInputMethodQueryEvent_setAccepted
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_new(addr(vtbl[]), cint(queries)))

proc delete*(self: gen_qevent_types.QInputMethodQueryEvent) =
  fcQInputMethodQueryEvent_delete(self.h)
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

type QDropEventcloneProc* = proc(self: QDropEvent): gen_qevent_types.QDropEvent {.raises: [], gcsafe.}
type QDropEventsetAcceptedProc* = proc(self: QDropEvent, accepted: bool): void {.raises: [], gcsafe.}
type QDropEventVTable* = object
  vtbl: cQDropEventVTable
  clone*: QDropEventcloneProc
  setAccepted*: QDropEventsetAcceptedProc
proc QDropEventclone*(self: gen_qevent_types.QDropEvent, ): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fcQDropEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQDropEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDropEventVTable](vtbl)
  let self = QDropEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QDropEventsetAccepted*(self: gen_qevent_types.QDropEvent, accepted: bool): void =
  fcQDropEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQDropEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDropEventVTable](vtbl)
  let self = QDropEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    vtbl: ref QDropEventVTable = nil): gen_qevent_types.QDropEvent =
  let vtbl = if vtbl == nil: new QDropEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDropEventVTable, _: ptr cQDropEvent) {.cdecl.} =
    let vtbl = cast[ref QDropEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQDropEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQDropEvent_setAccepted
  gen_qevent_types.QDropEvent(h: fcQDropEvent_new(addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint,
    vtbl: ref QDropEventVTable = nil): gen_qevent_types.QDropEvent =
  let vtbl = if vtbl == nil: new QDropEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDropEventVTable, _: ptr cQDropEvent) {.cdecl.} =
    let vtbl = cast[ref QDropEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQDropEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQDropEvent_setAccepted
  gen_qevent_types.QDropEvent(h: fcQDropEvent_new2(addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))

proc delete*(self: gen_qevent_types.QDropEvent) =
  fcQDropEvent_delete(self.h)
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

type QDragMoveEventcloneProc* = proc(self: QDragMoveEvent): gen_qevent_types.QDragMoveEvent {.raises: [], gcsafe.}
type QDragMoveEventsetAcceptedProc* = proc(self: QDragMoveEvent, accepted: bool): void {.raises: [], gcsafe.}
type QDragMoveEventVTable* = object
  vtbl: cQDragMoveEventVTable
  clone*: QDragMoveEventcloneProc
  setAccepted*: QDragMoveEventsetAcceptedProc
proc QDragMoveEventclone*(self: gen_qevent_types.QDragMoveEvent, ): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQDragMoveEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragMoveEventVTable](vtbl)
  let self = QDragMoveEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QDragMoveEventsetAccepted*(self: gen_qevent_types.QDragMoveEvent, accepted: bool): void =
  fcQDragMoveEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQDragMoveEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDragMoveEventVTable](vtbl)
  let self = QDragMoveEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    vtbl: ref QDragMoveEventVTable = nil): gen_qevent_types.QDragMoveEvent =
  let vtbl = if vtbl == nil: new QDragMoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDragMoveEventVTable, _: ptr cQDragMoveEvent) {.cdecl.} =
    let vtbl = cast[ref QDragMoveEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQDragMoveEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQDragMoveEvent_setAccepted
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_new(addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))

proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint,
    vtbl: ref QDragMoveEventVTable = nil): gen_qevent_types.QDragMoveEvent =
  let vtbl = if vtbl == nil: new QDragMoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDragMoveEventVTable, _: ptr cQDragMoveEvent) {.cdecl.} =
    let vtbl = cast[ref QDragMoveEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQDragMoveEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQDragMoveEvent_setAccepted
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_new2(addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)))

proc delete*(self: gen_qevent_types.QDragMoveEvent) =
  fcQDragMoveEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QDragEnterEvent, ): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_clone(self.h))

type QDragEnterEventcloneProc* = proc(self: QDragEnterEvent): gen_qevent_types.QDragEnterEvent {.raises: [], gcsafe.}
type QDragEnterEventsetAcceptedProc* = proc(self: QDragEnterEvent, accepted: bool): void {.raises: [], gcsafe.}
type QDragEnterEventVTable* = object
  vtbl: cQDragEnterEventVTable
  clone*: QDragEnterEventcloneProc
  setAccepted*: QDragEnterEventsetAcceptedProc
proc QDragEnterEventclone*(self: gen_qevent_types.QDragEnterEvent, ): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQDragEnterEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragEnterEventVTable](vtbl)
  let self = QDragEnterEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QDragEnterEventsetAccepted*(self: gen_qevent_types.QDragEnterEvent, accepted: bool): void =
  fcQDragEnterEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQDragEnterEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDragEnterEventVTable](vtbl)
  let self = QDragEnterEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QDragEnterEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    vtbl: ref QDragEnterEventVTable = nil): gen_qevent_types.QDragEnterEvent =
  let vtbl = if vtbl == nil: new QDragEnterEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDragEnterEventVTable, _: ptr cQDragEnterEvent) {.cdecl.} =
    let vtbl = cast[ref QDragEnterEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQDragEnterEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQDragEnterEvent_setAccepted
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_new(addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)))

proc delete*(self: gen_qevent_types.QDragEnterEvent) =
  fcQDragEnterEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QDragLeaveEvent, ): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_clone(self.h))

type QDragLeaveEventcloneProc* = proc(self: QDragLeaveEvent): gen_qevent_types.QDragLeaveEvent {.raises: [], gcsafe.}
type QDragLeaveEventsetAcceptedProc* = proc(self: QDragLeaveEvent, accepted: bool): void {.raises: [], gcsafe.}
type QDragLeaveEventVTable* = object
  vtbl: cQDragLeaveEventVTable
  clone*: QDragLeaveEventcloneProc
  setAccepted*: QDragLeaveEventsetAcceptedProc
proc QDragLeaveEventclone*(self: gen_qevent_types.QDragLeaveEvent, ): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQDragLeaveEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragLeaveEventVTable](vtbl)
  let self = QDragLeaveEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QDragLeaveEventsetAccepted*(self: gen_qevent_types.QDragLeaveEvent, accepted: bool): void =
  fcQDragLeaveEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQDragLeaveEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDragLeaveEventVTable](vtbl)
  let self = QDragLeaveEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QDragLeaveEvent,
    vtbl: ref QDragLeaveEventVTable = nil): gen_qevent_types.QDragLeaveEvent =
  let vtbl = if vtbl == nil: new QDragLeaveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDragLeaveEventVTable, _: ptr cQDragLeaveEvent) {.cdecl.} =
    let vtbl = cast[ref QDragLeaveEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQDragLeaveEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQDragLeaveEvent_setAccepted
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_new(addr(vtbl[]), ))

proc delete*(self: gen_qevent_types.QDragLeaveEvent) =
  fcQDragLeaveEvent_delete(self.h)
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

type QHelpEventcloneProc* = proc(self: QHelpEvent): gen_qevent_types.QHelpEvent {.raises: [], gcsafe.}
type QHelpEventsetAcceptedProc* = proc(self: QHelpEvent, accepted: bool): void {.raises: [], gcsafe.}
type QHelpEventVTable* = object
  vtbl: cQHelpEventVTable
  clone*: QHelpEventcloneProc
  setAccepted*: QHelpEventsetAcceptedProc
proc QHelpEventclone*(self: gen_qevent_types.QHelpEvent, ): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQHelpEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHelpEventVTable](vtbl)
  let self = QHelpEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QHelpEventsetAccepted*(self: gen_qevent_types.QHelpEvent, accepted: bool): void =
  fcQHelpEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQHelpEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QHelpEventVTable](vtbl)
  let self = QHelpEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QHelpEvent,
    typeVal: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint,
    vtbl: ref QHelpEventVTable = nil): gen_qevent_types.QHelpEvent =
  let vtbl = if vtbl == nil: new QHelpEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHelpEventVTable, _: ptr cQHelpEvent) {.cdecl.} =
    let vtbl = cast[ref QHelpEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQHelpEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQHelpEvent_setAccepted
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_new(addr(vtbl[]), cint(typeVal), pos.h, globalPos.h))

proc delete*(self: gen_qevent_types.QHelpEvent) =
  fcQHelpEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QStatusTipEvent, ): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_clone(self.h))

proc tip*(self: gen_qevent_types.QStatusTipEvent, ): string =
  let v_ms = fcQStatusTipEvent_tip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStatusTipEventcloneProc* = proc(self: QStatusTipEvent): gen_qevent_types.QStatusTipEvent {.raises: [], gcsafe.}
type QStatusTipEventsetAcceptedProc* = proc(self: QStatusTipEvent, accepted: bool): void {.raises: [], gcsafe.}
type QStatusTipEventVTable* = object
  vtbl: cQStatusTipEventVTable
  clone*: QStatusTipEventcloneProc
  setAccepted*: QStatusTipEventsetAcceptedProc
proc QStatusTipEventclone*(self: gen_qevent_types.QStatusTipEvent, ): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQStatusTipEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusTipEventVTable](vtbl)
  let self = QStatusTipEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QStatusTipEventsetAccepted*(self: gen_qevent_types.QStatusTipEvent, accepted: bool): void =
  fcQStatusTipEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQStatusTipEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QStatusTipEventVTable](vtbl)
  let self = QStatusTipEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QStatusTipEvent,
    tip: string,
    vtbl: ref QStatusTipEventVTable = nil): gen_qevent_types.QStatusTipEvent =
  let vtbl = if vtbl == nil: new QStatusTipEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStatusTipEventVTable, _: ptr cQStatusTipEvent) {.cdecl.} =
    let vtbl = cast[ref QStatusTipEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQStatusTipEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQStatusTipEvent_setAccepted
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_new(addr(vtbl[]), struct_miqt_string(data: tip, len: csize_t(len(tip)))))

proc delete*(self: gen_qevent_types.QStatusTipEvent) =
  fcQStatusTipEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QWhatsThisClickedEvent, ): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_clone(self.h))

proc href*(self: gen_qevent_types.QWhatsThisClickedEvent, ): string =
  let v_ms = fcQWhatsThisClickedEvent_href(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWhatsThisClickedEventcloneProc* = proc(self: QWhatsThisClickedEvent): gen_qevent_types.QWhatsThisClickedEvent {.raises: [], gcsafe.}
type QWhatsThisClickedEventsetAcceptedProc* = proc(self: QWhatsThisClickedEvent, accepted: bool): void {.raises: [], gcsafe.}
type QWhatsThisClickedEventVTable* = object
  vtbl: cQWhatsThisClickedEventVTable
  clone*: QWhatsThisClickedEventcloneProc
  setAccepted*: QWhatsThisClickedEventsetAcceptedProc
proc QWhatsThisClickedEventclone*(self: gen_qevent_types.QWhatsThisClickedEvent, ): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQWhatsThisClickedEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWhatsThisClickedEventVTable](vtbl)
  let self = QWhatsThisClickedEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QWhatsThisClickedEventsetAccepted*(self: gen_qevent_types.QWhatsThisClickedEvent, accepted: bool): void =
  fcQWhatsThisClickedEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQWhatsThisClickedEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWhatsThisClickedEventVTable](vtbl)
  let self = QWhatsThisClickedEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QWhatsThisClickedEvent,
    href: string,
    vtbl: ref QWhatsThisClickedEventVTable = nil): gen_qevent_types.QWhatsThisClickedEvent =
  let vtbl = if vtbl == nil: new QWhatsThisClickedEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWhatsThisClickedEventVTable, _: ptr cQWhatsThisClickedEvent) {.cdecl.} =
    let vtbl = cast[ref QWhatsThisClickedEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQWhatsThisClickedEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQWhatsThisClickedEvent_setAccepted
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_new(addr(vtbl[]), struct_miqt_string(data: href, len: csize_t(len(href)))))

proc delete*(self: gen_qevent_types.QWhatsThisClickedEvent) =
  fcQWhatsThisClickedEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QActionEvent, ): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_clone(self.h))

type QActionEventcloneProc* = proc(self: QActionEvent): gen_qevent_types.QActionEvent {.raises: [], gcsafe.}
type QActionEventsetAcceptedProc* = proc(self: QActionEvent, accepted: bool): void {.raises: [], gcsafe.}
type QActionEventVTable* = object
  vtbl: cQActionEventVTable
  clone*: QActionEventcloneProc
  setAccepted*: QActionEventsetAcceptedProc
proc QActionEventclone*(self: gen_qevent_types.QActionEvent, ): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQActionEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionEventVTable](vtbl)
  let self = QActionEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QActionEventsetAccepted*(self: gen_qevent_types.QActionEvent, accepted: bool): void =
  fcQActionEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQActionEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QActionEventVTable](vtbl)
  let self = QActionEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: gen_qaction_types.QAction,
    vtbl: ref QActionEventVTable = nil): gen_qevent_types.QActionEvent =
  let vtbl = if vtbl == nil: new QActionEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionEventVTable, _: ptr cQActionEvent) {.cdecl.} =
    let vtbl = cast[ref QActionEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQActionEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQActionEvent_setAccepted
  gen_qevent_types.QActionEvent(h: fcQActionEvent_new(addr(vtbl[]), typeVal, action.h))

proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: gen_qaction_types.QAction, before: gen_qaction_types.QAction,
    vtbl: ref QActionEventVTable = nil): gen_qevent_types.QActionEvent =
  let vtbl = if vtbl == nil: new QActionEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQActionEventVTable, _: ptr cQActionEvent) {.cdecl.} =
    let vtbl = cast[ref QActionEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQActionEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQActionEvent_setAccepted
  gen_qevent_types.QActionEvent(h: fcQActionEvent_new2(addr(vtbl[]), typeVal, action.h, before.h))

proc delete*(self: gen_qevent_types.QActionEvent) =
  fcQActionEvent_delete(self.h)
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

type QFileOpenEventcloneProc* = proc(self: QFileOpenEvent): gen_qevent_types.QFileOpenEvent {.raises: [], gcsafe.}
type QFileOpenEventsetAcceptedProc* = proc(self: QFileOpenEvent, accepted: bool): void {.raises: [], gcsafe.}
type QFileOpenEventVTable* = object
  vtbl: cQFileOpenEventVTable
  clone*: QFileOpenEventcloneProc
  setAccepted*: QFileOpenEventsetAcceptedProc
proc QFileOpenEventclone*(self: gen_qevent_types.QFileOpenEvent, ): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQFileOpenEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileOpenEventVTable](vtbl)
  let self = QFileOpenEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QFileOpenEventsetAccepted*(self: gen_qevent_types.QFileOpenEvent, accepted: bool): void =
  fcQFileOpenEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQFileOpenEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFileOpenEventVTable](vtbl)
  let self = QFileOpenEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QFileOpenEvent,
    file: string,
    vtbl: ref QFileOpenEventVTable = nil): gen_qevent_types.QFileOpenEvent =
  let vtbl = if vtbl == nil: new QFileOpenEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileOpenEventVTable, _: ptr cQFileOpenEvent) {.cdecl.} =
    let vtbl = cast[ref QFileOpenEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQFileOpenEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQFileOpenEvent_setAccepted
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_new(addr(vtbl[]), struct_miqt_string(data: file, len: csize_t(len(file)))))

proc create*(T: type gen_qevent_types.QFileOpenEvent,
    url: gen_qurl_types.QUrl,
    vtbl: ref QFileOpenEventVTable = nil): gen_qevent_types.QFileOpenEvent =
  let vtbl = if vtbl == nil: new QFileOpenEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileOpenEventVTable, _: ptr cQFileOpenEvent) {.cdecl.} =
    let vtbl = cast[ref QFileOpenEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQFileOpenEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQFileOpenEvent_setAccepted
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_new2(addr(vtbl[]), url.h))

proc delete*(self: gen_qevent_types.QFileOpenEvent) =
  fcQFileOpenEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QToolBarChangeEvent, ): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_clone(self.h))

proc toggle*(self: gen_qevent_types.QToolBarChangeEvent, ): bool =
  fcQToolBarChangeEvent_toggle(self.h)

type QToolBarChangeEventcloneProc* = proc(self: QToolBarChangeEvent): gen_qevent_types.QToolBarChangeEvent {.raises: [], gcsafe.}
type QToolBarChangeEventsetAcceptedProc* = proc(self: QToolBarChangeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QToolBarChangeEventVTable* = object
  vtbl: cQToolBarChangeEventVTable
  clone*: QToolBarChangeEventcloneProc
  setAccepted*: QToolBarChangeEventsetAcceptedProc
proc QToolBarChangeEventclone*(self: gen_qevent_types.QToolBarChangeEvent, ): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQToolBarChangeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarChangeEventVTable](vtbl)
  let self = QToolBarChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QToolBarChangeEventsetAccepted*(self: gen_qevent_types.QToolBarChangeEvent, accepted: bool): void =
  fcQToolBarChangeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQToolBarChangeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarChangeEventVTable](vtbl)
  let self = QToolBarChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QToolBarChangeEvent,
    t: bool,
    vtbl: ref QToolBarChangeEventVTable = nil): gen_qevent_types.QToolBarChangeEvent =
  let vtbl = if vtbl == nil: new QToolBarChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBarChangeEventVTable, _: ptr cQToolBarChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QToolBarChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQToolBarChangeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQToolBarChangeEvent_setAccepted
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_new(addr(vtbl[]), t))

proc delete*(self: gen_qevent_types.QToolBarChangeEvent) =
  fcQToolBarChangeEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QShortcutEvent, ): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_clone(self.h))

proc key*(self: gen_qevent_types.QShortcutEvent, ): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQShortcutEvent_key(self.h))

proc shortcutId*(self: gen_qevent_types.QShortcutEvent, ): cint =
  fcQShortcutEvent_shortcutId(self.h)

proc isAmbiguous*(self: gen_qevent_types.QShortcutEvent, ): bool =
  fcQShortcutEvent_isAmbiguous(self.h)

type QShortcutEventcloneProc* = proc(self: QShortcutEvent): gen_qevent_types.QShortcutEvent {.raises: [], gcsafe.}
type QShortcutEventsetAcceptedProc* = proc(self: QShortcutEvent, accepted: bool): void {.raises: [], gcsafe.}
type QShortcutEventVTable* = object
  vtbl: cQShortcutEventVTable
  clone*: QShortcutEventcloneProc
  setAccepted*: QShortcutEventsetAcceptedProc
proc QShortcutEventclone*(self: gen_qevent_types.QShortcutEvent, ): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQShortcutEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QShortcutEventVTable](vtbl)
  let self = QShortcutEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QShortcutEventsetAccepted*(self: gen_qevent_types.QShortcutEvent, accepted: bool): void =
  fcQShortcutEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQShortcutEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutEventVTable](vtbl)
  let self = QShortcutEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint,
    vtbl: ref QShortcutEventVTable = nil): gen_qevent_types.QShortcutEvent =
  let vtbl = if vtbl == nil: new QShortcutEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutEventVTable, _: ptr cQShortcutEvent) {.cdecl.} =
    let vtbl = cast[ref QShortcutEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQShortcutEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQShortcutEvent_setAccepted
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_new(addr(vtbl[]), key.h, id))

proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint, ambiguous: bool,
    vtbl: ref QShortcutEventVTable = nil): gen_qevent_types.QShortcutEvent =
  let vtbl = if vtbl == nil: new QShortcutEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQShortcutEventVTable, _: ptr cQShortcutEvent) {.cdecl.} =
    let vtbl = cast[ref QShortcutEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQShortcutEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQShortcutEvent_setAccepted
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_new2(addr(vtbl[]), key.h, id, ambiguous))

proc delete*(self: gen_qevent_types.QShortcutEvent) =
  fcQShortcutEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QWindowStateChangeEvent, ): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_clone(self.h))

proc oldState*(self: gen_qevent_types.QWindowStateChangeEvent, ): cint =
  cint(fcQWindowStateChangeEvent_oldState(self.h))

proc isOverride*(self: gen_qevent_types.QWindowStateChangeEvent, ): bool =
  fcQWindowStateChangeEvent_isOverride(self.h)

type QWindowStateChangeEventcloneProc* = proc(self: QWindowStateChangeEvent): gen_qevent_types.QWindowStateChangeEvent {.raises: [], gcsafe.}
type QWindowStateChangeEventsetAcceptedProc* = proc(self: QWindowStateChangeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QWindowStateChangeEventVTable* = object
  vtbl: cQWindowStateChangeEventVTable
  clone*: QWindowStateChangeEventcloneProc
  setAccepted*: QWindowStateChangeEventsetAcceptedProc
proc QWindowStateChangeEventclone*(self: gen_qevent_types.QWindowStateChangeEvent, ): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQWindowStateChangeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowStateChangeEventVTable](vtbl)
  let self = QWindowStateChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QWindowStateChangeEventsetAccepted*(self: gen_qevent_types.QWindowStateChangeEvent, accepted: bool): void =
  fcQWindowStateChangeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQWindowStateChangeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWindowStateChangeEventVTable](vtbl)
  let self = QWindowStateChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    oldState: cint,
    vtbl: ref QWindowStateChangeEventVTable = nil): gen_qevent_types.QWindowStateChangeEvent =
  let vtbl = if vtbl == nil: new QWindowStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWindowStateChangeEventVTable, _: ptr cQWindowStateChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QWindowStateChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQWindowStateChangeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQWindowStateChangeEvent_setAccepted
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_new(addr(vtbl[]), cint(oldState)))

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    oldState: cint, isOverride: bool,
    vtbl: ref QWindowStateChangeEventVTable = nil): gen_qevent_types.QWindowStateChangeEvent =
  let vtbl = if vtbl == nil: new QWindowStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWindowStateChangeEventVTable, _: ptr cQWindowStateChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QWindowStateChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQWindowStateChangeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQWindowStateChangeEvent_setAccepted
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_new2(addr(vtbl[]), cint(oldState), isOverride))

proc delete*(self: gen_qevent_types.QWindowStateChangeEvent) =
  fcQWindowStateChangeEvent_delete(self.h)
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
  c_free(v_ma.data)
  vx_ret

proc isBeginEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_isEndEvent(self.h)

type QTouchEventcloneProc* = proc(self: QTouchEvent): gen_qevent_types.QTouchEvent {.raises: [], gcsafe.}
type QTouchEventisBeginEventProc* = proc(self: QTouchEvent): bool {.raises: [], gcsafe.}
type QTouchEventisUpdateEventProc* = proc(self: QTouchEvent): bool {.raises: [], gcsafe.}
type QTouchEventisEndEventProc* = proc(self: QTouchEvent): bool {.raises: [], gcsafe.}
type QTouchEventsetTimestampProc* = proc(self: QTouchEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QTouchEventsetAcceptedProc* = proc(self: QTouchEvent, accepted: bool): void {.raises: [], gcsafe.}
type QTouchEventVTable* = object
  vtbl: cQTouchEventVTable
  clone*: QTouchEventcloneProc
  isBeginEvent*: QTouchEventisBeginEventProc
  isUpdateEvent*: QTouchEventisUpdateEventProc
  isEndEvent*: QTouchEventisEndEventProc
  setTimestamp*: QTouchEventsetTimestampProc
  setAccepted*: QTouchEventsetAcceptedProc
proc QTouchEventclone*(self: gen_qevent_types.QTouchEvent, ): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQTouchEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](vtbl)
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QTouchEventisBeginEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_virtualbase_isBeginEvent(self.h)

proc miqt_exec_callback_cQTouchEvent_isBeginEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](vtbl)
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc QTouchEventisUpdateEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_virtualbase_isUpdateEvent(self.h)

proc miqt_exec_callback_cQTouchEvent_isUpdateEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](vtbl)
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc QTouchEventisEndEvent*(self: gen_qevent_types.QTouchEvent, ): bool =
  fcQTouchEvent_virtualbase_isEndEvent(self.h)

proc miqt_exec_callback_cQTouchEvent_isEndEvent(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](vtbl)
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc QTouchEventsetTimestamp*(self: gen_qevent_types.QTouchEvent, timestamp: culonglong): void =
  fcQTouchEvent_virtualbase_setTimestamp(self.h, timestamp)

proc miqt_exec_callback_cQTouchEvent_setTimestamp(vtbl: pointer, self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](vtbl)
  let self = QTouchEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc QTouchEventsetAccepted*(self: gen_qevent_types.QTouchEvent, accepted: bool): void =
  fcQTouchEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQTouchEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](vtbl)
  let self = QTouchEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTouchEventVTable, _: ptr cQTouchEvent) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTouchEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQTouchEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQTouchEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQTouchEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQTouchEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTouchEvent_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new(addr(vtbl[]), cint(eventType)))

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTouchEventVTable, _: ptr cQTouchEvent) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTouchEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQTouchEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQTouchEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQTouchEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQTouchEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTouchEvent_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new2(addr(vtbl[]), cint(eventType), device.h, cint(modifiers), cint(touchPointStates)))

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTouchEventVTable, _: ptr cQTouchEvent) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTouchEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQTouchEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQTouchEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQTouchEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQTouchEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTouchEvent_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new3(addr(vtbl[]), cint(eventType), device.h))

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTouchEventVTable, _: ptr cQTouchEvent) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTouchEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQTouchEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQTouchEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQTouchEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQTouchEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTouchEvent_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new4(addr(vtbl[]), cint(eventType), device.h, cint(modifiers)))

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPoints: seq[gen_qeventpoint_types.QEventPoint],
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTouchEventVTable, _: ptr cQTouchEvent) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTouchEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQTouchEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQTouchEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQTouchEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQTouchEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTouchEvent_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new5(addr(vtbl[]), cint(eventType), device.h, cint(modifiers), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))))

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint, touchPoints: seq[gen_qeventpoint_types.QEventPoint],
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTouchEventVTable, _: ptr cQTouchEvent) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQTouchEvent_clone
  if not isNil(vtbl.isBeginEvent):
    vtbl[].vtbl.isBeginEvent = miqt_exec_callback_cQTouchEvent_isBeginEvent
  if not isNil(vtbl.isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = miqt_exec_callback_cQTouchEvent_isUpdateEvent
  if not isNil(vtbl.isEndEvent):
    vtbl[].vtbl.isEndEvent = miqt_exec_callback_cQTouchEvent_isEndEvent
  if not isNil(vtbl.setTimestamp):
    vtbl[].vtbl.setTimestamp = miqt_exec_callback_cQTouchEvent_setTimestamp
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQTouchEvent_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new6(addr(vtbl[]), cint(eventType), device.h, cint(modifiers), cint(touchPointStates), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))))

proc delete*(self: gen_qevent_types.QTouchEvent) =
  fcQTouchEvent_delete(self.h)
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

type QScrollPrepareEventcloneProc* = proc(self: QScrollPrepareEvent): gen_qevent_types.QScrollPrepareEvent {.raises: [], gcsafe.}
type QScrollPrepareEventsetAcceptedProc* = proc(self: QScrollPrepareEvent, accepted: bool): void {.raises: [], gcsafe.}
type QScrollPrepareEventVTable* = object
  vtbl: cQScrollPrepareEventVTable
  clone*: QScrollPrepareEventcloneProc
  setAccepted*: QScrollPrepareEventsetAcceptedProc
proc QScrollPrepareEventclone*(self: gen_qevent_types.QScrollPrepareEvent, ): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQScrollPrepareEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollPrepareEventVTable](vtbl)
  let self = QScrollPrepareEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QScrollPrepareEventsetAccepted*(self: gen_qevent_types.QScrollPrepareEvent, accepted: bool): void =
  fcQScrollPrepareEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQScrollPrepareEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollPrepareEventVTable](vtbl)
  let self = QScrollPrepareEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QScrollPrepareEvent,
    startPos: gen_qpoint_types.QPointF,
    vtbl: ref QScrollPrepareEventVTable = nil): gen_qevent_types.QScrollPrepareEvent =
  let vtbl = if vtbl == nil: new QScrollPrepareEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollPrepareEventVTable, _: ptr cQScrollPrepareEvent) {.cdecl.} =
    let vtbl = cast[ref QScrollPrepareEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQScrollPrepareEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQScrollPrepareEvent_setAccepted
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_new(addr(vtbl[]), startPos.h))

proc delete*(self: gen_qevent_types.QScrollPrepareEvent) =
  fcQScrollPrepareEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QScrollEvent, ): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_clone(self.h))

proc contentPos*(self: gen_qevent_types.QScrollEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_contentPos(self.h))

proc overshootDistance*(self: gen_qevent_types.QScrollEvent, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_overshootDistance(self.h))

proc scrollState*(self: gen_qevent_types.QScrollEvent, ): cint =
  cint(fcQScrollEvent_scrollState(self.h))

type QScrollEventcloneProc* = proc(self: QScrollEvent): gen_qevent_types.QScrollEvent {.raises: [], gcsafe.}
type QScrollEventsetAcceptedProc* = proc(self: QScrollEvent, accepted: bool): void {.raises: [], gcsafe.}
type QScrollEventVTable* = object
  vtbl: cQScrollEventVTable
  clone*: QScrollEventcloneProc
  setAccepted*: QScrollEventsetAcceptedProc
proc QScrollEventclone*(self: gen_qevent_types.QScrollEvent, ): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQScrollEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollEventVTable](vtbl)
  let self = QScrollEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QScrollEventsetAccepted*(self: gen_qevent_types.QScrollEvent, accepted: bool): void =
  fcQScrollEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQScrollEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollEventVTable](vtbl)
  let self = QScrollEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QScrollEvent,
    contentPos: gen_qpoint_types.QPointF, overshoot: gen_qpoint_types.QPointF, scrollState: cint,
    vtbl: ref QScrollEventVTable = nil): gen_qevent_types.QScrollEvent =
  let vtbl = if vtbl == nil: new QScrollEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScrollEventVTable, _: ptr cQScrollEvent) {.cdecl.} =
    let vtbl = cast[ref QScrollEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQScrollEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQScrollEvent_setAccepted
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_new(addr(vtbl[]), contentPos.h, overshoot.h, cint(scrollState)))

proc delete*(self: gen_qevent_types.QScrollEvent) =
  fcQScrollEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_clone(self.h))

proc screen*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQScreenOrientationChangeEvent_screen(self.h))

proc orientation*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): cint =
  cint(fcQScreenOrientationChangeEvent_orientation(self.h))

type QScreenOrientationChangeEventcloneProc* = proc(self: QScreenOrientationChangeEvent): gen_qevent_types.QScreenOrientationChangeEvent {.raises: [], gcsafe.}
type QScreenOrientationChangeEventsetAcceptedProc* = proc(self: QScreenOrientationChangeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QScreenOrientationChangeEventVTable* = object
  vtbl: cQScreenOrientationChangeEventVTable
  clone*: QScreenOrientationChangeEventcloneProc
  setAccepted*: QScreenOrientationChangeEventsetAcceptedProc
proc QScreenOrientationChangeEventclone*(self: gen_qevent_types.QScreenOrientationChangeEvent, ): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQScreenOrientationChangeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScreenOrientationChangeEventVTable](vtbl)
  let self = QScreenOrientationChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QScreenOrientationChangeEventsetAccepted*(self: gen_qevent_types.QScreenOrientationChangeEvent, accepted: bool): void =
  fcQScreenOrientationChangeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQScreenOrientationChangeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScreenOrientationChangeEventVTable](vtbl)
  let self = QScreenOrientationChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QScreenOrientationChangeEvent,
    screen: gen_qscreen_types.QScreen, orientation: cint,
    vtbl: ref QScreenOrientationChangeEventVTable = nil): gen_qevent_types.QScreenOrientationChangeEvent =
  let vtbl = if vtbl == nil: new QScreenOrientationChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScreenOrientationChangeEventVTable, _: ptr cQScreenOrientationChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QScreenOrientationChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQScreenOrientationChangeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQScreenOrientationChangeEvent_setAccepted
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_new(addr(vtbl[]), screen.h, cint(orientation)))

proc delete*(self: gen_qevent_types.QScreenOrientationChangeEvent) =
  fcQScreenOrientationChangeEvent_delete(self.h)
proc clone*(self: gen_qevent_types.QApplicationStateChangeEvent, ): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_clone(self.h))

proc applicationState*(self: gen_qevent_types.QApplicationStateChangeEvent, ): cint =
  cint(fcQApplicationStateChangeEvent_applicationState(self.h))

type QApplicationStateChangeEventcloneProc* = proc(self: QApplicationStateChangeEvent): gen_qevent_types.QApplicationStateChangeEvent {.raises: [], gcsafe.}
type QApplicationStateChangeEventsetAcceptedProc* = proc(self: QApplicationStateChangeEvent, accepted: bool): void {.raises: [], gcsafe.}
type QApplicationStateChangeEventVTable* = object
  vtbl: cQApplicationStateChangeEventVTable
  clone*: QApplicationStateChangeEventcloneProc
  setAccepted*: QApplicationStateChangeEventsetAcceptedProc
proc QApplicationStateChangeEventclone*(self: gen_qevent_types.QApplicationStateChangeEvent, ): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_virtualbase_clone(self.h))

proc miqt_exec_callback_cQApplicationStateChangeEvent_clone(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QApplicationStateChangeEventVTable](vtbl)
  let self = QApplicationStateChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.h

proc QApplicationStateChangeEventsetAccepted*(self: gen_qevent_types.QApplicationStateChangeEvent, accepted: bool): void =
  fcQApplicationStateChangeEvent_virtualbase_setAccepted(self.h, accepted)

proc miqt_exec_callback_cQApplicationStateChangeEvent_setAccepted(vtbl: pointer, self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationStateChangeEventVTable](vtbl)
  let self = QApplicationStateChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

proc create*(T: type gen_qevent_types.QApplicationStateChangeEvent,
    state: cint,
    vtbl: ref QApplicationStateChangeEventVTable = nil): gen_qevent_types.QApplicationStateChangeEvent =
  let vtbl = if vtbl == nil: new QApplicationStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQApplicationStateChangeEventVTable, _: ptr cQApplicationStateChangeEvent) {.cdecl.} =
    let vtbl = cast[ref QApplicationStateChangeEventVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.clone):
    vtbl[].vtbl.clone = miqt_exec_callback_cQApplicationStateChangeEvent_clone
  if not isNil(vtbl.setAccepted):
    vtbl[].vtbl.setAccepted = miqt_exec_callback_cQApplicationStateChangeEvent_setAccepted
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_new(addr(vtbl[]), cint(state)))

proc delete*(self: gen_qevent_types.QApplicationStateChangeEvent) =
  fcQApplicationStateChangeEvent_delete(self.h)
proc operatorAssign*(self: gen_qevent_types.QInputMethodEventAttribute, param1: gen_qevent_types.QInputMethodEventAttribute): void =
  fcQInputMethodEventAttribute_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute,
    typ: cint, s: cint, l: cint, val: gen_qvariant_types.QVariant): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute(h: fcQInputMethodEventAttribute_new(cint(typ), s, l, val.h))

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute,
    typ: cint, s: cint, l: cint): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute(h: fcQInputMethodEventAttribute_new2(cint(typ), s, l))

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute,
    param1: gen_qevent_types.QInputMethodEventAttribute): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute(h: fcQInputMethodEventAttribute_new3(param1.h))

proc delete*(self: gen_qevent_types.QInputMethodEventAttribute) =
  fcQInputMethodEventAttribute_delete(self.h)
