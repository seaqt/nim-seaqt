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

proc fcQInputEvent_clone(self: pointer): pointer {.importc: "QInputEvent_clone".}
proc fcQInputEvent_device(self: pointer): pointer {.importc: "QInputEvent_device".}
proc fcQInputEvent_deviceType(self: pointer): cint {.importc: "QInputEvent_deviceType".}
proc fcQInputEvent_modifiers(self: pointer): cint {.importc: "QInputEvent_modifiers".}
proc fcQInputEvent_setModifiers(self: pointer, modifiers: cint): void {.importc: "QInputEvent_setModifiers".}
proc fcQInputEvent_timestamp(self: pointer): culonglong {.importc: "QInputEvent_timestamp".}
proc fcQInputEvent_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QInputEvent_setTimestamp".}
proc fcQInputEvent_vtbl(self: pointer): pointer {.importc: "QInputEvent_vtbl".}
proc fcQInputEvent_vdata(self: pointer): pointer {.importc: "QInputEvent_vdata".}

type cQInputEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQInputEvent_virtualbase_clone(self: pointer): pointer {.importc: "QInputEvent_virtualbase_clone".}
proc fcQInputEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QInputEvent_virtualbase_setTimestamp".}
proc fcQInputEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QInputEvent_virtualbase_setAccepted".}
proc fcQInputEvent_new(vtbl, vdata: pointer, typeVal: cint, m_dev: pointer): ptr cQInputEvent {.importc: "QInputEvent_new".}
proc fcQInputEvent_new2(vtbl, vdata: pointer, typeVal: cint, m_dev: pointer, modifiers: cint): ptr cQInputEvent {.importc: "QInputEvent_new2".}
proc fcQPointerEvent_clone(self: pointer): pointer {.importc: "QPointerEvent_clone".}
proc fcQPointerEvent_pointingDevice(self: pointer): pointer {.importc: "QPointerEvent_pointingDevice".}
proc fcQPointerEvent_pointerType(self: pointer): cint {.importc: "QPointerEvent_pointerType".}
proc fcQPointerEvent_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QPointerEvent_setTimestamp".}
proc fcQPointerEvent_pointCount(self: pointer): int64 {.importc: "QPointerEvent_pointCount".}
proc fcQPointerEvent_point(self: pointer, i: int64): pointer {.importc: "QPointerEvent_point".}
proc fcQPointerEvent_points(self: pointer): struct_miqt_array {.importc: "QPointerEvent_points".}
proc fcQPointerEvent_pointById(self: pointer, id: cint): pointer {.importc: "QPointerEvent_pointById".}
proc fcQPointerEvent_allPointsGrabbed(self: pointer): bool {.importc: "QPointerEvent_allPointsGrabbed".}
proc fcQPointerEvent_isBeginEvent(self: pointer): bool {.importc: "QPointerEvent_isBeginEvent".}
proc fcQPointerEvent_isUpdateEvent(self: pointer): bool {.importc: "QPointerEvent_isUpdateEvent".}
proc fcQPointerEvent_isEndEvent(self: pointer): bool {.importc: "QPointerEvent_isEndEvent".}
proc fcQPointerEvent_allPointsAccepted(self: pointer): bool {.importc: "QPointerEvent_allPointsAccepted".}
proc fcQPointerEvent_setAccepted(self: pointer, accepted: bool): void {.importc: "QPointerEvent_setAccepted".}
proc fcQPointerEvent_exclusiveGrabber(self: pointer, point: pointer): pointer {.importc: "QPointerEvent_exclusiveGrabber".}
proc fcQPointerEvent_setExclusiveGrabber(self: pointer, point: pointer, exclusiveGrabber: pointer): void {.importc: "QPointerEvent_setExclusiveGrabber".}
proc fcQPointerEvent_clearPassiveGrabbers(self: pointer, point: pointer): void {.importc: "QPointerEvent_clearPassiveGrabbers".}
proc fcQPointerEvent_addPassiveGrabber(self: pointer, point: pointer, grabber: pointer): bool {.importc: "QPointerEvent_addPassiveGrabber".}
proc fcQPointerEvent_removePassiveGrabber(self: pointer, point: pointer, grabber: pointer): bool {.importc: "QPointerEvent_removePassiveGrabber".}
proc fcQPointerEvent_vtbl(self: pointer): pointer {.importc: "QPointerEvent_vtbl".}
proc fcQPointerEvent_vdata(self: pointer): pointer {.importc: "QPointerEvent_vdata".}

type cQPointerEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQPointerEvent_virtualbase_clone(self: pointer): pointer {.importc: "QPointerEvent_virtualbase_clone".}
proc fcQPointerEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QPointerEvent_virtualbase_setTimestamp".}
proc fcQPointerEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QPointerEvent_virtualbase_isBeginEvent".}
proc fcQPointerEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QPointerEvent_virtualbase_isUpdateEvent".}
proc fcQPointerEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QPointerEvent_virtualbase_isEndEvent".}
proc fcQPointerEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QPointerEvent_virtualbase_setAccepted".}
proc fcQPointerEvent_new(vtbl, vdata: pointer, typeVal: cint, dev: pointer): ptr cQPointerEvent {.importc: "QPointerEvent_new".}
proc fcQPointerEvent_new2(vtbl, vdata: pointer, typeVal: cint, dev: pointer, modifiers: cint): ptr cQPointerEvent {.importc: "QPointerEvent_new2".}
proc fcQPointerEvent_new3(vtbl, vdata: pointer, typeVal: cint, dev: pointer, modifiers: cint, points: struct_miqt_array): ptr cQPointerEvent {.importc: "QPointerEvent_new3".}
proc fcQSinglePointEvent_clone(self: pointer): pointer {.importc: "QSinglePointEvent_clone".}
proc fcQSinglePointEvent_button(self: pointer): cint {.importc: "QSinglePointEvent_button".}
proc fcQSinglePointEvent_buttons(self: pointer): cint {.importc: "QSinglePointEvent_buttons".}
proc fcQSinglePointEvent_position(self: pointer): pointer {.importc: "QSinglePointEvent_position".}
proc fcQSinglePointEvent_scenePosition(self: pointer): pointer {.importc: "QSinglePointEvent_scenePosition".}
proc fcQSinglePointEvent_globalPosition(self: pointer): pointer {.importc: "QSinglePointEvent_globalPosition".}
proc fcQSinglePointEvent_isBeginEvent(self: pointer): bool {.importc: "QSinglePointEvent_isBeginEvent".}
proc fcQSinglePointEvent_isUpdateEvent(self: pointer): bool {.importc: "QSinglePointEvent_isUpdateEvent".}
proc fcQSinglePointEvent_isEndEvent(self: pointer): bool {.importc: "QSinglePointEvent_isEndEvent".}
proc fcQSinglePointEvent_exclusivePointGrabber(self: pointer): pointer {.importc: "QSinglePointEvent_exclusivePointGrabber".}
proc fcQSinglePointEvent_setExclusivePointGrabber(self: pointer, exclusiveGrabber: pointer): void {.importc: "QSinglePointEvent_setExclusivePointGrabber".}
proc fcQSinglePointEvent_staticMetaObject(): pointer {.importc: "QSinglePointEvent_staticMetaObject".}
proc fcQEnterEvent_clone(self: pointer): pointer {.importc: "QEnterEvent_clone".}
proc fcQEnterEvent_pos(self: pointer): pointer {.importc: "QEnterEvent_pos".}
proc fcQEnterEvent_globalPos(self: pointer): pointer {.importc: "QEnterEvent_globalPos".}
proc fcQEnterEvent_x(self: pointer): cint {.importc: "QEnterEvent_x".}
proc fcQEnterEvent_y(self: pointer): cint {.importc: "QEnterEvent_y".}
proc fcQEnterEvent_globalX(self: pointer): cint {.importc: "QEnterEvent_globalX".}
proc fcQEnterEvent_globalY(self: pointer): cint {.importc: "QEnterEvent_globalY".}
proc fcQEnterEvent_localPos(self: pointer): pointer {.importc: "QEnterEvent_localPos".}
proc fcQEnterEvent_windowPos(self: pointer): pointer {.importc: "QEnterEvent_windowPos".}
proc fcQEnterEvent_screenPos(self: pointer): pointer {.importc: "QEnterEvent_screenPos".}
proc fcQEnterEvent_vtbl(self: pointer): pointer {.importc: "QEnterEvent_vtbl".}
proc fcQEnterEvent_vdata(self: pointer): pointer {.importc: "QEnterEvent_vdata".}

type cQEnterEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQEnterEvent_virtualbase_clone(self: pointer): pointer {.importc: "QEnterEvent_virtualbase_clone".}
proc fcQEnterEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QEnterEvent_virtualbase_isBeginEvent".}
proc fcQEnterEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QEnterEvent_virtualbase_isUpdateEvent".}
proc fcQEnterEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QEnterEvent_virtualbase_isEndEvent".}
proc fcQEnterEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QEnterEvent_virtualbase_setTimestamp".}
proc fcQEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QEnterEvent_virtualbase_setAccepted".}
proc fcQEnterEvent_new(vtbl, vdata: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new".}
proc fcQEnterEvent_new2(vtbl, vdata: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer, device: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new2".}
proc fcQMouseEvent_clone(self: pointer): pointer {.importc: "QMouseEvent_clone".}
proc fcQMouseEvent_pos(self: pointer): pointer {.importc: "QMouseEvent_pos".}
proc fcQMouseEvent_globalPos(self: pointer): pointer {.importc: "QMouseEvent_globalPos".}
proc fcQMouseEvent_x(self: pointer): cint {.importc: "QMouseEvent_x".}
proc fcQMouseEvent_y(self: pointer): cint {.importc: "QMouseEvent_y".}
proc fcQMouseEvent_globalX(self: pointer): cint {.importc: "QMouseEvent_globalX".}
proc fcQMouseEvent_globalY(self: pointer): cint {.importc: "QMouseEvent_globalY".}
proc fcQMouseEvent_localPos(self: pointer): pointer {.importc: "QMouseEvent_localPos".}
proc fcQMouseEvent_windowPos(self: pointer): pointer {.importc: "QMouseEvent_windowPos".}
proc fcQMouseEvent_screenPos(self: pointer): pointer {.importc: "QMouseEvent_screenPos".}
proc fcQMouseEvent_source(self: pointer): cint {.importc: "QMouseEvent_source".}
proc fcQMouseEvent_flags(self: pointer): cint {.importc: "QMouseEvent_flags".}
proc fcQMouseEvent_vtbl(self: pointer): pointer {.importc: "QMouseEvent_vtbl".}
proc fcQMouseEvent_vdata(self: pointer): pointer {.importc: "QMouseEvent_vdata".}

type cQMouseEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQMouseEvent_virtualbase_clone(self: pointer): pointer {.importc: "QMouseEvent_virtualbase_clone".}
proc fcQMouseEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QMouseEvent_virtualbase_isBeginEvent".}
proc fcQMouseEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QMouseEvent_virtualbase_isUpdateEvent".}
proc fcQMouseEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QMouseEvent_virtualbase_isEndEvent".}
proc fcQMouseEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QMouseEvent_virtualbase_setTimestamp".}
proc fcQMouseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QMouseEvent_virtualbase_setAccepted".}
proc fcQMouseEvent_new(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new".}
proc fcQMouseEvent_new2(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new2".}
proc fcQMouseEvent_new3(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new3".}
proc fcQMouseEvent_new4(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new4".}
proc fcQMouseEvent_new5(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new5".}
proc fcQMouseEvent_new6(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new6".}
proc fcQMouseEvent_new7(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new7".}
proc fcQMouseEvent_new8(vtbl, vdata: pointer, typeVal: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint, device: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new8".}
proc fcQHoverEvent_clone(self: pointer): pointer {.importc: "QHoverEvent_clone".}
proc fcQHoverEvent_pos(self: pointer): pointer {.importc: "QHoverEvent_pos".}
proc fcQHoverEvent_posF(self: pointer): pointer {.importc: "QHoverEvent_posF".}
proc fcQHoverEvent_isUpdateEvent(self: pointer): bool {.importc: "QHoverEvent_isUpdateEvent".}
proc fcQHoverEvent_oldPos(self: pointer): pointer {.importc: "QHoverEvent_oldPos".}
proc fcQHoverEvent_oldPosF(self: pointer): pointer {.importc: "QHoverEvent_oldPosF".}
proc fcQHoverEvent_vtbl(self: pointer): pointer {.importc: "QHoverEvent_vtbl".}
proc fcQHoverEvent_vdata(self: pointer): pointer {.importc: "QHoverEvent_vdata".}

type cQHoverEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQHoverEvent_virtualbase_clone(self: pointer): pointer {.importc: "QHoverEvent_virtualbase_clone".}
proc fcQHoverEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QHoverEvent_virtualbase_isUpdateEvent".}
proc fcQHoverEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QHoverEvent_virtualbase_isBeginEvent".}
proc fcQHoverEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QHoverEvent_virtualbase_isEndEvent".}
proc fcQHoverEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QHoverEvent_virtualbase_setTimestamp".}
proc fcQHoverEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QHoverEvent_virtualbase_setAccepted".}
proc fcQHoverEvent_new(vtbl, vdata: pointer, typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new".}
proc fcQHoverEvent_new2(vtbl, vdata: pointer, typeVal: cint, pos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new2".}
proc fcQHoverEvent_new3(vtbl, vdata: pointer, typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new3".}
proc fcQHoverEvent_new4(vtbl, vdata: pointer, typeVal: cint, scenePos: pointer, globalPos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new4".}
proc fcQHoverEvent_new5(vtbl, vdata: pointer, typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new5".}
proc fcQHoverEvent_new6(vtbl, vdata: pointer, typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint, device: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new6".}
proc fcQWheelEvent_clone(self: pointer): pointer {.importc: "QWheelEvent_clone".}
proc fcQWheelEvent_pixelDelta(self: pointer): pointer {.importc: "QWheelEvent_pixelDelta".}
proc fcQWheelEvent_angleDelta(self: pointer): pointer {.importc: "QWheelEvent_angleDelta".}
proc fcQWheelEvent_phase(self: pointer): cint {.importc: "QWheelEvent_phase".}
proc fcQWheelEvent_inverted(self: pointer): bool {.importc: "QWheelEvent_inverted".}
proc fcQWheelEvent_isInverted(self: pointer): bool {.importc: "QWheelEvent_isInverted".}
proc fcQWheelEvent_hasPixelDelta(self: pointer): bool {.importc: "QWheelEvent_hasPixelDelta".}
proc fcQWheelEvent_isBeginEvent(self: pointer): bool {.importc: "QWheelEvent_isBeginEvent".}
proc fcQWheelEvent_isUpdateEvent(self: pointer): bool {.importc: "QWheelEvent_isUpdateEvent".}
proc fcQWheelEvent_isEndEvent(self: pointer): bool {.importc: "QWheelEvent_isEndEvent".}
proc fcQWheelEvent_source(self: pointer): cint {.importc: "QWheelEvent_source".}
proc fcQWheelEvent_vtbl(self: pointer): pointer {.importc: "QWheelEvent_vtbl".}
proc fcQWheelEvent_vdata(self: pointer): pointer {.importc: "QWheelEvent_vdata".}

type cQWheelEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQWheelEvent_virtualbase_clone(self: pointer): pointer {.importc: "QWheelEvent_virtualbase_clone".}
proc fcQWheelEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QWheelEvent_virtualbase_isBeginEvent".}
proc fcQWheelEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QWheelEvent_virtualbase_isUpdateEvent".}
proc fcQWheelEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QWheelEvent_virtualbase_isEndEvent".}
proc fcQWheelEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QWheelEvent_virtualbase_setTimestamp".}
proc fcQWheelEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QWheelEvent_virtualbase_setAccepted".}
proc fcQWheelEvent_new(vtbl, vdata: pointer, pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new".}
proc fcQWheelEvent_new2(vtbl, vdata: pointer, pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new2".}
proc fcQWheelEvent_new3(vtbl, vdata: pointer, pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: pointer): ptr cQWheelEvent {.importc: "QWheelEvent_new3".}
proc fcQWheelEvent_staticMetaObject(): pointer {.importc: "QWheelEvent_staticMetaObject".}
proc fcQTabletEvent_clone(self: pointer): pointer {.importc: "QTabletEvent_clone".}
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
proc fcQTabletEvent_uniqueId(self: pointer): clonglong {.importc: "QTabletEvent_uniqueId".}
proc fcQTabletEvent_pressure(self: pointer): float64 {.importc: "QTabletEvent_pressure".}
proc fcQTabletEvent_rotation(self: pointer): float64 {.importc: "QTabletEvent_rotation".}
proc fcQTabletEvent_z(self: pointer): float64 {.importc: "QTabletEvent_z".}
proc fcQTabletEvent_tangentialPressure(self: pointer): float64 {.importc: "QTabletEvent_tangentialPressure".}
proc fcQTabletEvent_xTilt(self: pointer): float64 {.importc: "QTabletEvent_xTilt".}
proc fcQTabletEvent_yTilt(self: pointer): float64 {.importc: "QTabletEvent_yTilt".}
proc fcQTabletEvent_vtbl(self: pointer): pointer {.importc: "QTabletEvent_vtbl".}
proc fcQTabletEvent_vdata(self: pointer): pointer {.importc: "QTabletEvent_vdata".}

type cQTabletEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQTabletEvent_virtualbase_clone(self: pointer): pointer {.importc: "QTabletEvent_virtualbase_clone".}
proc fcQTabletEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QTabletEvent_virtualbase_isBeginEvent".}
proc fcQTabletEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QTabletEvent_virtualbase_isUpdateEvent".}
proc fcQTabletEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QTabletEvent_virtualbase_isEndEvent".}
proc fcQTabletEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QTabletEvent_virtualbase_setTimestamp".}
proc fcQTabletEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QTabletEvent_virtualbase_setAccepted".}
proc fcQTabletEvent_new(vtbl, vdata: pointer, t: cint, device: pointer, pos: pointer, globalPos: pointer, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint): ptr cQTabletEvent {.importc: "QTabletEvent_new".}
proc fcQNativeGestureEvent_clone(self: pointer): pointer {.importc: "QNativeGestureEvent_clone".}
proc fcQNativeGestureEvent_gestureType(self: pointer): cint {.importc: "QNativeGestureEvent_gestureType".}
proc fcQNativeGestureEvent_fingerCount(self: pointer): cint {.importc: "QNativeGestureEvent_fingerCount".}
proc fcQNativeGestureEvent_value(self: pointer): float64 {.importc: "QNativeGestureEvent_value".}
proc fcQNativeGestureEvent_delta(self: pointer): pointer {.importc: "QNativeGestureEvent_delta".}
proc fcQNativeGestureEvent_pos(self: pointer): pointer {.importc: "QNativeGestureEvent_pos".}
proc fcQNativeGestureEvent_globalPos(self: pointer): pointer {.importc: "QNativeGestureEvent_globalPos".}
proc fcQNativeGestureEvent_localPos(self: pointer): pointer {.importc: "QNativeGestureEvent_localPos".}
proc fcQNativeGestureEvent_windowPos(self: pointer): pointer {.importc: "QNativeGestureEvent_windowPos".}
proc fcQNativeGestureEvent_screenPos(self: pointer): pointer {.importc: "QNativeGestureEvent_screenPos".}
proc fcQNativeGestureEvent_vtbl(self: pointer): pointer {.importc: "QNativeGestureEvent_vtbl".}
proc fcQNativeGestureEvent_vdata(self: pointer): pointer {.importc: "QNativeGestureEvent_vdata".}

type cQNativeGestureEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQNativeGestureEvent_virtualbase_clone(self: pointer): pointer {.importc: "QNativeGestureEvent_virtualbase_clone".}
proc fcQNativeGestureEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QNativeGestureEvent_virtualbase_isBeginEvent".}
proc fcQNativeGestureEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QNativeGestureEvent_virtualbase_isUpdateEvent".}
proc fcQNativeGestureEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QNativeGestureEvent_virtualbase_isEndEvent".}
proc fcQNativeGestureEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QNativeGestureEvent_virtualbase_setTimestamp".}
proc fcQNativeGestureEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QNativeGestureEvent_virtualbase_setAccepted".}
proc fcQNativeGestureEvent_new(vtbl, vdata: pointer, typeVal: cint, dev: pointer, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, sequenceId: culonglong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new".}
proc fcQNativeGestureEvent_new2(vtbl, vdata: pointer, typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new2".}
proc fcQNativeGestureEvent_new3(vtbl, vdata: pointer, typeVal: cint, dev: pointer, fingerCount: cint, localPos: pointer, scenePos: pointer, globalPos: pointer, value: float64, delta: pointer, sequenceId: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new3".}
proc fcQKeyEvent_clone(self: pointer): pointer {.importc: "QKeyEvent_clone".}
proc fcQKeyEvent_key(self: pointer): cint {.importc: "QKeyEvent_key".}
proc fcQKeyEvent_matches(self: pointer, key: cint): bool {.importc: "QKeyEvent_matches".}
proc fcQKeyEvent_modifiers(self: pointer): cint {.importc: "QKeyEvent_modifiers".}
proc fcQKeyEvent_keyCombination(self: pointer): pointer {.importc: "QKeyEvent_keyCombination".}
proc fcQKeyEvent_text(self: pointer): struct_miqt_string {.importc: "QKeyEvent_text".}
proc fcQKeyEvent_isAutoRepeat(self: pointer): bool {.importc: "QKeyEvent_isAutoRepeat".}
proc fcQKeyEvent_count(self: pointer): cint {.importc: "QKeyEvent_count".}
proc fcQKeyEvent_nativeScanCode(self: pointer): cuint {.importc: "QKeyEvent_nativeScanCode".}
proc fcQKeyEvent_nativeVirtualKey(self: pointer): cuint {.importc: "QKeyEvent_nativeVirtualKey".}
proc fcQKeyEvent_nativeModifiers(self: pointer): cuint {.importc: "QKeyEvent_nativeModifiers".}
proc fcQKeyEvent_vtbl(self: pointer): pointer {.importc: "QKeyEvent_vtbl".}
proc fcQKeyEvent_vdata(self: pointer): pointer {.importc: "QKeyEvent_vdata".}

type cQKeyEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQKeyEvent_virtualbase_clone(self: pointer): pointer {.importc: "QKeyEvent_virtualbase_clone".}
proc fcQKeyEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QKeyEvent_virtualbase_setTimestamp".}
proc fcQKeyEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QKeyEvent_virtualbase_setAccepted".}
proc fcQKeyEvent_new(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint): ptr cQKeyEvent {.importc: "QKeyEvent_new".}
proc fcQKeyEvent_new2(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): ptr cQKeyEvent {.importc: "QKeyEvent_new2".}
proc fcQKeyEvent_new3(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new3".}
proc fcQKeyEvent_new4(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new4".}
proc fcQKeyEvent_new5(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new5".}
proc fcQKeyEvent_new6(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new6".}
proc fcQKeyEvent_new7(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new7".}
proc fcQKeyEvent_new8(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new8".}
proc fcQKeyEvent_new9(vtbl, vdata: pointer, typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort, device: pointer): ptr cQKeyEvent {.importc: "QKeyEvent_new9".}
proc fcQFocusEvent_clone(self: pointer): pointer {.importc: "QFocusEvent_clone".}
proc fcQFocusEvent_gotFocus(self: pointer): bool {.importc: "QFocusEvent_gotFocus".}
proc fcQFocusEvent_lostFocus(self: pointer): bool {.importc: "QFocusEvent_lostFocus".}
proc fcQFocusEvent_reason(self: pointer): cint {.importc: "QFocusEvent_reason".}
proc fcQFocusEvent_vtbl(self: pointer): pointer {.importc: "QFocusEvent_vtbl".}
proc fcQFocusEvent_vdata(self: pointer): pointer {.importc: "QFocusEvent_vdata".}

type cQFocusEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQFocusEvent_virtualbase_clone(self: pointer): pointer {.importc: "QFocusEvent_virtualbase_clone".}
proc fcQFocusEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QFocusEvent_virtualbase_setAccepted".}
proc fcQFocusEvent_new(vtbl, vdata: pointer, typeVal: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new".}
proc fcQFocusEvent_new2(vtbl, vdata: pointer, typeVal: cint, reason: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new2".}
proc fcQPaintEvent_clone(self: pointer): pointer {.importc: "QPaintEvent_clone".}
proc fcQPaintEvent_rect(self: pointer): pointer {.importc: "QPaintEvent_rect".}
proc fcQPaintEvent_region(self: pointer): pointer {.importc: "QPaintEvent_region".}
proc fcQPaintEvent_vtbl(self: pointer): pointer {.importc: "QPaintEvent_vtbl".}
proc fcQPaintEvent_vdata(self: pointer): pointer {.importc: "QPaintEvent_vdata".}

type cQPaintEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQPaintEvent_virtualbase_clone(self: pointer): pointer {.importc: "QPaintEvent_virtualbase_clone".}
proc fcQPaintEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QPaintEvent_virtualbase_setAccepted".}
proc fcQPaintEvent_new(vtbl, vdata: pointer, paintRegion: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new".}
proc fcQPaintEvent_new2(vtbl, vdata: pointer, paintRect: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new2".}
proc fcQMoveEvent_clone(self: pointer): pointer {.importc: "QMoveEvent_clone".}
proc fcQMoveEvent_pos(self: pointer): pointer {.importc: "QMoveEvent_pos".}
proc fcQMoveEvent_oldPos(self: pointer): pointer {.importc: "QMoveEvent_oldPos".}
proc fcQMoveEvent_vtbl(self: pointer): pointer {.importc: "QMoveEvent_vtbl".}
proc fcQMoveEvent_vdata(self: pointer): pointer {.importc: "QMoveEvent_vdata".}

type cQMoveEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQMoveEvent_virtualbase_clone(self: pointer): pointer {.importc: "QMoveEvent_virtualbase_clone".}
proc fcQMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QMoveEvent_virtualbase_setAccepted".}
proc fcQMoveEvent_new(vtbl, vdata: pointer, pos: pointer, oldPos: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new".}
proc fcQExposeEvent_clone(self: pointer): pointer {.importc: "QExposeEvent_clone".}
proc fcQExposeEvent_region(self: pointer): pointer {.importc: "QExposeEvent_region".}
proc fcQExposeEvent_vtbl(self: pointer): pointer {.importc: "QExposeEvent_vtbl".}
proc fcQExposeEvent_vdata(self: pointer): pointer {.importc: "QExposeEvent_vdata".}

type cQExposeEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQExposeEvent_virtualbase_clone(self: pointer): pointer {.importc: "QExposeEvent_virtualbase_clone".}
proc fcQExposeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QExposeEvent_virtualbase_setAccepted".}
proc fcQExposeEvent_new(vtbl, vdata: pointer, m_region: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new".}
proc fcQPlatformSurfaceEvent_clone(self: pointer): pointer {.importc: "QPlatformSurfaceEvent_clone".}
proc fcQPlatformSurfaceEvent_surfaceEventType(self: pointer): cint {.importc: "QPlatformSurfaceEvent_surfaceEventType".}
proc fcQPlatformSurfaceEvent_vtbl(self: pointer): pointer {.importc: "QPlatformSurfaceEvent_vtbl".}
proc fcQPlatformSurfaceEvent_vdata(self: pointer): pointer {.importc: "QPlatformSurfaceEvent_vdata".}

type cQPlatformSurfaceEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQPlatformSurfaceEvent_virtualbase_clone(self: pointer): pointer {.importc: "QPlatformSurfaceEvent_virtualbase_clone".}
proc fcQPlatformSurfaceEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QPlatformSurfaceEvent_virtualbase_setAccepted".}
proc fcQPlatformSurfaceEvent_new(vtbl, vdata: pointer, surfaceEventType: cint): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new".}
proc fcQResizeEvent_clone(self: pointer): pointer {.importc: "QResizeEvent_clone".}
proc fcQResizeEvent_size(self: pointer): pointer {.importc: "QResizeEvent_size".}
proc fcQResizeEvent_oldSize(self: pointer): pointer {.importc: "QResizeEvent_oldSize".}
proc fcQResizeEvent_vtbl(self: pointer): pointer {.importc: "QResizeEvent_vtbl".}
proc fcQResizeEvent_vdata(self: pointer): pointer {.importc: "QResizeEvent_vdata".}

type cQResizeEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQResizeEvent_virtualbase_clone(self: pointer): pointer {.importc: "QResizeEvent_virtualbase_clone".}
proc fcQResizeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QResizeEvent_virtualbase_setAccepted".}
proc fcQResizeEvent_new(vtbl, vdata: pointer, size: pointer, oldSize: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new".}
proc fcQCloseEvent_clone(self: pointer): pointer {.importc: "QCloseEvent_clone".}
proc fcQCloseEvent_vtbl(self: pointer): pointer {.importc: "QCloseEvent_vtbl".}
proc fcQCloseEvent_vdata(self: pointer): pointer {.importc: "QCloseEvent_vdata".}

type cQCloseEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQCloseEvent_virtualbase_clone(self: pointer): pointer {.importc: "QCloseEvent_virtualbase_clone".}
proc fcQCloseEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QCloseEvent_virtualbase_setAccepted".}
proc fcQCloseEvent_new(vtbl, vdata: pointer): ptr cQCloseEvent {.importc: "QCloseEvent_new".}
proc fcQIconDragEvent_clone(self: pointer): pointer {.importc: "QIconDragEvent_clone".}
proc fcQIconDragEvent_vtbl(self: pointer): pointer {.importc: "QIconDragEvent_vtbl".}
proc fcQIconDragEvent_vdata(self: pointer): pointer {.importc: "QIconDragEvent_vdata".}

type cQIconDragEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQIconDragEvent_virtualbase_clone(self: pointer): pointer {.importc: "QIconDragEvent_virtualbase_clone".}
proc fcQIconDragEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QIconDragEvent_virtualbase_setAccepted".}
proc fcQIconDragEvent_new(vtbl, vdata: pointer): ptr cQIconDragEvent {.importc: "QIconDragEvent_new".}
proc fcQShowEvent_clone(self: pointer): pointer {.importc: "QShowEvent_clone".}
proc fcQShowEvent_vtbl(self: pointer): pointer {.importc: "QShowEvent_vtbl".}
proc fcQShowEvent_vdata(self: pointer): pointer {.importc: "QShowEvent_vdata".}

type cQShowEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQShowEvent_virtualbase_clone(self: pointer): pointer {.importc: "QShowEvent_virtualbase_clone".}
proc fcQShowEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QShowEvent_virtualbase_setAccepted".}
proc fcQShowEvent_new(vtbl, vdata: pointer): ptr cQShowEvent {.importc: "QShowEvent_new".}
proc fcQHideEvent_clone(self: pointer): pointer {.importc: "QHideEvent_clone".}
proc fcQHideEvent_vtbl(self: pointer): pointer {.importc: "QHideEvent_vtbl".}
proc fcQHideEvent_vdata(self: pointer): pointer {.importc: "QHideEvent_vdata".}

type cQHideEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQHideEvent_virtualbase_clone(self: pointer): pointer {.importc: "QHideEvent_virtualbase_clone".}
proc fcQHideEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QHideEvent_virtualbase_setAccepted".}
proc fcQHideEvent_new(vtbl, vdata: pointer): ptr cQHideEvent {.importc: "QHideEvent_new".}
proc fcQContextMenuEvent_clone(self: pointer): pointer {.importc: "QContextMenuEvent_clone".}
proc fcQContextMenuEvent_x(self: pointer): cint {.importc: "QContextMenuEvent_x".}
proc fcQContextMenuEvent_y(self: pointer): cint {.importc: "QContextMenuEvent_y".}
proc fcQContextMenuEvent_globalX(self: pointer): cint {.importc: "QContextMenuEvent_globalX".}
proc fcQContextMenuEvent_globalY(self: pointer): cint {.importc: "QContextMenuEvent_globalY".}
proc fcQContextMenuEvent_pos(self: pointer): pointer {.importc: "QContextMenuEvent_pos".}
proc fcQContextMenuEvent_globalPos(self: pointer): pointer {.importc: "QContextMenuEvent_globalPos".}
proc fcQContextMenuEvent_reason(self: pointer): cint {.importc: "QContextMenuEvent_reason".}
proc fcQContextMenuEvent_vtbl(self: pointer): pointer {.importc: "QContextMenuEvent_vtbl".}
proc fcQContextMenuEvent_vdata(self: pointer): pointer {.importc: "QContextMenuEvent_vdata".}

type cQContextMenuEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQContextMenuEvent_virtualbase_clone(self: pointer): pointer {.importc: "QContextMenuEvent_virtualbase_clone".}
proc fcQContextMenuEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QContextMenuEvent_virtualbase_setTimestamp".}
proc fcQContextMenuEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QContextMenuEvent_virtualbase_setAccepted".}
proc fcQContextMenuEvent_new(vtbl, vdata: pointer, reason: cint, pos: pointer, globalPos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new".}
proc fcQContextMenuEvent_new2(vtbl, vdata: pointer, reason: cint, pos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new2".}
proc fcQContextMenuEvent_new3(vtbl, vdata: pointer, reason: cint, pos: pointer, globalPos: pointer, modifiers: cint): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new3".}
proc fcQInputMethodEvent_clone(self: pointer): pointer {.importc: "QInputMethodEvent_clone".}
proc fcQInputMethodEvent_setCommitString(self: pointer, commitString: struct_miqt_string): void {.importc: "QInputMethodEvent_setCommitString".}
proc fcQInputMethodEvent_attributes(self: pointer): struct_miqt_array {.importc: "QInputMethodEvent_attributes".}
proc fcQInputMethodEvent_preeditString(self: pointer): struct_miqt_string {.importc: "QInputMethodEvent_preeditString".}
proc fcQInputMethodEvent_commitString(self: pointer): struct_miqt_string {.importc: "QInputMethodEvent_commitString".}
proc fcQInputMethodEvent_replacementStart(self: pointer): cint {.importc: "QInputMethodEvent_replacementStart".}
proc fcQInputMethodEvent_replacementLength(self: pointer): cint {.importc: "QInputMethodEvent_replacementLength".}
proc fcQInputMethodEvent_setCommitString2(self: pointer, commitString: struct_miqt_string, replaceFrom: cint): void {.importc: "QInputMethodEvent_setCommitString2".}
proc fcQInputMethodEvent_setCommitString3(self: pointer, commitString: struct_miqt_string, replaceFrom: cint, replaceLength: cint): void {.importc: "QInputMethodEvent_setCommitString3".}
proc fcQInputMethodEvent_vtbl(self: pointer): pointer {.importc: "QInputMethodEvent_vtbl".}
proc fcQInputMethodEvent_vdata(self: pointer): pointer {.importc: "QInputMethodEvent_vdata".}

type cQInputMethodEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQInputMethodEvent_virtualbase_clone(self: pointer): pointer {.importc: "QInputMethodEvent_virtualbase_clone".}
proc fcQInputMethodEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QInputMethodEvent_virtualbase_setAccepted".}
proc fcQInputMethodEvent_new(vtbl, vdata: pointer): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new".}
proc fcQInputMethodEvent_new2(vtbl, vdata: pointer, preeditText: struct_miqt_string, attributes: struct_miqt_array): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new2".}
proc fcQInputMethodQueryEvent_clone(self: pointer): pointer {.importc: "QInputMethodQueryEvent_clone".}
proc fcQInputMethodQueryEvent_queries(self: pointer): cint {.importc: "QInputMethodQueryEvent_queries".}
proc fcQInputMethodQueryEvent_setValue(self: pointer, query: cint, value: pointer): void {.importc: "QInputMethodQueryEvent_setValue".}
proc fcQInputMethodQueryEvent_value(self: pointer, query: cint): pointer {.importc: "QInputMethodQueryEvent_value".}
proc fcQInputMethodQueryEvent_vtbl(self: pointer): pointer {.importc: "QInputMethodQueryEvent_vtbl".}
proc fcQInputMethodQueryEvent_vdata(self: pointer): pointer {.importc: "QInputMethodQueryEvent_vdata".}

type cQInputMethodQueryEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQInputMethodQueryEvent_virtualbase_clone(self: pointer): pointer {.importc: "QInputMethodQueryEvent_virtualbase_clone".}
proc fcQInputMethodQueryEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QInputMethodQueryEvent_virtualbase_setAccepted".}
proc fcQInputMethodQueryEvent_new(vtbl, vdata: pointer, queries: cint): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new".}
proc fcQDropEvent_clone(self: pointer): pointer {.importc: "QDropEvent_clone".}
proc fcQDropEvent_pos(self: pointer): pointer {.importc: "QDropEvent_pos".}
proc fcQDropEvent_posF(self: pointer): pointer {.importc: "QDropEvent_posF".}
proc fcQDropEvent_mouseButtons(self: pointer): cint {.importc: "QDropEvent_mouseButtons".}
proc fcQDropEvent_keyboardModifiers(self: pointer): cint {.importc: "QDropEvent_keyboardModifiers".}
proc fcQDropEvent_position(self: pointer): pointer {.importc: "QDropEvent_position".}
proc fcQDropEvent_buttons(self: pointer): cint {.importc: "QDropEvent_buttons".}
proc fcQDropEvent_modifiers(self: pointer): cint {.importc: "QDropEvent_modifiers".}
proc fcQDropEvent_possibleActions(self: pointer): cint {.importc: "QDropEvent_possibleActions".}
proc fcQDropEvent_proposedAction(self: pointer): cint {.importc: "QDropEvent_proposedAction".}
proc fcQDropEvent_acceptProposedAction(self: pointer): void {.importc: "QDropEvent_acceptProposedAction".}
proc fcQDropEvent_dropAction(self: pointer): cint {.importc: "QDropEvent_dropAction".}
proc fcQDropEvent_setDropAction(self: pointer, action: cint): void {.importc: "QDropEvent_setDropAction".}
proc fcQDropEvent_source(self: pointer): pointer {.importc: "QDropEvent_source".}
proc fcQDropEvent_mimeData(self: pointer): pointer {.importc: "QDropEvent_mimeData".}
proc fcQDropEvent_vtbl(self: pointer): pointer {.importc: "QDropEvent_vtbl".}
proc fcQDropEvent_vdata(self: pointer): pointer {.importc: "QDropEvent_vdata".}

type cQDropEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDropEvent_virtualbase_clone(self: pointer): pointer {.importc: "QDropEvent_virtualbase_clone".}
proc fcQDropEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDropEvent_virtualbase_setAccepted".}
proc fcQDropEvent_new(vtbl, vdata: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDropEvent {.importc: "QDropEvent_new".}
proc fcQDropEvent_new2(vtbl, vdata: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDropEvent {.importc: "QDropEvent_new2".}
proc fcQDragMoveEvent_clone(self: pointer): pointer {.importc: "QDragMoveEvent_clone".}
proc fcQDragMoveEvent_answerRect(self: pointer): pointer {.importc: "QDragMoveEvent_answerRect".}
proc fcQDragMoveEvent_accept(self: pointer): void {.importc: "QDragMoveEvent_accept".}
proc fcQDragMoveEvent_ignore(self: pointer): void {.importc: "QDragMoveEvent_ignore".}
proc fcQDragMoveEvent_acceptWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_acceptWithQRect".}
proc fcQDragMoveEvent_ignoreWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_ignoreWithQRect".}
proc fcQDragMoveEvent_vtbl(self: pointer): pointer {.importc: "QDragMoveEvent_vtbl".}
proc fcQDragMoveEvent_vdata(self: pointer): pointer {.importc: "QDragMoveEvent_vdata".}

type cQDragMoveEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDragMoveEvent_virtualbase_clone(self: pointer): pointer {.importc: "QDragMoveEvent_virtualbase_clone".}
proc fcQDragMoveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDragMoveEvent_virtualbase_setAccepted".}
proc fcQDragMoveEvent_new(vtbl, vdata: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new".}
proc fcQDragMoveEvent_new2(vtbl, vdata: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new2".}
proc fcQDragEnterEvent_clone(self: pointer): pointer {.importc: "QDragEnterEvent_clone".}
proc fcQDragEnterEvent_vtbl(self: pointer): pointer {.importc: "QDragEnterEvent_vtbl".}
proc fcQDragEnterEvent_vdata(self: pointer): pointer {.importc: "QDragEnterEvent_vdata".}

type cQDragEnterEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDragEnterEvent_virtualbase_clone(self: pointer): pointer {.importc: "QDragEnterEvent_virtualbase_clone".}
proc fcQDragEnterEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDragEnterEvent_virtualbase_setAccepted".}
proc fcQDragEnterEvent_new(vtbl, vdata: pointer, pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new".}
proc fcQDragLeaveEvent_clone(self: pointer): pointer {.importc: "QDragLeaveEvent_clone".}
proc fcQDragLeaveEvent_vtbl(self: pointer): pointer {.importc: "QDragLeaveEvent_vtbl".}
proc fcQDragLeaveEvent_vdata(self: pointer): pointer {.importc: "QDragLeaveEvent_vdata".}

type cQDragLeaveEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDragLeaveEvent_virtualbase_clone(self: pointer): pointer {.importc: "QDragLeaveEvent_virtualbase_clone".}
proc fcQDragLeaveEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QDragLeaveEvent_virtualbase_setAccepted".}
proc fcQDragLeaveEvent_new(vtbl, vdata: pointer): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new".}
proc fcQHelpEvent_clone(self: pointer): pointer {.importc: "QHelpEvent_clone".}
proc fcQHelpEvent_x(self: pointer): cint {.importc: "QHelpEvent_x".}
proc fcQHelpEvent_y(self: pointer): cint {.importc: "QHelpEvent_y".}
proc fcQHelpEvent_globalX(self: pointer): cint {.importc: "QHelpEvent_globalX".}
proc fcQHelpEvent_globalY(self: pointer): cint {.importc: "QHelpEvent_globalY".}
proc fcQHelpEvent_pos(self: pointer): pointer {.importc: "QHelpEvent_pos".}
proc fcQHelpEvent_globalPos(self: pointer): pointer {.importc: "QHelpEvent_globalPos".}
proc fcQHelpEvent_vtbl(self: pointer): pointer {.importc: "QHelpEvent_vtbl".}
proc fcQHelpEvent_vdata(self: pointer): pointer {.importc: "QHelpEvent_vdata".}

type cQHelpEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQHelpEvent_virtualbase_clone(self: pointer): pointer {.importc: "QHelpEvent_virtualbase_clone".}
proc fcQHelpEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QHelpEvent_virtualbase_setAccepted".}
proc fcQHelpEvent_new(vtbl, vdata: pointer, typeVal: cint, pos: pointer, globalPos: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new".}
proc fcQStatusTipEvent_clone(self: pointer): pointer {.importc: "QStatusTipEvent_clone".}
proc fcQStatusTipEvent_tip(self: pointer): struct_miqt_string {.importc: "QStatusTipEvent_tip".}
proc fcQStatusTipEvent_vtbl(self: pointer): pointer {.importc: "QStatusTipEvent_vtbl".}
proc fcQStatusTipEvent_vdata(self: pointer): pointer {.importc: "QStatusTipEvent_vdata".}

type cQStatusTipEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQStatusTipEvent_virtualbase_clone(self: pointer): pointer {.importc: "QStatusTipEvent_virtualbase_clone".}
proc fcQStatusTipEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QStatusTipEvent_virtualbase_setAccepted".}
proc fcQStatusTipEvent_new(vtbl, vdata: pointer, tip: struct_miqt_string): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new".}
proc fcQWhatsThisClickedEvent_clone(self: pointer): pointer {.importc: "QWhatsThisClickedEvent_clone".}
proc fcQWhatsThisClickedEvent_href(self: pointer): struct_miqt_string {.importc: "QWhatsThisClickedEvent_href".}
proc fcQWhatsThisClickedEvent_vtbl(self: pointer): pointer {.importc: "QWhatsThisClickedEvent_vtbl".}
proc fcQWhatsThisClickedEvent_vdata(self: pointer): pointer {.importc: "QWhatsThisClickedEvent_vdata".}

type cQWhatsThisClickedEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQWhatsThisClickedEvent_virtualbase_clone(self: pointer): pointer {.importc: "QWhatsThisClickedEvent_virtualbase_clone".}
proc fcQWhatsThisClickedEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QWhatsThisClickedEvent_virtualbase_setAccepted".}
proc fcQWhatsThisClickedEvent_new(vtbl, vdata: pointer, href: struct_miqt_string): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new".}
proc fcQActionEvent_clone(self: pointer): pointer {.importc: "QActionEvent_clone".}
proc fcQActionEvent_vtbl(self: pointer): pointer {.importc: "QActionEvent_vtbl".}
proc fcQActionEvent_vdata(self: pointer): pointer {.importc: "QActionEvent_vdata".}

type cQActionEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQActionEvent_virtualbase_clone(self: pointer): pointer {.importc: "QActionEvent_virtualbase_clone".}
proc fcQActionEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QActionEvent_virtualbase_setAccepted".}
proc fcQActionEvent_new(vtbl, vdata: pointer, typeVal: cint, action: pointer): ptr cQActionEvent {.importc: "QActionEvent_new".}
proc fcQActionEvent_new2(vtbl, vdata: pointer, typeVal: cint, action: pointer, before: pointer): ptr cQActionEvent {.importc: "QActionEvent_new2".}
proc fcQFileOpenEvent_clone(self: pointer): pointer {.importc: "QFileOpenEvent_clone".}
proc fcQFileOpenEvent_file(self: pointer): struct_miqt_string {.importc: "QFileOpenEvent_file".}
proc fcQFileOpenEvent_url(self: pointer): pointer {.importc: "QFileOpenEvent_url".}
proc fcQFileOpenEvent_openFile(self: pointer, file: pointer, flags: cint): bool {.importc: "QFileOpenEvent_openFile".}
proc fcQFileOpenEvent_vtbl(self: pointer): pointer {.importc: "QFileOpenEvent_vtbl".}
proc fcQFileOpenEvent_vdata(self: pointer): pointer {.importc: "QFileOpenEvent_vdata".}

type cQFileOpenEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQFileOpenEvent_virtualbase_clone(self: pointer): pointer {.importc: "QFileOpenEvent_virtualbase_clone".}
proc fcQFileOpenEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QFileOpenEvent_virtualbase_setAccepted".}
proc fcQFileOpenEvent_new(vtbl, vdata: pointer, file: struct_miqt_string): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new".}
proc fcQFileOpenEvent_new2(vtbl, vdata: pointer, url: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new2".}
proc fcQToolBarChangeEvent_clone(self: pointer): pointer {.importc: "QToolBarChangeEvent_clone".}
proc fcQToolBarChangeEvent_toggle(self: pointer): bool {.importc: "QToolBarChangeEvent_toggle".}
proc fcQToolBarChangeEvent_vtbl(self: pointer): pointer {.importc: "QToolBarChangeEvent_vtbl".}
proc fcQToolBarChangeEvent_vdata(self: pointer): pointer {.importc: "QToolBarChangeEvent_vdata".}

type cQToolBarChangeEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQToolBarChangeEvent_virtualbase_clone(self: pointer): pointer {.importc: "QToolBarChangeEvent_virtualbase_clone".}
proc fcQToolBarChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QToolBarChangeEvent_virtualbase_setAccepted".}
proc fcQToolBarChangeEvent_new(vtbl, vdata: pointer, t: bool): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new".}
proc fcQShortcutEvent_clone(self: pointer): pointer {.importc: "QShortcutEvent_clone".}
proc fcQShortcutEvent_key(self: pointer): pointer {.importc: "QShortcutEvent_key".}
proc fcQShortcutEvent_shortcutId(self: pointer): cint {.importc: "QShortcutEvent_shortcutId".}
proc fcQShortcutEvent_isAmbiguous(self: pointer): bool {.importc: "QShortcutEvent_isAmbiguous".}
proc fcQShortcutEvent_vtbl(self: pointer): pointer {.importc: "QShortcutEvent_vtbl".}
proc fcQShortcutEvent_vdata(self: pointer): pointer {.importc: "QShortcutEvent_vdata".}

type cQShortcutEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQShortcutEvent_virtualbase_clone(self: pointer): pointer {.importc: "QShortcutEvent_virtualbase_clone".}
proc fcQShortcutEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QShortcutEvent_virtualbase_setAccepted".}
proc fcQShortcutEvent_new(vtbl, vdata: pointer, key: pointer, id: cint): ptr cQShortcutEvent {.importc: "QShortcutEvent_new".}
proc fcQShortcutEvent_new2(vtbl, vdata: pointer, key: pointer, id: cint, ambiguous: bool): ptr cQShortcutEvent {.importc: "QShortcutEvent_new2".}
proc fcQWindowStateChangeEvent_clone(self: pointer): pointer {.importc: "QWindowStateChangeEvent_clone".}
proc fcQWindowStateChangeEvent_oldState(self: pointer): cint {.importc: "QWindowStateChangeEvent_oldState".}
proc fcQWindowStateChangeEvent_isOverride(self: pointer): bool {.importc: "QWindowStateChangeEvent_isOverride".}
proc fcQWindowStateChangeEvent_vtbl(self: pointer): pointer {.importc: "QWindowStateChangeEvent_vtbl".}
proc fcQWindowStateChangeEvent_vdata(self: pointer): pointer {.importc: "QWindowStateChangeEvent_vdata".}

type cQWindowStateChangeEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQWindowStateChangeEvent_virtualbase_clone(self: pointer): pointer {.importc: "QWindowStateChangeEvent_virtualbase_clone".}
proc fcQWindowStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QWindowStateChangeEvent_virtualbase_setAccepted".}
proc fcQWindowStateChangeEvent_new(vtbl, vdata: pointer, oldState: cint): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new".}
proc fcQWindowStateChangeEvent_new2(vtbl, vdata: pointer, oldState: cint, isOverride: bool): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new2".}
proc fcQTouchEvent_clone(self: pointer): pointer {.importc: "QTouchEvent_clone".}
proc fcQTouchEvent_target(self: pointer): pointer {.importc: "QTouchEvent_target".}
proc fcQTouchEvent_touchPointStates(self: pointer): cint {.importc: "QTouchEvent_touchPointStates".}
proc fcQTouchEvent_touchPoints(self: pointer): struct_miqt_array {.importc: "QTouchEvent_touchPoints".}
proc fcQTouchEvent_isBeginEvent(self: pointer): bool {.importc: "QTouchEvent_isBeginEvent".}
proc fcQTouchEvent_isUpdateEvent(self: pointer): bool {.importc: "QTouchEvent_isUpdateEvent".}
proc fcQTouchEvent_isEndEvent(self: pointer): bool {.importc: "QTouchEvent_isEndEvent".}
proc fcQTouchEvent_vtbl(self: pointer): pointer {.importc: "QTouchEvent_vtbl".}
proc fcQTouchEvent_vdata(self: pointer): pointer {.importc: "QTouchEvent_vdata".}

type cQTouchEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isBeginEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isUpdateEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  isEndEvent*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setTimestamp*: proc(self: pointer, timestamp: culonglong): void {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQTouchEvent_virtualbase_clone(self: pointer): pointer {.importc: "QTouchEvent_virtualbase_clone".}
proc fcQTouchEvent_virtualbase_isBeginEvent(self: pointer): bool {.importc: "QTouchEvent_virtualbase_isBeginEvent".}
proc fcQTouchEvent_virtualbase_isUpdateEvent(self: pointer): bool {.importc: "QTouchEvent_virtualbase_isUpdateEvent".}
proc fcQTouchEvent_virtualbase_isEndEvent(self: pointer): bool {.importc: "QTouchEvent_virtualbase_isEndEvent".}
proc fcQTouchEvent_virtualbase_setTimestamp(self: pointer, timestamp: culonglong): void {.importc: "QTouchEvent_virtualbase_setTimestamp".}
proc fcQTouchEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QTouchEvent_virtualbase_setAccepted".}
proc fcQTouchEvent_new(vtbl, vdata: pointer, eventType: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new".}
proc fcQTouchEvent_new2(vtbl, vdata: pointer, eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new2".}
proc fcQTouchEvent_new3(vtbl, vdata: pointer, eventType: cint, device: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new3".}
proc fcQTouchEvent_new4(vtbl, vdata: pointer, eventType: cint, device: pointer, modifiers: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new4".}
proc fcQTouchEvent_new5(vtbl, vdata: pointer, eventType: cint, device: pointer, modifiers: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new5".}
proc fcQTouchEvent_new6(vtbl, vdata: pointer, eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new6".}
proc fcQScrollPrepareEvent_clone(self: pointer): pointer {.importc: "QScrollPrepareEvent_clone".}
proc fcQScrollPrepareEvent_startPos(self: pointer): pointer {.importc: "QScrollPrepareEvent_startPos".}
proc fcQScrollPrepareEvent_viewportSize(self: pointer): pointer {.importc: "QScrollPrepareEvent_viewportSize".}
proc fcQScrollPrepareEvent_contentPosRange(self: pointer): pointer {.importc: "QScrollPrepareEvent_contentPosRange".}
proc fcQScrollPrepareEvent_contentPos(self: pointer): pointer {.importc: "QScrollPrepareEvent_contentPos".}
proc fcQScrollPrepareEvent_setViewportSize(self: pointer, size: pointer): void {.importc: "QScrollPrepareEvent_setViewportSize".}
proc fcQScrollPrepareEvent_setContentPosRange(self: pointer, rect: pointer): void {.importc: "QScrollPrepareEvent_setContentPosRange".}
proc fcQScrollPrepareEvent_setContentPos(self: pointer, pos: pointer): void {.importc: "QScrollPrepareEvent_setContentPos".}
proc fcQScrollPrepareEvent_vtbl(self: pointer): pointer {.importc: "QScrollPrepareEvent_vtbl".}
proc fcQScrollPrepareEvent_vdata(self: pointer): pointer {.importc: "QScrollPrepareEvent_vdata".}

type cQScrollPrepareEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollPrepareEvent_virtualbase_clone(self: pointer): pointer {.importc: "QScrollPrepareEvent_virtualbase_clone".}
proc fcQScrollPrepareEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QScrollPrepareEvent_virtualbase_setAccepted".}
proc fcQScrollPrepareEvent_new(vtbl, vdata: pointer, startPos: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new".}
proc fcQScrollEvent_clone(self: pointer): pointer {.importc: "QScrollEvent_clone".}
proc fcQScrollEvent_contentPos(self: pointer): pointer {.importc: "QScrollEvent_contentPos".}
proc fcQScrollEvent_overshootDistance(self: pointer): pointer {.importc: "QScrollEvent_overshootDistance".}
proc fcQScrollEvent_scrollState(self: pointer): cint {.importc: "QScrollEvent_scrollState".}
proc fcQScrollEvent_vtbl(self: pointer): pointer {.importc: "QScrollEvent_vtbl".}
proc fcQScrollEvent_vdata(self: pointer): pointer {.importc: "QScrollEvent_vdata".}

type cQScrollEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQScrollEvent_virtualbase_clone(self: pointer): pointer {.importc: "QScrollEvent_virtualbase_clone".}
proc fcQScrollEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QScrollEvent_virtualbase_setAccepted".}
proc fcQScrollEvent_new(vtbl, vdata: pointer, contentPos: pointer, overshoot: pointer, scrollState: cint): ptr cQScrollEvent {.importc: "QScrollEvent_new".}
proc fcQScreenOrientationChangeEvent_clone(self: pointer): pointer {.importc: "QScreenOrientationChangeEvent_clone".}
proc fcQScreenOrientationChangeEvent_screen(self: pointer): pointer {.importc: "QScreenOrientationChangeEvent_screen".}
proc fcQScreenOrientationChangeEvent_orientation(self: pointer): cint {.importc: "QScreenOrientationChangeEvent_orientation".}
proc fcQScreenOrientationChangeEvent_vtbl(self: pointer): pointer {.importc: "QScreenOrientationChangeEvent_vtbl".}
proc fcQScreenOrientationChangeEvent_vdata(self: pointer): pointer {.importc: "QScreenOrientationChangeEvent_vdata".}

type cQScreenOrientationChangeEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQScreenOrientationChangeEvent_virtualbase_clone(self: pointer): pointer {.importc: "QScreenOrientationChangeEvent_virtualbase_clone".}
proc fcQScreenOrientationChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QScreenOrientationChangeEvent_virtualbase_setAccepted".}
proc fcQScreenOrientationChangeEvent_new(vtbl, vdata: pointer, screen: pointer, orientation: cint): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new".}
proc fcQApplicationStateChangeEvent_clone(self: pointer): pointer {.importc: "QApplicationStateChangeEvent_clone".}
proc fcQApplicationStateChangeEvent_applicationState(self: pointer): cint {.importc: "QApplicationStateChangeEvent_applicationState".}
proc fcQApplicationStateChangeEvent_vtbl(self: pointer): pointer {.importc: "QApplicationStateChangeEvent_vtbl".}
proc fcQApplicationStateChangeEvent_vdata(self: pointer): pointer {.importc: "QApplicationStateChangeEvent_vdata".}

type cQApplicationStateChangeEventVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  clone*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setAccepted*: proc(self: pointer, accepted: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQApplicationStateChangeEvent_virtualbase_clone(self: pointer): pointer {.importc: "QApplicationStateChangeEvent_virtualbase_clone".}
proc fcQApplicationStateChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void {.importc: "QApplicationStateChangeEvent_virtualbase_setAccepted".}
proc fcQApplicationStateChangeEvent_new(vtbl, vdata: pointer, state: cint): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new".}
proc fcQInputMethodEventAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QInputMethodEvent__Attribute_operatorAssign".}
proc fcQInputMethodEventAttribute_new(typ: cint, s: cint, l: cint, val: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new".}
proc fcQInputMethodEventAttribute_new2(typ: cint, s: cint, l: cint): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new2".}
proc fcQInputMethodEventAttribute_new3(param1: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new3".}

proc clone*(self: gen_qevent_types.QInputEvent): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fcQInputEvent_clone(self.h), owned: false)

proc device*(self: gen_qevent_types.QInputEvent): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice(h: fcQInputEvent_device(self.h), owned: false)

proc deviceType*(self: gen_qevent_types.QInputEvent): cint =
  cint(fcQInputEvent_deviceType(self.h))

proc modifiers*(self: gen_qevent_types.QInputEvent): cint =
  cint(fcQInputEvent_modifiers(self.h))

proc setModifiers*(self: gen_qevent_types.QInputEvent, modifiers: cint): void =
  fcQInputEvent_setModifiers(self.h, cint(modifiers))

proc timestamp*(self: gen_qevent_types.QInputEvent): culonglong =
  fcQInputEvent_timestamp(self.h)

proc setTimestamp*(self: gen_qevent_types.QInputEvent, timestamp: culonglong): void =
  fcQInputEvent_setTimestamp(self.h, timestamp)

type QInputEventcloneProc* = proc(self: QInputEvent): gen_qevent_types.QInputEvent {.raises: [], gcsafe.}
type QInputEventsetTimestampProc* = proc(self: QInputEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QInputEventsetAcceptedProc* = proc(self: QInputEvent, accepted: bool): void {.raises: [], gcsafe.}

type QInputEventVTable* {.inheritable, pure.} = object
  vtbl: cQInputEventVTable
  clone*: QInputEventcloneProc
  setTimestamp*: QInputEventsetTimestampProc
  setAccepted*: QInputEventsetAcceptedProc

proc QInputEventclone*(self: gen_qevent_types.QInputEvent): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fcQInputEvent_virtualbase_clone(self.h), owned: false)

proc QInputEventsetTimestamp*(self: gen_qevent_types.QInputEvent, timestamp: culonglong): void =
  fcQInputEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QInputEventsetAccepted*(self: gen_qevent_types.QInputEvent, accepted: bool): void =
  fcQInputEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQInputEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputEventVTable](fcQInputEvent_vdata(self))
  let self = QInputEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QInputEventVTable](fcQInputEvent_vdata(self))
  let self = QInputEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQInputEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputEventVTable](fcQInputEvent_vdata(self))
  let self = QInputEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQInputEvent* {.inheritable.} = ref object of QInputEvent
  vtbl*: cQInputEventVTable

method clone*(self: VirtualQInputEvent): gen_qevent_types.QInputEvent {.base.} =
  QInputEventclone(self[])
method setTimestamp*(self: VirtualQInputEvent, timestamp: culonglong): void {.base.} =
  QInputEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQInputEvent, accepted: bool): void {.base.} =
  QInputEventsetAccepted(self[], accepted)

proc fcQInputEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputEvent](fcQInputEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQInputEvent](fcQInputEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQInputEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQInputEvent](fcQInputEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice,
    vtbl: ref QInputEventVTable = nil): gen_qevent_types.QInputEvent =
  let vtbl = if vtbl == nil: new QInputEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputEventVTable](fcQInputEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQInputEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQInputEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQInputEvent_vtable_callback_setAccepted
  gen_qevent_types.QInputEvent(h: fcQInputEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), m_dev.h), owned: true)

proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice, modifiers: cint,
    vtbl: ref QInputEventVTable = nil): gen_qevent_types.QInputEvent =
  let vtbl = if vtbl == nil: new QInputEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputEventVTable](fcQInputEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQInputEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQInputEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQInputEvent_vtable_callback_setAccepted
  gen_qevent_types.QInputEvent(h: fcQInputEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), m_dev.h, cint(modifiers)), owned: true)

const cQInputEvent_mvtbl = cQInputEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQInputEvent()[])](self.fcQInputEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQInputEvent_method_callback_clone,
  setTimestamp: fcQInputEvent_method_callback_setTimestamp,
  setAccepted: fcQInputEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice,
    inst: VirtualQInputEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputEvent_new(addr(cQInputEvent_mvtbl), addr(inst[]), cint(typeVal), m_dev.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint, m_dev: gen_qinputdevice_types.QInputDevice, modifiers: cint,
    inst: VirtualQInputEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputEvent_new2(addr(cQInputEvent_mvtbl), addr(inst[]), cint(typeVal), m_dev.h, cint(modifiers))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QPointerEvent): gen_qevent_types.QPointerEvent =
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_clone(self.h), owned: false)

proc pointingDevice*(self: gen_qevent_types.QPointerEvent): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointerEvent_pointingDevice(self.h), owned: false)

proc pointerType*(self: gen_qevent_types.QPointerEvent): cint =
  cint(fcQPointerEvent_pointerType(self.h))

proc setTimestamp*(self: gen_qevent_types.QPointerEvent, timestamp: culonglong): void =
  fcQPointerEvent_setTimestamp(self.h, timestamp)

proc pointCount*(self: gen_qevent_types.QPointerEvent): int64 =
  fcQPointerEvent_pointCount(self.h)

proc point*(self: gen_qevent_types.QPointerEvent, i: int64): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQPointerEvent_point(self.h, i), owned: false)

proc points*(self: gen_qevent_types.QPointerEvent): seq[gen_qeventpoint_types.QEventPoint] =
  var v_ma = fcQPointerEvent_points(self.h)
  var vx_ret = newSeq[gen_qeventpoint_types.QEventPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qeventpoint_types.QEventPoint(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc pointById*(self: gen_qevent_types.QPointerEvent, id: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint(h: fcQPointerEvent_pointById(self.h, id), owned: false)

proc allPointsGrabbed*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_allPointsGrabbed(self.h)

proc isBeginEvent*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_isEndEvent(self.h)

proc allPointsAccepted*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_allPointsAccepted(self.h)

proc setAccepted*(self: gen_qevent_types.QPointerEvent, accepted: bool): void =
  fcQPointerEvent_setAccepted(self.h, accepted)

proc exclusiveGrabber*(self: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPointerEvent_exclusiveGrabber(self.h, point.h), owned: false)

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

type QPointerEventVTable* {.inheritable, pure.} = object
  vtbl: cQPointerEventVTable
  clone*: QPointerEventcloneProc
  setTimestamp*: QPointerEventsetTimestampProc
  isBeginEvent*: QPointerEventisBeginEventProc
  isUpdateEvent*: QPointerEventisUpdateEventProc
  isEndEvent*: QPointerEventisEndEventProc
  setAccepted*: QPointerEventsetAcceptedProc

proc QPointerEventclone*(self: gen_qevent_types.QPointerEvent): gen_qevent_types.QPointerEvent =
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_virtualbase_clone(self.h), owned: false)

proc QPointerEventsetTimestamp*(self: gen_qevent_types.QPointerEvent, timestamp: culonglong): void =
  fcQPointerEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QPointerEventisBeginEvent*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_virtualbase_isBeginEvent(self.h)

proc QPointerEventisUpdateEvent*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_virtualbase_isUpdateEvent(self.h)

proc QPointerEventisEndEvent*(self: gen_qevent_types.QPointerEvent): bool =
  fcQPointerEvent_virtualbase_isEndEvent(self.h)

proc QPointerEventsetAccepted*(self: gen_qevent_types.QPointerEvent, accepted: bool): void =
  fcQPointerEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQPointerEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](fcQPointerEvent_vdata(self))
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPointerEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](fcQPointerEvent_vdata(self))
  let self = QPointerEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQPointerEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](fcQPointerEvent_vdata(self))
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQPointerEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](fcQPointerEvent_vdata(self))
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQPointerEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](fcQPointerEvent_vdata(self))
  let self = QPointerEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQPointerEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPointerEventVTable](fcQPointerEvent_vdata(self))
  let self = QPointerEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQPointerEvent* {.inheritable.} = ref object of QPointerEvent
  vtbl*: cQPointerEventVTable

method clone*(self: VirtualQPointerEvent): gen_qevent_types.QPointerEvent {.base.} =
  QPointerEventclone(self[])
method setTimestamp*(self: VirtualQPointerEvent, timestamp: culonglong): void {.base.} =
  QPointerEventsetTimestamp(self[], timestamp)
method isBeginEvent*(self: VirtualQPointerEvent): bool {.base.} =
  QPointerEventisBeginEvent(self[])
method isUpdateEvent*(self: VirtualQPointerEvent): bool {.base.} =
  QPointerEventisUpdateEvent(self[])
method isEndEvent*(self: VirtualQPointerEvent): bool {.base.} =
  QPointerEventisEndEvent(self[])
method setAccepted*(self: VirtualQPointerEvent, accepted: bool): void {.base.} =
  QPointerEventsetAccepted(self[], accepted)

proc fcQPointerEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPointerEvent](fcQPointerEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPointerEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQPointerEvent](fcQPointerEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQPointerEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPointerEvent](fcQPointerEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQPointerEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPointerEvent](fcQPointerEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQPointerEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPointerEvent](fcQPointerEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQPointerEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQPointerEvent](fcQPointerEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QPointerEventVTable = nil): gen_qevent_types.QPointerEvent =
  let vtbl = if vtbl == nil: new QPointerEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPointerEventVTable](fcQPointerEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQPointerEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQPointerEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQPointerEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQPointerEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQPointerEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQPointerEvent_vtable_callback_setAccepted
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), dev.h), owned: true)

proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint,
    vtbl: ref QPointerEventVTable = nil): gen_qevent_types.QPointerEvent =
  let vtbl = if vtbl == nil: new QPointerEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPointerEventVTable](fcQPointerEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQPointerEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQPointerEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQPointerEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQPointerEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQPointerEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQPointerEvent_vtable_callback_setAccepted
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), dev.h, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, points: openArray[gen_qeventpoint_types.QEventPoint],
    vtbl: ref QPointerEventVTable = nil): gen_qevent_types.QPointerEvent =
  var points_CArray = newSeq[pointer](len(points))
  for i in 0..<len(points):
    points_CArray[i] = points[i].h

  let vtbl = if vtbl == nil: new QPointerEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPointerEventVTable](fcQPointerEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQPointerEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQPointerEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQPointerEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQPointerEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQPointerEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQPointerEvent_vtable_callback_setAccepted
  gen_qevent_types.QPointerEvent(h: fcQPointerEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), dev.h, cint(modifiers), struct_miqt_array(len: csize_t(len(points)), data: if len(points) == 0: nil else: addr(points_CArray[0]))), owned: true)

const cQPointerEvent_mvtbl = cQPointerEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPointerEvent()[])](self.fcQPointerEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQPointerEvent_method_callback_clone,
  setTimestamp: fcQPointerEvent_method_callback_setTimestamp,
  isBeginEvent: fcQPointerEvent_method_callback_isBeginEvent,
  isUpdateEvent: fcQPointerEvent_method_callback_isUpdateEvent,
  isEndEvent: fcQPointerEvent_method_callback_isEndEvent,
  setAccepted: fcQPointerEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQPointerEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPointerEvent_new(addr(cQPointerEvent_mvtbl), addr(inst[]), cint(typeVal), dev.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint,
    inst: VirtualQPointerEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPointerEvent_new2(addr(cQPointerEvent_mvtbl), addr(inst[]), cint(typeVal), dev.h, cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QPointerEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, points: openArray[gen_qeventpoint_types.QEventPoint],
    inst: VirtualQPointerEvent) =
  var points_CArray = newSeq[pointer](len(points))
  for i in 0..<len(points):
    points_CArray[i] = points[i].h

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPointerEvent_new3(addr(cQPointerEvent_mvtbl), addr(inst[]), cint(typeVal), dev.h, cint(modifiers), struct_miqt_array(len: csize_t(len(points)), data: if len(points) == 0: nil else: addr(points_CArray[0])))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QSinglePointEvent): gen_qevent_types.QSinglePointEvent =
  gen_qevent_types.QSinglePointEvent(h: fcQSinglePointEvent_clone(self.h), owned: false)

proc button*(self: gen_qevent_types.QSinglePointEvent): cint =
  cint(fcQSinglePointEvent_button(self.h))

proc buttons*(self: gen_qevent_types.QSinglePointEvent): cint =
  cint(fcQSinglePointEvent_buttons(self.h))

proc position*(self: gen_qevent_types.QSinglePointEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQSinglePointEvent_position(self.h), owned: true)

proc scenePosition*(self: gen_qevent_types.QSinglePointEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQSinglePointEvent_scenePosition(self.h), owned: true)

proc globalPosition*(self: gen_qevent_types.QSinglePointEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQSinglePointEvent_globalPosition(self.h), owned: true)

proc isBeginEvent*(self: gen_qevent_types.QSinglePointEvent): bool =
  fcQSinglePointEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QSinglePointEvent): bool =
  fcQSinglePointEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QSinglePointEvent): bool =
  fcQSinglePointEvent_isEndEvent(self.h)

proc exclusivePointGrabber*(self: gen_qevent_types.QSinglePointEvent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSinglePointEvent_exclusivePointGrabber(self.h), owned: false)

proc setExclusivePointGrabber*(self: gen_qevent_types.QSinglePointEvent, exclusiveGrabber: gen_qobject_types.QObject): void =
  fcQSinglePointEvent_setExclusivePointGrabber(self.h, exclusiveGrabber.h)

proc staticMetaObject*(_: type gen_qevent_types.QSinglePointEvent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSinglePointEvent_staticMetaObject())
proc clone*(self: gen_qevent_types.QEnterEvent): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_clone(self.h), owned: false)

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
  gen_qpoint_types.QPointF(h: fcQEnterEvent_localPos(self.h), owned: true)

proc windowPos*(self: gen_qevent_types.QEnterEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_windowPos(self.h), owned: true)

proc screenPos*(self: gen_qevent_types.QEnterEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_screenPos(self.h), owned: true)

type QEnterEventcloneProc* = proc(self: QEnterEvent): gen_qevent_types.QEnterEvent {.raises: [], gcsafe.}
type QEnterEventisBeginEventProc* = proc(self: QEnterEvent): bool {.raises: [], gcsafe.}
type QEnterEventisUpdateEventProc* = proc(self: QEnterEvent): bool {.raises: [], gcsafe.}
type QEnterEventisEndEventProc* = proc(self: QEnterEvent): bool {.raises: [], gcsafe.}
type QEnterEventsetTimestampProc* = proc(self: QEnterEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QEnterEventsetAcceptedProc* = proc(self: QEnterEvent, accepted: bool): void {.raises: [], gcsafe.}

type QEnterEventVTable* {.inheritable, pure.} = object
  vtbl: cQEnterEventVTable
  clone*: QEnterEventcloneProc
  isBeginEvent*: QEnterEventisBeginEventProc
  isUpdateEvent*: QEnterEventisUpdateEventProc
  isEndEvent*: QEnterEventisEndEventProc
  setTimestamp*: QEnterEventsetTimestampProc
  setAccepted*: QEnterEventsetAcceptedProc

proc QEnterEventclone*(self: gen_qevent_types.QEnterEvent): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_virtualbase_clone(self.h), owned: false)

proc QEnterEventisBeginEvent*(self: gen_qevent_types.QEnterEvent): bool =
  fcQEnterEvent_virtualbase_isBeginEvent(self.h)

proc QEnterEventisUpdateEvent*(self: gen_qevent_types.QEnterEvent): bool =
  fcQEnterEvent_virtualbase_isUpdateEvent(self.h)

proc QEnterEventisEndEvent*(self: gen_qevent_types.QEnterEvent): bool =
  fcQEnterEvent_virtualbase_isEndEvent(self.h)

proc QEnterEventsetTimestamp*(self: gen_qevent_types.QEnterEvent, timestamp: culonglong): void =
  fcQEnterEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QEnterEventsetAccepted*(self: gen_qevent_types.QEnterEvent, accepted: bool): void =
  fcQEnterEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQEnterEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](fcQEnterEvent_vdata(self))
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQEnterEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](fcQEnterEvent_vdata(self))
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQEnterEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](fcQEnterEvent_vdata(self))
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQEnterEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](fcQEnterEvent_vdata(self))
  let self = QEnterEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQEnterEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](fcQEnterEvent_vdata(self))
  let self = QEnterEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQEnterEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QEnterEventVTable](fcQEnterEvent_vdata(self))
  let self = QEnterEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQEnterEvent* {.inheritable.} = ref object of QEnterEvent
  vtbl*: cQEnterEventVTable

method clone*(self: VirtualQEnterEvent): gen_qevent_types.QEnterEvent {.base.} =
  QEnterEventclone(self[])
method isBeginEvent*(self: VirtualQEnterEvent): bool {.base.} =
  QEnterEventisBeginEvent(self[])
method isUpdateEvent*(self: VirtualQEnterEvent): bool {.base.} =
  QEnterEventisUpdateEvent(self[])
method isEndEvent*(self: VirtualQEnterEvent): bool {.base.} =
  QEnterEventisEndEvent(self[])
method setTimestamp*(self: VirtualQEnterEvent, timestamp: culonglong): void {.base.} =
  QEnterEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQEnterEvent, accepted: bool): void {.base.} =
  QEnterEventsetAccepted(self[], accepted)

proc fcQEnterEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQEnterEvent](fcQEnterEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQEnterEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQEnterEvent](fcQEnterEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQEnterEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQEnterEvent](fcQEnterEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQEnterEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQEnterEvent](fcQEnterEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQEnterEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQEnterEvent](fcQEnterEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQEnterEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQEnterEvent](fcQEnterEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QEnterEvent,
    localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF,
    vtbl: ref QEnterEventVTable = nil): gen_qevent_types.QEnterEvent =
  let vtbl = if vtbl == nil: new QEnterEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QEnterEventVTable](fcQEnterEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQEnterEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQEnterEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQEnterEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQEnterEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQEnterEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQEnterEvent_vtable_callback_setAccepted
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), localPos.h, scenePos.h, globalPos.h), owned: true)

proc create*(T: type gen_qevent_types.QEnterEvent,
    localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QEnterEventVTable = nil): gen_qevent_types.QEnterEvent =
  let vtbl = if vtbl == nil: new QEnterEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QEnterEventVTable](fcQEnterEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQEnterEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQEnterEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQEnterEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQEnterEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQEnterEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQEnterEvent_vtable_callback_setAccepted
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), localPos.h, scenePos.h, globalPos.h, device.h), owned: true)

const cQEnterEvent_mvtbl = cQEnterEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQEnterEvent()[])](self.fcQEnterEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQEnterEvent_method_callback_clone,
  isBeginEvent: fcQEnterEvent_method_callback_isBeginEvent,
  isUpdateEvent: fcQEnterEvent_method_callback_isUpdateEvent,
  isEndEvent: fcQEnterEvent_method_callback_isEndEvent,
  setTimestamp: fcQEnterEvent_method_callback_setTimestamp,
  setAccepted: fcQEnterEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QEnterEvent,
    localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF,
    inst: VirtualQEnterEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQEnterEvent_new(addr(cQEnterEvent_mvtbl), addr(inst[]), localPos.h, scenePos.h, globalPos.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QEnterEvent,
    localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQEnterEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQEnterEvent_new2(addr(cQEnterEvent_mvtbl), addr(inst[]), localPos.h, scenePos.h, globalPos.h, device.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QMouseEvent): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_clone(self.h), owned: false)

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
  gen_qpoint_types.QPointF(h: fcQMouseEvent_localPos(self.h), owned: true)

proc windowPos*(self: gen_qevent_types.QMouseEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_windowPos(self.h), owned: true)

proc screenPos*(self: gen_qevent_types.QMouseEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_screenPos(self.h), owned: true)

proc source*(self: gen_qevent_types.QMouseEvent): cint =
  cint(fcQMouseEvent_source(self.h))

proc flags*(self: gen_qevent_types.QMouseEvent): cint =
  cint(fcQMouseEvent_flags(self.h))

type QMouseEventcloneProc* = proc(self: QMouseEvent): gen_qevent_types.QMouseEvent {.raises: [], gcsafe.}
type QMouseEventisBeginEventProc* = proc(self: QMouseEvent): bool {.raises: [], gcsafe.}
type QMouseEventisUpdateEventProc* = proc(self: QMouseEvent): bool {.raises: [], gcsafe.}
type QMouseEventisEndEventProc* = proc(self: QMouseEvent): bool {.raises: [], gcsafe.}
type QMouseEventsetTimestampProc* = proc(self: QMouseEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QMouseEventsetAcceptedProc* = proc(self: QMouseEvent, accepted: bool): void {.raises: [], gcsafe.}

type QMouseEventVTable* {.inheritable, pure.} = object
  vtbl: cQMouseEventVTable
  clone*: QMouseEventcloneProc
  isBeginEvent*: QMouseEventisBeginEventProc
  isUpdateEvent*: QMouseEventisUpdateEventProc
  isEndEvent*: QMouseEventisEndEventProc
  setTimestamp*: QMouseEventsetTimestampProc
  setAccepted*: QMouseEventsetAcceptedProc

proc QMouseEventclone*(self: gen_qevent_types.QMouseEvent): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_virtualbase_clone(self.h), owned: false)

proc QMouseEventisBeginEvent*(self: gen_qevent_types.QMouseEvent): bool =
  fcQMouseEvent_virtualbase_isBeginEvent(self.h)

proc QMouseEventisUpdateEvent*(self: gen_qevent_types.QMouseEvent): bool =
  fcQMouseEvent_virtualbase_isUpdateEvent(self.h)

proc QMouseEventisEndEvent*(self: gen_qevent_types.QMouseEvent): bool =
  fcQMouseEvent_virtualbase_isEndEvent(self.h)

proc QMouseEventsetTimestamp*(self: gen_qevent_types.QMouseEvent, timestamp: culonglong): void =
  fcQMouseEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QMouseEventsetAccepted*(self: gen_qevent_types.QMouseEvent, accepted: bool): void =
  fcQMouseEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQMouseEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](fcQMouseEvent_vdata(self))
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMouseEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](fcQMouseEvent_vdata(self))
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQMouseEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](fcQMouseEvent_vdata(self))
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQMouseEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](fcQMouseEvent_vdata(self))
  let self = QMouseEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQMouseEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](fcQMouseEvent_vdata(self))
  let self = QMouseEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQMouseEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMouseEventVTable](fcQMouseEvent_vdata(self))
  let self = QMouseEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQMouseEvent* {.inheritable.} = ref object of QMouseEvent
  vtbl*: cQMouseEventVTable

method clone*(self: VirtualQMouseEvent): gen_qevent_types.QMouseEvent {.base.} =
  QMouseEventclone(self[])
method isBeginEvent*(self: VirtualQMouseEvent): bool {.base.} =
  QMouseEventisBeginEvent(self[])
method isUpdateEvent*(self: VirtualQMouseEvent): bool {.base.} =
  QMouseEventisUpdateEvent(self[])
method isEndEvent*(self: VirtualQMouseEvent): bool {.base.} =
  QMouseEventisEndEvent(self[])
method setTimestamp*(self: VirtualQMouseEvent, timestamp: culonglong): void {.base.} =
  QMouseEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQMouseEvent, accepted: bool): void {.base.} =
  QMouseEventsetAccepted(self[], accepted)

