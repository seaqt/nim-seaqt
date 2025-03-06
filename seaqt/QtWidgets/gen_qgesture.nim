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
{.compile("gen_qgesture.cpp", cflags).}


type QGestureGestureCancelPolicyEnum* = distinct cint
template CancelNone*(_: type QGestureGestureCancelPolicyEnum): untyped = 0
template CancelAllInContext*(_: type QGestureGestureCancelPolicyEnum): untyped = 1


type QPinchGestureChangeFlagEnum* = distinct cint
template ScaleFactorChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 1
template RotationAngleChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 2
template CenterPointChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 4


type QSwipeGestureSwipeDirectionEnum* = distinct cint
template NoDirection*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 0
template Left*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 1
template Right*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 2
template Up*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 3
template Down*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 4


import ./gen_qgesture_types
export gen_qgesture_types

import
  ../QtCore/gen_qcoreevent,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qwidget_types
export
  gen_qcoreevent,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qwidget_types

type cQGesture*{.exportc: "QGesture", incompleteStruct.} = object
type cQPanGesture*{.exportc: "QPanGesture", incompleteStruct.} = object
type cQPinchGesture*{.exportc: "QPinchGesture", incompleteStruct.} = object
type cQSwipeGesture*{.exportc: "QSwipeGesture", incompleteStruct.} = object
type cQTapGesture*{.exportc: "QTapGesture", incompleteStruct.} = object
type cQTapAndHoldGesture*{.exportc: "QTapAndHoldGesture", incompleteStruct.} = object
type cQGestureEvent*{.exportc: "QGestureEvent", incompleteStruct.} = object