proc fcQMouseEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMouseEvent](fcQMouseEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMouseEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMouseEvent](fcQMouseEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQMouseEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMouseEvent](fcQMouseEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQMouseEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMouseEvent](fcQMouseEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQMouseEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQMouseEvent](fcQMouseEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQMouseEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQMouseEvent](fcQMouseEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new5(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers), device.h), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new6(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new7(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QMouseEventVTable = nil): gen_qevent_types.QMouseEvent =
  let vtbl = if vtbl == nil: new QMouseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMouseEventVTable](fcQMouseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMouseEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQMouseEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQMouseEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQMouseEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQMouseEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMouseEvent_vtable_callback_setAccepted
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new8(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source), device.h), owned: true)

const cQMouseEvent_mvtbl = cQMouseEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMouseEvent()[])](self.fcQMouseEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQMouseEvent_method_callback_clone,
  isBeginEvent: fcQMouseEvent_method_callback_isBeginEvent,
  isUpdateEvent: fcQMouseEvent_method_callback_isUpdateEvent,
  isEndEvent: fcQMouseEvent_method_callback_isEndEvent,
  setTimestamp: fcQMouseEvent_method_callback_setTimestamp,
  setAccepted: fcQMouseEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new2(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new3(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new4(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new5(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers), device.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new6(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new7(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), device.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQMouseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMouseEvent_new8(addr(cQMouseEvent_mvtbl), addr(inst[]), cint(typeVal), localPos.h, scenePos.h, globalPos.h, cint(button), cint(buttons), cint(modifiers), cint(source), device.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QHoverEvent): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_clone(self.h), owned: false)

proc pos*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHoverEvent_pos(self.h), owned: true)

proc posF*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQHoverEvent_posF(self.h), owned: true)

proc isUpdateEvent*(self: gen_qevent_types.QHoverEvent): bool =
  fcQHoverEvent_isUpdateEvent(self.h)

proc oldPos*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHoverEvent_oldPos(self.h), owned: true)

proc oldPosF*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQHoverEvent_oldPosF(self.h), owned: true)

type QHoverEventcloneProc* = proc(self: QHoverEvent): gen_qevent_types.QHoverEvent {.raises: [], gcsafe.}
type QHoverEventisUpdateEventProc* = proc(self: QHoverEvent): bool {.raises: [], gcsafe.}
type QHoverEventisBeginEventProc* = proc(self: QHoverEvent): bool {.raises: [], gcsafe.}
type QHoverEventisEndEventProc* = proc(self: QHoverEvent): bool {.raises: [], gcsafe.}
type QHoverEventsetTimestampProc* = proc(self: QHoverEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QHoverEventsetAcceptedProc* = proc(self: QHoverEvent, accepted: bool): void {.raises: [], gcsafe.}

type QHoverEventVTable* {.inheritable, pure.} = object
  vtbl: cQHoverEventVTable
  clone*: QHoverEventcloneProc
  isUpdateEvent*: QHoverEventisUpdateEventProc
  isBeginEvent*: QHoverEventisBeginEventProc
  isEndEvent*: QHoverEventisEndEventProc
  setTimestamp*: QHoverEventsetTimestampProc
  setAccepted*: QHoverEventsetAcceptedProc

proc QHoverEventclone*(self: gen_qevent_types.QHoverEvent): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_virtualbase_clone(self.h), owned: false)

proc QHoverEventisUpdateEvent*(self: gen_qevent_types.QHoverEvent): bool =
  fcQHoverEvent_virtualbase_isUpdateEvent(self.h)

proc QHoverEventisBeginEvent*(self: gen_qevent_types.QHoverEvent): bool =
  fcQHoverEvent_virtualbase_isBeginEvent(self.h)

proc QHoverEventisEndEvent*(self: gen_qevent_types.QHoverEvent): bool =
  fcQHoverEvent_virtualbase_isEndEvent(self.h)

proc QHoverEventsetTimestamp*(self: gen_qevent_types.QHoverEvent, timestamp: culonglong): void =
  fcQHoverEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QHoverEventsetAccepted*(self: gen_qevent_types.QHoverEvent, accepted: bool): void =
  fcQHoverEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQHoverEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](fcQHoverEvent_vdata(self))
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHoverEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](fcQHoverEvent_vdata(self))
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQHoverEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](fcQHoverEvent_vdata(self))
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQHoverEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](fcQHoverEvent_vdata(self))
  let self = QHoverEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQHoverEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](fcQHoverEvent_vdata(self))
  let self = QHoverEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQHoverEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QHoverEventVTable](fcQHoverEvent_vdata(self))
  let self = QHoverEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQHoverEvent* {.inheritable.} = ref object of QHoverEvent
  vtbl*: cQHoverEventVTable

method clone*(self: VirtualQHoverEvent): gen_qevent_types.QHoverEvent {.base.} =
  QHoverEventclone(self[])
method isUpdateEvent*(self: VirtualQHoverEvent): bool {.base.} =
  QHoverEventisUpdateEvent(self[])
method isBeginEvent*(self: VirtualQHoverEvent): bool {.base.} =
  QHoverEventisBeginEvent(self[])
method isEndEvent*(self: VirtualQHoverEvent): bool {.base.} =
  QHoverEventisEndEvent(self[])
method setTimestamp*(self: VirtualQHoverEvent, timestamp: culonglong): void {.base.} =
  QHoverEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQHoverEvent, accepted: bool): void {.base.} =
  QHoverEventsetAccepted(self[], accepted)

proc fcQHoverEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHoverEvent](fcQHoverEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHoverEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHoverEvent](fcQHoverEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQHoverEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHoverEvent](fcQHoverEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQHoverEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHoverEvent](fcQHoverEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQHoverEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQHoverEvent](fcQHoverEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQHoverEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQHoverEvent](fcQHoverEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](fcQHoverEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHoverEvent_vtable_callback_clone
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQHoverEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQHoverEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQHoverEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQHoverEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHoverEvent_vtable_callback_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h), owned: true)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](fcQHoverEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHoverEvent_vtable_callback_clone
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQHoverEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQHoverEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQHoverEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQHoverEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHoverEvent_vtable_callback_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), pos.h, oldPos.h), owned: true)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](fcQHoverEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHoverEvent_vtable_callback_clone
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQHoverEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQHoverEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQHoverEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQHoverEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHoverEvent_vtable_callback_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](fcQHoverEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHoverEvent_vtable_callback_clone
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQHoverEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQHoverEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQHoverEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQHoverEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHoverEvent_vtable_callback_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers), device.h), owned: true)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](fcQHoverEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHoverEvent_vtable_callback_clone
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQHoverEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQHoverEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQHoverEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQHoverEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHoverEvent_vtable_callback_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new5(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), pos.h, oldPos.h, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QHoverEventVTable = nil): gen_qevent_types.QHoverEvent =
  let vtbl = if vtbl == nil: new QHoverEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHoverEventVTable](fcQHoverEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHoverEvent_vtable_callback_clone
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQHoverEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQHoverEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQHoverEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQHoverEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHoverEvent_vtable_callback_setAccepted
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new6(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), pos.h, oldPos.h, cint(modifiers), device.h), owned: true)

const cQHoverEvent_mvtbl = cQHoverEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQHoverEvent()[])](self.fcQHoverEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQHoverEvent_method_callback_clone,
  isUpdateEvent: fcQHoverEvent_method_callback_isUpdateEvent,
  isBeginEvent: fcQHoverEvent_method_callback_isBeginEvent,
  isEndEvent: fcQHoverEvent_method_callback_isEndEvent,
  setTimestamp: fcQHoverEvent_method_callback_setTimestamp,
  setAccepted: fcQHoverEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF,
    inst: VirtualQHoverEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHoverEvent_new(addr(cQHoverEvent_mvtbl), addr(inst[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF,
    inst: VirtualQHoverEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHoverEvent_new2(addr(cQHoverEvent_mvtbl), addr(inst[]), cint(typeVal), pos.h, oldPos.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint,
    inst: VirtualQHoverEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHoverEvent_new3(addr(cQHoverEvent_mvtbl), addr(inst[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQHoverEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHoverEvent_new4(addr(cQHoverEvent_mvtbl), addr(inst[]), cint(typeVal), scenePos.h, globalPos.h, oldPos.h, cint(modifiers), device.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint,
    inst: VirtualQHoverEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHoverEvent_new5(addr(cQHoverEvent_mvtbl), addr(inst[]), cint(typeVal), pos.h, oldPos.h, cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQHoverEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHoverEvent_new6(addr(cQHoverEvent_mvtbl), addr(inst[]), cint(typeVal), pos.h, oldPos.h, cint(modifiers), device.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QWheelEvent): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_clone(self.h), owned: false)

proc pixelDelta*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_pixelDelta(self.h), owned: true)

proc angleDelta*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_angleDelta(self.h), owned: true)

proc phase*(self: gen_qevent_types.QWheelEvent): cint =
  cint(fcQWheelEvent_phase(self.h))

proc inverted*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_inverted(self.h)

proc isInverted*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_isInverted(self.h)

proc hasPixelDelta*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_hasPixelDelta(self.h)

proc isBeginEvent*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_isEndEvent(self.h)

proc source*(self: gen_qevent_types.QWheelEvent): cint =
  cint(fcQWheelEvent_source(self.h))

type QWheelEventcloneProc* = proc(self: QWheelEvent): gen_qevent_types.QWheelEvent {.raises: [], gcsafe.}
type QWheelEventisBeginEventProc* = proc(self: QWheelEvent): bool {.raises: [], gcsafe.}
type QWheelEventisUpdateEventProc* = proc(self: QWheelEvent): bool {.raises: [], gcsafe.}
type QWheelEventisEndEventProc* = proc(self: QWheelEvent): bool {.raises: [], gcsafe.}
type QWheelEventsetTimestampProc* = proc(self: QWheelEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QWheelEventsetAcceptedProc* = proc(self: QWheelEvent, accepted: bool): void {.raises: [], gcsafe.}

type QWheelEventVTable* {.inheritable, pure.} = object
  vtbl: cQWheelEventVTable
  clone*: QWheelEventcloneProc
  isBeginEvent*: QWheelEventisBeginEventProc
  isUpdateEvent*: QWheelEventisUpdateEventProc
  isEndEvent*: QWheelEventisEndEventProc
  setTimestamp*: QWheelEventsetTimestampProc
  setAccepted*: QWheelEventsetAcceptedProc

proc QWheelEventclone*(self: gen_qevent_types.QWheelEvent): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_virtualbase_clone(self.h), owned: false)

proc QWheelEventisBeginEvent*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_virtualbase_isBeginEvent(self.h)

proc QWheelEventisUpdateEvent*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_virtualbase_isUpdateEvent(self.h)

proc QWheelEventisEndEvent*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_virtualbase_isEndEvent(self.h)

proc QWheelEventsetTimestamp*(self: gen_qevent_types.QWheelEvent, timestamp: culonglong): void =
  fcQWheelEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QWheelEventsetAccepted*(self: gen_qevent_types.QWheelEvent, accepted: bool): void =
  fcQWheelEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQWheelEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](fcQWheelEvent_vdata(self))
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWheelEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](fcQWheelEvent_vdata(self))
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQWheelEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](fcQWheelEvent_vdata(self))
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQWheelEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](fcQWheelEvent_vdata(self))
  let self = QWheelEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQWheelEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](fcQWheelEvent_vdata(self))
  let self = QWheelEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQWheelEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWheelEventVTable](fcQWheelEvent_vdata(self))
  let self = QWheelEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQWheelEvent* {.inheritable.} = ref object of QWheelEvent
  vtbl*: cQWheelEventVTable

method clone*(self: VirtualQWheelEvent): gen_qevent_types.QWheelEvent {.base.} =
  QWheelEventclone(self[])
method isBeginEvent*(self: VirtualQWheelEvent): bool {.base.} =
  QWheelEventisBeginEvent(self[])
method isUpdateEvent*(self: VirtualQWheelEvent): bool {.base.} =
  QWheelEventisUpdateEvent(self[])
method isEndEvent*(self: VirtualQWheelEvent): bool {.base.} =
  QWheelEventisEndEvent(self[])
method setTimestamp*(self: VirtualQWheelEvent, timestamp: culonglong): void {.base.} =
  QWheelEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQWheelEvent, accepted: bool): void {.base.} =
  QWheelEventsetAccepted(self[], accepted)

proc fcQWheelEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWheelEvent](fcQWheelEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWheelEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWheelEvent](fcQWheelEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQWheelEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWheelEvent](fcQWheelEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQWheelEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWheelEvent](fcQWheelEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQWheelEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQWheelEvent](fcQWheelEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQWheelEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQWheelEvent](fcQWheelEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool,
    vtbl: ref QWheelEventVTable = nil): gen_qevent_types.QWheelEvent =
  let vtbl = if vtbl == nil: new QWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWheelEventVTable](fcQWheelEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQWheelEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQWheelEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQWheelEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQWheelEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQWheelEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQWheelEvent_vtable_callback_setAccepted
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint,
    vtbl: ref QWheelEventVTable = nil): gen_qevent_types.QWheelEvent =
  let vtbl = if vtbl == nil: new QWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWheelEventVTable](fcQWheelEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQWheelEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQWheelEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQWheelEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQWheelEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQWheelEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQWheelEvent_vtable_callback_setAccepted
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QWheelEventVTable = nil): gen_qevent_types.QWheelEvent =
  let vtbl = if vtbl == nil: new QWheelEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWheelEventVTable](fcQWheelEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQWheelEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQWheelEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQWheelEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQWheelEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQWheelEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQWheelEvent_vtable_callback_setAccepted
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source), device.h), owned: true)

const cQWheelEvent_mvtbl = cQWheelEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWheelEvent()[])](self.fcQWheelEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQWheelEvent_method_callback_clone,
  isBeginEvent: fcQWheelEvent_method_callback_isBeginEvent,
  isUpdateEvent: fcQWheelEvent_method_callback_isUpdateEvent,
  isEndEvent: fcQWheelEvent_method_callback_isEndEvent,
  setTimestamp: fcQWheelEvent_method_callback_setTimestamp,
  setAccepted: fcQWheelEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool,
    inst: VirtualQWheelEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWheelEvent_new(addr(cQWheelEvent_mvtbl), addr(inst[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint,
    inst: VirtualQWheelEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWheelEvent_new2(addr(cQWheelEvent_mvtbl), addr(inst[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQWheelEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWheelEvent_new3(addr(cQWheelEvent_mvtbl), addr(inst[]), pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source), device.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qevent_types.QWheelEvent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWheelEvent_staticMetaObject())
proc clone*(self: gen_qevent_types.QTabletEvent): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_clone(self.h), owned: false)

proc pos*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTabletEvent_pos(self.h), owned: true)

proc globalPos*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTabletEvent_globalPos(self.h), owned: true)

proc posF*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTabletEvent_posF(self.h), owned: true)

proc globalPosF*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTabletEvent_globalPosF(self.h), owned: true)

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

proc uniqueId*(self: gen_qevent_types.QTabletEvent): clonglong =
  fcQTabletEvent_uniqueId(self.h)

proc pressure*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_pressure(self.h)

proc rotation*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_rotation(self.h)

proc z*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_z(self.h)

proc tangentialPressure*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_tangentialPressure(self.h)

proc xTilt*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_xTilt(self.h)

proc yTilt*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_yTilt(self.h)

type QTabletEventcloneProc* = proc(self: QTabletEvent): gen_qevent_types.QTabletEvent {.raises: [], gcsafe.}
type QTabletEventisBeginEventProc* = proc(self: QTabletEvent): bool {.raises: [], gcsafe.}
type QTabletEventisUpdateEventProc* = proc(self: QTabletEvent): bool {.raises: [], gcsafe.}
type QTabletEventisEndEventProc* = proc(self: QTabletEvent): bool {.raises: [], gcsafe.}
type QTabletEventsetTimestampProc* = proc(self: QTabletEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QTabletEventsetAcceptedProc* = proc(self: QTabletEvent, accepted: bool): void {.raises: [], gcsafe.}

type QTabletEventVTable* {.inheritable, pure.} = object
  vtbl: cQTabletEventVTable
  clone*: QTabletEventcloneProc
  isBeginEvent*: QTabletEventisBeginEventProc
  isUpdateEvent*: QTabletEventisUpdateEventProc
  isEndEvent*: QTabletEventisEndEventProc
  setTimestamp*: QTabletEventsetTimestampProc
  setAccepted*: QTabletEventsetAcceptedProc

proc QTabletEventclone*(self: gen_qevent_types.QTabletEvent): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_virtualbase_clone(self.h), owned: false)

proc QTabletEventisBeginEvent*(self: gen_qevent_types.QTabletEvent): bool =
  fcQTabletEvent_virtualbase_isBeginEvent(self.h)

proc QTabletEventisUpdateEvent*(self: gen_qevent_types.QTabletEvent): bool =
  fcQTabletEvent_virtualbase_isUpdateEvent(self.h)

proc QTabletEventisEndEvent*(self: gen_qevent_types.QTabletEvent): bool =
  fcQTabletEvent_virtualbase_isEndEvent(self.h)

proc QTabletEventsetTimestamp*(self: gen_qevent_types.QTabletEvent, timestamp: culonglong): void =
  fcQTabletEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QTabletEventsetAccepted*(self: gen_qevent_types.QTabletEvent, accepted: bool): void =
  fcQTabletEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQTabletEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](fcQTabletEvent_vdata(self))
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabletEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](fcQTabletEvent_vdata(self))
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQTabletEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](fcQTabletEvent_vdata(self))
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQTabletEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](fcQTabletEvent_vdata(self))
  let self = QTabletEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQTabletEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](fcQTabletEvent_vdata(self))
  let self = QTabletEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQTabletEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTabletEventVTable](fcQTabletEvent_vdata(self))
  let self = QTabletEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQTabletEvent* {.inheritable.} = ref object of QTabletEvent
  vtbl*: cQTabletEventVTable

method clone*(self: VirtualQTabletEvent): gen_qevent_types.QTabletEvent {.base.} =
  QTabletEventclone(self[])
method isBeginEvent*(self: VirtualQTabletEvent): bool {.base.} =
  QTabletEventisBeginEvent(self[])
method isUpdateEvent*(self: VirtualQTabletEvent): bool {.base.} =
  QTabletEventisUpdateEvent(self[])
method isEndEvent*(self: VirtualQTabletEvent): bool {.base.} =
  QTabletEventisEndEvent(self[])
method setTimestamp*(self: VirtualQTabletEvent, timestamp: culonglong): void {.base.} =
  QTabletEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQTabletEvent, accepted: bool): void {.base.} =
  QTabletEventsetAccepted(self[], accepted)

proc fcQTabletEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTabletEvent](fcQTabletEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTabletEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTabletEvent](fcQTabletEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQTabletEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTabletEvent](fcQTabletEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQTabletEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTabletEvent](fcQTabletEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQTabletEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQTabletEvent](fcQTabletEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQTabletEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQTabletEvent](fcQTabletEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QTabletEvent,
    t: cint, device: gen_qpointingdevice_types.QPointingDevice, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint,
    vtbl: ref QTabletEventVTable = nil): gen_qevent_types.QTabletEvent =
  let vtbl = if vtbl == nil: new QTabletEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTabletEventVTable](fcQTabletEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQTabletEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQTabletEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQTabletEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQTabletEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQTabletEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQTabletEvent_vtable_callback_setAccepted
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(t), device.h, pos.h, globalPos.h, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), cint(button), cint(buttons)), owned: true)

const cQTabletEvent_mvtbl = cQTabletEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTabletEvent()[])](self.fcQTabletEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQTabletEvent_method_callback_clone,
  isBeginEvent: fcQTabletEvent_method_callback_isBeginEvent,
  isUpdateEvent: fcQTabletEvent_method_callback_isUpdateEvent,
  isEndEvent: fcQTabletEvent_method_callback_isEndEvent,
  setTimestamp: fcQTabletEvent_method_callback_setTimestamp,
  setAccepted: fcQTabletEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QTabletEvent,
    t: cint, device: gen_qpointingdevice_types.QPointingDevice, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pressure: float64, xTilt: float32, yTilt: float32, tangentialPressure: float32, rotation: float64, z: float32, keyState: cint, button: cint, buttons: cint,
    inst: VirtualQTabletEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTabletEvent_new(addr(cQTabletEvent_mvtbl), addr(inst[]), cint(t), device.h, pos.h, globalPos.h, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), cint(button), cint(buttons))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QNativeGestureEvent): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_clone(self.h), owned: false)

proc gestureType*(self: gen_qevent_types.QNativeGestureEvent): cint =
  cint(fcQNativeGestureEvent_gestureType(self.h))

proc fingerCount*(self: gen_qevent_types.QNativeGestureEvent): cint =
  fcQNativeGestureEvent_fingerCount(self.h)

proc value*(self: gen_qevent_types.QNativeGestureEvent): float64 =
  fcQNativeGestureEvent_value(self.h)

proc delta*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_delta(self.h), owned: true)

proc pos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQNativeGestureEvent_pos(self.h), owned: true)

proc globalPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQNativeGestureEvent_globalPos(self.h), owned: true)

proc localPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_localPos(self.h), owned: true)

proc windowPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_windowPos(self.h), owned: true)

proc screenPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_screenPos(self.h), owned: true)

type QNativeGestureEventcloneProc* = proc(self: QNativeGestureEvent): gen_qevent_types.QNativeGestureEvent {.raises: [], gcsafe.}
type QNativeGestureEventisBeginEventProc* = proc(self: QNativeGestureEvent): bool {.raises: [], gcsafe.}
type QNativeGestureEventisUpdateEventProc* = proc(self: QNativeGestureEvent): bool {.raises: [], gcsafe.}
type QNativeGestureEventisEndEventProc* = proc(self: QNativeGestureEvent): bool {.raises: [], gcsafe.}
type QNativeGestureEventsetTimestampProc* = proc(self: QNativeGestureEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QNativeGestureEventsetAcceptedProc* = proc(self: QNativeGestureEvent, accepted: bool): void {.raises: [], gcsafe.}

type QNativeGestureEventVTable* {.inheritable, pure.} = object
  vtbl: cQNativeGestureEventVTable
  clone*: QNativeGestureEventcloneProc
  isBeginEvent*: QNativeGestureEventisBeginEventProc
  isUpdateEvent*: QNativeGestureEventisUpdateEventProc
  isEndEvent*: QNativeGestureEventisEndEventProc
  setTimestamp*: QNativeGestureEventsetTimestampProc
  setAccepted*: QNativeGestureEventsetAcceptedProc

proc QNativeGestureEventclone*(self: gen_qevent_types.QNativeGestureEvent): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_virtualbase_clone(self.h), owned: false)

proc QNativeGestureEventisBeginEvent*(self: gen_qevent_types.QNativeGestureEvent): bool =
  fcQNativeGestureEvent_virtualbase_isBeginEvent(self.h)

proc QNativeGestureEventisUpdateEvent*(self: gen_qevent_types.QNativeGestureEvent): bool =
  fcQNativeGestureEvent_virtualbase_isUpdateEvent(self.h)