proc fcQGesture_new(): ptr cQGesture {.importc: "QGesture_new".}
proc fcQGesture_new2(parent: pointer): ptr cQGesture {.importc: "QGesture_new2".}
proc fcQGesture_metaObject(self: pointer, ): pointer {.importc: "QGesture_metaObject".}
proc fcQGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QGesture_metacast".}
proc fcQGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGesture_metacall".}
proc fcQGesture_tr(s: cstring): struct_miqt_string {.importc: "QGesture_tr".}
proc fcQGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QGesture_trUtf8".}
proc fcQGesture_gestureType(self: pointer, ): cint {.importc: "QGesture_gestureType".}
proc fcQGesture_state(self: pointer, ): cint {.importc: "QGesture_state".}
proc fcQGesture_hotSpot(self: pointer, ): pointer {.importc: "QGesture_hotSpot".}
proc fcQGesture_setHotSpot(self: pointer, value: pointer): void {.importc: "QGesture_setHotSpot".}
proc fcQGesture_hasHotSpot(self: pointer, ): bool {.importc: "QGesture_hasHotSpot".}
proc fcQGesture_unsetHotSpot(self: pointer, ): void {.importc: "QGesture_unsetHotSpot".}
proc fcQGesture_setGestureCancelPolicy(self: pointer, policy: cint): void {.importc: "QGesture_setGestureCancelPolicy".}
proc fcQGesture_gestureCancelPolicy(self: pointer, ): cint {.importc: "QGesture_gestureCancelPolicy".}
proc fcQGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGesture_tr2".}
proc fcQGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGesture_tr3".}
proc fcQGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGesture_trUtf82".}
proc fcQGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGesture_trUtf83".}
proc fQGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGesture_virtualbase_metaObject".}
proc fcQGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGesture_override_virtual_metaObject".}
proc fQGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGesture_virtualbase_metacast".}
proc fcQGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGesture_override_virtual_metacast".}
proc fQGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGesture_virtualbase_metacall".}
proc fcQGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGesture_override_virtual_metacall".}
proc fQGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGesture_virtualbase_event".}
proc fcQGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QGesture_override_virtual_event".}
proc fQGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGesture_virtualbase_eventFilter".}
proc fcQGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGesture_override_virtual_eventFilter".}
proc fQGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGesture_virtualbase_timerEvent".}
proc fcQGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGesture_override_virtual_timerEvent".}
proc fQGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGesture_virtualbase_childEvent".}
proc fcQGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGesture_override_virtual_childEvent".}
proc fQGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGesture_virtualbase_customEvent".}
proc fcQGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGesture_override_virtual_customEvent".}
proc fQGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGesture_virtualbase_connectNotify".}
proc fcQGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGesture_override_virtual_connectNotify".}
proc fQGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGesture_virtualbase_disconnectNotify".}
proc fcQGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGesture_override_virtual_disconnectNotify".}
proc fcQGesture_staticMetaObject(): pointer {.importc: "QGesture_staticMetaObject".}
proc fcQGesture_delete(self: pointer) {.importc: "QGesture_delete".}
proc fcQPanGesture_new(): ptr cQPanGesture {.importc: "QPanGesture_new".}
proc fcQPanGesture_new2(parent: pointer): ptr cQPanGesture {.importc: "QPanGesture_new2".}
proc fcQPanGesture_metaObject(self: pointer, ): pointer {.importc: "QPanGesture_metaObject".}
proc fcQPanGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QPanGesture_metacast".}
proc fcQPanGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPanGesture_metacall".}
proc fcQPanGesture_tr(s: cstring): struct_miqt_string {.importc: "QPanGesture_tr".}
proc fcQPanGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QPanGesture_trUtf8".}
proc fcQPanGesture_lastOffset(self: pointer, ): pointer {.importc: "QPanGesture_lastOffset".}
proc fcQPanGesture_offset(self: pointer, ): pointer {.importc: "QPanGesture_offset".}
proc fcQPanGesture_delta(self: pointer, ): pointer {.importc: "QPanGesture_delta".}
proc fcQPanGesture_acceleration(self: pointer, ): float64 {.importc: "QPanGesture_acceleration".}
proc fcQPanGesture_setLastOffset(self: pointer, value: pointer): void {.importc: "QPanGesture_setLastOffset".}
proc fcQPanGesture_setOffset(self: pointer, value: pointer): void {.importc: "QPanGesture_setOffset".}
proc fcQPanGesture_setAcceleration(self: pointer, value: float64): void {.importc: "QPanGesture_setAcceleration".}
proc fcQPanGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPanGesture_tr2".}
proc fcQPanGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPanGesture_tr3".}
proc fcQPanGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPanGesture_trUtf82".}
proc fcQPanGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPanGesture_trUtf83".}
proc fQPanGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPanGesture_virtualbase_metaObject".}
proc fcQPanGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_metaObject".}
proc fQPanGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPanGesture_virtualbase_metacast".}
proc fcQPanGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_metacast".}
proc fQPanGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPanGesture_virtualbase_metacall".}
proc fcQPanGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_metacall".}
proc fQPanGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPanGesture_virtualbase_event".}
proc fcQPanGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_event".}
proc fQPanGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPanGesture_virtualbase_eventFilter".}
proc fcQPanGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_eventFilter".}
proc fQPanGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPanGesture_virtualbase_timerEvent".}
proc fcQPanGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_timerEvent".}
proc fQPanGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPanGesture_virtualbase_childEvent".}
proc fcQPanGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_childEvent".}
proc fQPanGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPanGesture_virtualbase_customEvent".}
proc fcQPanGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_customEvent".}
proc fQPanGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPanGesture_virtualbase_connectNotify".}
proc fcQPanGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_connectNotify".}
proc fQPanGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPanGesture_virtualbase_disconnectNotify".}
proc fcQPanGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPanGesture_override_virtual_disconnectNotify".}
proc fcQPanGesture_staticMetaObject(): pointer {.importc: "QPanGesture_staticMetaObject".}
proc fcQPanGesture_delete(self: pointer) {.importc: "QPanGesture_delete".}
proc fcQPinchGesture_new(): ptr cQPinchGesture {.importc: "QPinchGesture_new".}
proc fcQPinchGesture_new2(parent: pointer): ptr cQPinchGesture {.importc: "QPinchGesture_new2".}
proc fcQPinchGesture_metaObject(self: pointer, ): pointer {.importc: "QPinchGesture_metaObject".}
proc fcQPinchGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QPinchGesture_metacast".}
proc fcQPinchGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPinchGesture_metacall".}
proc fcQPinchGesture_tr(s: cstring): struct_miqt_string {.importc: "QPinchGesture_tr".}
proc fcQPinchGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QPinchGesture_trUtf8".}
proc fcQPinchGesture_totalChangeFlags(self: pointer, ): cint {.importc: "QPinchGesture_totalChangeFlags".}
proc fcQPinchGesture_setTotalChangeFlags(self: pointer, value: cint): void {.importc: "QPinchGesture_setTotalChangeFlags".}
proc fcQPinchGesture_changeFlags(self: pointer, ): cint {.importc: "QPinchGesture_changeFlags".}
proc fcQPinchGesture_setChangeFlags(self: pointer, value: cint): void {.importc: "QPinchGesture_setChangeFlags".}
proc fcQPinchGesture_startCenterPoint(self: pointer, ): pointer {.importc: "QPinchGesture_startCenterPoint".}
proc fcQPinchGesture_lastCenterPoint(self: pointer, ): pointer {.importc: "QPinchGesture_lastCenterPoint".}
proc fcQPinchGesture_centerPoint(self: pointer, ): pointer {.importc: "QPinchGesture_centerPoint".}
proc fcQPinchGesture_setStartCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setStartCenterPoint".}
proc fcQPinchGesture_setLastCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setLastCenterPoint".}
proc fcQPinchGesture_setCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setCenterPoint".}
proc fcQPinchGesture_totalScaleFactor(self: pointer, ): float64 {.importc: "QPinchGesture_totalScaleFactor".}
proc fcQPinchGesture_lastScaleFactor(self: pointer, ): float64 {.importc: "QPinchGesture_lastScaleFactor".}
proc fcQPinchGesture_scaleFactor(self: pointer, ): float64 {.importc: "QPinchGesture_scaleFactor".}
proc fcQPinchGesture_setTotalScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setTotalScaleFactor".}
proc fcQPinchGesture_setLastScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setLastScaleFactor".}
proc fcQPinchGesture_setScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setScaleFactor".}
proc fcQPinchGesture_totalRotationAngle(self: pointer, ): float64 {.importc: "QPinchGesture_totalRotationAngle".}
proc fcQPinchGesture_lastRotationAngle(self: pointer, ): float64 {.importc: "QPinchGesture_lastRotationAngle".}
proc fcQPinchGesture_rotationAngle(self: pointer, ): float64 {.importc: "QPinchGesture_rotationAngle".}
proc fcQPinchGesture_setTotalRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setTotalRotationAngle".}
proc fcQPinchGesture_setLastRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setLastRotationAngle".}
proc fcQPinchGesture_setRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setRotationAngle".}
proc fcQPinchGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPinchGesture_tr2".}
proc fcQPinchGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPinchGesture_tr3".}
proc fcQPinchGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPinchGesture_trUtf82".}
proc fcQPinchGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPinchGesture_trUtf83".}
proc fQPinchGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPinchGesture_virtualbase_metaObject".}
proc fcQPinchGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_metaObject".}
proc fQPinchGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPinchGesture_virtualbase_metacast".}
proc fcQPinchGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_metacast".}
proc fQPinchGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPinchGesture_virtualbase_metacall".}
proc fcQPinchGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_metacall".}
proc fQPinchGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPinchGesture_virtualbase_event".}
proc fcQPinchGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_event".}
proc fQPinchGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPinchGesture_virtualbase_eventFilter".}
proc fcQPinchGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_eventFilter".}
proc fQPinchGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPinchGesture_virtualbase_timerEvent".}
proc fcQPinchGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_timerEvent".}
proc fQPinchGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPinchGesture_virtualbase_childEvent".}
proc fcQPinchGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_childEvent".}
proc fQPinchGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPinchGesture_virtualbase_customEvent".}
proc fcQPinchGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_customEvent".}
proc fQPinchGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPinchGesture_virtualbase_connectNotify".}
proc fcQPinchGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_connectNotify".}
proc fQPinchGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPinchGesture_virtualbase_disconnectNotify".}
proc fcQPinchGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPinchGesture_override_virtual_disconnectNotify".}
proc fcQPinchGesture_staticMetaObject(): pointer {.importc: "QPinchGesture_staticMetaObject".}
proc fcQPinchGesture_delete(self: pointer) {.importc: "QPinchGesture_delete".}
proc fcQSwipeGesture_new(): ptr cQSwipeGesture {.importc: "QSwipeGesture_new".}
proc fcQSwipeGesture_new2(parent: pointer): ptr cQSwipeGesture {.importc: "QSwipeGesture_new2".}
proc fcQSwipeGesture_metaObject(self: pointer, ): pointer {.importc: "QSwipeGesture_metaObject".}
proc fcQSwipeGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSwipeGesture_metacast".}
proc fcQSwipeGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSwipeGesture_metacall".}
proc fcQSwipeGesture_tr(s: cstring): struct_miqt_string {.importc: "QSwipeGesture_tr".}
proc fcQSwipeGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSwipeGesture_trUtf8".}
proc fcQSwipeGesture_horizontalDirection(self: pointer, ): cint {.importc: "QSwipeGesture_horizontalDirection".}
proc fcQSwipeGesture_verticalDirection(self: pointer, ): cint {.importc: "QSwipeGesture_verticalDirection".}
proc fcQSwipeGesture_swipeAngle(self: pointer, ): float64 {.importc: "QSwipeGesture_swipeAngle".}
proc fcQSwipeGesture_setSwipeAngle(self: pointer, value: float64): void {.importc: "QSwipeGesture_setSwipeAngle".}
proc fcQSwipeGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSwipeGesture_tr2".}
proc fcQSwipeGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSwipeGesture_tr3".}
proc fcQSwipeGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSwipeGesture_trUtf82".}
proc fcQSwipeGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSwipeGesture_trUtf83".}
proc fQSwipeGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSwipeGesture_virtualbase_metaObject".}
proc fcQSwipeGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_metaObject".}
proc fQSwipeGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSwipeGesture_virtualbase_metacast".}
proc fcQSwipeGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_metacast".}
proc fQSwipeGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSwipeGesture_virtualbase_metacall".}
proc fcQSwipeGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_metacall".}
proc fQSwipeGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSwipeGesture_virtualbase_event".}
proc fcQSwipeGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_event".}
proc fQSwipeGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSwipeGesture_virtualbase_eventFilter".}
proc fcQSwipeGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_eventFilter".}
proc fQSwipeGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSwipeGesture_virtualbase_timerEvent".}
proc fcQSwipeGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_timerEvent".}
proc fQSwipeGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSwipeGesture_virtualbase_childEvent".}
proc fcQSwipeGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_childEvent".}
proc fQSwipeGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSwipeGesture_virtualbase_customEvent".}
proc fcQSwipeGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_customEvent".}
proc fQSwipeGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSwipeGesture_virtualbase_connectNotify".}
proc fcQSwipeGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_connectNotify".}
proc fQSwipeGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSwipeGesture_virtualbase_disconnectNotify".}
proc fcQSwipeGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSwipeGesture_override_virtual_disconnectNotify".}
proc fcQSwipeGesture_staticMetaObject(): pointer {.importc: "QSwipeGesture_staticMetaObject".}
proc fcQSwipeGesture_delete(self: pointer) {.importc: "QSwipeGesture_delete".}
proc fcQTapGesture_new(): ptr cQTapGesture {.importc: "QTapGesture_new".}
proc fcQTapGesture_new2(parent: pointer): ptr cQTapGesture {.importc: "QTapGesture_new2".}
proc fcQTapGesture_metaObject(self: pointer, ): pointer {.importc: "QTapGesture_metaObject".}
proc fcQTapGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapGesture_metacast".}
proc fcQTapGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapGesture_metacall".}
proc fcQTapGesture_tr(s: cstring): struct_miqt_string {.importc: "QTapGesture_tr".}
proc fcQTapGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QTapGesture_trUtf8".}
proc fcQTapGesture_position(self: pointer, ): pointer {.importc: "QTapGesture_position".}
proc fcQTapGesture_setPosition(self: pointer, pos: pointer): void {.importc: "QTapGesture_setPosition".}
proc fcQTapGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapGesture_tr2".}
proc fcQTapGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapGesture_tr3".}
proc fcQTapGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapGesture_trUtf82".}
proc fcQTapGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapGesture_trUtf83".}
proc fQTapGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTapGesture_virtualbase_metaObject".}
proc fcQTapGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_metaObject".}
proc fQTapGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTapGesture_virtualbase_metacast".}
proc fcQTapGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_metacast".}
proc fQTapGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTapGesture_virtualbase_metacall".}
proc fcQTapGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_metacall".}
proc fQTapGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTapGesture_virtualbase_event".}
proc fcQTapGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_event".}
proc fQTapGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTapGesture_virtualbase_eventFilter".}
proc fcQTapGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_eventFilter".}
proc fQTapGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTapGesture_virtualbase_timerEvent".}
proc fcQTapGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_timerEvent".}
proc fQTapGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTapGesture_virtualbase_childEvent".}
proc fcQTapGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_childEvent".}
proc fQTapGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTapGesture_virtualbase_customEvent".}
proc fcQTapGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_customEvent".}
proc fQTapGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTapGesture_virtualbase_connectNotify".}
proc fcQTapGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_connectNotify".}
proc fQTapGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTapGesture_virtualbase_disconnectNotify".}
proc fcQTapGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTapGesture_override_virtual_disconnectNotify".}
proc fcQTapGesture_staticMetaObject(): pointer {.importc: "QTapGesture_staticMetaObject".}
proc fcQTapGesture_delete(self: pointer) {.importc: "QTapGesture_delete".}
proc fcQTapAndHoldGesture_new(): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new".}
proc fcQTapAndHoldGesture_new2(parent: pointer): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new2".}
proc fcQTapAndHoldGesture_metaObject(self: pointer, ): pointer {.importc: "QTapAndHoldGesture_metaObject".}
proc fcQTapAndHoldGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapAndHoldGesture_metacast".}
proc fcQTapAndHoldGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapAndHoldGesture_metacall".}
proc fcQTapAndHoldGesture_tr(s: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_tr".}
proc fcQTapAndHoldGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf8".}
proc fcQTapAndHoldGesture_position(self: pointer, ): pointer {.importc: "QTapAndHoldGesture_position".}
proc fcQTapAndHoldGesture_setPosition(self: pointer, pos: pointer): void {.importc: "QTapAndHoldGesture_setPosition".}
proc fcQTapAndHoldGesture_setTimeout(msecs: cint): void {.importc: "QTapAndHoldGesture_setTimeout".}
proc fcQTapAndHoldGesture_timeout(): cint {.importc: "QTapAndHoldGesture_timeout".}
proc fcQTapAndHoldGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_tr2".}
proc fcQTapAndHoldGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapAndHoldGesture_tr3".}
proc fcQTapAndHoldGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf82".}
proc fcQTapAndHoldGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf83".}
proc fQTapAndHoldGesture_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTapAndHoldGesture_virtualbase_metaObject".}
proc fcQTapAndHoldGesture_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_metaObject".}
proc fQTapAndHoldGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTapAndHoldGesture_virtualbase_metacast".}
proc fcQTapAndHoldGesture_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_metacast".}
proc fQTapAndHoldGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTapAndHoldGesture_virtualbase_metacall".}
proc fcQTapAndHoldGesture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_metacall".}
proc fQTapAndHoldGesture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTapAndHoldGesture_virtualbase_event".}
proc fcQTapAndHoldGesture_override_virtual_event(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_event".}
proc fQTapAndHoldGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTapAndHoldGesture_virtualbase_eventFilter".}
proc fcQTapAndHoldGesture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_eventFilter".}
proc fQTapAndHoldGesture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_timerEvent".}
proc fcQTapAndHoldGesture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_timerEvent".}
proc fQTapAndHoldGesture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_childEvent".}
proc fcQTapAndHoldGesture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_childEvent".}
proc fQTapAndHoldGesture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_customEvent".}
proc fcQTapAndHoldGesture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_customEvent".}
proc fQTapAndHoldGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_connectNotify".}
proc fcQTapAndHoldGesture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_connectNotify".}
proc fQTapAndHoldGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTapAndHoldGesture_virtualbase_disconnectNotify".}
proc fcQTapAndHoldGesture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTapAndHoldGesture_override_virtual_disconnectNotify".}
proc fcQTapAndHoldGesture_staticMetaObject(): pointer {.importc: "QTapAndHoldGesture_staticMetaObject".}
proc fcQTapAndHoldGesture_delete(self: pointer) {.importc: "QTapAndHoldGesture_delete".}
proc fcQGestureEvent_new(gestures: struct_miqt_array): ptr cQGestureEvent {.importc: "QGestureEvent_new".}
proc fcQGestureEvent_new2(param1: pointer): ptr cQGestureEvent {.importc: "QGestureEvent_new2".}
proc fcQGestureEvent_gestures(self: pointer, ): struct_miqt_array {.importc: "QGestureEvent_gestures".}
proc fcQGestureEvent_gesture(self: pointer, typeVal: cint): pointer {.importc: "QGestureEvent_gesture".}
proc fcQGestureEvent_activeGestures(self: pointer, ): struct_miqt_array {.importc: "QGestureEvent_activeGestures".}
proc fcQGestureEvent_canceledGestures(self: pointer, ): struct_miqt_array {.importc: "QGestureEvent_canceledGestures".}
proc fcQGestureEvent_setAccepted(self: pointer, param1: pointer, param2: bool): void {.importc: "QGestureEvent_setAccepted".}
proc fcQGestureEvent_accept(self: pointer, param1: pointer): void {.importc: "QGestureEvent_accept".}
proc fcQGestureEvent_ignore(self: pointer, param1: pointer): void {.importc: "QGestureEvent_ignore".}
proc fcQGestureEvent_isAccepted(self: pointer, param1: pointer): bool {.importc: "QGestureEvent_isAccepted".}
proc fcQGestureEvent_setAccepted2(self: pointer, param1: cint, param2: bool): void {.importc: "QGestureEvent_setAccepted2".}
proc fcQGestureEvent_acceptWithQtGestureType(self: pointer, param1: cint): void {.importc: "QGestureEvent_acceptWithQtGestureType".}
proc fcQGestureEvent_ignoreWithQtGestureType(self: pointer, param1: cint): void {.importc: "QGestureEvent_ignoreWithQtGestureType".}
proc fcQGestureEvent_isAcceptedWithQtGestureType(self: pointer, param1: cint): bool {.importc: "QGestureEvent_isAcceptedWithQtGestureType".}
proc fcQGestureEvent_setWidget(self: pointer, widget: pointer): void {.importc: "QGestureEvent_setWidget".}
proc fcQGestureEvent_widget(self: pointer, ): pointer {.importc: "QGestureEvent_widget".}
proc fcQGestureEvent_mapToGraphicsScene(self: pointer, gesturePoint: pointer): pointer {.importc: "QGestureEvent_mapToGraphicsScene".}
proc fcQGestureEvent_delete(self: pointer) {.importc: "QGestureEvent_delete".}


func init*(T: type gen_qgesture_types.QGesture, h: ptr cQGesture): gen_qgesture_types.QGesture =
  T(h: h)
proc create*(T: type gen_qgesture_types.QGesture, ): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture.init(fcQGesture_new())

proc create*(T: type gen_qgesture_types.QGesture, parent: gen_qobject_types.QObject): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture.init(fcQGesture_new2(parent.h))

proc metaObject*(self: gen_qgesture_types.QGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QGesture, param1: cstring): pointer =
  fcQGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring): string =
  let v_ms = fcQGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring): string =
  let v_ms = fcQGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc gestureType*(self: gen_qgesture_types.QGesture, ): cint =
  cint(fcQGesture_gestureType(self.h))