proc QNativeGestureEventisEndEvent*(self: gen_qevent_types.QNativeGestureEvent): bool =
  fcQNativeGestureEvent_virtualbase_isEndEvent(self.h)

proc QNativeGestureEventsetTimestamp*(self: gen_qevent_types.QNativeGestureEvent, timestamp: culonglong): void =
  fcQNativeGestureEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QNativeGestureEventsetAccepted*(self: gen_qevent_types.QNativeGestureEvent, accepted: bool): void =
  fcQNativeGestureEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQNativeGestureEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQNativeGestureEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQNativeGestureEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQNativeGestureEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
  let self = QNativeGestureEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQNativeGestureEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
  let self = QNativeGestureEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQNativeGestureEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
  let self = QNativeGestureEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQNativeGestureEvent* {.inheritable.} = ref object of QNativeGestureEvent
  vtbl*: cQNativeGestureEventVTable

method clone*(self: VirtualQNativeGestureEvent): gen_qevent_types.QNativeGestureEvent {.base.} =
  QNativeGestureEventclone(self[])
method isBeginEvent*(self: VirtualQNativeGestureEvent): bool {.base.} =
  QNativeGestureEventisBeginEvent(self[])
method isUpdateEvent*(self: VirtualQNativeGestureEvent): bool {.base.} =
  QNativeGestureEventisUpdateEvent(self[])
method isEndEvent*(self: VirtualQNativeGestureEvent): bool {.base.} =
  QNativeGestureEventisEndEvent(self[])
method setTimestamp*(self: VirtualQNativeGestureEvent, timestamp: culonglong): void {.base.} =
  QNativeGestureEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQNativeGestureEvent, accepted: bool): void {.base.} =
  QNativeGestureEventsetAccepted(self[], accepted)

proc fcQNativeGestureEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNativeGestureEvent](fcQNativeGestureEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQNativeGestureEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNativeGestureEvent](fcQNativeGestureEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQNativeGestureEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNativeGestureEvent](fcQNativeGestureEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQNativeGestureEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNativeGestureEvent](fcQNativeGestureEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQNativeGestureEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQNativeGestureEvent](fcQNativeGestureEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQNativeGestureEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQNativeGestureEvent](fcQNativeGestureEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, sequenceId: culonglong, intArgument: culonglong,
    vtbl: ref QNativeGestureEventVTable = nil): gen_qevent_types.QNativeGestureEvent =
  let vtbl = if vtbl == nil: new QNativeGestureEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQNativeGestureEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQNativeGestureEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQNativeGestureEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQNativeGestureEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQNativeGestureEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQNativeGestureEvent_vtable_callback_setAccepted
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), dev.h, localPos.h, scenePos.h, globalPos.h, value, sequenceId, intArgument), owned: true)

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF,
    vtbl: ref QNativeGestureEventVTable = nil): gen_qevent_types.QNativeGestureEvent =
  let vtbl = if vtbl == nil: new QNativeGestureEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQNativeGestureEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQNativeGestureEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQNativeGestureEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQNativeGestureEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQNativeGestureEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQNativeGestureEvent_vtable_callback_setAccepted
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h), owned: true)

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF, sequenceId: culonglong,
    vtbl: ref QNativeGestureEventVTable = nil): gen_qevent_types.QNativeGestureEvent =
  let vtbl = if vtbl == nil: new QNativeGestureEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNativeGestureEventVTable](fcQNativeGestureEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQNativeGestureEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQNativeGestureEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQNativeGestureEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQNativeGestureEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQNativeGestureEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQNativeGestureEvent_vtable_callback_setAccepted
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h, sequenceId), owned: true)

const cQNativeGestureEvent_mvtbl = cQNativeGestureEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNativeGestureEvent()[])](self.fcQNativeGestureEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQNativeGestureEvent_method_callback_clone,
  isBeginEvent: fcQNativeGestureEvent_method_callback_isBeginEvent,
  isUpdateEvent: fcQNativeGestureEvent_method_callback_isUpdateEvent,
  isEndEvent: fcQNativeGestureEvent_method_callback_isEndEvent,
  setTimestamp: fcQNativeGestureEvent_method_callback_setTimestamp,
  setAccepted: fcQNativeGestureEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, sequenceId: culonglong, intArgument: culonglong,
    inst: VirtualQNativeGestureEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNativeGestureEvent_new(addr(cQNativeGestureEvent_mvtbl), addr(inst[]), cint(typeVal), dev.h, localPos.h, scenePos.h, globalPos.h, value, sequenceId, intArgument)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF,
    inst: VirtualQNativeGestureEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNativeGestureEvent_new2(addr(cQNativeGestureEvent_mvtbl), addr(inst[]), cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qpointingdevice_types.QPointingDevice, fingerCount: cint, localPos: gen_qpoint_types.QPointF, scenePos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, value: float64, delta: gen_qpoint_types.QPointF, sequenceId: culonglong,
    inst: VirtualQNativeGestureEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNativeGestureEvent_new3(addr(cQNativeGestureEvent_mvtbl), addr(inst[]), cint(typeVal), dev.h, fingerCount, localPos.h, scenePos.h, globalPos.h, value, delta.h, sequenceId)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QKeyEvent): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_clone(self.h), owned: false)

proc key*(self: gen_qevent_types.QKeyEvent): cint =
  fcQKeyEvent_key(self.h)

proc matches*(self: gen_qevent_types.QKeyEvent, key: cint): bool =
  fcQKeyEvent_matches(self.h, cint(key))

proc modifiers*(self: gen_qevent_types.QKeyEvent): cint =
  cint(fcQKeyEvent_modifiers(self.h))

proc keyCombination*(self: gen_qevent_types.QKeyEvent): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyEvent_keyCombination(self.h), owned: true)

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

type QKeyEventcloneProc* = proc(self: QKeyEvent): gen_qevent_types.QKeyEvent {.raises: [], gcsafe.}
type QKeyEventsetTimestampProc* = proc(self: QKeyEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QKeyEventsetAcceptedProc* = proc(self: QKeyEvent, accepted: bool): void {.raises: [], gcsafe.}

type QKeyEventVTable* {.inheritable, pure.} = object
  vtbl: cQKeyEventVTable
  clone*: QKeyEventcloneProc
  setTimestamp*: QKeyEventsetTimestampProc
  setAccepted*: QKeyEventsetAcceptedProc

proc QKeyEventclone*(self: gen_qevent_types.QKeyEvent): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_virtualbase_clone(self.h), owned: false)

proc QKeyEventsetTimestamp*(self: gen_qevent_types.QKeyEvent, timestamp: culonglong): void =
  fcQKeyEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QKeyEventsetAccepted*(self: gen_qevent_types.QKeyEvent, accepted: bool): void =
  fcQKeyEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQKeyEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeyEventVTable](fcQKeyEvent_vdata(self))
  let self = QKeyEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQKeyEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventVTable](fcQKeyEvent_vdata(self))
  let self = QKeyEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQKeyEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventVTable](fcQKeyEvent_vdata(self))
  let self = QKeyEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQKeyEvent* {.inheritable.} = ref object of QKeyEvent
  vtbl*: cQKeyEventVTable

method clone*(self: VirtualQKeyEvent): gen_qevent_types.QKeyEvent {.base.} =
  QKeyEventclone(self[])
method setTimestamp*(self: VirtualQKeyEvent, timestamp: culonglong): void {.base.} =
  QKeyEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQKeyEvent, accepted: bool): void {.base.} =
  QKeyEventsetAccepted(self[], accepted)

proc fcQKeyEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeyEvent](fcQKeyEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQKeyEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQKeyEvent](fcQKeyEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQKeyEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQKeyEvent](fcQKeyEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char],
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char], autorep: bool,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char], autorep: bool, count: cushort,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new5(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char],
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new6(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new7(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool, count: cushort,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new8(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool, count: cushort, device: gen_qinputdevice_types.QInputDevice,
    vtbl: ref QKeyEventVTable = nil): gen_qevent_types.QKeyEvent =
  let vtbl = if vtbl == nil: new QKeyEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeyEventVTable](fcQKeyEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQKeyEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQKeyEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQKeyEvent_vtable_callback_setAccepted
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new9(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count, device.h), owned: true)

const cQKeyEvent_mvtbl = cQKeyEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQKeyEvent()[])](self.fcQKeyEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQKeyEvent_method_callback_clone,
  setTimestamp: fcQKeyEvent_method_callback_setTimestamp,
  setAccepted: fcQKeyEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint,
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint,
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new2(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char],
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new3(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char], autorep: bool,
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new4(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char], autorep: bool, count: cushort,
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new5(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char],
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new6(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool,
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new7(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool, count: cushort,
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new8(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool, count: cushort, device: gen_qinputdevice_types.QInputDevice,
    inst: VirtualQKeyEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeyEvent_new9(addr(cQKeyEvent_mvtbl), addr(inst[]), cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count, device.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QFocusEvent): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_clone(self.h), owned: false)

proc gotFocus*(self: gen_qevent_types.QFocusEvent): bool =
  fcQFocusEvent_gotFocus(self.h)

proc lostFocus*(self: gen_qevent_types.QFocusEvent): bool =
  fcQFocusEvent_lostFocus(self.h)

proc reason*(self: gen_qevent_types.QFocusEvent): cint =
  cint(fcQFocusEvent_reason(self.h))

type QFocusEventcloneProc* = proc(self: QFocusEvent): gen_qevent_types.QFocusEvent {.raises: [], gcsafe.}
type QFocusEventsetAcceptedProc* = proc(self: QFocusEvent, accepted: bool): void {.raises: [], gcsafe.}

type QFocusEventVTable* {.inheritable, pure.} = object
  vtbl: cQFocusEventVTable
  clone*: QFocusEventcloneProc
  setAccepted*: QFocusEventsetAcceptedProc

proc QFocusEventclone*(self: gen_qevent_types.QFocusEvent): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_virtualbase_clone(self.h), owned: false)

proc QFocusEventsetAccepted*(self: gen_qevent_types.QFocusEvent, accepted: bool): void =
  fcQFocusEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQFocusEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFocusEventVTable](fcQFocusEvent_vdata(self))
  let self = QFocusEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFocusEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFocusEventVTable](fcQFocusEvent_vdata(self))
  let self = QFocusEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQFocusEvent* {.inheritable.} = ref object of QFocusEvent
  vtbl*: cQFocusEventVTable

method clone*(self: VirtualQFocusEvent): gen_qevent_types.QFocusEvent {.base.} =
  QFocusEventclone(self[])
method setAccepted*(self: VirtualQFocusEvent, accepted: bool): void {.base.} =
  QFocusEventsetAccepted(self[], accepted)

proc fcQFocusEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFocusEvent](fcQFocusEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFocusEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQFocusEvent](fcQFocusEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint,
    vtbl: ref QFocusEventVTable = nil): gen_qevent_types.QFocusEvent =
  let vtbl = if vtbl == nil: new QFocusEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFocusEventVTable](fcQFocusEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQFocusEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQFocusEvent_vtable_callback_setAccepted
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal)), owned: true)

proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint, reason: cint,
    vtbl: ref QFocusEventVTable = nil): gen_qevent_types.QFocusEvent =
  let vtbl = if vtbl == nil: new QFocusEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFocusEventVTable](fcQFocusEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQFocusEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQFocusEvent_vtable_callback_setAccepted
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), cint(reason)), owned: true)

const cQFocusEvent_mvtbl = cQFocusEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFocusEvent()[])](self.fcQFocusEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQFocusEvent_method_callback_clone,
  setAccepted: fcQFocusEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint,
    inst: VirtualQFocusEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFocusEvent_new(addr(cQFocusEvent_mvtbl), addr(inst[]), cint(typeVal))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint, reason: cint,
    inst: VirtualQFocusEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFocusEvent_new2(addr(cQFocusEvent_mvtbl), addr(inst[]), cint(typeVal), cint(reason))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QPaintEvent): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_clone(self.h), owned: false)

proc rect*(self: gen_qevent_types.QPaintEvent): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPaintEvent_rect(self.h), owned: false)

proc region*(self: gen_qevent_types.QPaintEvent): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQPaintEvent_region(self.h), owned: false)

type QPaintEventcloneProc* = proc(self: QPaintEvent): gen_qevent_types.QPaintEvent {.raises: [], gcsafe.}
type QPaintEventsetAcceptedProc* = proc(self: QPaintEvent, accepted: bool): void {.raises: [], gcsafe.}

type QPaintEventVTable* {.inheritable, pure.} = object
  vtbl: cQPaintEventVTable
  clone*: QPaintEventcloneProc
  setAccepted*: QPaintEventsetAcceptedProc

proc QPaintEventclone*(self: gen_qevent_types.QPaintEvent): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_virtualbase_clone(self.h), owned: false)

proc QPaintEventsetAccepted*(self: gen_qevent_types.QPaintEvent, accepted: bool): void =
  fcQPaintEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQPaintEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPaintEventVTable](fcQPaintEvent_vdata(self))
  let self = QPaintEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPaintEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPaintEventVTable](fcQPaintEvent_vdata(self))
  let self = QPaintEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQPaintEvent* {.inheritable.} = ref object of QPaintEvent
  vtbl*: cQPaintEventVTable

method clone*(self: VirtualQPaintEvent): gen_qevent_types.QPaintEvent {.base.} =
  QPaintEventclone(self[])
method setAccepted*(self: VirtualQPaintEvent, accepted: bool): void {.base.} =
  QPaintEventsetAccepted(self[], accepted)

proc fcQPaintEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPaintEvent](fcQPaintEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPaintEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQPaintEvent](fcQPaintEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRegion: gen_qregion_types.QRegion,
    vtbl: ref QPaintEventVTable = nil): gen_qevent_types.QPaintEvent =
  let vtbl = if vtbl == nil: new QPaintEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPaintEventVTable](fcQPaintEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQPaintEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQPaintEvent_vtable_callback_setAccepted
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), paintRegion.h), owned: true)

proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRect: gen_qrect_types.QRect,
    vtbl: ref QPaintEventVTable = nil): gen_qevent_types.QPaintEvent =
  let vtbl = if vtbl == nil: new QPaintEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPaintEventVTable](fcQPaintEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQPaintEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQPaintEvent_vtable_callback_setAccepted
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), paintRect.h), owned: true)

const cQPaintEvent_mvtbl = cQPaintEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPaintEvent()[])](self.fcQPaintEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQPaintEvent_method_callback_clone,
  setAccepted: fcQPaintEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRegion: gen_qregion_types.QRegion,
    inst: VirtualQPaintEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPaintEvent_new(addr(cQPaintEvent_mvtbl), addr(inst[]), paintRegion.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRect: gen_qrect_types.QRect,
    inst: VirtualQPaintEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPaintEvent_new2(addr(cQPaintEvent_mvtbl), addr(inst[]), paintRect.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QMoveEvent): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_clone(self.h), owned: false)

proc pos*(self: gen_qevent_types.QMoveEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_pos(self.h), owned: false)

proc oldPos*(self: gen_qevent_types.QMoveEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_oldPos(self.h), owned: false)

type QMoveEventcloneProc* = proc(self: QMoveEvent): gen_qevent_types.QMoveEvent {.raises: [], gcsafe.}
type QMoveEventsetAcceptedProc* = proc(self: QMoveEvent, accepted: bool): void {.raises: [], gcsafe.}

type QMoveEventVTable* {.inheritable, pure.} = object
  vtbl: cQMoveEventVTable
  clone*: QMoveEventcloneProc
  setAccepted*: QMoveEventsetAcceptedProc

proc QMoveEventclone*(self: gen_qevent_types.QMoveEvent): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_virtualbase_clone(self.h), owned: false)

proc QMoveEventsetAccepted*(self: gen_qevent_types.QMoveEvent, accepted: bool): void =
  fcQMoveEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQMoveEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMoveEventVTable](fcQMoveEvent_vdata(self))
  let self = QMoveEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMoveEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMoveEventVTable](fcQMoveEvent_vdata(self))
  let self = QMoveEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQMoveEvent* {.inheritable.} = ref object of QMoveEvent
  vtbl*: cQMoveEventVTable

method clone*(self: VirtualQMoveEvent): gen_qevent_types.QMoveEvent {.base.} =
  QMoveEventclone(self[])
method setAccepted*(self: VirtualQMoveEvent, accepted: bool): void {.base.} =
  QMoveEventsetAccepted(self[], accepted)

proc fcQMoveEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMoveEvent](fcQMoveEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMoveEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQMoveEvent](fcQMoveEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QMoveEvent,
    pos: gen_qpoint_types.QPoint, oldPos: gen_qpoint_types.QPoint,
    vtbl: ref QMoveEventVTable = nil): gen_qevent_types.QMoveEvent =
  let vtbl = if vtbl == nil: new QMoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMoveEventVTable](fcQMoveEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQMoveEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQMoveEvent_vtable_callback_setAccepted
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, oldPos.h), owned: true)

const cQMoveEvent_mvtbl = cQMoveEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMoveEvent()[])](self.fcQMoveEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQMoveEvent_method_callback_clone,
  setAccepted: fcQMoveEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QMoveEvent,
    pos: gen_qpoint_types.QPoint, oldPos: gen_qpoint_types.QPoint,
    inst: VirtualQMoveEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMoveEvent_new(addr(cQMoveEvent_mvtbl), addr(inst[]), pos.h, oldPos.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QExposeEvent): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_clone(self.h), owned: false)

proc region*(self: gen_qevent_types.QExposeEvent): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQExposeEvent_region(self.h), owned: false)

type QExposeEventcloneProc* = proc(self: QExposeEvent): gen_qevent_types.QExposeEvent {.raises: [], gcsafe.}
type QExposeEventsetAcceptedProc* = proc(self: QExposeEvent, accepted: bool): void {.raises: [], gcsafe.}

type QExposeEventVTable* {.inheritable, pure.} = object
  vtbl: cQExposeEventVTable
  clone*: QExposeEventcloneProc
  setAccepted*: QExposeEventsetAcceptedProc

proc QExposeEventclone*(self: gen_qevent_types.QExposeEvent): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_virtualbase_clone(self.h), owned: false)

proc QExposeEventsetAccepted*(self: gen_qevent_types.QExposeEvent, accepted: bool): void =
  fcQExposeEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQExposeEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QExposeEventVTable](fcQExposeEvent_vdata(self))
  let self = QExposeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExposeEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QExposeEventVTable](fcQExposeEvent_vdata(self))
  let self = QExposeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQExposeEvent* {.inheritable.} = ref object of QExposeEvent
  vtbl*: cQExposeEventVTable

method clone*(self: VirtualQExposeEvent): gen_qevent_types.QExposeEvent {.base.} =
  QExposeEventclone(self[])
method setAccepted*(self: VirtualQExposeEvent, accepted: bool): void {.base.} =
  QExposeEventsetAccepted(self[], accepted)

proc fcQExposeEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQExposeEvent](fcQExposeEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQExposeEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQExposeEvent](fcQExposeEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QExposeEvent,
    m_region: gen_qregion_types.QRegion,
    vtbl: ref QExposeEventVTable = nil): gen_qevent_types.QExposeEvent =
  let vtbl = if vtbl == nil: new QExposeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QExposeEventVTable](fcQExposeEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQExposeEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQExposeEvent_vtable_callback_setAccepted
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), m_region.h), owned: true)

const cQExposeEvent_mvtbl = cQExposeEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQExposeEvent()[])](self.fcQExposeEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQExposeEvent_method_callback_clone,
  setAccepted: fcQExposeEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QExposeEvent,
    m_region: gen_qregion_types.QRegion,
    inst: VirtualQExposeEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQExposeEvent_new(addr(cQExposeEvent_mvtbl), addr(inst[]), m_region.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QPlatformSurfaceEvent): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_clone(self.h), owned: false)

proc surfaceEventType*(self: gen_qevent_types.QPlatformSurfaceEvent): cint =
  cint(fcQPlatformSurfaceEvent_surfaceEventType(self.h))

type QPlatformSurfaceEventcloneProc* = proc(self: QPlatformSurfaceEvent): gen_qevent_types.QPlatformSurfaceEvent {.raises: [], gcsafe.}
type QPlatformSurfaceEventsetAcceptedProc* = proc(self: QPlatformSurfaceEvent, accepted: bool): void {.raises: [], gcsafe.}

type QPlatformSurfaceEventVTable* {.inheritable, pure.} = object
  vtbl: cQPlatformSurfaceEventVTable
  clone*: QPlatformSurfaceEventcloneProc
  setAccepted*: QPlatformSurfaceEventsetAcceptedProc

proc QPlatformSurfaceEventclone*(self: gen_qevent_types.QPlatformSurfaceEvent): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_virtualbase_clone(self.h), owned: false)

proc QPlatformSurfaceEventsetAccepted*(self: gen_qevent_types.QPlatformSurfaceEvent, accepted: bool): void =
  fcQPlatformSurfaceEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQPlatformSurfaceEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPlatformSurfaceEventVTable](fcQPlatformSurfaceEvent_vdata(self))
  let self = QPlatformSurfaceEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlatformSurfaceEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPlatformSurfaceEventVTable](fcQPlatformSurfaceEvent_vdata(self))
  let self = QPlatformSurfaceEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQPlatformSurfaceEvent* {.inheritable.} = ref object of QPlatformSurfaceEvent
  vtbl*: cQPlatformSurfaceEventVTable

method clone*(self: VirtualQPlatformSurfaceEvent): gen_qevent_types.QPlatformSurfaceEvent {.base.} =
  QPlatformSurfaceEventclone(self[])
method setAccepted*(self: VirtualQPlatformSurfaceEvent, accepted: bool): void {.base.} =
  QPlatformSurfaceEventsetAccepted(self[], accepted)

proc fcQPlatformSurfaceEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPlatformSurfaceEvent](fcQPlatformSurfaceEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPlatformSurfaceEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQPlatformSurfaceEvent](fcQPlatformSurfaceEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QPlatformSurfaceEvent,
    surfaceEventType: cint,
    vtbl: ref QPlatformSurfaceEventVTable = nil): gen_qevent_types.QPlatformSurfaceEvent =
  let vtbl = if vtbl == nil: new QPlatformSurfaceEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPlatformSurfaceEventVTable](fcQPlatformSurfaceEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQPlatformSurfaceEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQPlatformSurfaceEvent_vtable_callback_setAccepted
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(surfaceEventType)), owned: true)

const cQPlatformSurfaceEvent_mvtbl = cQPlatformSurfaceEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPlatformSurfaceEvent()[])](self.fcQPlatformSurfaceEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQPlatformSurfaceEvent_method_callback_clone,
  setAccepted: fcQPlatformSurfaceEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QPlatformSurfaceEvent,
    surfaceEventType: cint,
    inst: VirtualQPlatformSurfaceEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPlatformSurfaceEvent_new(addr(cQPlatformSurfaceEvent_mvtbl), addr(inst[]), cint(surfaceEventType))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QResizeEvent): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_clone(self.h), owned: false)

proc size*(self: gen_qevent_types.QResizeEvent): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_size(self.h), owned: false)

proc oldSize*(self: gen_qevent_types.QResizeEvent): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_oldSize(self.h), owned: false)

type QResizeEventcloneProc* = proc(self: QResizeEvent): gen_qevent_types.QResizeEvent {.raises: [], gcsafe.}
type QResizeEventsetAcceptedProc* = proc(self: QResizeEvent, accepted: bool): void {.raises: [], gcsafe.}

type QResizeEventVTable* {.inheritable, pure.} = object
  vtbl: cQResizeEventVTable
  clone*: QResizeEventcloneProc
  setAccepted*: QResizeEventsetAcceptedProc

proc QResizeEventclone*(self: gen_qevent_types.QResizeEvent): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_virtualbase_clone(self.h), owned: false)

proc QResizeEventsetAccepted*(self: gen_qevent_types.QResizeEvent, accepted: bool): void =
  fcQResizeEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQResizeEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QResizeEventVTable](fcQResizeEvent_vdata(self))
  let self = QResizeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQResizeEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QResizeEventVTable](fcQResizeEvent_vdata(self))
  let self = QResizeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQResizeEvent* {.inheritable.} = ref object of QResizeEvent
  vtbl*: cQResizeEventVTable

method clone*(self: VirtualQResizeEvent): gen_qevent_types.QResizeEvent {.base.} =
  QResizeEventclone(self[])
method setAccepted*(self: VirtualQResizeEvent, accepted: bool): void {.base.} =
  QResizeEventsetAccepted(self[], accepted)

proc fcQResizeEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQResizeEvent](fcQResizeEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQResizeEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQResizeEvent](fcQResizeEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QResizeEvent,
    size: gen_qsize_types.QSize, oldSize: gen_qsize_types.QSize,
    vtbl: ref QResizeEventVTable = nil): gen_qevent_types.QResizeEvent =
  let vtbl = if vtbl == nil: new QResizeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QResizeEventVTable](fcQResizeEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQResizeEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQResizeEvent_vtable_callback_setAccepted
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), size.h, oldSize.h), owned: true)

const cQResizeEvent_mvtbl = cQResizeEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQResizeEvent()[])](self.fcQResizeEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQResizeEvent_method_callback_clone,
  setAccepted: fcQResizeEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QResizeEvent,
    size: gen_qsize_types.QSize, oldSize: gen_qsize_types.QSize,
    inst: VirtualQResizeEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQResizeEvent_new(addr(cQResizeEvent_mvtbl), addr(inst[]), size.h, oldSize.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QCloseEvent): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_clone(self.h), owned: false)

type QCloseEventcloneProc* = proc(self: QCloseEvent): gen_qevent_types.QCloseEvent {.raises: [], gcsafe.}
type QCloseEventsetAcceptedProc* = proc(self: QCloseEvent, accepted: bool): void {.raises: [], gcsafe.}

type QCloseEventVTable* {.inheritable, pure.} = object
  vtbl: cQCloseEventVTable
  clone*: QCloseEventcloneProc
  setAccepted*: QCloseEventsetAcceptedProc

proc QCloseEventclone*(self: gen_qevent_types.QCloseEvent): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_virtualbase_clone(self.h), owned: false)