proc state*(self: gen_qgesture_types.QGesture, ): cint =
  cint(fcQGesture_state(self.h))

proc hotSpot*(self: gen_qgesture_types.QGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGesture_hotSpot(self.h))

proc setHotSpot*(self: gen_qgesture_types.QGesture, value: gen_qpoint_types.QPointF): void =
  fcQGesture_setHotSpot(self.h, value.h)

proc hasHotSpot*(self: gen_qgesture_types.QGesture, ): bool =
  fcQGesture_hasHotSpot(self.h)

proc unsetHotSpot*(self: gen_qgesture_types.QGesture, ): void =
  fcQGesture_unsetHotSpot(self.h)

proc setGestureCancelPolicy*(self: gen_qgesture_types.QGesture, policy: cint): void =
  fcQGesture_setGestureCancelPolicy(self.h, cint(policy))

proc gestureCancelPolicy*(self: gen_qgesture_types.QGesture, ): cint =
  cint(fcQGesture_gestureCancelPolicy(self.h))

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring): string =
  let v_ms = fcQGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring): string =
  let v_ms = fcQGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QGesturemetaObject*(self: gen_qgesture_types.QGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGesture_virtualbase_metaObject(self.h))

type QGesturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgesture_types.QGesture, slot: QGesturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QGesturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_metaObject(self: ptr cQGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QGesture_metaObject ".} =
  var nimfunc = cast[ptr QGesturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGesturemetacast*(self: gen_qgesture_types.QGesture, param1: cstring): pointer =
  fQGesture_virtualbase_metacast(self.h, param1)

type QGesturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgesture_types.QGesture, slot: QGesturemetacastProc) =
  # TODO check subclass
  var tmp = new QGesturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_metacast(self: ptr cQGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGesture_metacast ".} =
  var nimfunc = cast[ptr QGesturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGesturemetacall*(self: gen_qgesture_types.QGesture, param1: cint, param2: cint, param3: pointer): cint =
  fQGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGesturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgesture_types.QGesture, slot: QGesturemetacallProc) =
  # TODO check subclass
  var tmp = new QGesturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_metacall(self: ptr cQGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGesture_metacall ".} =
  var nimfunc = cast[ptr QGesturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGestureevent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QEvent): bool =
  fQGesture_virtualbase_event(self.h, event.h)

type QGestureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgesture_types.QGesture, slot: QGestureeventProc) =
  # TODO check subclass
  var tmp = new QGestureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_event(self: ptr cQGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGesture_event ".} =
  var nimfunc = cast[ptr QGestureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGestureeventFilter*(self: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGestureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgesture_types.QGesture, slot: QGestureeventFilterProc) =
  # TODO check subclass
  var tmp = new QGestureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_eventFilter(self: ptr cQGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGesture_eventFilter ".} =
  var nimfunc = cast[ptr QGestureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGesturetimerEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGesture_virtualbase_timerEvent(self.h, event.h)

type QGesturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgesture_types.QGesture, slot: QGesturetimerEventProc) =
  # TODO check subclass
  var tmp = new QGesturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_timerEvent(self: ptr cQGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGesture_timerEvent ".} =
  var nimfunc = cast[ptr QGesturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGesturechildEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fQGesture_virtualbase_childEvent(self.h, event.h)

type QGesturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgesture_types.QGesture, slot: QGesturechildEventProc) =
  # TODO check subclass
  var tmp = new QGesturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_childEvent(self: ptr cQGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGesture_childEvent ".} =
  var nimfunc = cast[ptr QGesturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGesturecustomEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QEvent): void =
  fQGesture_virtualbase_customEvent(self.h, event.h)

type QGesturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgesture_types.QGesture, slot: QGesturecustomEventProc) =
  # TODO check subclass
  var tmp = new QGesturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_customEvent(self: ptr cQGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGesture_customEvent ".} =
  var nimfunc = cast[ptr QGesturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGestureconnectNotify*(self: gen_qgesture_types.QGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGesture_virtualbase_connectNotify(self.h, signal.h)

type QGestureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgesture_types.QGesture, slot: QGestureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGestureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_connectNotify(self: ptr cQGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGesture_connectNotify ".} =
  var nimfunc = cast[ptr QGestureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGesturedisconnectNotify*(self: gen_qgesture_types.QGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QGesturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgesture_types.QGesture, slot: QGesturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGesturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGesture_disconnectNotify(self: ptr cQGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGesture_disconnectNotify ".} =
  var nimfunc = cast[ptr QGesturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgesture_types.QGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QGesture) =
  fcQGesture_delete(self.h)

func init*(T: type gen_qgesture_types.QPanGesture, h: ptr cQPanGesture): gen_qgesture_types.QPanGesture =
  T(h: h)
proc create*(T: type gen_qgesture_types.QPanGesture, ): gen_qgesture_types.QPanGesture =
  gen_qgesture_types.QPanGesture.init(fcQPanGesture_new())

proc create*(T: type gen_qgesture_types.QPanGesture, parent: gen_qobject_types.QObject): gen_qgesture_types.QPanGesture =
  gen_qgesture_types.QPanGesture.init(fcQPanGesture_new2(parent.h))

proc metaObject*(self: gen_qgesture_types.QPanGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QPanGesture, param1: cstring): pointer =
  fcQPanGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QPanGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPanGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring): string =
  let v_ms = fcQPanGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring): string =
  let v_ms = fcQPanGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastOffset*(self: gen_qgesture_types.QPanGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_lastOffset(self.h))

proc offset*(self: gen_qgesture_types.QPanGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_offset(self.h))

proc delta*(self: gen_qgesture_types.QPanGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_delta(self.h))

proc acceleration*(self: gen_qgesture_types.QPanGesture, ): float64 =
  fcQPanGesture_acceleration(self.h)

proc setLastOffset*(self: gen_qgesture_types.QPanGesture, value: gen_qpoint_types.QPointF): void =
  fcQPanGesture_setLastOffset(self.h, value.h)

proc setOffset*(self: gen_qgesture_types.QPanGesture, value: gen_qpoint_types.QPointF): void =
  fcQPanGesture_setOffset(self.h, value.h)

proc setAcceleration*(self: gen_qgesture_types.QPanGesture, value: float64): void =
  fcQPanGesture_setAcceleration(self.h, value)

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPanGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPanGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPanGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPanGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPanGesturemetaObject*(self: gen_qgesture_types.QPanGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPanGesture_virtualbase_metaObject(self.h))

type QPanGesturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgesture_types.QPanGesture, slot: QPanGesturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QPanGesturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_metaObject(self: ptr cQPanGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QPanGesture_metaObject ".} =
  var nimfunc = cast[ptr QPanGesturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPanGesturemetacast*(self: gen_qgesture_types.QPanGesture, param1: cstring): pointer =
  fQPanGesture_virtualbase_metacast(self.h, param1)

type QPanGesturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgesture_types.QPanGesture, slot: QPanGesturemetacastProc) =
  # TODO check subclass
  var tmp = new QPanGesturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_metacast(self: ptr cQPanGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPanGesture_metacast ".} =
  var nimfunc = cast[ptr QPanGesturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPanGesturemetacall*(self: gen_qgesture_types.QPanGesture, param1: cint, param2: cint, param3: pointer): cint =
  fQPanGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPanGesturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgesture_types.QPanGesture, slot: QPanGesturemetacallProc) =
  # TODO check subclass
  var tmp = new QPanGesturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_metacall(self: ptr cQPanGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPanGesture_metacall ".} =
  var nimfunc = cast[ptr QPanGesturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPanGestureevent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QEvent): bool =
  fQPanGesture_virtualbase_event(self.h, event.h)

type QPanGestureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgesture_types.QPanGesture, slot: QPanGestureeventProc) =
  # TODO check subclass
  var tmp = new QPanGestureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_event(self: ptr cQPanGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPanGesture_event ".} =
  var nimfunc = cast[ptr QPanGestureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPanGestureeventFilter*(self: gen_qgesture_types.QPanGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPanGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPanGestureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgesture_types.QPanGesture, slot: QPanGestureeventFilterProc) =
  # TODO check subclass
  var tmp = new QPanGestureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_eventFilter(self: ptr cQPanGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPanGesture_eventFilter ".} =
  var nimfunc = cast[ptr QPanGestureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPanGesturetimerEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPanGesture_virtualbase_timerEvent(self.h, event.h)

type QPanGesturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgesture_types.QPanGesture, slot: QPanGesturetimerEventProc) =
  # TODO check subclass
  var tmp = new QPanGesturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_timerEvent(self: ptr cQPanGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_timerEvent ".} =
  var nimfunc = cast[ptr QPanGesturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPanGesturechildEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fQPanGesture_virtualbase_childEvent(self.h, event.h)

type QPanGesturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgesture_types.QPanGesture, slot: QPanGesturechildEventProc) =
  # TODO check subclass
  var tmp = new QPanGesturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_childEvent(self: ptr cQPanGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_childEvent ".} =
  var nimfunc = cast[ptr QPanGesturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPanGesturecustomEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QEvent): void =
  fQPanGesture_virtualbase_customEvent(self.h, event.h)

type QPanGesturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgesture_types.QPanGesture, slot: QPanGesturecustomEventProc) =
  # TODO check subclass
  var tmp = new QPanGesturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_customEvent(self: ptr cQPanGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_customEvent ".} =
  var nimfunc = cast[ptr QPanGesturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPanGestureconnectNotify*(self: gen_qgesture_types.QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPanGesture_virtualbase_connectNotify(self.h, signal.h)

type QPanGestureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgesture_types.QPanGesture, slot: QPanGestureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPanGestureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_connectNotify(self: ptr cQPanGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_connectNotify ".} =
  var nimfunc = cast[ptr QPanGestureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPanGesturedisconnectNotify*(self: gen_qgesture_types.QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPanGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QPanGesturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgesture_types.QPanGesture, slot: QPanGesturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPanGesturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPanGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPanGesture_disconnectNotify(self: ptr cQPanGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPanGesture_disconnectNotify ".} =
  var nimfunc = cast[ptr QPanGesturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgesture_types.QPanGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QPanGesture) =
  fcQPanGesture_delete(self.h)

func init*(T: type gen_qgesture_types.QPinchGesture, h: ptr cQPinchGesture): gen_qgesture_types.QPinchGesture =
  T(h: h)
proc create*(T: type gen_qgesture_types.QPinchGesture, ): gen_qgesture_types.QPinchGesture =
  gen_qgesture_types.QPinchGesture.init(fcQPinchGesture_new())

proc create*(T: type gen_qgesture_types.QPinchGesture, parent: gen_qobject_types.QObject): gen_qgesture_types.QPinchGesture =
  gen_qgesture_types.QPinchGesture.init(fcQPinchGesture_new2(parent.h))

proc metaObject*(self: gen_qgesture_types.QPinchGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QPinchGesture, param1: cstring): pointer =
  fcQPinchGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QPinchGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPinchGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring): string =
  let v_ms = fcQPinchGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring): string =
  let v_ms = fcQPinchGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc totalChangeFlags*(self: gen_qgesture_types.QPinchGesture, ): cint =
  cint(fcQPinchGesture_totalChangeFlags(self.h))

proc setTotalChangeFlags*(self: gen_qgesture_types.QPinchGesture, value: cint): void =
  fcQPinchGesture_setTotalChangeFlags(self.h, cint(value))

proc changeFlags*(self: gen_qgesture_types.QPinchGesture, ): cint =
  cint(fcQPinchGesture_changeFlags(self.h))

proc setChangeFlags*(self: gen_qgesture_types.QPinchGesture, value: cint): void =
  fcQPinchGesture_setChangeFlags(self.h, cint(value))

proc startCenterPoint*(self: gen_qgesture_types.QPinchGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_startCenterPoint(self.h))

proc lastCenterPoint*(self: gen_qgesture_types.QPinchGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_lastCenterPoint(self.h))

proc centerPoint*(self: gen_qgesture_types.QPinchGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_centerPoint(self.h))

proc setStartCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setStartCenterPoint(self.h, value.h)

proc setLastCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setLastCenterPoint(self.h, value.h)

proc setCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setCenterPoint(self.h, value.h)

proc totalScaleFactor*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_totalScaleFactor(self.h)

proc lastScaleFactor*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_lastScaleFactor(self.h)

proc scaleFactor*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_scaleFactor(self.h)

proc setTotalScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setTotalScaleFactor(self.h, value)

proc setLastScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setLastScaleFactor(self.h, value)

proc setScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setScaleFactor(self.h, value)

proc totalRotationAngle*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_totalRotationAngle(self.h)

proc lastRotationAngle*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_lastRotationAngle(self.h)

proc rotationAngle*(self: gen_qgesture_types.QPinchGesture, ): float64 =
  fcQPinchGesture_rotationAngle(self.h)

proc setTotalRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setTotalRotationAngle(self.h, value)

proc setLastRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setLastRotationAngle(self.h, value)

proc setRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setRotationAngle(self.h, value)

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPinchGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPinchGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPinchGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPinchGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QPinchGesturemetaObject*(self: gen_qgesture_types.QPinchGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPinchGesture_virtualbase_metaObject(self.h))

type QPinchGesturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGesturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QPinchGesturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_metaObject(self: ptr cQPinchGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QPinchGesture_metaObject ".} =
  var nimfunc = cast[ptr QPinchGesturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPinchGesturemetacast*(self: gen_qgesture_types.QPinchGesture, param1: cstring): pointer =
  fQPinchGesture_virtualbase_metacast(self.h, param1)

type QPinchGesturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGesturemetacastProc) =
  # TODO check subclass
  var tmp = new QPinchGesturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_metacast(self: ptr cQPinchGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPinchGesture_metacast ".} =
  var nimfunc = cast[ptr QPinchGesturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPinchGesturemetacall*(self: gen_qgesture_types.QPinchGesture, param1: cint, param2: cint, param3: pointer): cint =
  fQPinchGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPinchGesturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGesturemetacallProc) =
  # TODO check subclass
  var tmp = new QPinchGesturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_metacall(self: ptr cQPinchGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPinchGesture_metacall ".} =
  var nimfunc = cast[ptr QPinchGesturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPinchGestureevent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QEvent): bool =
  fQPinchGesture_virtualbase_event(self.h, event.h)

type QPinchGestureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGestureeventProc) =
  # TODO check subclass
  var tmp = new QPinchGestureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_event(self: ptr cQPinchGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPinchGesture_event ".} =
  var nimfunc = cast[ptr QPinchGestureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPinchGestureeventFilter*(self: gen_qgesture_types.QPinchGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPinchGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPinchGestureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGestureeventFilterProc) =
  # TODO check subclass
  var tmp = new QPinchGestureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_eventFilter(self: ptr cQPinchGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPinchGesture_eventFilter ".} =
  var nimfunc = cast[ptr QPinchGestureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPinchGesturetimerEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPinchGesture_virtualbase_timerEvent(self.h, event.h)

type QPinchGesturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGesturetimerEventProc) =
  # TODO check subclass
  var tmp = new QPinchGesturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_timerEvent(self: ptr cQPinchGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_timerEvent ".} =
  var nimfunc = cast[ptr QPinchGesturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPinchGesturechildEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fQPinchGesture_virtualbase_childEvent(self.h, event.h)

type QPinchGesturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGesturechildEventProc) =
  # TODO check subclass
  var tmp = new QPinchGesturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_childEvent(self: ptr cQPinchGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_childEvent ".} =
  var nimfunc = cast[ptr QPinchGesturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPinchGesturecustomEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QEvent): void =
  fQPinchGesture_virtualbase_customEvent(self.h, event.h)

type QPinchGesturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGesturecustomEventProc) =
  # TODO check subclass
  var tmp = new QPinchGesturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_customEvent(self: ptr cQPinchGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_customEvent ".} =
  var nimfunc = cast[ptr QPinchGesturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPinchGestureconnectNotify*(self: gen_qgesture_types.QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPinchGesture_virtualbase_connectNotify(self.h, signal.h)

type QPinchGestureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGestureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPinchGestureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_connectNotify(self: ptr cQPinchGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_connectNotify ".} =
  var nimfunc = cast[ptr QPinchGestureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPinchGesturedisconnectNotify*(self: gen_qgesture_types.QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPinchGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QPinchGesturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgesture_types.QPinchGesture, slot: QPinchGesturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPinchGesturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPinchGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPinchGesture_disconnectNotify(self: ptr cQPinchGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPinchGesture_disconnectNotify ".} =
  var nimfunc = cast[ptr QPinchGesturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgesture_types.QPinchGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QPinchGesture) =
  fcQPinchGesture_delete(self.h)

func init*(T: type gen_qgesture_types.QSwipeGesture, h: ptr cQSwipeGesture): gen_qgesture_types.QSwipeGesture =
  T(h: h)
proc create*(T: type gen_qgesture_types.QSwipeGesture, ): gen_qgesture_types.QSwipeGesture =
  gen_qgesture_types.QSwipeGesture.init(fcQSwipeGesture_new())

proc create*(T: type gen_qgesture_types.QSwipeGesture, parent: gen_qobject_types.QObject): gen_qgesture_types.QSwipeGesture =
  gen_qgesture_types.QSwipeGesture.init(fcQSwipeGesture_new2(parent.h))

proc metaObject*(self: gen_qgesture_types.QSwipeGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QSwipeGesture, param1: cstring): pointer =
  fcQSwipeGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSwipeGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring): string =
  let v_ms = fcQSwipeGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring): string =
  let v_ms = fcQSwipeGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc horizontalDirection*(self: gen_qgesture_types.QSwipeGesture, ): cint =
  cint(fcQSwipeGesture_horizontalDirection(self.h))

proc verticalDirection*(self: gen_qgesture_types.QSwipeGesture, ): cint =
  cint(fcQSwipeGesture_verticalDirection(self.h))

proc swipeAngle*(self: gen_qgesture_types.QSwipeGesture, ): float64 =
  fcQSwipeGesture_swipeAngle(self.h)

proc setSwipeAngle*(self: gen_qgesture_types.QSwipeGesture, value: float64): void =
  fcQSwipeGesture_setSwipeAngle(self.h, value)

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring): string =
  let v_ms = fcQSwipeGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSwipeGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring): string =
  let v_ms = fcQSwipeGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSwipeGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSwipeGesturemetaObject*(self: gen_qgesture_types.QSwipeGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSwipeGesture_virtualbase_metaObject(self.h))

type QSwipeGesturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGesturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QSwipeGesturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_metaObject(self: ptr cQSwipeGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QSwipeGesture_metaObject ".} =
  var nimfunc = cast[ptr QSwipeGesturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSwipeGesturemetacast*(self: gen_qgesture_types.QSwipeGesture, param1: cstring): pointer =
  fQSwipeGesture_virtualbase_metacast(self.h, param1)

type QSwipeGesturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGesturemetacastProc) =
  # TODO check subclass
  var tmp = new QSwipeGesturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_metacast(self: ptr cQSwipeGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSwipeGesture_metacast ".} =
  var nimfunc = cast[ptr QSwipeGesturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSwipeGesturemetacall*(self: gen_qgesture_types.QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint =
  fQSwipeGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSwipeGesturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGesturemetacallProc) =
  # TODO check subclass
  var tmp = new QSwipeGesturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_metacall(self: ptr cQSwipeGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSwipeGesture_metacall ".} =
  var nimfunc = cast[ptr QSwipeGesturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSwipeGestureevent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QEvent): bool =
  fQSwipeGesture_virtualbase_event(self.h, event.h)

type QSwipeGestureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGestureeventProc) =
  # TODO check subclass
  var tmp = new QSwipeGestureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_event(self: ptr cQSwipeGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSwipeGesture_event ".} =
  var nimfunc = cast[ptr QSwipeGestureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSwipeGestureeventFilter*(self: gen_qgesture_types.QSwipeGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSwipeGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSwipeGestureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGestureeventFilterProc) =
  # TODO check subclass
  var tmp = new QSwipeGestureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_eventFilter(self: ptr cQSwipeGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSwipeGesture_eventFilter ".} =
  var nimfunc = cast[ptr QSwipeGestureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSwipeGesturetimerEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSwipeGesture_virtualbase_timerEvent(self.h, event.h)

type QSwipeGesturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGesturetimerEventProc) =
  # TODO check subclass
  var tmp = new QSwipeGesturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_timerEvent(self: ptr cQSwipeGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_timerEvent ".} =
  var nimfunc = cast[ptr QSwipeGesturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSwipeGesturechildEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fQSwipeGesture_virtualbase_childEvent(self.h, event.h)

type QSwipeGesturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGesturechildEventProc) =
  # TODO check subclass
  var tmp = new QSwipeGesturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_childEvent(self: ptr cQSwipeGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_childEvent ".} =
  var nimfunc = cast[ptr QSwipeGesturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSwipeGesturecustomEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QEvent): void =
  fQSwipeGesture_virtualbase_customEvent(self.h, event.h)

type QSwipeGesturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGesturecustomEventProc) =
  # TODO check subclass
  var tmp = new QSwipeGesturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_customEvent(self: ptr cQSwipeGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_customEvent ".} =
  var nimfunc = cast[ptr QSwipeGesturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSwipeGestureconnectNotify*(self: gen_qgesture_types.QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSwipeGesture_virtualbase_connectNotify(self.h, signal.h)

type QSwipeGestureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGestureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSwipeGestureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_connectNotify(self: ptr cQSwipeGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_connectNotify ".} =
  var nimfunc = cast[ptr QSwipeGestureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSwipeGesturedisconnectNotify*(self: gen_qgesture_types.QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSwipeGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QSwipeGesturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgesture_types.QSwipeGesture, slot: QSwipeGesturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSwipeGesturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSwipeGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSwipeGesture_disconnectNotify(self: ptr cQSwipeGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSwipeGesture_disconnectNotify ".} =
  var nimfunc = cast[ptr QSwipeGesturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgesture_types.QSwipeGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QSwipeGesture) =
  fcQSwipeGesture_delete(self.h)

func init*(T: type gen_qgesture_types.QTapGesture, h: ptr cQTapGesture): gen_qgesture_types.QTapGesture =
  T(h: h)
proc create*(T: type gen_qgesture_types.QTapGesture, ): gen_qgesture_types.QTapGesture =
  gen_qgesture_types.QTapGesture.init(fcQTapGesture_new())

proc create*(T: type gen_qgesture_types.QTapGesture, parent: gen_qobject_types.QObject): gen_qgesture_types.QTapGesture =
  gen_qgesture_types.QTapGesture.init(fcQTapGesture_new2(parent.h))

proc metaObject*(self: gen_qgesture_types.QTapGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QTapGesture, param1: cstring): pointer =
  fcQTapGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QTapGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring): string =
  let v_ms = fcQTapGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring): string =
  let v_ms = fcQTapGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qgesture_types.QTapGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTapGesture_position(self.h))

proc setPosition*(self: gen_qgesture_types.QTapGesture, pos: gen_qpoint_types.QPointF): void =
  fcQTapGesture_setPosition(self.h, pos.h)

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTapGesturemetaObject*(self: gen_qgesture_types.QTapGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTapGesture_virtualbase_metaObject(self.h))

type QTapGesturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgesture_types.QTapGesture, slot: QTapGesturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QTapGesturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_metaObject(self: ptr cQTapGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QTapGesture_metaObject ".} =
  var nimfunc = cast[ptr QTapGesturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTapGesturemetacast*(self: gen_qgesture_types.QTapGesture, param1: cstring): pointer =
  fQTapGesture_virtualbase_metacast(self.h, param1)

type QTapGesturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgesture_types.QTapGesture, slot: QTapGesturemetacastProc) =
  # TODO check subclass
  var tmp = new QTapGesturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_metacast(self: ptr cQTapGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTapGesture_metacast ".} =
  var nimfunc = cast[ptr QTapGesturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTapGesturemetacall*(self: gen_qgesture_types.QTapGesture, param1: cint, param2: cint, param3: pointer): cint =
  fQTapGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTapGesturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgesture_types.QTapGesture, slot: QTapGesturemetacallProc) =
  # TODO check subclass
  var tmp = new QTapGesturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_metacall(self: ptr cQTapGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTapGesture_metacall ".} =
  var nimfunc = cast[ptr QTapGesturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTapGestureevent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QEvent): bool =
  fQTapGesture_virtualbase_event(self.h, event.h)

type QTapGestureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgesture_types.QTapGesture, slot: QTapGestureeventProc) =
  # TODO check subclass
  var tmp = new QTapGestureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_event(self: ptr cQTapGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTapGesture_event ".} =
  var nimfunc = cast[ptr QTapGestureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTapGestureeventFilter*(self: gen_qgesture_types.QTapGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTapGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTapGestureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgesture_types.QTapGesture, slot: QTapGestureeventFilterProc) =
  # TODO check subclass
  var tmp = new QTapGestureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_eventFilter(self: ptr cQTapGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTapGesture_eventFilter ".} =
  var nimfunc = cast[ptr QTapGestureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTapGesturetimerEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTapGesture_virtualbase_timerEvent(self.h, event.h)

type QTapGesturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgesture_types.QTapGesture, slot: QTapGesturetimerEventProc) =
  # TODO check subclass
  var tmp = new QTapGesturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_timerEvent(self: ptr cQTapGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_timerEvent ".} =
  var nimfunc = cast[ptr QTapGesturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTapGesturechildEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fQTapGesture_virtualbase_childEvent(self.h, event.h)

type QTapGesturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgesture_types.QTapGesture, slot: QTapGesturechildEventProc) =
  # TODO check subclass
  var tmp = new QTapGesturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_childEvent(self: ptr cQTapGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_childEvent ".} =
  var nimfunc = cast[ptr QTapGesturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTapGesturecustomEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QEvent): void =
  fQTapGesture_virtualbase_customEvent(self.h, event.h)

type QTapGesturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgesture_types.QTapGesture, slot: QTapGesturecustomEventProc) =
  # TODO check subclass
  var tmp = new QTapGesturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_customEvent(self: ptr cQTapGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_customEvent ".} =
  var nimfunc = cast[ptr QTapGesturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTapGestureconnectNotify*(self: gen_qgesture_types.QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTapGesture_virtualbase_connectNotify(self.h, signal.h)

type QTapGestureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgesture_types.QTapGesture, slot: QTapGestureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTapGestureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_connectNotify(self: ptr cQTapGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_connectNotify ".} =
  var nimfunc = cast[ptr QTapGestureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTapGesturedisconnectNotify*(self: gen_qgesture_types.QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTapGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QTapGesturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgesture_types.QTapGesture, slot: QTapGesturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTapGesturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapGesture_disconnectNotify(self: ptr cQTapGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapGesture_disconnectNotify ".} =
  var nimfunc = cast[ptr QTapGesturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgesture_types.QTapGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QTapGesture) =
  fcQTapGesture_delete(self.h)

func init*(T: type gen_qgesture_types.QTapAndHoldGesture, h: ptr cQTapAndHoldGesture): gen_qgesture_types.QTapAndHoldGesture =
  T(h: h)
proc create*(T: type gen_qgesture_types.QTapAndHoldGesture, ): gen_qgesture_types.QTapAndHoldGesture =
  gen_qgesture_types.QTapAndHoldGesture.init(fcQTapAndHoldGesture_new())

proc create*(T: type gen_qgesture_types.QTapAndHoldGesture, parent: gen_qobject_types.QObject): gen_qgesture_types.QTapAndHoldGesture =
  gen_qgesture_types.QTapAndHoldGesture.init(fcQTapAndHoldGesture_new2(parent.h))

proc metaObject*(self: gen_qgesture_types.QTapAndHoldGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_metaObject(self.h))

proc metacast*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cstring): pointer =
  fcQTapAndHoldGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapAndHoldGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring): string =
  let v_ms = fcQTapAndHoldGesture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring): string =
  let v_ms = fcQTapAndHoldGesture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qgesture_types.QTapAndHoldGesture, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTapAndHoldGesture_position(self.h))

proc setPosition*(self: gen_qgesture_types.QTapAndHoldGesture, pos: gen_qpoint_types.QPointF): void =
  fcQTapAndHoldGesture_setPosition(self.h, pos.h)

proc setTimeout*(_: type gen_qgesture_types.QTapAndHoldGesture, msecs: cint): void =
  fcQTapAndHoldGesture_setTimeout(msecs)

proc timeout*(_: type gen_qgesture_types.QTapAndHoldGesture, ): cint =
  fcQTapAndHoldGesture_timeout()

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapAndHoldGesture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapAndHoldGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapAndHoldGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapAndHoldGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QTapAndHoldGesturemetaObject*(self: gen_qgesture_types.QTapAndHoldGesture, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQTapAndHoldGesture_virtualbase_metaObject(self.h))

type QTapAndHoldGesturemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGesturemetaObjectProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGesturemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_metaObject(self: ptr cQTapAndHoldGesture, slot: int): pointer {.exportc: "miqt_exec_callback_QTapAndHoldGesture_metaObject ".} =
  var nimfunc = cast[ptr QTapAndHoldGesturemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QTapAndHoldGesturemetacast*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cstring): pointer =
  fQTapAndHoldGesture_virtualbase_metacast(self.h, param1)

type QTapAndHoldGesturemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGesturemetacastProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGesturemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_metacast(self: ptr cQTapAndHoldGesture, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTapAndHoldGesture_metacast ".} =
  var nimfunc = cast[ptr QTapAndHoldGesturemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTapAndHoldGesturemetacall*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint =
  fQTapAndHoldGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTapAndHoldGesturemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGesturemetacallProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGesturemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_metacall(self: ptr cQTapAndHoldGesture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTapAndHoldGesture_metacall ".} =
  var nimfunc = cast[ptr QTapAndHoldGesturemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QTapAndHoldGestureevent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): bool =
  fQTapAndHoldGesture_virtualbase_event(self.h, event.h)

type QTapAndHoldGestureeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGestureeventProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGestureeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_event(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTapAndHoldGesture_event ".} =
  var nimfunc = cast[ptr QTapAndHoldGestureeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTapAndHoldGestureeventFilter*(self: gen_qgesture_types.QTapAndHoldGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTapAndHoldGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTapAndHoldGestureeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGestureeventFilterProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGestureeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_eventFilter(self: ptr cQTapAndHoldGesture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTapAndHoldGesture_eventFilter ".} =
  var nimfunc = cast[ptr QTapAndHoldGestureeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTapAndHoldGesturetimerEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTapAndHoldGesture_virtualbase_timerEvent(self.h, event.h)

type QTapAndHoldGesturetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGesturetimerEventProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGesturetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_timerEvent(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_timerEvent ".} =
  var nimfunc = cast[ptr QTapAndHoldGesturetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTapAndHoldGesturechildEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fQTapAndHoldGesture_virtualbase_childEvent(self.h, event.h)

type QTapAndHoldGesturechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGesturechildEventProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGesturechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_childEvent(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_childEvent ".} =
  var nimfunc = cast[ptr QTapAndHoldGesturechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTapAndHoldGesturecustomEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): void =
  fQTapAndHoldGesture_virtualbase_customEvent(self.h, event.h)

type QTapAndHoldGesturecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGesturecustomEventProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGesturecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_customEvent(self: ptr cQTapAndHoldGesture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_customEvent ".} =
  var nimfunc = cast[ptr QTapAndHoldGesturecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTapAndHoldGestureconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTapAndHoldGesture_virtualbase_connectNotify(self.h, signal.h)

type QTapAndHoldGestureconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGestureconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGestureconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_connectNotify(self: ptr cQTapAndHoldGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_connectNotify ".} =
  var nimfunc = cast[ptr QTapAndHoldGestureconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTapAndHoldGesturedisconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTapAndHoldGesture_virtualbase_disconnectNotify(self.h, signal.h)

type QTapAndHoldGesturedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, slot: QTapAndHoldGesturedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTapAndHoldGesturedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTapAndHoldGesture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTapAndHoldGesture_disconnectNotify(self: ptr cQTapAndHoldGesture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTapAndHoldGesture_disconnectNotify ".} =
  var nimfunc = cast[ptr QTapAndHoldGesturedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgesture_types.QTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_staticMetaObject())
proc delete*(self: gen_qgesture_types.QTapAndHoldGesture) =
  fcQTapAndHoldGesture_delete(self.h)

func init*(T: type gen_qgesture_types.QGestureEvent, h: ptr cQGestureEvent): gen_qgesture_types.QGestureEvent =
  T(h: h)
proc create*(T: type gen_qgesture_types.QGestureEvent, gestures: seq[gen_qgesture_types.QGesture]): gen_qgesture_types.QGestureEvent =
  var gestures_CArray = newSeq[pointer](len(gestures))
  for i in 0..<len(gestures):
    gestures_CArray[i] = gestures[i].h

  gen_qgesture_types.QGestureEvent.init(fcQGestureEvent_new(struct_miqt_array(len: csize_t(len(gestures)), data: if len(gestures) == 0: nil else: addr(gestures_CArray[0]))))

proc create*(T: type gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGestureEvent): gen_qgesture_types.QGestureEvent =
  gen_qgesture_types.QGestureEvent.init(fcQGestureEvent_new2(param1.h))

proc gestures*(self: gen_qgesture_types.QGestureEvent, ): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_gestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i])
  vx_ret

proc gesture*(self: gen_qgesture_types.QGestureEvent, typeVal: cint): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureEvent_gesture(self.h, cint(typeVal)))

proc activeGestures*(self: gen_qgesture_types.QGestureEvent, ): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_activeGestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i])
  vx_ret

proc canceledGestures*(self: gen_qgesture_types.QGestureEvent, ): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_canceledGestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i])
  vx_ret

proc setAccepted*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture, param2: bool): void =
  fcQGestureEvent_setAccepted(self.h, param1.h, param2)

proc accept*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): void =
  fcQGestureEvent_accept(self.h, param1.h)

proc ignore*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): void =
  fcQGestureEvent_ignore(self.h, param1.h)

proc isAccepted*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): bool =
  fcQGestureEvent_isAccepted(self.h, param1.h)

proc setAccepted*(self: gen_qgesture_types.QGestureEvent, param1: cint, param2: bool): void =
  fcQGestureEvent_setAccepted2(self.h, cint(param1), param2)

proc accept*(self: gen_qgesture_types.QGestureEvent, param1: cint): void =
  fcQGestureEvent_acceptWithQtGestureType(self.h, cint(param1))

proc ignore*(self: gen_qgesture_types.QGestureEvent, param1: cint): void =
  fcQGestureEvent_ignoreWithQtGestureType(self.h, cint(param1))

proc isAccepted*(self: gen_qgesture_types.QGestureEvent, param1: cint): bool =
  fcQGestureEvent_isAcceptedWithQtGestureType(self.h, cint(param1))

proc setWidget*(self: gen_qgesture_types.QGestureEvent, widget: gen_qwidget_types.QWidget): void =
  fcQGestureEvent_setWidget(self.h, widget.h)

proc widget*(self: gen_qgesture_types.QGestureEvent, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGestureEvent_widget(self.h))

proc mapToGraphicsScene*(self: gen_qgesture_types.QGestureEvent, gesturePoint: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGestureEvent_mapToGraphicsScene(self.h, gesturePoint.h))

proc delete*(self: gen_qgesture_types.QGestureEvent) =
  fcQGestureEvent_delete(self.h)