proc QCloseEventsetAccepted*(self: gen_qevent_types.QCloseEvent, accepted: bool): void =
  fcQCloseEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQCloseEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCloseEventVTable](fcQCloseEvent_vdata(self))
  let self = QCloseEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCloseEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCloseEventVTable](fcQCloseEvent_vdata(self))
  let self = QCloseEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQCloseEvent* {.inheritable.} = ref object of QCloseEvent
  vtbl*: cQCloseEventVTable

method clone*(self: VirtualQCloseEvent): gen_qevent_types.QCloseEvent {.base.} =
  QCloseEventclone(self[])
method setAccepted*(self: VirtualQCloseEvent, accepted: bool): void {.base.} =
  QCloseEventsetAccepted(self[], accepted)

proc fcQCloseEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCloseEvent](fcQCloseEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCloseEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQCloseEvent](fcQCloseEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QCloseEvent,
    vtbl: ref QCloseEventVTable = nil): gen_qevent_types.QCloseEvent =
  let vtbl = if vtbl == nil: new QCloseEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCloseEventVTable](fcQCloseEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQCloseEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQCloseEvent_vtable_callback_setAccepted
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQCloseEvent_mvtbl = cQCloseEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCloseEvent()[])](self.fcQCloseEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQCloseEvent_method_callback_clone,
  setAccepted: fcQCloseEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QCloseEvent,
    inst: VirtualQCloseEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCloseEvent_new(addr(cQCloseEvent_mvtbl), addr(inst[]))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QIconDragEvent): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_clone(self.h), owned: false)

type QIconDragEventcloneProc* = proc(self: QIconDragEvent): gen_qevent_types.QIconDragEvent {.raises: [], gcsafe.}
type QIconDragEventsetAcceptedProc* = proc(self: QIconDragEvent, accepted: bool): void {.raises: [], gcsafe.}

type QIconDragEventVTable* {.inheritable, pure.} = object
  vtbl: cQIconDragEventVTable
  clone*: QIconDragEventcloneProc
  setAccepted*: QIconDragEventsetAcceptedProc

proc QIconDragEventclone*(self: gen_qevent_types.QIconDragEvent): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_virtualbase_clone(self.h), owned: false)

proc QIconDragEventsetAccepted*(self: gen_qevent_types.QIconDragEvent, accepted: bool): void =
  fcQIconDragEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQIconDragEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIconDragEventVTable](fcQIconDragEvent_vdata(self))
  let self = QIconDragEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQIconDragEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QIconDragEventVTable](fcQIconDragEvent_vdata(self))
  let self = QIconDragEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQIconDragEvent* {.inheritable.} = ref object of QIconDragEvent
  vtbl*: cQIconDragEventVTable

method clone*(self: VirtualQIconDragEvent): gen_qevent_types.QIconDragEvent {.base.} =
  QIconDragEventclone(self[])
method setAccepted*(self: VirtualQIconDragEvent, accepted: bool): void {.base.} =
  QIconDragEventsetAccepted(self[], accepted)

proc fcQIconDragEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQIconDragEvent](fcQIconDragEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQIconDragEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQIconDragEvent](fcQIconDragEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QIconDragEvent,
    vtbl: ref QIconDragEventVTable = nil): gen_qevent_types.QIconDragEvent =
  let vtbl = if vtbl == nil: new QIconDragEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QIconDragEventVTable](fcQIconDragEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQIconDragEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQIconDragEvent_vtable_callback_setAccepted
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQIconDragEvent_mvtbl = cQIconDragEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQIconDragEvent()[])](self.fcQIconDragEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQIconDragEvent_method_callback_clone,
  setAccepted: fcQIconDragEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QIconDragEvent,
    inst: VirtualQIconDragEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQIconDragEvent_new(addr(cQIconDragEvent_mvtbl), addr(inst[]))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QShowEvent): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fcQShowEvent_clone(self.h), owned: false)

type QShowEventcloneProc* = proc(self: QShowEvent): gen_qevent_types.QShowEvent {.raises: [], gcsafe.}
type QShowEventsetAcceptedProc* = proc(self: QShowEvent, accepted: bool): void {.raises: [], gcsafe.}

type QShowEventVTable* {.inheritable, pure.} = object
  vtbl: cQShowEventVTable
  clone*: QShowEventcloneProc
  setAccepted*: QShowEventsetAcceptedProc

proc QShowEventclone*(self: gen_qevent_types.QShowEvent): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fcQShowEvent_virtualbase_clone(self.h), owned: false)

proc QShowEventsetAccepted*(self: gen_qevent_types.QShowEvent, accepted: bool): void =
  fcQShowEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQShowEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QShowEventVTable](fcQShowEvent_vdata(self))
  let self = QShowEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQShowEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QShowEventVTable](fcQShowEvent_vdata(self))
  let self = QShowEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQShowEvent* {.inheritable.} = ref object of QShowEvent
  vtbl*: cQShowEventVTable

method clone*(self: VirtualQShowEvent): gen_qevent_types.QShowEvent {.base.} =
  QShowEventclone(self[])
method setAccepted*(self: VirtualQShowEvent, accepted: bool): void {.base.} =
  QShowEventsetAccepted(self[], accepted)

proc fcQShowEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQShowEvent](fcQShowEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQShowEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQShowEvent](fcQShowEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QShowEvent,
    vtbl: ref QShowEventVTable = nil): gen_qevent_types.QShowEvent =
  let vtbl = if vtbl == nil: new QShowEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShowEventVTable](fcQShowEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQShowEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQShowEvent_vtable_callback_setAccepted
  gen_qevent_types.QShowEvent(h: fcQShowEvent_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQShowEvent_mvtbl = cQShowEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQShowEvent()[])](self.fcQShowEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQShowEvent_method_callback_clone,
  setAccepted: fcQShowEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QShowEvent,
    inst: VirtualQShowEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShowEvent_new(addr(cQShowEvent_mvtbl), addr(inst[]))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QHideEvent): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fcQHideEvent_clone(self.h), owned: false)

type QHideEventcloneProc* = proc(self: QHideEvent): gen_qevent_types.QHideEvent {.raises: [], gcsafe.}
type QHideEventsetAcceptedProc* = proc(self: QHideEvent, accepted: bool): void {.raises: [], gcsafe.}

type QHideEventVTable* {.inheritable, pure.} = object
  vtbl: cQHideEventVTable
  clone*: QHideEventcloneProc
  setAccepted*: QHideEventsetAcceptedProc

proc QHideEventclone*(self: gen_qevent_types.QHideEvent): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fcQHideEvent_virtualbase_clone(self.h), owned: false)

proc QHideEventsetAccepted*(self: gen_qevent_types.QHideEvent, accepted: bool): void =
  fcQHideEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQHideEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHideEventVTable](fcQHideEvent_vdata(self))
  let self = QHideEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHideEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QHideEventVTable](fcQHideEvent_vdata(self))
  let self = QHideEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQHideEvent* {.inheritable.} = ref object of QHideEvent
  vtbl*: cQHideEventVTable

method clone*(self: VirtualQHideEvent): gen_qevent_types.QHideEvent {.base.} =
  QHideEventclone(self[])
method setAccepted*(self: VirtualQHideEvent, accepted: bool): void {.base.} =
  QHideEventsetAccepted(self[], accepted)

proc fcQHideEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHideEvent](fcQHideEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHideEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQHideEvent](fcQHideEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QHideEvent,
    vtbl: ref QHideEventVTable = nil): gen_qevent_types.QHideEvent =
  let vtbl = if vtbl == nil: new QHideEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHideEventVTable](fcQHideEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHideEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHideEvent_vtable_callback_setAccepted
  gen_qevent_types.QHideEvent(h: fcQHideEvent_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQHideEvent_mvtbl = cQHideEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQHideEvent()[])](self.fcQHideEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQHideEvent_method_callback_clone,
  setAccepted: fcQHideEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QHideEvent,
    inst: VirtualQHideEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHideEvent_new(addr(cQHideEvent_mvtbl), addr(inst[]))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QContextMenuEvent): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_clone(self.h), owned: false)

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

type QContextMenuEventcloneProc* = proc(self: QContextMenuEvent): gen_qevent_types.QContextMenuEvent {.raises: [], gcsafe.}
type QContextMenuEventsetTimestampProc* = proc(self: QContextMenuEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QContextMenuEventsetAcceptedProc* = proc(self: QContextMenuEvent, accepted: bool): void {.raises: [], gcsafe.}

type QContextMenuEventVTable* {.inheritable, pure.} = object
  vtbl: cQContextMenuEventVTable
  clone*: QContextMenuEventcloneProc
  setTimestamp*: QContextMenuEventsetTimestampProc
  setAccepted*: QContextMenuEventsetAcceptedProc

proc QContextMenuEventclone*(self: gen_qevent_types.QContextMenuEvent): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_virtualbase_clone(self.h), owned: false)

proc QContextMenuEventsetTimestamp*(self: gen_qevent_types.QContextMenuEvent, timestamp: culonglong): void =
  fcQContextMenuEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QContextMenuEventsetAccepted*(self: gen_qevent_types.QContextMenuEvent, accepted: bool): void =
  fcQContextMenuEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQContextMenuEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QContextMenuEventVTable](fcQContextMenuEvent_vdata(self))
  let self = QContextMenuEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQContextMenuEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QContextMenuEventVTable](fcQContextMenuEvent_vdata(self))
  let self = QContextMenuEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQContextMenuEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QContextMenuEventVTable](fcQContextMenuEvent_vdata(self))
  let self = QContextMenuEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQContextMenuEvent* {.inheritable.} = ref object of QContextMenuEvent
  vtbl*: cQContextMenuEventVTable

method clone*(self: VirtualQContextMenuEvent): gen_qevent_types.QContextMenuEvent {.base.} =
  QContextMenuEventclone(self[])
method setTimestamp*(self: VirtualQContextMenuEvent, timestamp: culonglong): void {.base.} =
  QContextMenuEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQContextMenuEvent, accepted: bool): void {.base.} =
  QContextMenuEventsetAccepted(self[], accepted)

proc fcQContextMenuEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQContextMenuEvent](fcQContextMenuEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQContextMenuEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQContextMenuEvent](fcQContextMenuEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQContextMenuEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQContextMenuEvent](fcQContextMenuEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint,
    vtbl: ref QContextMenuEventVTable = nil): gen_qevent_types.QContextMenuEvent =
  let vtbl = if vtbl == nil: new QContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QContextMenuEventVTable](fcQContextMenuEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQContextMenuEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQContextMenuEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQContextMenuEvent_vtable_callback_setAccepted
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(reason), pos.h, globalPos.h), owned: true)

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint,
    vtbl: ref QContextMenuEventVTable = nil): gen_qevent_types.QContextMenuEvent =
  let vtbl = if vtbl == nil: new QContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QContextMenuEventVTable](fcQContextMenuEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQContextMenuEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQContextMenuEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQContextMenuEvent_vtable_callback_setAccepted
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(reason), pos.h), owned: true)

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint, modifiers: cint,
    vtbl: ref QContextMenuEventVTable = nil): gen_qevent_types.QContextMenuEvent =
  let vtbl = if vtbl == nil: new QContextMenuEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QContextMenuEventVTable](fcQContextMenuEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQContextMenuEvent_vtable_callback_clone
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQContextMenuEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQContextMenuEvent_vtable_callback_setAccepted
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(reason), pos.h, globalPos.h, cint(modifiers)), owned: true)

const cQContextMenuEvent_mvtbl = cQContextMenuEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQContextMenuEvent()[])](self.fcQContextMenuEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQContextMenuEvent_method_callback_clone,
  setTimestamp: fcQContextMenuEvent_method_callback_setTimestamp,
  setAccepted: fcQContextMenuEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint,
    inst: VirtualQContextMenuEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQContextMenuEvent_new(addr(cQContextMenuEvent_mvtbl), addr(inst[]), cint(reason), pos.h, globalPos.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint,
    inst: VirtualQContextMenuEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQContextMenuEvent_new2(addr(cQContextMenuEvent_mvtbl), addr(inst[]), cint(reason), pos.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint, modifiers: cint,
    inst: VirtualQContextMenuEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQContextMenuEvent_new3(addr(cQContextMenuEvent_mvtbl), addr(inst[]), cint(reason), pos.h, globalPos.h, cint(modifiers))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QInputMethodEvent): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_clone(self.h), owned: false)

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

type QInputMethodEventcloneProc* = proc(self: QInputMethodEvent): gen_qevent_types.QInputMethodEvent {.raises: [], gcsafe.}
type QInputMethodEventsetAcceptedProc* = proc(self: QInputMethodEvent, accepted: bool): void {.raises: [], gcsafe.}

type QInputMethodEventVTable* {.inheritable, pure.} = object
  vtbl: cQInputMethodEventVTable
  clone*: QInputMethodEventcloneProc
  setAccepted*: QInputMethodEventsetAcceptedProc

proc QInputMethodEventclone*(self: gen_qevent_types.QInputMethodEvent): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_virtualbase_clone(self.h), owned: false)

proc QInputMethodEventsetAccepted*(self: gen_qevent_types.QInputMethodEvent, accepted: bool): void =
  fcQInputMethodEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQInputMethodEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputMethodEventVTable](fcQInputMethodEvent_vdata(self))
  let self = QInputMethodEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputMethodEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputMethodEventVTable](fcQInputMethodEvent_vdata(self))
  let self = QInputMethodEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQInputMethodEvent* {.inheritable.} = ref object of QInputMethodEvent
  vtbl*: cQInputMethodEventVTable

method clone*(self: VirtualQInputMethodEvent): gen_qevent_types.QInputMethodEvent {.base.} =
  QInputMethodEventclone(self[])
method setAccepted*(self: VirtualQInputMethodEvent, accepted: bool): void {.base.} =
  QInputMethodEventsetAccepted(self[], accepted)

proc fcQInputMethodEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputMethodEvent](fcQInputMethodEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputMethodEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQInputMethodEvent](fcQInputMethodEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QInputMethodEvent,
    vtbl: ref QInputMethodEventVTable = nil): gen_qevent_types.QInputMethodEvent =
  let vtbl = if vtbl == nil: new QInputMethodEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputMethodEventVTable](fcQInputMethodEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQInputMethodEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQInputMethodEvent_vtable_callback_setAccepted
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qevent_types.QInputMethodEvent,
    preeditText: openArray[char], attributes: openArray[gen_qevent_types.QInputMethodEventAttribute],
    vtbl: ref QInputMethodEventVTable = nil): gen_qevent_types.QInputMethodEvent =
  var attributes_CArray = newSeq[pointer](len(attributes))
  for i in 0..<len(attributes):
    attributes_CArray[i] = attributes[i].h

  let vtbl = if vtbl == nil: new QInputMethodEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputMethodEventVTable](fcQInputMethodEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQInputMethodEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQInputMethodEvent_vtable_callback_setAccepted
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(preeditText) > 0: addr preeditText[0] else: nil, len: csize_t(len(preeditText))), struct_miqt_array(len: csize_t(len(attributes)), data: if len(attributes) == 0: nil else: addr(attributes_CArray[0]))), owned: true)

const cQInputMethodEvent_mvtbl = cQInputMethodEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQInputMethodEvent()[])](self.fcQInputMethodEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQInputMethodEvent_method_callback_clone,
  setAccepted: fcQInputMethodEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QInputMethodEvent,
    inst: VirtualQInputMethodEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputMethodEvent_new(addr(cQInputMethodEvent_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QInputMethodEvent,
    preeditText: openArray[char], attributes: openArray[gen_qevent_types.QInputMethodEventAttribute],
    inst: VirtualQInputMethodEvent) =
  var attributes_CArray = newSeq[pointer](len(attributes))
  for i in 0..<len(attributes):
    attributes_CArray[i] = attributes[i].h

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputMethodEvent_new2(addr(cQInputMethodEvent_mvtbl), addr(inst[]), struct_miqt_string(data: if len(preeditText) > 0: addr preeditText[0] else: nil, len: csize_t(len(preeditText))), struct_miqt_array(len: csize_t(len(attributes)), data: if len(attributes) == 0: nil else: addr(attributes_CArray[0])))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QInputMethodQueryEvent): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_clone(self.h), owned: false)

proc queries*(self: gen_qevent_types.QInputMethodQueryEvent): cint =
  cint(fcQInputMethodQueryEvent_queries(self.h))

proc setValue*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint, value: gen_qvariant_types.QVariant): void =
  fcQInputMethodQueryEvent_setValue(self.h, cint(query), value.h)

proc value*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQInputMethodQueryEvent_value(self.h, cint(query)), owned: true)

type QInputMethodQueryEventcloneProc* = proc(self: QInputMethodQueryEvent): gen_qevent_types.QInputMethodQueryEvent {.raises: [], gcsafe.}
type QInputMethodQueryEventsetAcceptedProc* = proc(self: QInputMethodQueryEvent, accepted: bool): void {.raises: [], gcsafe.}

type QInputMethodQueryEventVTable* {.inheritable, pure.} = object
  vtbl: cQInputMethodQueryEventVTable
  clone*: QInputMethodQueryEventcloneProc
  setAccepted*: QInputMethodQueryEventsetAcceptedProc

proc QInputMethodQueryEventclone*(self: gen_qevent_types.QInputMethodQueryEvent): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_virtualbase_clone(self.h), owned: false)

proc QInputMethodQueryEventsetAccepted*(self: gen_qevent_types.QInputMethodQueryEvent, accepted: bool): void =
  fcQInputMethodQueryEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQInputMethodQueryEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputMethodQueryEventVTable](fcQInputMethodQueryEvent_vdata(self))
  let self = QInputMethodQueryEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputMethodQueryEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputMethodQueryEventVTable](fcQInputMethodQueryEvent_vdata(self))
  let self = QInputMethodQueryEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQInputMethodQueryEvent* {.inheritable.} = ref object of QInputMethodQueryEvent
  vtbl*: cQInputMethodQueryEventVTable

method clone*(self: VirtualQInputMethodQueryEvent): gen_qevent_types.QInputMethodQueryEvent {.base.} =
  QInputMethodQueryEventclone(self[])
method setAccepted*(self: VirtualQInputMethodQueryEvent, accepted: bool): void {.base.} =
  QInputMethodQueryEventsetAccepted(self[], accepted)

proc fcQInputMethodQueryEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputMethodQueryEvent](fcQInputMethodQueryEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputMethodQueryEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQInputMethodQueryEvent](fcQInputMethodQueryEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QInputMethodQueryEvent,
    queries: cint,
    vtbl: ref QInputMethodQueryEventVTable = nil): gen_qevent_types.QInputMethodQueryEvent =
  let vtbl = if vtbl == nil: new QInputMethodQueryEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputMethodQueryEventVTable](fcQInputMethodQueryEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQInputMethodQueryEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQInputMethodQueryEvent_vtable_callback_setAccepted
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(queries)), owned: true)

const cQInputMethodQueryEvent_mvtbl = cQInputMethodQueryEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQInputMethodQueryEvent()[])](self.fcQInputMethodQueryEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQInputMethodQueryEvent_method_callback_clone,
  setAccepted: fcQInputMethodQueryEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QInputMethodQueryEvent,
    queries: cint,
    inst: VirtualQInputMethodQueryEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputMethodQueryEvent_new(addr(cQInputMethodQueryEvent_mvtbl), addr(inst[]), cint(queries))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QDropEvent): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fcQDropEvent_clone(self.h), owned: false)

proc pos*(self: gen_qevent_types.QDropEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQDropEvent_pos(self.h), owned: true)

proc posF*(self: gen_qevent_types.QDropEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQDropEvent_posF(self.h), owned: true)

proc mouseButtons*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_mouseButtons(self.h))

proc keyboardModifiers*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_keyboardModifiers(self.h))

proc position*(self: gen_qevent_types.QDropEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQDropEvent_position(self.h), owned: true)

proc buttons*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_buttons(self.h))

proc modifiers*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_modifiers(self.h))

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

type QDropEventcloneProc* = proc(self: QDropEvent): gen_qevent_types.QDropEvent {.raises: [], gcsafe.}
type QDropEventsetAcceptedProc* = proc(self: QDropEvent, accepted: bool): void {.raises: [], gcsafe.}

type QDropEventVTable* {.inheritable, pure.} = object
  vtbl: cQDropEventVTable
  clone*: QDropEventcloneProc
  setAccepted*: QDropEventsetAcceptedProc

proc QDropEventclone*(self: gen_qevent_types.QDropEvent): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fcQDropEvent_virtualbase_clone(self.h), owned: false)

proc QDropEventsetAccepted*(self: gen_qevent_types.QDropEvent, accepted: bool): void =
  fcQDropEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQDropEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDropEventVTable](fcQDropEvent_vdata(self))
  let self = QDropEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDropEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDropEventVTable](fcQDropEvent_vdata(self))
  let self = QDropEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQDropEvent* {.inheritable.} = ref object of QDropEvent
  vtbl*: cQDropEventVTable

method clone*(self: VirtualQDropEvent): gen_qevent_types.QDropEvent {.base.} =
  QDropEventclone(self[])
method setAccepted*(self: VirtualQDropEvent, accepted: bool): void {.base.} =
  QDropEventsetAccepted(self[], accepted)

proc fcQDropEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDropEvent](fcQDropEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDropEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQDropEvent](fcQDropEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    vtbl: ref QDropEventVTable = nil): gen_qevent_types.QDropEvent =
  let vtbl = if vtbl == nil: new QDropEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDropEventVTable](fcQDropEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQDropEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQDropEvent_vtable_callback_setAccepted
  gen_qevent_types.QDropEvent(h: fcQDropEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint,
    vtbl: ref QDropEventVTable = nil): gen_qevent_types.QDropEvent =
  let vtbl = if vtbl == nil: new QDropEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDropEventVTable](fcQDropEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQDropEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQDropEvent_vtable_callback_setAccepted
  gen_qevent_types.QDropEvent(h: fcQDropEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)), owned: true)

const cQDropEvent_mvtbl = cQDropEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDropEvent()[])](self.fcQDropEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQDropEvent_method_callback_clone,
  setAccepted: fcQDropEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    inst: VirtualQDropEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDropEvent_new(addr(cQDropEvent_mvtbl), addr(inst[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint,
    inst: VirtualQDropEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDropEvent_new2(addr(cQDropEvent_mvtbl), addr(inst[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QDragMoveEvent): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_clone(self.h), owned: false)

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

type QDragMoveEventcloneProc* = proc(self: QDragMoveEvent): gen_qevent_types.QDragMoveEvent {.raises: [], gcsafe.}
type QDragMoveEventsetAcceptedProc* = proc(self: QDragMoveEvent, accepted: bool): void {.raises: [], gcsafe.}

type QDragMoveEventVTable* {.inheritable, pure.} = object
  vtbl: cQDragMoveEventVTable
  clone*: QDragMoveEventcloneProc
  setAccepted*: QDragMoveEventsetAcceptedProc

proc QDragMoveEventclone*(self: gen_qevent_types.QDragMoveEvent): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_virtualbase_clone(self.h), owned: false)

proc QDragMoveEventsetAccepted*(self: gen_qevent_types.QDragMoveEvent, accepted: bool): void =
  fcQDragMoveEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQDragMoveEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragMoveEventVTable](fcQDragMoveEvent_vdata(self))
  let self = QDragMoveEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDragMoveEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDragMoveEventVTable](fcQDragMoveEvent_vdata(self))
  let self = QDragMoveEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQDragMoveEvent* {.inheritable.} = ref object of QDragMoveEvent
  vtbl*: cQDragMoveEventVTable

method clone*(self: VirtualQDragMoveEvent): gen_qevent_types.QDragMoveEvent {.base.} =
  QDragMoveEventclone(self[])
method setAccepted*(self: VirtualQDragMoveEvent, accepted: bool): void {.base.} =
  QDragMoveEventsetAccepted(self[], accepted)

proc fcQDragMoveEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDragMoveEvent](fcQDragMoveEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDragMoveEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQDragMoveEvent](fcQDragMoveEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    vtbl: ref QDragMoveEventVTable = nil): gen_qevent_types.QDragMoveEvent =
  let vtbl = if vtbl == nil: new QDragMoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDragMoveEventVTable](fcQDragMoveEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQDragMoveEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQDragMoveEvent_vtable_callback_setAccepted
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint,
    vtbl: ref QDragMoveEventVTable = nil): gen_qevent_types.QDragMoveEvent =
  let vtbl = if vtbl == nil: new QDragMoveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDragMoveEventVTable](fcQDragMoveEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQDragMoveEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQDragMoveEvent_vtable_callback_setAccepted
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)), owned: true)

const cQDragMoveEvent_mvtbl = cQDragMoveEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDragMoveEvent()[])](self.fcQDragMoveEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQDragMoveEvent_method_callback_clone,
  setAccepted: fcQDragMoveEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    inst: VirtualQDragMoveEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDragMoveEvent_new(addr(cQDragMoveEvent_mvtbl), addr(inst[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint,
    inst: VirtualQDragMoveEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDragMoveEvent_new2(addr(cQDragMoveEvent_mvtbl), addr(inst[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QDragEnterEvent): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_clone(self.h), owned: false)

type QDragEnterEventcloneProc* = proc(self: QDragEnterEvent): gen_qevent_types.QDragEnterEvent {.raises: [], gcsafe.}
type QDragEnterEventsetAcceptedProc* = proc(self: QDragEnterEvent, accepted: bool): void {.raises: [], gcsafe.}

type QDragEnterEventVTable* {.inheritable, pure.} = object
  vtbl: cQDragEnterEventVTable
  clone*: QDragEnterEventcloneProc
  setAccepted*: QDragEnterEventsetAcceptedProc

proc QDragEnterEventclone*(self: gen_qevent_types.QDragEnterEvent): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_virtualbase_clone(self.h), owned: false)

proc QDragEnterEventsetAccepted*(self: gen_qevent_types.QDragEnterEvent, accepted: bool): void =
  fcQDragEnterEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQDragEnterEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragEnterEventVTable](fcQDragEnterEvent_vdata(self))
  let self = QDragEnterEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDragEnterEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDragEnterEventVTable](fcQDragEnterEvent_vdata(self))
  let self = QDragEnterEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQDragEnterEvent* {.inheritable.} = ref object of QDragEnterEvent
  vtbl*: cQDragEnterEventVTable

method clone*(self: VirtualQDragEnterEvent): gen_qevent_types.QDragEnterEvent {.base.} =
  QDragEnterEventclone(self[])
method setAccepted*(self: VirtualQDragEnterEvent, accepted: bool): void {.base.} =
  QDragEnterEventsetAccepted(self[], accepted)

proc fcQDragEnterEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDragEnterEvent](fcQDragEnterEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDragEnterEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQDragEnterEvent](fcQDragEnterEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QDragEnterEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    vtbl: ref QDragEnterEventVTable = nil): gen_qevent_types.QDragEnterEvent =
  let vtbl = if vtbl == nil: new QDragEnterEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDragEnterEventVTable](fcQDragEnterEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQDragEnterEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQDragEnterEvent_vtable_callback_setAccepted
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)), owned: true)

const cQDragEnterEvent_mvtbl = cQDragEnterEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDragEnterEvent()[])](self.fcQDragEnterEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQDragEnterEvent_method_callback_clone,
  setAccepted: fcQDragEnterEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QDragEnterEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint,
    inst: VirtualQDragEnterEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDragEnterEvent_new(addr(cQDragEnterEvent_mvtbl), addr(inst[]), pos.h, cint(actions), data.h, cint(buttons), cint(modifiers))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QDragLeaveEvent): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_clone(self.h), owned: false)

type QDragLeaveEventcloneProc* = proc(self: QDragLeaveEvent): gen_qevent_types.QDragLeaveEvent {.raises: [], gcsafe.}
type QDragLeaveEventsetAcceptedProc* = proc(self: QDragLeaveEvent, accepted: bool): void {.raises: [], gcsafe.}

type QDragLeaveEventVTable* {.inheritable, pure.} = object
  vtbl: cQDragLeaveEventVTable
  clone*: QDragLeaveEventcloneProc
  setAccepted*: QDragLeaveEventsetAcceptedProc

proc QDragLeaveEventclone*(self: gen_qevent_types.QDragLeaveEvent): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_virtualbase_clone(self.h), owned: false)

proc QDragLeaveEventsetAccepted*(self: gen_qevent_types.QDragLeaveEvent, accepted: bool): void =
  fcQDragLeaveEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQDragLeaveEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragLeaveEventVTable](fcQDragLeaveEvent_vdata(self))
  let self = QDragLeaveEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDragLeaveEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDragLeaveEventVTable](fcQDragLeaveEvent_vdata(self))
  let self = QDragLeaveEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQDragLeaveEvent* {.inheritable.} = ref object of QDragLeaveEvent
  vtbl*: cQDragLeaveEventVTable

method clone*(self: VirtualQDragLeaveEvent): gen_qevent_types.QDragLeaveEvent {.base.} =
  QDragLeaveEventclone(self[])
method setAccepted*(self: VirtualQDragLeaveEvent, accepted: bool): void {.base.} =
  QDragLeaveEventsetAccepted(self[], accepted)

proc fcQDragLeaveEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDragLeaveEvent](fcQDragLeaveEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDragLeaveEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQDragLeaveEvent](fcQDragLeaveEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QDragLeaveEvent,
    vtbl: ref QDragLeaveEventVTable = nil): gen_qevent_types.QDragLeaveEvent =
  let vtbl = if vtbl == nil: new QDragLeaveEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDragLeaveEventVTable](fcQDragLeaveEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQDragLeaveEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQDragLeaveEvent_vtable_callback_setAccepted
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQDragLeaveEvent_mvtbl = cQDragLeaveEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDragLeaveEvent()[])](self.fcQDragLeaveEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQDragLeaveEvent_method_callback_clone,
  setAccepted: fcQDragLeaveEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QDragLeaveEvent,
    inst: VirtualQDragLeaveEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDragLeaveEvent_new(addr(cQDragLeaveEvent_mvtbl), addr(inst[]))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QHelpEvent): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_clone(self.h), owned: false)

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

type QHelpEventcloneProc* = proc(self: QHelpEvent): gen_qevent_types.QHelpEvent {.raises: [], gcsafe.}
type QHelpEventsetAcceptedProc* = proc(self: QHelpEvent, accepted: bool): void {.raises: [], gcsafe.}

type QHelpEventVTable* {.inheritable, pure.} = object
  vtbl: cQHelpEventVTable
  clone*: QHelpEventcloneProc
  setAccepted*: QHelpEventsetAcceptedProc

proc QHelpEventclone*(self: gen_qevent_types.QHelpEvent): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_virtualbase_clone(self.h), owned: false)

proc QHelpEventsetAccepted*(self: gen_qevent_types.QHelpEvent, accepted: bool): void =
  fcQHelpEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQHelpEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHelpEventVTable](fcQHelpEvent_vdata(self))
  let self = QHelpEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHelpEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QHelpEventVTable](fcQHelpEvent_vdata(self))
  let self = QHelpEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQHelpEvent* {.inheritable.} = ref object of QHelpEvent
  vtbl*: cQHelpEventVTable

method clone*(self: VirtualQHelpEvent): gen_qevent_types.QHelpEvent {.base.} =
  QHelpEventclone(self[])
method setAccepted*(self: VirtualQHelpEvent, accepted: bool): void {.base.} =
  QHelpEventsetAccepted(self[], accepted)

proc fcQHelpEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHelpEvent](fcQHelpEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQHelpEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQHelpEvent](fcQHelpEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QHelpEvent,
    typeVal: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint,
    vtbl: ref QHelpEventVTable = nil): gen_qevent_types.QHelpEvent =
  let vtbl = if vtbl == nil: new QHelpEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHelpEventVTable](fcQHelpEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQHelpEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQHelpEvent_vtable_callback_setAccepted
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(typeVal), pos.h, globalPos.h), owned: true)

const cQHelpEvent_mvtbl = cQHelpEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQHelpEvent()[])](self.fcQHelpEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQHelpEvent_method_callback_clone,
  setAccepted: fcQHelpEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QHelpEvent,
    typeVal: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint,
    inst: VirtualQHelpEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHelpEvent_new(addr(cQHelpEvent_mvtbl), addr(inst[]), cint(typeVal), pos.h, globalPos.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QStatusTipEvent): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_clone(self.h), owned: false)

proc tip*(self: gen_qevent_types.QStatusTipEvent): string =
  let v_ms = fcQStatusTipEvent_tip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QStatusTipEventcloneProc* = proc(self: QStatusTipEvent): gen_qevent_types.QStatusTipEvent {.raises: [], gcsafe.}
type QStatusTipEventsetAcceptedProc* = proc(self: QStatusTipEvent, accepted: bool): void {.raises: [], gcsafe.}

type QStatusTipEventVTable* {.inheritable, pure.} = object
  vtbl: cQStatusTipEventVTable
  clone*: QStatusTipEventcloneProc
  setAccepted*: QStatusTipEventsetAcceptedProc

proc QStatusTipEventclone*(self: gen_qevent_types.QStatusTipEvent): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_virtualbase_clone(self.h), owned: false)

proc QStatusTipEventsetAccepted*(self: gen_qevent_types.QStatusTipEvent, accepted: bool): void =
  fcQStatusTipEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQStatusTipEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusTipEventVTable](fcQStatusTipEvent_vdata(self))
  let self = QStatusTipEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStatusTipEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QStatusTipEventVTable](fcQStatusTipEvent_vdata(self))
  let self = QStatusTipEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQStatusTipEvent* {.inheritable.} = ref object of QStatusTipEvent
  vtbl*: cQStatusTipEventVTable

method clone*(self: VirtualQStatusTipEvent): gen_qevent_types.QStatusTipEvent {.base.} =
  QStatusTipEventclone(self[])
method setAccepted*(self: VirtualQStatusTipEvent, accepted: bool): void {.base.} =
  QStatusTipEventsetAccepted(self[], accepted)

proc fcQStatusTipEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStatusTipEvent](fcQStatusTipEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStatusTipEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQStatusTipEvent](fcQStatusTipEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QStatusTipEvent,
    tip: openArray[char],
    vtbl: ref QStatusTipEventVTable = nil): gen_qevent_types.QStatusTipEvent =
  let vtbl = if vtbl == nil: new QStatusTipEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStatusTipEventVTable](fcQStatusTipEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQStatusTipEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQStatusTipEvent_vtable_callback_setAccepted
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(tip) > 0: addr tip[0] else: nil, len: csize_t(len(tip)))), owned: true)

const cQStatusTipEvent_mvtbl = cQStatusTipEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQStatusTipEvent()[])](self.fcQStatusTipEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQStatusTipEvent_method_callback_clone,
  setAccepted: fcQStatusTipEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QStatusTipEvent,
    tip: openArray[char],
    inst: VirtualQStatusTipEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStatusTipEvent_new(addr(cQStatusTipEvent_mvtbl), addr(inst[]), struct_miqt_string(data: if len(tip) > 0: addr tip[0] else: nil, len: csize_t(len(tip))))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QWhatsThisClickedEvent): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_clone(self.h), owned: false)

proc href*(self: gen_qevent_types.QWhatsThisClickedEvent): string =
  let v_ms = fcQWhatsThisClickedEvent_href(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QWhatsThisClickedEventcloneProc* = proc(self: QWhatsThisClickedEvent): gen_qevent_types.QWhatsThisClickedEvent {.raises: [], gcsafe.}
type QWhatsThisClickedEventsetAcceptedProc* = proc(self: QWhatsThisClickedEvent, accepted: bool): void {.raises: [], gcsafe.}

type QWhatsThisClickedEventVTable* {.inheritable, pure.} = object
  vtbl: cQWhatsThisClickedEventVTable
  clone*: QWhatsThisClickedEventcloneProc
  setAccepted*: QWhatsThisClickedEventsetAcceptedProc

proc QWhatsThisClickedEventclone*(self: gen_qevent_types.QWhatsThisClickedEvent): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_virtualbase_clone(self.h), owned: false)

proc QWhatsThisClickedEventsetAccepted*(self: gen_qevent_types.QWhatsThisClickedEvent, accepted: bool): void =
  fcQWhatsThisClickedEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQWhatsThisClickedEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWhatsThisClickedEventVTable](fcQWhatsThisClickedEvent_vdata(self))
  let self = QWhatsThisClickedEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWhatsThisClickedEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWhatsThisClickedEventVTable](fcQWhatsThisClickedEvent_vdata(self))
  let self = QWhatsThisClickedEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQWhatsThisClickedEvent* {.inheritable.} = ref object of QWhatsThisClickedEvent
  vtbl*: cQWhatsThisClickedEventVTable

method clone*(self: VirtualQWhatsThisClickedEvent): gen_qevent_types.QWhatsThisClickedEvent {.base.} =
  QWhatsThisClickedEventclone(self[])
method setAccepted*(self: VirtualQWhatsThisClickedEvent, accepted: bool): void {.base.} =
  QWhatsThisClickedEventsetAccepted(self[], accepted)

proc fcQWhatsThisClickedEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWhatsThisClickedEvent](fcQWhatsThisClickedEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWhatsThisClickedEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQWhatsThisClickedEvent](fcQWhatsThisClickedEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QWhatsThisClickedEvent,
    href: openArray[char],
    vtbl: ref QWhatsThisClickedEventVTable = nil): gen_qevent_types.QWhatsThisClickedEvent =
  let vtbl = if vtbl == nil: new QWhatsThisClickedEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWhatsThisClickedEventVTable](fcQWhatsThisClickedEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQWhatsThisClickedEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQWhatsThisClickedEvent_vtable_callback_setAccepted
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(href) > 0: addr href[0] else: nil, len: csize_t(len(href)))), owned: true)

const cQWhatsThisClickedEvent_mvtbl = cQWhatsThisClickedEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWhatsThisClickedEvent()[])](self.fcQWhatsThisClickedEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQWhatsThisClickedEvent_method_callback_clone,
  setAccepted: fcQWhatsThisClickedEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QWhatsThisClickedEvent,
    href: openArray[char],
    inst: VirtualQWhatsThisClickedEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWhatsThisClickedEvent_new(addr(cQWhatsThisClickedEvent_mvtbl), addr(inst[]), struct_miqt_string(data: if len(href) > 0: addr href[0] else: nil, len: csize_t(len(href))))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QActionEvent): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_clone(self.h), owned: false)

type QActionEventcloneProc* = proc(self: QActionEvent): gen_qevent_types.QActionEvent {.raises: [], gcsafe.}
type QActionEventsetAcceptedProc* = proc(self: QActionEvent, accepted: bool): void {.raises: [], gcsafe.}

type QActionEventVTable* {.inheritable, pure.} = object
  vtbl: cQActionEventVTable
  clone*: QActionEventcloneProc
  setAccepted*: QActionEventsetAcceptedProc

proc QActionEventclone*(self: gen_qevent_types.QActionEvent): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_virtualbase_clone(self.h), owned: false)

proc QActionEventsetAccepted*(self: gen_qevent_types.QActionEvent, accepted: bool): void =
  fcQActionEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQActionEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QActionEventVTable](fcQActionEvent_vdata(self))
  let self = QActionEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQActionEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QActionEventVTable](fcQActionEvent_vdata(self))
  let self = QActionEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQActionEvent* {.inheritable.} = ref object of QActionEvent
  vtbl*: cQActionEventVTable

method clone*(self: VirtualQActionEvent): gen_qevent_types.QActionEvent {.base.} =
  QActionEventclone(self[])
method setAccepted*(self: VirtualQActionEvent, accepted: bool): void {.base.} =
  QActionEventsetAccepted(self[], accepted)

proc fcQActionEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQActionEvent](fcQActionEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQActionEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQActionEvent](fcQActionEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: gen_qaction_types.QAction,
    vtbl: ref QActionEventVTable = nil): gen_qevent_types.QActionEvent =
  let vtbl = if vtbl == nil: new QActionEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionEventVTable](fcQActionEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQActionEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQActionEvent_vtable_callback_setAccepted
  gen_qevent_types.QActionEvent(h: fcQActionEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), typeVal, action.h), owned: true)

proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: gen_qaction_types.QAction, before: gen_qaction_types.QAction,
    vtbl: ref QActionEventVTable = nil): gen_qevent_types.QActionEvent =
  let vtbl = if vtbl == nil: new QActionEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QActionEventVTable](fcQActionEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQActionEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQActionEvent_vtable_callback_setAccepted
  gen_qevent_types.QActionEvent(h: fcQActionEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), typeVal, action.h, before.h), owned: true)

const cQActionEvent_mvtbl = cQActionEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQActionEvent()[])](self.fcQActionEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQActionEvent_method_callback_clone,
  setAccepted: fcQActionEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: gen_qaction_types.QAction,
    inst: VirtualQActionEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQActionEvent_new(addr(cQActionEvent_mvtbl), addr(inst[]), typeVal, action.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: gen_qaction_types.QAction, before: gen_qaction_types.QAction,
    inst: VirtualQActionEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQActionEvent_new2(addr(cQActionEvent_mvtbl), addr(inst[]), typeVal, action.h, before.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QFileOpenEvent): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_clone(self.h), owned: false)

proc file*(self: gen_qevent_types.QFileOpenEvent): string =
  let v_ms = fcQFileOpenEvent_file(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc url*(self: gen_qevent_types.QFileOpenEvent): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileOpenEvent_url(self.h), owned: true)

proc openFile*(self: gen_qevent_types.QFileOpenEvent, file: gen_qfile_types.QFile, flags: cint): bool =
  fcQFileOpenEvent_openFile(self.h, file.h, cint(flags))

type QFileOpenEventcloneProc* = proc(self: QFileOpenEvent): gen_qevent_types.QFileOpenEvent {.raises: [], gcsafe.}
type QFileOpenEventsetAcceptedProc* = proc(self: QFileOpenEvent, accepted: bool): void {.raises: [], gcsafe.}

type QFileOpenEventVTable* {.inheritable, pure.} = object
  vtbl: cQFileOpenEventVTable
  clone*: QFileOpenEventcloneProc
  setAccepted*: QFileOpenEventsetAcceptedProc

proc QFileOpenEventclone*(self: gen_qevent_types.QFileOpenEvent): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_virtualbase_clone(self.h), owned: false)

proc QFileOpenEventsetAccepted*(self: gen_qevent_types.QFileOpenEvent, accepted: bool): void =
  fcQFileOpenEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQFileOpenEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileOpenEventVTable](fcQFileOpenEvent_vdata(self))
  let self = QFileOpenEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileOpenEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFileOpenEventVTable](fcQFileOpenEvent_vdata(self))
  let self = QFileOpenEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQFileOpenEvent* {.inheritable.} = ref object of QFileOpenEvent
  vtbl*: cQFileOpenEventVTable

method clone*(self: VirtualQFileOpenEvent): gen_qevent_types.QFileOpenEvent {.base.} =
  QFileOpenEventclone(self[])
method setAccepted*(self: VirtualQFileOpenEvent, accepted: bool): void {.base.} =
  QFileOpenEventsetAccepted(self[], accepted)

proc fcQFileOpenEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileOpenEvent](fcQFileOpenEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileOpenEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQFileOpenEvent](fcQFileOpenEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QFileOpenEvent,
    file: openArray[char],
    vtbl: ref QFileOpenEventVTable = nil): gen_qevent_types.QFileOpenEvent =
  let vtbl = if vtbl == nil: new QFileOpenEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileOpenEventVTable](fcQFileOpenEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQFileOpenEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQFileOpenEvent_vtable_callback_setAccepted
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file)))), owned: true)

proc create*(T: type gen_qevent_types.QFileOpenEvent,
    url: gen_qurl_types.QUrl,
    vtbl: ref QFileOpenEventVTable = nil): gen_qevent_types.QFileOpenEvent =
  let vtbl = if vtbl == nil: new QFileOpenEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileOpenEventVTable](fcQFileOpenEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQFileOpenEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQFileOpenEvent_vtable_callback_setAccepted
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), url.h), owned: true)

const cQFileOpenEvent_mvtbl = cQFileOpenEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFileOpenEvent()[])](self.fcQFileOpenEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQFileOpenEvent_method_callback_clone,
  setAccepted: fcQFileOpenEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QFileOpenEvent,
    file: openArray[char],
    inst: VirtualQFileOpenEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileOpenEvent_new(addr(cQFileOpenEvent_mvtbl), addr(inst[]), struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QFileOpenEvent,
    url: gen_qurl_types.QUrl,
    inst: VirtualQFileOpenEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileOpenEvent_new2(addr(cQFileOpenEvent_mvtbl), addr(inst[]), url.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QToolBarChangeEvent): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_clone(self.h), owned: false)

proc toggle*(self: gen_qevent_types.QToolBarChangeEvent): bool =
  fcQToolBarChangeEvent_toggle(self.h)

type QToolBarChangeEventcloneProc* = proc(self: QToolBarChangeEvent): gen_qevent_types.QToolBarChangeEvent {.raises: [], gcsafe.}
type QToolBarChangeEventsetAcceptedProc* = proc(self: QToolBarChangeEvent, accepted: bool): void {.raises: [], gcsafe.}

type QToolBarChangeEventVTable* {.inheritable, pure.} = object
  vtbl: cQToolBarChangeEventVTable
  clone*: QToolBarChangeEventcloneProc
  setAccepted*: QToolBarChangeEventsetAcceptedProc

proc QToolBarChangeEventclone*(self: gen_qevent_types.QToolBarChangeEvent): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_virtualbase_clone(self.h), owned: false)

proc QToolBarChangeEventsetAccepted*(self: gen_qevent_types.QToolBarChangeEvent, accepted: bool): void =
  fcQToolBarChangeEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQToolBarChangeEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBarChangeEventVTable](fcQToolBarChangeEvent_vdata(self))
  let self = QToolBarChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBarChangeEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolBarChangeEventVTable](fcQToolBarChangeEvent_vdata(self))
  let self = QToolBarChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQToolBarChangeEvent* {.inheritable.} = ref object of QToolBarChangeEvent
  vtbl*: cQToolBarChangeEventVTable

method clone*(self: VirtualQToolBarChangeEvent): gen_qevent_types.QToolBarChangeEvent {.base.} =
  QToolBarChangeEventclone(self[])
method setAccepted*(self: VirtualQToolBarChangeEvent, accepted: bool): void {.base.} =
  QToolBarChangeEventsetAccepted(self[], accepted)

proc fcQToolBarChangeEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBarChangeEvent](fcQToolBarChangeEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBarChangeEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQToolBarChangeEvent](fcQToolBarChangeEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QToolBarChangeEvent,
    t: bool,
    vtbl: ref QToolBarChangeEventVTable = nil): gen_qevent_types.QToolBarChangeEvent =
  let vtbl = if vtbl == nil: new QToolBarChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBarChangeEventVTable](fcQToolBarChangeEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQToolBarChangeEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQToolBarChangeEvent_vtable_callback_setAccepted
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), t), owned: true)

const cQToolBarChangeEvent_mvtbl = cQToolBarChangeEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQToolBarChangeEvent()[])](self.fcQToolBarChangeEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQToolBarChangeEvent_method_callback_clone,
  setAccepted: fcQToolBarChangeEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QToolBarChangeEvent,
    t: bool,
    inst: VirtualQToolBarChangeEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBarChangeEvent_new(addr(cQToolBarChangeEvent_mvtbl), addr(inst[]), t)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QShortcutEvent): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_clone(self.h), owned: false)

proc key*(self: gen_qevent_types.QShortcutEvent): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQShortcutEvent_key(self.h), owned: false)

proc shortcutId*(self: gen_qevent_types.QShortcutEvent): cint =
  fcQShortcutEvent_shortcutId(self.h)

proc isAmbiguous*(self: gen_qevent_types.QShortcutEvent): bool =
  fcQShortcutEvent_isAmbiguous(self.h)

type QShortcutEventcloneProc* = proc(self: QShortcutEvent): gen_qevent_types.QShortcutEvent {.raises: [], gcsafe.}
type QShortcutEventsetAcceptedProc* = proc(self: QShortcutEvent, accepted: bool): void {.raises: [], gcsafe.}

type QShortcutEventVTable* {.inheritable, pure.} = object
  vtbl: cQShortcutEventVTable
  clone*: QShortcutEventcloneProc
  setAccepted*: QShortcutEventsetAcceptedProc

proc QShortcutEventclone*(self: gen_qevent_types.QShortcutEvent): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_virtualbase_clone(self.h), owned: false)

proc QShortcutEventsetAccepted*(self: gen_qevent_types.QShortcutEvent, accepted: bool): void =
  fcQShortcutEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQShortcutEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QShortcutEventVTable](fcQShortcutEvent_vdata(self))
  let self = QShortcutEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQShortcutEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QShortcutEventVTable](fcQShortcutEvent_vdata(self))
  let self = QShortcutEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQShortcutEvent* {.inheritable.} = ref object of QShortcutEvent
  vtbl*: cQShortcutEventVTable

method clone*(self: VirtualQShortcutEvent): gen_qevent_types.QShortcutEvent {.base.} =
  QShortcutEventclone(self[])
method setAccepted*(self: VirtualQShortcutEvent, accepted: bool): void {.base.} =
  QShortcutEventsetAccepted(self[], accepted)

proc fcQShortcutEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQShortcutEvent](fcQShortcutEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQShortcutEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQShortcutEvent](fcQShortcutEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint,
    vtbl: ref QShortcutEventVTable = nil): gen_qevent_types.QShortcutEvent =
  let vtbl = if vtbl == nil: new QShortcutEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutEventVTable](fcQShortcutEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQShortcutEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQShortcutEvent_vtable_callback_setAccepted
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), key.h, id), owned: true)

proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint, ambiguous: bool,
    vtbl: ref QShortcutEventVTable = nil): gen_qevent_types.QShortcutEvent =
  let vtbl = if vtbl == nil: new QShortcutEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QShortcutEventVTable](fcQShortcutEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQShortcutEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQShortcutEvent_vtable_callback_setAccepted
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), key.h, id, ambiguous), owned: true)

const cQShortcutEvent_mvtbl = cQShortcutEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQShortcutEvent()[])](self.fcQShortcutEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQShortcutEvent_method_callback_clone,
  setAccepted: fcQShortcutEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint,
    inst: VirtualQShortcutEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcutEvent_new(addr(cQShortcutEvent_mvtbl), addr(inst[]), key.h, id)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint, ambiguous: bool,
    inst: VirtualQShortcutEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQShortcutEvent_new2(addr(cQShortcutEvent_mvtbl), addr(inst[]), key.h, id, ambiguous)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QWindowStateChangeEvent): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_clone(self.h), owned: false)

proc oldState*(self: gen_qevent_types.QWindowStateChangeEvent): cint =
  cint(fcQWindowStateChangeEvent_oldState(self.h))

proc isOverride*(self: gen_qevent_types.QWindowStateChangeEvent): bool =
  fcQWindowStateChangeEvent_isOverride(self.h)

type QWindowStateChangeEventcloneProc* = proc(self: QWindowStateChangeEvent): gen_qevent_types.QWindowStateChangeEvent {.raises: [], gcsafe.}
type QWindowStateChangeEventsetAcceptedProc* = proc(self: QWindowStateChangeEvent, accepted: bool): void {.raises: [], gcsafe.}

type QWindowStateChangeEventVTable* {.inheritable, pure.} = object
  vtbl: cQWindowStateChangeEventVTable
  clone*: QWindowStateChangeEventcloneProc
  setAccepted*: QWindowStateChangeEventsetAcceptedProc

proc QWindowStateChangeEventclone*(self: gen_qevent_types.QWindowStateChangeEvent): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_virtualbase_clone(self.h), owned: false)

proc QWindowStateChangeEventsetAccepted*(self: gen_qevent_types.QWindowStateChangeEvent, accepted: bool): void =
  fcQWindowStateChangeEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQWindowStateChangeEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowStateChangeEventVTable](fcQWindowStateChangeEvent_vdata(self))
  let self = QWindowStateChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWindowStateChangeEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWindowStateChangeEventVTable](fcQWindowStateChangeEvent_vdata(self))
  let self = QWindowStateChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQWindowStateChangeEvent* {.inheritable.} = ref object of QWindowStateChangeEvent
  vtbl*: cQWindowStateChangeEventVTable

method clone*(self: VirtualQWindowStateChangeEvent): gen_qevent_types.QWindowStateChangeEvent {.base.} =
  QWindowStateChangeEventclone(self[])
method setAccepted*(self: VirtualQWindowStateChangeEvent, accepted: bool): void {.base.} =
  QWindowStateChangeEventsetAccepted(self[], accepted)

proc fcQWindowStateChangeEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWindowStateChangeEvent](fcQWindowStateChangeEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWindowStateChangeEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQWindowStateChangeEvent](fcQWindowStateChangeEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    oldState: cint,
    vtbl: ref QWindowStateChangeEventVTable = nil): gen_qevent_types.QWindowStateChangeEvent =
  let vtbl = if vtbl == nil: new QWindowStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWindowStateChangeEventVTable](fcQWindowStateChangeEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQWindowStateChangeEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQWindowStateChangeEvent_vtable_callback_setAccepted
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(oldState)), owned: true)

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    oldState: cint, isOverride: bool,
    vtbl: ref QWindowStateChangeEventVTable = nil): gen_qevent_types.QWindowStateChangeEvent =
  let vtbl = if vtbl == nil: new QWindowStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWindowStateChangeEventVTable](fcQWindowStateChangeEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQWindowStateChangeEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQWindowStateChangeEvent_vtable_callback_setAccepted
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(oldState), isOverride), owned: true)

const cQWindowStateChangeEvent_mvtbl = cQWindowStateChangeEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWindowStateChangeEvent()[])](self.fcQWindowStateChangeEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQWindowStateChangeEvent_method_callback_clone,
  setAccepted: fcQWindowStateChangeEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    oldState: cint,
    inst: VirtualQWindowStateChangeEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWindowStateChangeEvent_new(addr(cQWindowStateChangeEvent_mvtbl), addr(inst[]), cint(oldState))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    oldState: cint, isOverride: bool,
    inst: VirtualQWindowStateChangeEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWindowStateChangeEvent_new2(addr(cQWindowStateChangeEvent_mvtbl), addr(inst[]), cint(oldState), isOverride)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QTouchEvent): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_clone(self.h), owned: false)

proc target*(self: gen_qevent_types.QTouchEvent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTouchEvent_target(self.h), owned: false)

proc touchPointStates*(self: gen_qevent_types.QTouchEvent): cint =
  cint(fcQTouchEvent_touchPointStates(self.h))

proc touchPoints*(self: gen_qevent_types.QTouchEvent): seq[gen_qeventpoint_types.QEventPoint] =
  var v_ma = fcQTouchEvent_touchPoints(self.h)
  var vx_ret = newSeq[gen_qeventpoint_types.QEventPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qeventpoint_types.QEventPoint(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc isBeginEvent*(self: gen_qevent_types.QTouchEvent): bool =
  fcQTouchEvent_isBeginEvent(self.h)

proc isUpdateEvent*(self: gen_qevent_types.QTouchEvent): bool =
  fcQTouchEvent_isUpdateEvent(self.h)

proc isEndEvent*(self: gen_qevent_types.QTouchEvent): bool =
  fcQTouchEvent_isEndEvent(self.h)

type QTouchEventcloneProc* = proc(self: QTouchEvent): gen_qevent_types.QTouchEvent {.raises: [], gcsafe.}
type QTouchEventisBeginEventProc* = proc(self: QTouchEvent): bool {.raises: [], gcsafe.}
type QTouchEventisUpdateEventProc* = proc(self: QTouchEvent): bool {.raises: [], gcsafe.}
type QTouchEventisEndEventProc* = proc(self: QTouchEvent): bool {.raises: [], gcsafe.}
type QTouchEventsetTimestampProc* = proc(self: QTouchEvent, timestamp: culonglong): void {.raises: [], gcsafe.}
type QTouchEventsetAcceptedProc* = proc(self: QTouchEvent, accepted: bool): void {.raises: [], gcsafe.}

type QTouchEventVTable* {.inheritable, pure.} = object
  vtbl: cQTouchEventVTable
  clone*: QTouchEventcloneProc
  isBeginEvent*: QTouchEventisBeginEventProc
  isUpdateEvent*: QTouchEventisUpdateEventProc
  isEndEvent*: QTouchEventisEndEventProc
  setTimestamp*: QTouchEventsetTimestampProc
  setAccepted*: QTouchEventsetAcceptedProc

proc QTouchEventclone*(self: gen_qevent_types.QTouchEvent): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_virtualbase_clone(self.h), owned: false)

proc QTouchEventisBeginEvent*(self: gen_qevent_types.QTouchEvent): bool =
  fcQTouchEvent_virtualbase_isBeginEvent(self.h)

proc QTouchEventisUpdateEvent*(self: gen_qevent_types.QTouchEvent): bool =
  fcQTouchEvent_virtualbase_isUpdateEvent(self.h)

proc QTouchEventisEndEvent*(self: gen_qevent_types.QTouchEvent): bool =
  fcQTouchEvent_virtualbase_isEndEvent(self.h)

proc QTouchEventsetTimestamp*(self: gen_qevent_types.QTouchEvent, timestamp: culonglong): void =
  fcQTouchEvent_virtualbase_setTimestamp(self.h, timestamp)

proc QTouchEventsetAccepted*(self: gen_qevent_types.QTouchEvent, accepted: bool): void =
  fcQTouchEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQTouchEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](fcQTouchEvent_vdata(self))
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTouchEvent_vtable_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](fcQTouchEvent_vdata(self))
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].isBeginEvent(self)
  virtualReturn

proc fcQTouchEvent_vtable_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](fcQTouchEvent_vdata(self))
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].isUpdateEvent(self)
  virtualReturn

proc fcQTouchEvent_vtable_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](fcQTouchEvent_vdata(self))
  let self = QTouchEvent(h: self)
  var virtualReturn = vtbl[].isEndEvent(self)
  virtualReturn

proc fcQTouchEvent_vtable_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](fcQTouchEvent_vdata(self))
  let self = QTouchEvent(h: self)
  let slotval1 = timestamp
  vtbl[].setTimestamp(self, slotval1)

proc fcQTouchEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QTouchEventVTable](fcQTouchEvent_vdata(self))
  let self = QTouchEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQTouchEvent* {.inheritable.} = ref object of QTouchEvent
  vtbl*: cQTouchEventVTable

method clone*(self: VirtualQTouchEvent): gen_qevent_types.QTouchEvent {.base.} =
  QTouchEventclone(self[])
method isBeginEvent*(self: VirtualQTouchEvent): bool {.base.} =
  QTouchEventisBeginEvent(self[])
method isUpdateEvent*(self: VirtualQTouchEvent): bool {.base.} =
  QTouchEventisUpdateEvent(self[])
method isEndEvent*(self: VirtualQTouchEvent): bool {.base.} =
  QTouchEventisEndEvent(self[])
method setTimestamp*(self: VirtualQTouchEvent, timestamp: culonglong): void {.base.} =
  QTouchEventsetTimestamp(self[], timestamp)
method setAccepted*(self: VirtualQTouchEvent, accepted: bool): void {.base.} =
  QTouchEventsetAccepted(self[], accepted)

proc fcQTouchEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTouchEvent](fcQTouchEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTouchEvent_method_callback_isBeginEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTouchEvent](fcQTouchEvent_vdata(self))
  var virtualReturn = inst.isBeginEvent()
  virtualReturn

proc fcQTouchEvent_method_callback_isUpdateEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTouchEvent](fcQTouchEvent_vdata(self))
  var virtualReturn = inst.isUpdateEvent()
  virtualReturn

proc fcQTouchEvent_method_callback_isEndEvent(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTouchEvent](fcQTouchEvent_vdata(self))
  var virtualReturn = inst.isEndEvent()
  virtualReturn

proc fcQTouchEvent_method_callback_setTimestamp(self: pointer, timestamp: culonglong): void {.cdecl.} =
  let inst = cast[VirtualQTouchEvent](fcQTouchEvent_vdata(self))
  let slotval1 = timestamp
  inst.setTimestamp(slotval1)

proc fcQTouchEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQTouchEvent](fcQTouchEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](fcQTouchEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQTouchEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQTouchEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQTouchEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQTouchEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQTouchEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQTouchEvent_vtable_callback_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(eventType)), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](fcQTouchEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQTouchEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQTouchEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQTouchEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQTouchEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQTouchEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQTouchEvent_vtable_callback_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(eventType), device.h, cint(modifiers), cint(touchPointStates)), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](fcQTouchEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQTouchEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQTouchEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQTouchEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQTouchEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQTouchEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQTouchEvent_vtable_callback_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(eventType), device.h), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint,
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](fcQTouchEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQTouchEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQTouchEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQTouchEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQTouchEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQTouchEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQTouchEvent_vtable_callback_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(eventType), device.h, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPoints: openArray[gen_qeventpoint_types.QEventPoint],
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](fcQTouchEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQTouchEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQTouchEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQTouchEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQTouchEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQTouchEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQTouchEvent_vtable_callback_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new5(addr(vtbl[].vtbl), addr(vtbl[]), cint(eventType), device.h, cint(modifiers), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint, touchPoints: openArray[gen_qeventpoint_types.QEventPoint],
    vtbl: ref QTouchEventVTable = nil): gen_qevent_types.QTouchEvent =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  let vtbl = if vtbl == nil: new QTouchEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTouchEventVTable](fcQTouchEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQTouchEvent_vtable_callback_clone
  if not isNil(vtbl[].isBeginEvent):
    vtbl[].vtbl.isBeginEvent = fcQTouchEvent_vtable_callback_isBeginEvent
  if not isNil(vtbl[].isUpdateEvent):
    vtbl[].vtbl.isUpdateEvent = fcQTouchEvent_vtable_callback_isUpdateEvent
  if not isNil(vtbl[].isEndEvent):
    vtbl[].vtbl.isEndEvent = fcQTouchEvent_vtable_callback_isEndEvent
  if not isNil(vtbl[].setTimestamp):
    vtbl[].vtbl.setTimestamp = fcQTouchEvent_vtable_callback_setTimestamp
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQTouchEvent_vtable_callback_setAccepted
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new6(addr(vtbl[].vtbl), addr(vtbl[]), cint(eventType), device.h, cint(modifiers), cint(touchPointStates), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))), owned: true)

const cQTouchEvent_mvtbl = cQTouchEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTouchEvent()[])](self.fcQTouchEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQTouchEvent_method_callback_clone,
  isBeginEvent: fcQTouchEvent_method_callback_isBeginEvent,
  isUpdateEvent: fcQTouchEvent_method_callback_isUpdateEvent,
  isEndEvent: fcQTouchEvent_method_callback_isEndEvent,
  setTimestamp: fcQTouchEvent_method_callback_setTimestamp,
  setAccepted: fcQTouchEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint,
    inst: VirtualQTouchEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTouchEvent_new(addr(cQTouchEvent_mvtbl), addr(inst[]), cint(eventType))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint,
    inst: VirtualQTouchEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTouchEvent_new2(addr(cQTouchEvent_mvtbl), addr(inst[]), cint(eventType), device.h, cint(modifiers), cint(touchPointStates))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice,
    inst: VirtualQTouchEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTouchEvent_new3(addr(cQTouchEvent_mvtbl), addr(inst[]), cint(eventType), device.h)
  inst[].owned = true

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint,
    inst: VirtualQTouchEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTouchEvent_new4(addr(cQTouchEvent_mvtbl), addr(inst[]), cint(eventType), device.h, cint(modifiers))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPoints: openArray[gen_qeventpoint_types.QEventPoint],
    inst: VirtualQTouchEvent) =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTouchEvent_new5(addr(cQTouchEvent_mvtbl), addr(inst[]), cint(eventType), device.h, cint(modifiers), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0])))
  inst[].owned = true

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qpointingdevice_types.QPointingDevice, modifiers: cint, touchPointStates: cint, touchPoints: openArray[gen_qeventpoint_types.QEventPoint],
    inst: VirtualQTouchEvent) =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTouchEvent_new6(addr(cQTouchEvent_mvtbl), addr(inst[]), cint(eventType), device.h, cint(modifiers), cint(touchPointStates), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0])))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QScrollPrepareEvent): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_clone(self.h), owned: false)

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

type QScrollPrepareEventcloneProc* = proc(self: QScrollPrepareEvent): gen_qevent_types.QScrollPrepareEvent {.raises: [], gcsafe.}
type QScrollPrepareEventsetAcceptedProc* = proc(self: QScrollPrepareEvent, accepted: bool): void {.raises: [], gcsafe.}

type QScrollPrepareEventVTable* {.inheritable, pure.} = object
  vtbl: cQScrollPrepareEventVTable
  clone*: QScrollPrepareEventcloneProc
  setAccepted*: QScrollPrepareEventsetAcceptedProc

proc QScrollPrepareEventclone*(self: gen_qevent_types.QScrollPrepareEvent): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_virtualbase_clone(self.h), owned: false)

proc QScrollPrepareEventsetAccepted*(self: gen_qevent_types.QScrollPrepareEvent, accepted: bool): void =
  fcQScrollPrepareEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQScrollPrepareEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollPrepareEventVTable](fcQScrollPrepareEvent_vdata(self))
  let self = QScrollPrepareEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScrollPrepareEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollPrepareEventVTable](fcQScrollPrepareEvent_vdata(self))
  let self = QScrollPrepareEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQScrollPrepareEvent* {.inheritable.} = ref object of QScrollPrepareEvent
  vtbl*: cQScrollPrepareEventVTable

method clone*(self: VirtualQScrollPrepareEvent): gen_qevent_types.QScrollPrepareEvent {.base.} =
  QScrollPrepareEventclone(self[])
method setAccepted*(self: VirtualQScrollPrepareEvent, accepted: bool): void {.base.} =
  QScrollPrepareEventsetAccepted(self[], accepted)

proc fcQScrollPrepareEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollPrepareEvent](fcQScrollPrepareEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScrollPrepareEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQScrollPrepareEvent](fcQScrollPrepareEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QScrollPrepareEvent,
    startPos: gen_qpoint_types.QPointF,
    vtbl: ref QScrollPrepareEventVTable = nil): gen_qevent_types.QScrollPrepareEvent =
  let vtbl = if vtbl == nil: new QScrollPrepareEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollPrepareEventVTable](fcQScrollPrepareEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQScrollPrepareEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQScrollPrepareEvent_vtable_callback_setAccepted
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), startPos.h), owned: true)

const cQScrollPrepareEvent_mvtbl = cQScrollPrepareEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScrollPrepareEvent()[])](self.fcQScrollPrepareEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQScrollPrepareEvent_method_callback_clone,
  setAccepted: fcQScrollPrepareEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QScrollPrepareEvent,
    startPos: gen_qpoint_types.QPointF,
    inst: VirtualQScrollPrepareEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollPrepareEvent_new(addr(cQScrollPrepareEvent_mvtbl), addr(inst[]), startPos.h)
  inst[].owned = true

proc clone*(self: gen_qevent_types.QScrollEvent): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_clone(self.h), owned: false)

proc contentPos*(self: gen_qevent_types.QScrollEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_contentPos(self.h), owned: true)

proc overshootDistance*(self: gen_qevent_types.QScrollEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_overshootDistance(self.h), owned: true)

proc scrollState*(self: gen_qevent_types.QScrollEvent): cint =
  cint(fcQScrollEvent_scrollState(self.h))

type QScrollEventcloneProc* = proc(self: QScrollEvent): gen_qevent_types.QScrollEvent {.raises: [], gcsafe.}
type QScrollEventsetAcceptedProc* = proc(self: QScrollEvent, accepted: bool): void {.raises: [], gcsafe.}

type QScrollEventVTable* {.inheritable, pure.} = object
  vtbl: cQScrollEventVTable
  clone*: QScrollEventcloneProc
  setAccepted*: QScrollEventsetAcceptedProc

proc QScrollEventclone*(self: gen_qevent_types.QScrollEvent): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_virtualbase_clone(self.h), owned: false)

proc QScrollEventsetAccepted*(self: gen_qevent_types.QScrollEvent, accepted: bool): void =
  fcQScrollEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQScrollEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScrollEventVTable](fcQScrollEvent_vdata(self))
  let self = QScrollEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScrollEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScrollEventVTable](fcQScrollEvent_vdata(self))
  let self = QScrollEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQScrollEvent* {.inheritable.} = ref object of QScrollEvent
  vtbl*: cQScrollEventVTable

method clone*(self: VirtualQScrollEvent): gen_qevent_types.QScrollEvent {.base.} =
  QScrollEventclone(self[])
method setAccepted*(self: VirtualQScrollEvent, accepted: bool): void {.base.} =
  QScrollEventsetAccepted(self[], accepted)

proc fcQScrollEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScrollEvent](fcQScrollEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScrollEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQScrollEvent](fcQScrollEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QScrollEvent,
    contentPos: gen_qpoint_types.QPointF, overshoot: gen_qpoint_types.QPointF, scrollState: cint,
    vtbl: ref QScrollEventVTable = nil): gen_qevent_types.QScrollEvent =
  let vtbl = if vtbl == nil: new QScrollEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScrollEventVTable](fcQScrollEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQScrollEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQScrollEvent_vtable_callback_setAccepted
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), contentPos.h, overshoot.h, cint(scrollState)), owned: true)

const cQScrollEvent_mvtbl = cQScrollEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScrollEvent()[])](self.fcQScrollEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQScrollEvent_method_callback_clone,
  setAccepted: fcQScrollEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QScrollEvent,
    contentPos: gen_qpoint_types.QPointF, overshoot: gen_qpoint_types.QPointF, scrollState: cint,
    inst: VirtualQScrollEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScrollEvent_new(addr(cQScrollEvent_mvtbl), addr(inst[]), contentPos.h, overshoot.h, cint(scrollState))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QScreenOrientationChangeEvent): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_clone(self.h), owned: false)

proc screen*(self: gen_qevent_types.QScreenOrientationChangeEvent): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQScreenOrientationChangeEvent_screen(self.h), owned: false)

proc orientation*(self: gen_qevent_types.QScreenOrientationChangeEvent): cint =
  cint(fcQScreenOrientationChangeEvent_orientation(self.h))

type QScreenOrientationChangeEventcloneProc* = proc(self: QScreenOrientationChangeEvent): gen_qevent_types.QScreenOrientationChangeEvent {.raises: [], gcsafe.}
type QScreenOrientationChangeEventsetAcceptedProc* = proc(self: QScreenOrientationChangeEvent, accepted: bool): void {.raises: [], gcsafe.}

type QScreenOrientationChangeEventVTable* {.inheritable, pure.} = object
  vtbl: cQScreenOrientationChangeEventVTable
  clone*: QScreenOrientationChangeEventcloneProc
  setAccepted*: QScreenOrientationChangeEventsetAcceptedProc

proc QScreenOrientationChangeEventclone*(self: gen_qevent_types.QScreenOrientationChangeEvent): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_virtualbase_clone(self.h), owned: false)

proc QScreenOrientationChangeEventsetAccepted*(self: gen_qevent_types.QScreenOrientationChangeEvent, accepted: bool): void =
  fcQScreenOrientationChangeEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQScreenOrientationChangeEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScreenOrientationChangeEventVTable](fcQScreenOrientationChangeEvent_vdata(self))
  let self = QScreenOrientationChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScreenOrientationChangeEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScreenOrientationChangeEventVTable](fcQScreenOrientationChangeEvent_vdata(self))
  let self = QScreenOrientationChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQScreenOrientationChangeEvent* {.inheritable.} = ref object of QScreenOrientationChangeEvent
  vtbl*: cQScreenOrientationChangeEventVTable

method clone*(self: VirtualQScreenOrientationChangeEvent): gen_qevent_types.QScreenOrientationChangeEvent {.base.} =
  QScreenOrientationChangeEventclone(self[])
method setAccepted*(self: VirtualQScreenOrientationChangeEvent, accepted: bool): void {.base.} =
  QScreenOrientationChangeEventsetAccepted(self[], accepted)

proc fcQScreenOrientationChangeEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScreenOrientationChangeEvent](fcQScreenOrientationChangeEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScreenOrientationChangeEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQScreenOrientationChangeEvent](fcQScreenOrientationChangeEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QScreenOrientationChangeEvent,
    screen: gen_qscreen_types.QScreen, orientation: cint,
    vtbl: ref QScreenOrientationChangeEventVTable = nil): gen_qevent_types.QScreenOrientationChangeEvent =
  let vtbl = if vtbl == nil: new QScreenOrientationChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScreenOrientationChangeEventVTable](fcQScreenOrientationChangeEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQScreenOrientationChangeEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQScreenOrientationChangeEvent_vtable_callback_setAccepted
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), screen.h, cint(orientation)), owned: true)

const cQScreenOrientationChangeEvent_mvtbl = cQScreenOrientationChangeEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScreenOrientationChangeEvent()[])](self.fcQScreenOrientationChangeEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQScreenOrientationChangeEvent_method_callback_clone,
  setAccepted: fcQScreenOrientationChangeEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QScreenOrientationChangeEvent,
    screen: gen_qscreen_types.QScreen, orientation: cint,
    inst: VirtualQScreenOrientationChangeEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScreenOrientationChangeEvent_new(addr(cQScreenOrientationChangeEvent_mvtbl), addr(inst[]), screen.h, cint(orientation))
  inst[].owned = true

proc clone*(self: gen_qevent_types.QApplicationStateChangeEvent): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_clone(self.h), owned: false)

proc applicationState*(self: gen_qevent_types.QApplicationStateChangeEvent): cint =
  cint(fcQApplicationStateChangeEvent_applicationState(self.h))

type QApplicationStateChangeEventcloneProc* = proc(self: QApplicationStateChangeEvent): gen_qevent_types.QApplicationStateChangeEvent {.raises: [], gcsafe.}
type QApplicationStateChangeEventsetAcceptedProc* = proc(self: QApplicationStateChangeEvent, accepted: bool): void {.raises: [], gcsafe.}

type QApplicationStateChangeEventVTable* {.inheritable, pure.} = object
  vtbl: cQApplicationStateChangeEventVTable
  clone*: QApplicationStateChangeEventcloneProc
  setAccepted*: QApplicationStateChangeEventsetAcceptedProc

proc QApplicationStateChangeEventclone*(self: gen_qevent_types.QApplicationStateChangeEvent): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_virtualbase_clone(self.h), owned: false)

proc QApplicationStateChangeEventsetAccepted*(self: gen_qevent_types.QApplicationStateChangeEvent, accepted: bool): void =
  fcQApplicationStateChangeEvent_virtualbase_setAccepted(self.h, accepted)


proc fcQApplicationStateChangeEvent_vtable_callback_clone(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QApplicationStateChangeEventVTable](fcQApplicationStateChangeEvent_vdata(self))
  let self = QApplicationStateChangeEvent(h: self)
  var virtualReturn = vtbl[].clone(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQApplicationStateChangeEvent_vtable_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let vtbl = cast[ptr QApplicationStateChangeEventVTable](fcQApplicationStateChangeEvent_vdata(self))
  let self = QApplicationStateChangeEvent(h: self)
  let slotval1 = accepted
  vtbl[].setAccepted(self, slotval1)

type VirtualQApplicationStateChangeEvent* {.inheritable.} = ref object of QApplicationStateChangeEvent
  vtbl*: cQApplicationStateChangeEventVTable

method clone*(self: VirtualQApplicationStateChangeEvent): gen_qevent_types.QApplicationStateChangeEvent {.base.} =
  QApplicationStateChangeEventclone(self[])
method setAccepted*(self: VirtualQApplicationStateChangeEvent, accepted: bool): void {.base.} =
  QApplicationStateChangeEventsetAccepted(self[], accepted)

proc fcQApplicationStateChangeEvent_method_callback_clone(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQApplicationStateChangeEvent](fcQApplicationStateChangeEvent_vdata(self))
  var virtualReturn = inst.clone()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQApplicationStateChangeEvent_method_callback_setAccepted(self: pointer, accepted: bool): void {.cdecl.} =
  let inst = cast[VirtualQApplicationStateChangeEvent](fcQApplicationStateChangeEvent_vdata(self))
  let slotval1 = accepted
  inst.setAccepted(slotval1)


proc create*(T: type gen_qevent_types.QApplicationStateChangeEvent,
    state: cint,
    vtbl: ref QApplicationStateChangeEventVTable = nil): gen_qevent_types.QApplicationStateChangeEvent =
  let vtbl = if vtbl == nil: new QApplicationStateChangeEventVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QApplicationStateChangeEventVTable](fcQApplicationStateChangeEvent_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].clone):
    vtbl[].vtbl.clone = fcQApplicationStateChangeEvent_vtable_callback_clone
  if not isNil(vtbl[].setAccepted):
    vtbl[].vtbl.setAccepted = fcQApplicationStateChangeEvent_vtable_callback_setAccepted
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_new(addr(vtbl[].vtbl), addr(vtbl[]), cint(state)), owned: true)

const cQApplicationStateChangeEvent_mvtbl = cQApplicationStateChangeEventVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQApplicationStateChangeEvent()[])](self.fcQApplicationStateChangeEvent_vtbl())
    inst[].h = nil
    inst[].owned = false,

  clone: fcQApplicationStateChangeEvent_method_callback_clone,
  setAccepted: fcQApplicationStateChangeEvent_method_callback_setAccepted,
)
proc create*(T: type gen_qevent_types.QApplicationStateChangeEvent,
    state: cint,
    inst: VirtualQApplicationStateChangeEvent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQApplicationStateChangeEvent_new(addr(cQApplicationStateChangeEvent_mvtbl), addr(inst[]), cint(state))
  inst[].owned = true

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

