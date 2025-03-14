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


{.compile("gen_qgraphicstransform.cpp", QtWidgetsCFlags).}


import ./gen_qgraphicstransform_types
export gen_qgraphicstransform_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qmatrix4x4_types,
  ../QtGui/gen_qvector3d_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qmatrix4x4_types,
  gen_qvector3d_types

type cQGraphicsTransform*{.exportc: "QGraphicsTransform", incompleteStruct.} = object
type cQGraphicsScale*{.exportc: "QGraphicsScale", incompleteStruct.} = object
type cQGraphicsRotation*{.exportc: "QGraphicsRotation", incompleteStruct.} = object

proc fcQGraphicsTransform_metaObject(self: pointer): pointer {.importc: "QGraphicsTransform_metaObject".}
proc fcQGraphicsTransform_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTransform_metacast".}
proc fcQGraphicsTransform_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTransform_metacall".}
proc fcQGraphicsTransform_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsTransform_tr".}
proc fcQGraphicsTransform_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsTransform_trUtf8".}
proc fcQGraphicsTransform_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsTransform_applyTo".}
proc fcQGraphicsTransform_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTransform_tr2".}
proc fcQGraphicsTransform_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTransform_tr3".}
proc fcQGraphicsTransform_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTransform_trUtf82".}
proc fcQGraphicsTransform_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTransform_trUtf83".}
proc fcQGraphicsTransform_vtbl(self: pointer): pointer {.importc: "QGraphicsTransform_vtbl".}
proc fcQGraphicsTransform_vdata(self: pointer): pointer {.importc: "QGraphicsTransform_vdata".}
type cQGraphicsTransformVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsTransform_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsTransform_virtualbase_metaObject".}
proc fcQGraphicsTransform_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTransform_virtualbase_metacast".}
proc fcQGraphicsTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTransform_virtualbase_metacall".}
proc fcQGraphicsTransform_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsTransform_virtualbase_event".}
proc fcQGraphicsTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsTransform_virtualbase_eventFilter".}
proc fcQGraphicsTransform_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTransform_virtualbase_timerEvent".}
proc fcQGraphicsTransform_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTransform_virtualbase_childEvent".}
proc fcQGraphicsTransform_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTransform_virtualbase_customEvent".}
proc fcQGraphicsTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsTransform_virtualbase_connectNotify".}
proc fcQGraphicsTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsTransform_virtualbase_disconnectNotify".}
proc fcQGraphicsTransform_protectedbase_update(self: pointer): void {.importc: "QGraphicsTransform_protectedbase_update".}
proc fcQGraphicsTransform_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsTransform_protectedbase_sender".}
proc fcQGraphicsTransform_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsTransform_protectedbase_senderSignalIndex".}
proc fcQGraphicsTransform_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsTransform_protectedbase_receivers".}
proc fcQGraphicsTransform_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsTransform_protectedbase_isSignalConnected".}
proc fcQGraphicsTransform_new(vtbl, vdata: pointer): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new".}
proc fcQGraphicsTransform_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new2".}
proc fcQGraphicsTransform_staticMetaObject(): pointer {.importc: "QGraphicsTransform_staticMetaObject".}
proc fcQGraphicsScale_metaObject(self: pointer): pointer {.importc: "QGraphicsScale_metaObject".}
proc fcQGraphicsScale_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsScale_metacast".}
proc fcQGraphicsScale_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsScale_metacall".}
proc fcQGraphicsScale_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsScale_tr".}
proc fcQGraphicsScale_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsScale_trUtf8".}
proc fcQGraphicsScale_origin(self: pointer): pointer {.importc: "QGraphicsScale_origin".}
proc fcQGraphicsScale_setOrigin(self: pointer, point: pointer): void {.importc: "QGraphicsScale_setOrigin".}
proc fcQGraphicsScale_xScale(self: pointer): float64 {.importc: "QGraphicsScale_xScale".}
proc fcQGraphicsScale_setXScale(self: pointer, xScale: float64): void {.importc: "QGraphicsScale_setXScale".}
proc fcQGraphicsScale_yScale(self: pointer): float64 {.importc: "QGraphicsScale_yScale".}
proc fcQGraphicsScale_setYScale(self: pointer, yScale: float64): void {.importc: "QGraphicsScale_setYScale".}
proc fcQGraphicsScale_zScale(self: pointer): float64 {.importc: "QGraphicsScale_zScale".}
proc fcQGraphicsScale_setZScale(self: pointer, zScale: float64): void {.importc: "QGraphicsScale_setZScale".}
proc fcQGraphicsScale_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsScale_applyTo".}
proc fcQGraphicsScale_originChanged(self: pointer): void {.importc: "QGraphicsScale_originChanged".}
proc fcQGraphicsScale_connect_originChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_originChanged".}
proc fcQGraphicsScale_xScaleChanged(self: pointer): void {.importc: "QGraphicsScale_xScaleChanged".}
proc fcQGraphicsScale_connect_xScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_xScaleChanged".}
proc fcQGraphicsScale_yScaleChanged(self: pointer): void {.importc: "QGraphicsScale_yScaleChanged".}
proc fcQGraphicsScale_connect_yScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_yScaleChanged".}
proc fcQGraphicsScale_zScaleChanged(self: pointer): void {.importc: "QGraphicsScale_zScaleChanged".}
proc fcQGraphicsScale_connect_zScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_zScaleChanged".}
proc fcQGraphicsScale_scaleChanged(self: pointer): void {.importc: "QGraphicsScale_scaleChanged".}
proc fcQGraphicsScale_connect_scaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_scaleChanged".}
proc fcQGraphicsScale_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_tr2".}
proc fcQGraphicsScale_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_tr3".}
proc fcQGraphicsScale_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_trUtf82".}
proc fcQGraphicsScale_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_trUtf83".}
proc fcQGraphicsScale_vtbl(self: pointer): pointer {.importc: "QGraphicsScale_vtbl".}
proc fcQGraphicsScale_vdata(self: pointer): pointer {.importc: "QGraphicsScale_vdata".}
type cQGraphicsScaleVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsScale_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsScale_virtualbase_metaObject".}
proc fcQGraphicsScale_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsScale_virtualbase_metacast".}
proc fcQGraphicsScale_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsScale_virtualbase_metacall".}
proc fcQGraphicsScale_virtualbase_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsScale_virtualbase_applyTo".}
proc fcQGraphicsScale_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsScale_virtualbase_event".}
proc fcQGraphicsScale_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsScale_virtualbase_eventFilter".}
proc fcQGraphicsScale_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScale_virtualbase_timerEvent".}
proc fcQGraphicsScale_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScale_virtualbase_childEvent".}
proc fcQGraphicsScale_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsScale_virtualbase_customEvent".}
proc fcQGraphicsScale_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsScale_virtualbase_connectNotify".}
proc fcQGraphicsScale_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsScale_virtualbase_disconnectNotify".}
proc fcQGraphicsScale_protectedbase_update(self: pointer): void {.importc: "QGraphicsScale_protectedbase_update".}
proc fcQGraphicsScale_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsScale_protectedbase_sender".}
proc fcQGraphicsScale_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsScale_protectedbase_senderSignalIndex".}
proc fcQGraphicsScale_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsScale_protectedbase_receivers".}
proc fcQGraphicsScale_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsScale_protectedbase_isSignalConnected".}
proc fcQGraphicsScale_new(vtbl, vdata: pointer): ptr cQGraphicsScale {.importc: "QGraphicsScale_new".}
proc fcQGraphicsScale_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsScale {.importc: "QGraphicsScale_new2".}
proc fcQGraphicsScale_staticMetaObject(): pointer {.importc: "QGraphicsScale_staticMetaObject".}
proc fcQGraphicsRotation_metaObject(self: pointer): pointer {.importc: "QGraphicsRotation_metaObject".}
proc fcQGraphicsRotation_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsRotation_metacast".}
proc fcQGraphicsRotation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsRotation_metacall".}
proc fcQGraphicsRotation_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsRotation_tr".}
proc fcQGraphicsRotation_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsRotation_trUtf8".}
proc fcQGraphicsRotation_origin(self: pointer): pointer {.importc: "QGraphicsRotation_origin".}
proc fcQGraphicsRotation_setOrigin(self: pointer, point: pointer): void {.importc: "QGraphicsRotation_setOrigin".}
proc fcQGraphicsRotation_angle(self: pointer): float64 {.importc: "QGraphicsRotation_angle".}
proc fcQGraphicsRotation_setAngle(self: pointer, angle: float64): void {.importc: "QGraphicsRotation_setAngle".}
proc fcQGraphicsRotation_axis(self: pointer): pointer {.importc: "QGraphicsRotation_axis".}
proc fcQGraphicsRotation_setAxis(self: pointer, axis: pointer): void {.importc: "QGraphicsRotation_setAxis".}
proc fcQGraphicsRotation_setAxisWithAxis(self: pointer, axis: cint): void {.importc: "QGraphicsRotation_setAxisWithAxis".}
proc fcQGraphicsRotation_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsRotation_applyTo".}
proc fcQGraphicsRotation_originChanged(self: pointer): void {.importc: "QGraphicsRotation_originChanged".}
proc fcQGraphicsRotation_connect_originChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsRotation_connect_originChanged".}
proc fcQGraphicsRotation_angleChanged(self: pointer): void {.importc: "QGraphicsRotation_angleChanged".}
proc fcQGraphicsRotation_connect_angleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsRotation_connect_angleChanged".}
proc fcQGraphicsRotation_axisChanged(self: pointer): void {.importc: "QGraphicsRotation_axisChanged".}
proc fcQGraphicsRotation_connect_axisChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsRotation_connect_axisChanged".}
proc fcQGraphicsRotation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_tr2".}
proc fcQGraphicsRotation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_tr3".}
proc fcQGraphicsRotation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_trUtf82".}
proc fcQGraphicsRotation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_trUtf83".}
proc fcQGraphicsRotation_vtbl(self: pointer): pointer {.importc: "QGraphicsRotation_vtbl".}
proc fcQGraphicsRotation_vdata(self: pointer): pointer {.importc: "QGraphicsRotation_vdata".}
type cQGraphicsRotationVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsRotation_virtualbase_metaObject(self: pointer): pointer {.importc: "QGraphicsRotation_virtualbase_metaObject".}
proc fcQGraphicsRotation_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsRotation_virtualbase_metacast".}
proc fcQGraphicsRotation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsRotation_virtualbase_metacall".}
proc fcQGraphicsRotation_virtualbase_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsRotation_virtualbase_applyTo".}
proc fcQGraphicsRotation_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsRotation_virtualbase_event".}
proc fcQGraphicsRotation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsRotation_virtualbase_eventFilter".}
proc fcQGraphicsRotation_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRotation_virtualbase_timerEvent".}
proc fcQGraphicsRotation_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRotation_virtualbase_childEvent".}
proc fcQGraphicsRotation_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsRotation_virtualbase_customEvent".}
proc fcQGraphicsRotation_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsRotation_virtualbase_connectNotify".}
proc fcQGraphicsRotation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsRotation_virtualbase_disconnectNotify".}
proc fcQGraphicsRotation_protectedbase_update(self: pointer): void {.importc: "QGraphicsRotation_protectedbase_update".}
proc fcQGraphicsRotation_protectedbase_sender(self: pointer): pointer {.importc: "QGraphicsRotation_protectedbase_sender".}
proc fcQGraphicsRotation_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGraphicsRotation_protectedbase_senderSignalIndex".}
proc fcQGraphicsRotation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsRotation_protectedbase_receivers".}
proc fcQGraphicsRotation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsRotation_protectedbase_isSignalConnected".}
proc fcQGraphicsRotation_new(vtbl, vdata: pointer): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new".}
proc fcQGraphicsRotation_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new2".}
proc fcQGraphicsRotation_staticMetaObject(): pointer {.importc: "QGraphicsRotation_staticMetaObject".}

proc metaObject*(self: gen_qgraphicstransform_types.QGraphicsTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTransform_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cstring): pointer =
  fcQGraphicsTransform_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsTransform_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring): string =
  let v_ms = fcQGraphicsTransform_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring): string =
  let v_ms = fcQGraphicsTransform_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc applyTo*(self: gen_qgraphicstransform_types.QGraphicsTransform, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsTransform_applyTo(self.h, matrix.h)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsTransform_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsTransform_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsTransform_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsTransform_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsTransformmetaObjectProc* = proc(self: QGraphicsTransform): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsTransformmetacastProc* = proc(self: QGraphicsTransform, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsTransformmetacallProc* = proc(self: QGraphicsTransform, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsTransformapplyToProc* = proc(self: QGraphicsTransform, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.raises: [], gcsafe.}
type QGraphicsTransformeventProc* = proc(self: QGraphicsTransform, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsTransformeventFilterProc* = proc(self: QGraphicsTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsTransformtimerEventProc* = proc(self: QGraphicsTransform, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsTransformchildEventProc* = proc(self: QGraphicsTransform, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsTransformcustomEventProc* = proc(self: QGraphicsTransform, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsTransformconnectNotifyProc* = proc(self: QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsTransformdisconnectNotifyProc* = proc(self: QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsTransformVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsTransformVTable
  metaObject*: QGraphicsTransformmetaObjectProc
  metacast*: QGraphicsTransformmetacastProc
  metacall*: QGraphicsTransformmetacallProc
  applyTo*: QGraphicsTransformapplyToProc
  event*: QGraphicsTransformeventProc
  eventFilter*: QGraphicsTransformeventFilterProc
  timerEvent*: QGraphicsTransformtimerEventProc
  childEvent*: QGraphicsTransformchildEventProc
  customEvent*: QGraphicsTransformcustomEventProc
  connectNotify*: QGraphicsTransformconnectNotifyProc
  disconnectNotify*: QGraphicsTransformdisconnectNotifyProc
proc QGraphicsTransformmetaObject*(self: gen_qgraphicstransform_types.QGraphicsTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTransform_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsTransform_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsTransformmetacast*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cstring): pointer =
  fcQGraphicsTransform_virtualbase_metacast(self.h, param1)

proc cQGraphicsTransform_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsTransformmetacall*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsTransform_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQGraphicsTransform_vtable_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  vtbl[].applyTo(self, slotval1)

proc QGraphicsTransformevent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTransform_virtualbase_event(self.h, event.h)

proc cQGraphicsTransform_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsTransformeventFilter*(self: gen_qgraphicstransform_types.QGraphicsTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsTransform_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsTransformtimerEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsTransform_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsTransform_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsTransformchildEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsTransform_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsTransform_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsTransformcustomEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsTransform_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsTransform_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsTransformconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsTransform_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsTransform_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsTransformdisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsTransform_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsTransform_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsTransform* {.inheritable.} = ref object of QGraphicsTransform
  vtbl*: cQGraphicsTransformVTable
method metaObject*(self: VirtualQGraphicsTransform): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsTransformmetaObject(self[])
proc cQGraphicsTransform_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsTransform, param1: cstring): pointer {.base.} =
  QGraphicsTransformmetacast(self[], param1)
proc cQGraphicsTransform_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsTransform, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsTransformmetacall(self[], param1, param2, param3)
proc cQGraphicsTransform_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method applyTo*(self: VirtualQGraphicsTransform, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.base.} =
  raiseAssert("missing implementation of QGraphicsTransform_virtualbase_applyTo")
proc cQGraphicsTransform_method_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  inst.applyTo(slotval1)

method event*(self: VirtualQGraphicsTransform, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsTransformevent(self[], event)
proc cQGraphicsTransform_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsTransformeventFilter(self[], watched, event)
proc cQGraphicsTransform_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsTransform, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsTransformtimerEvent(self[], event)
proc cQGraphicsTransform_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsTransform, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsTransformchildEvent(self[], event)
proc cQGraphicsTransform_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsTransform, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsTransformcustomEvent(self[], event)
proc cQGraphicsTransform_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsTransformconnectNotify(self[], signal)
proc cQGraphicsTransform_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsTransformdisconnectNotify(self[], signal)
proc cQGraphicsTransform_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsTransform](fcQGraphicsTransform_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc update*(self: gen_qgraphicstransform_types.QGraphicsTransform): void =
  fcQGraphicsTransform_protectedbase_update(self.h)

proc sender*(self: gen_qgraphicstransform_types.QGraphicsTransform): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsTransform_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicstransform_types.QGraphicsTransform): cint =
  fcQGraphicsTransform_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: cstring): cint =
  fcQGraphicsTransform_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsTransform_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform,
    vtbl: ref QGraphicsTransformVTable = nil): gen_qgraphicstransform_types.QGraphicsTransform =
  let vtbl = if vtbl == nil: new QGraphicsTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsTransform_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsTransform_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsTransform_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQGraphicsTransform_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsTransform_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsTransform_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsTransform_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsTransform_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsTransform_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsTransform_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsTransform_vtable_callback_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsTransform(h: fcQGraphicsTransform_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsTransformVTable = nil): gen_qgraphicstransform_types.QGraphicsTransform =
  let vtbl = if vtbl == nil: new QGraphicsTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTransformVTable](fcQGraphicsTransform_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsTransform_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsTransform_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsTransform_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQGraphicsTransform_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsTransform_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsTransform_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsTransform_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsTransform_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsTransform_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsTransform_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsTransform_vtable_callback_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsTransform(h: fcQGraphicsTransform_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsTransform_mvtbl = cQGraphicsTransformVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsTransform()[])](self.fcQGraphicsTransform_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsTransform_method_callback_metaObject,
  metacast: cQGraphicsTransform_method_callback_metacast,
  metacall: cQGraphicsTransform_method_callback_metacall,
  applyTo: cQGraphicsTransform_method_callback_applyTo,
  event: cQGraphicsTransform_method_callback_event,
  eventFilter: cQGraphicsTransform_method_callback_eventFilter,
  timerEvent: cQGraphicsTransform_method_callback_timerEvent,
  childEvent: cQGraphicsTransform_method_callback_childEvent,
  customEvent: cQGraphicsTransform_method_callback_customEvent,
  connectNotify: cQGraphicsTransform_method_callback_connectNotify,
  disconnectNotify: cQGraphicsTransform_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform,
    inst: VirtualQGraphicsTransform) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsTransform_new(addr(cQGraphicsTransform_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsTransform) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsTransform_new2(addr(cQGraphicsTransform_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTransform_staticMetaObject())
proc metaObject*(self: gen_qgraphicstransform_types.QGraphicsScale): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScale_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cstring): pointer =
  fcQGraphicsScale_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsScale_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring): string =
  let v_ms = fcQGraphicsScale_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring): string =
  let v_ms = fcQGraphicsScale_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc origin*(self: gen_qgraphicstransform_types.QGraphicsScale): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQGraphicsScale_origin(self.h), owned: true)

proc setOrigin*(self: gen_qgraphicstransform_types.QGraphicsScale, point: gen_qvector3d_types.QVector3D): void =
  fcQGraphicsScale_setOrigin(self.h, point.h)

proc xScale*(self: gen_qgraphicstransform_types.QGraphicsScale): float64 =
  fcQGraphicsScale_xScale(self.h)

proc setXScale*(self: gen_qgraphicstransform_types.QGraphicsScale, xScale: float64): void =
  fcQGraphicsScale_setXScale(self.h, xScale)

proc yScale*(self: gen_qgraphicstransform_types.QGraphicsScale): float64 =
  fcQGraphicsScale_yScale(self.h)

proc setYScale*(self: gen_qgraphicstransform_types.QGraphicsScale, yScale: float64): void =
  fcQGraphicsScale_setYScale(self.h, yScale)

proc zScale*(self: gen_qgraphicstransform_types.QGraphicsScale): float64 =
  fcQGraphicsScale_zScale(self.h)

proc setZScale*(self: gen_qgraphicstransform_types.QGraphicsScale, zScale: float64): void =
  fcQGraphicsScale_setZScale(self.h, zScale)

proc applyTo*(self: gen_qgraphicstransform_types.QGraphicsScale, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsScale_applyTo(self.h, matrix.h)

proc originChanged*(self: gen_qgraphicstransform_types.QGraphicsScale): void =
  fcQGraphicsScale_originChanged(self.h)

type QGraphicsScaleoriginChangedSlot* = proc()
proc cQGraphicsScale_slot_callback_originChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScaleoriginChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsScale_slot_callback_originChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScaleoriginChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoriginChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleoriginChangedSlot) =
  var tmp = new QGraphicsScaleoriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_originChanged(self.h, cast[int](addr tmp[]), cQGraphicsScale_slot_callback_originChanged, cQGraphicsScale_slot_callback_originChanged_release)

proc xScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale): void =
  fcQGraphicsScale_xScaleChanged(self.h)

type QGraphicsScalexScaleChangedSlot* = proc()
proc cQGraphicsScale_slot_callback_xScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScalexScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsScale_slot_callback_xScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScalexScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onxScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalexScaleChangedSlot) =
  var tmp = new QGraphicsScalexScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_xScaleChanged(self.h, cast[int](addr tmp[]), cQGraphicsScale_slot_callback_xScaleChanged, cQGraphicsScale_slot_callback_xScaleChanged_release)

proc yScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale): void =
  fcQGraphicsScale_yScaleChanged(self.h)

type QGraphicsScaleyScaleChangedSlot* = proc()
proc cQGraphicsScale_slot_callback_yScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScaleyScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsScale_slot_callback_yScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScaleyScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onyScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleyScaleChangedSlot) =
  var tmp = new QGraphicsScaleyScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_yScaleChanged(self.h, cast[int](addr tmp[]), cQGraphicsScale_slot_callback_yScaleChanged, cQGraphicsScale_slot_callback_yScaleChanged_release)

proc zScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale): void =
  fcQGraphicsScale_zScaleChanged(self.h)

type QGraphicsScalezScaleChangedSlot* = proc()
proc cQGraphicsScale_slot_callback_zScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScalezScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsScale_slot_callback_zScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScalezScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onzScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalezScaleChangedSlot) =
  var tmp = new QGraphicsScalezScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_zScaleChanged(self.h, cast[int](addr tmp[]), cQGraphicsScale_slot_callback_zScaleChanged, cQGraphicsScale_slot_callback_zScaleChanged_release)

proc scaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale): void =
  fcQGraphicsScale_scaleChanged(self.h)

type QGraphicsScalescaleChangedSlot* = proc()
proc cQGraphicsScale_slot_callback_scaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScalescaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsScale_slot_callback_scaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScalescaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalescaleChangedSlot) =
  var tmp = new QGraphicsScalescaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_scaleChanged(self.h, cast[int](addr tmp[]), cQGraphicsScale_slot_callback_scaleChanged, cQGraphicsScale_slot_callback_scaleChanged_release)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsScale_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsScale_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsScale_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsScale_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsScalemetaObjectProc* = proc(self: QGraphicsScale): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsScalemetacastProc* = proc(self: QGraphicsScale, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsScalemetacallProc* = proc(self: QGraphicsScale, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsScaleapplyToProc* = proc(self: QGraphicsScale, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.raises: [], gcsafe.}
type QGraphicsScaleeventProc* = proc(self: QGraphicsScale, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsScaleeventFilterProc* = proc(self: QGraphicsScale, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsScaletimerEventProc* = proc(self: QGraphicsScale, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsScalechildEventProc* = proc(self: QGraphicsScale, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsScalecustomEventProc* = proc(self: QGraphicsScale, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsScaleconnectNotifyProc* = proc(self: QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsScaledisconnectNotifyProc* = proc(self: QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsScaleVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsScaleVTable
  metaObject*: QGraphicsScalemetaObjectProc
  metacast*: QGraphicsScalemetacastProc
  metacall*: QGraphicsScalemetacallProc
  applyTo*: QGraphicsScaleapplyToProc
  event*: QGraphicsScaleeventProc
  eventFilter*: QGraphicsScaleeventFilterProc
  timerEvent*: QGraphicsScaletimerEventProc
  childEvent*: QGraphicsScalechildEventProc
  customEvent*: QGraphicsScalecustomEventProc
  connectNotify*: QGraphicsScaleconnectNotifyProc
  disconnectNotify*: QGraphicsScaledisconnectNotifyProc
proc QGraphicsScalemetaObject*(self: gen_qgraphicstransform_types.QGraphicsScale): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScale_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsScale_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsScalemetacast*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cstring): pointer =
  fcQGraphicsScale_virtualbase_metacast(self.h, param1)

proc cQGraphicsScale_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsScalemetacall*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsScale_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsScale_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsScaleapplyTo*(self: gen_qgraphicstransform_types.QGraphicsScale, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsScale_virtualbase_applyTo(self.h, matrix.h)

proc cQGraphicsScale_vtable_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  vtbl[].applyTo(self, slotval1)

proc QGraphicsScaleevent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsScale_virtualbase_event(self.h, event.h)

proc cQGraphicsScale_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsScaleeventFilter*(self: gen_qgraphicstransform_types.QGraphicsScale, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsScale_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsScale_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsScaletimerEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsScale_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsScale_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsScalechildEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsScale_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsScale_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsScalecustomEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsScale_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsScale_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsScaleconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsScale_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsScale_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsScaledisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsScale_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsScale_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsScale* {.inheritable.} = ref object of QGraphicsScale
  vtbl*: cQGraphicsScaleVTable
method metaObject*(self: VirtualQGraphicsScale): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsScalemetaObject(self[])
proc cQGraphicsScale_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsScale, param1: cstring): pointer {.base.} =
  QGraphicsScalemetacast(self[], param1)
proc cQGraphicsScale_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsScale, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsScalemetacall(self[], param1, param2, param3)
proc cQGraphicsScale_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method applyTo*(self: VirtualQGraphicsScale, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.base.} =
  QGraphicsScaleapplyTo(self[], matrix)
proc cQGraphicsScale_method_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  inst.applyTo(slotval1)

method event*(self: VirtualQGraphicsScale, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsScaleevent(self[], event)
proc cQGraphicsScale_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsScale, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsScaleeventFilter(self[], watched, event)
proc cQGraphicsScale_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsScale, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsScaletimerEvent(self[], event)
proc cQGraphicsScale_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsScale, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsScalechildEvent(self[], event)
proc cQGraphicsScale_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsScale, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsScalecustomEvent(self[], event)
proc cQGraphicsScale_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsScaleconnectNotify(self[], signal)
proc cQGraphicsScale_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsScaledisconnectNotify(self[], signal)
proc cQGraphicsScale_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsScale](fcQGraphicsScale_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc update*(self: gen_qgraphicstransform_types.QGraphicsScale): void =
  fcQGraphicsScale_protectedbase_update(self.h)

proc sender*(self: gen_qgraphicstransform_types.QGraphicsScale): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsScale_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicstransform_types.QGraphicsScale): cint =
  fcQGraphicsScale_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: cstring): cint =
  fcQGraphicsScale_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsScale_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale,
    vtbl: ref QGraphicsScaleVTable = nil): gen_qgraphicstransform_types.QGraphicsScale =
  let vtbl = if vtbl == nil: new QGraphicsScaleVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsScale_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsScale_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsScale_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQGraphicsScale_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsScale_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsScale_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsScale_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsScale_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsScale_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsScale_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsScale_vtable_callback_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsScale(h: fcQGraphicsScale_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsScaleVTable = nil): gen_qgraphicstransform_types.QGraphicsScale =
  let vtbl = if vtbl == nil: new QGraphicsScaleVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsScaleVTable](fcQGraphicsScale_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsScale_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsScale_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsScale_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQGraphicsScale_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsScale_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsScale_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsScale_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsScale_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsScale_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsScale_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsScale_vtable_callback_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsScale(h: fcQGraphicsScale_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsScale_mvtbl = cQGraphicsScaleVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsScale()[])](self.fcQGraphicsScale_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsScale_method_callback_metaObject,
  metacast: cQGraphicsScale_method_callback_metacast,
  metacall: cQGraphicsScale_method_callback_metacall,
  applyTo: cQGraphicsScale_method_callback_applyTo,
  event: cQGraphicsScale_method_callback_event,
  eventFilter: cQGraphicsScale_method_callback_eventFilter,
  timerEvent: cQGraphicsScale_method_callback_timerEvent,
  childEvent: cQGraphicsScale_method_callback_childEvent,
  customEvent: cQGraphicsScale_method_callback_customEvent,
  connectNotify: cQGraphicsScale_method_callback_connectNotify,
  disconnectNotify: cQGraphicsScale_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale,
    inst: VirtualQGraphicsScale) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsScale_new(addr(cQGraphicsScale_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsScale) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsScale_new2(addr(cQGraphicsScale_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsScale): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScale_staticMetaObject())
proc metaObject*(self: gen_qgraphicstransform_types.QGraphicsRotation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsRotation_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cstring): pointer =
  fcQGraphicsRotation_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsRotation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring): string =
  let v_ms = fcQGraphicsRotation_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring): string =
  let v_ms = fcQGraphicsRotation_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc origin*(self: gen_qgraphicstransform_types.QGraphicsRotation): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQGraphicsRotation_origin(self.h), owned: true)

proc setOrigin*(self: gen_qgraphicstransform_types.QGraphicsRotation, point: gen_qvector3d_types.QVector3D): void =
  fcQGraphicsRotation_setOrigin(self.h, point.h)

proc angle*(self: gen_qgraphicstransform_types.QGraphicsRotation): float64 =
  fcQGraphicsRotation_angle(self.h)

proc setAngle*(self: gen_qgraphicstransform_types.QGraphicsRotation, angle: float64): void =
  fcQGraphicsRotation_setAngle(self.h, angle)

proc axis*(self: gen_qgraphicstransform_types.QGraphicsRotation): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQGraphicsRotation_axis(self.h), owned: true)

proc setAxis*(self: gen_qgraphicstransform_types.QGraphicsRotation, axis: gen_qvector3d_types.QVector3D): void =
  fcQGraphicsRotation_setAxis(self.h, axis.h)

proc setAxis*(self: gen_qgraphicstransform_types.QGraphicsRotation, axis: cint): void =
  fcQGraphicsRotation_setAxisWithAxis(self.h, cint(axis))

proc applyTo*(self: gen_qgraphicstransform_types.QGraphicsRotation, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsRotation_applyTo(self.h, matrix.h)

proc originChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation): void =
  fcQGraphicsRotation_originChanged(self.h)

type QGraphicsRotationoriginChangedSlot* = proc()
proc cQGraphicsRotation_slot_callback_originChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsRotationoriginChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsRotation_slot_callback_originChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsRotationoriginChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoriginChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationoriginChangedSlot) =
  var tmp = new QGraphicsRotationoriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_originChanged(self.h, cast[int](addr tmp[]), cQGraphicsRotation_slot_callback_originChanged, cQGraphicsRotation_slot_callback_originChanged_release)

proc angleChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation): void =
  fcQGraphicsRotation_angleChanged(self.h)

type QGraphicsRotationangleChangedSlot* = proc()
proc cQGraphicsRotation_slot_callback_angleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsRotationangleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsRotation_slot_callback_angleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsRotationangleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onangleChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationangleChangedSlot) =
  var tmp = new QGraphicsRotationangleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_angleChanged(self.h, cast[int](addr tmp[]), cQGraphicsRotation_slot_callback_angleChanged, cQGraphicsRotation_slot_callback_angleChanged_release)

proc axisChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation): void =
  fcQGraphicsRotation_axisChanged(self.h)

type QGraphicsRotationaxisChangedSlot* = proc()
proc cQGraphicsRotation_slot_callback_axisChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsRotationaxisChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGraphicsRotation_slot_callback_axisChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsRotationaxisChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaxisChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationaxisChangedSlot) =
  var tmp = new QGraphicsRotationaxisChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_axisChanged(self.h, cast[int](addr tmp[]), cQGraphicsRotation_slot_callback_axisChanged, cQGraphicsRotation_slot_callback_axisChanged_release)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsRotation_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsRotation_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsRotation_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsRotation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGraphicsRotationmetaObjectProc* = proc(self: QGraphicsRotation): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGraphicsRotationmetacastProc* = proc(self: QGraphicsRotation, param1: cstring): pointer {.raises: [], gcsafe.}
type QGraphicsRotationmetacallProc* = proc(self: QGraphicsRotation, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGraphicsRotationapplyToProc* = proc(self: QGraphicsRotation, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.raises: [], gcsafe.}
type QGraphicsRotationeventProc* = proc(self: QGraphicsRotation, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsRotationeventFilterProc* = proc(self: QGraphicsRotation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGraphicsRotationtimerEventProc* = proc(self: QGraphicsRotation, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGraphicsRotationchildEventProc* = proc(self: QGraphicsRotation, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGraphicsRotationcustomEventProc* = proc(self: QGraphicsRotation, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsRotationconnectNotifyProc* = proc(self: QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsRotationdisconnectNotifyProc* = proc(self: QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGraphicsRotationVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsRotationVTable
  metaObject*: QGraphicsRotationmetaObjectProc
  metacast*: QGraphicsRotationmetacastProc
  metacall*: QGraphicsRotationmetacallProc
  applyTo*: QGraphicsRotationapplyToProc
  event*: QGraphicsRotationeventProc
  eventFilter*: QGraphicsRotationeventFilterProc
  timerEvent*: QGraphicsRotationtimerEventProc
  childEvent*: QGraphicsRotationchildEventProc
  customEvent*: QGraphicsRotationcustomEventProc
  connectNotify*: QGraphicsRotationconnectNotifyProc
  disconnectNotify*: QGraphicsRotationdisconnectNotifyProc
proc QGraphicsRotationmetaObject*(self: gen_qgraphicstransform_types.QGraphicsRotation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsRotation_virtualbase_metaObject(self.h), owned: false)

proc cQGraphicsRotation_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsRotationmetacast*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cstring): pointer =
  fcQGraphicsRotation_virtualbase_metacast(self.h, param1)

proc cQGraphicsRotation_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsRotationmetacall*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsRotation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGraphicsRotation_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsRotationapplyTo*(self: gen_qgraphicstransform_types.QGraphicsRotation, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsRotation_virtualbase_applyTo(self.h, matrix.h)

proc cQGraphicsRotation_vtable_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  vtbl[].applyTo(self, slotval1)

proc QGraphicsRotationevent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsRotation_virtualbase_event(self.h, event.h)

proc cQGraphicsRotation_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsRotationeventFilter*(self: gen_qgraphicstransform_types.QGraphicsRotation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsRotation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGraphicsRotation_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsRotationtimerEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsRotation_virtualbase_timerEvent(self.h, event.h)

proc cQGraphicsRotation_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsRotationchildEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsRotation_virtualbase_childEvent(self.h, event.h)

proc cQGraphicsRotation_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsRotationcustomEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsRotation_virtualbase_customEvent(self.h, event.h)

proc cQGraphicsRotation_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsRotationconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsRotation_virtualbase_connectNotify(self.h, signal.h)

proc cQGraphicsRotation_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsRotationdisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsRotation_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGraphicsRotation_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGraphicsRotation* {.inheritable.} = ref object of QGraphicsRotation
  vtbl*: cQGraphicsRotationVTable
method metaObject*(self: VirtualQGraphicsRotation): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGraphicsRotationmetaObject(self[])
proc cQGraphicsRotation_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGraphicsRotation, param1: cstring): pointer {.base.} =
  QGraphicsRotationmetacast(self[], param1)
proc cQGraphicsRotation_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGraphicsRotation, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGraphicsRotationmetacall(self[], param1, param2, param3)
proc cQGraphicsRotation_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method applyTo*(self: VirtualQGraphicsRotation, matrix: gen_qmatrix4x4_types.QMatrix4x4): void {.base.} =
  QGraphicsRotationapplyTo(self[], matrix)
proc cQGraphicsRotation_method_callback_applyTo(self: pointer, matrix: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix, owned: false)
  inst.applyTo(slotval1)

method event*(self: VirtualQGraphicsRotation, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsRotationevent(self[], event)
proc cQGraphicsRotation_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGraphicsRotation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGraphicsRotationeventFilter(self[], watched, event)
proc cQGraphicsRotation_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGraphicsRotation, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGraphicsRotationtimerEvent(self[], event)
proc cQGraphicsRotation_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQGraphicsRotation, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGraphicsRotationchildEvent(self[], event)
proc cQGraphicsRotation_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQGraphicsRotation, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsRotationcustomEvent(self[], event)
proc cQGraphicsRotation_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsRotationconnectNotify(self[], signal)
proc cQGraphicsRotation_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGraphicsRotationdisconnectNotify(self[], signal)
proc cQGraphicsRotation_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsRotation](fcQGraphicsRotation_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc update*(self: gen_qgraphicstransform_types.QGraphicsRotation): void =
  fcQGraphicsRotation_protectedbase_update(self.h)

proc sender*(self: gen_qgraphicstransform_types.QGraphicsRotation): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsRotation_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgraphicstransform_types.QGraphicsRotation): cint =
  fcQGraphicsRotation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: cstring): cint =
  fcQGraphicsRotation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsRotation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation,
    vtbl: ref QGraphicsRotationVTable = nil): gen_qgraphicstransform_types.QGraphicsRotation =
  let vtbl = if vtbl == nil: new QGraphicsRotationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsRotation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsRotation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsRotation_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQGraphicsRotation_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsRotation_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsRotation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsRotation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsRotation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsRotation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsRotation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsRotation_vtable_callback_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsRotation(h: fcQGraphicsRotation_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsRotationVTable = nil): gen_qgraphicstransform_types.QGraphicsRotation =
  let vtbl = if vtbl == nil: new QGraphicsRotationVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRotationVTable](fcQGraphicsRotation_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGraphicsRotation_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGraphicsRotation_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGraphicsRotation_vtable_callback_metacall
  if not isNil(vtbl[].applyTo):
    vtbl[].vtbl.applyTo = cQGraphicsRotation_vtable_callback_applyTo
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGraphicsRotation_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGraphicsRotation_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGraphicsRotation_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGraphicsRotation_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGraphicsRotation_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGraphicsRotation_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGraphicsRotation_vtable_callback_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsRotation(h: fcQGraphicsRotation_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsRotation_mvtbl = cQGraphicsRotationVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsRotation()[])](self.fcQGraphicsRotation_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGraphicsRotation_method_callback_metaObject,
  metacast: cQGraphicsRotation_method_callback_metacast,
  metacall: cQGraphicsRotation_method_callback_metacall,
  applyTo: cQGraphicsRotation_method_callback_applyTo,
  event: cQGraphicsRotation_method_callback_event,
  eventFilter: cQGraphicsRotation_method_callback_eventFilter,
  timerEvent: cQGraphicsRotation_method_callback_timerEvent,
  childEvent: cQGraphicsRotation_method_callback_childEvent,
  customEvent: cQGraphicsRotation_method_callback_customEvent,
  connectNotify: cQGraphicsRotation_method_callback_connectNotify,
  disconnectNotify: cQGraphicsRotation_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation,
    inst: VirtualQGraphicsRotation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsRotation_new(addr(cQGraphicsRotation_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGraphicsRotation) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsRotation_new2(addr(cQGraphicsRotation_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsRotation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsRotation_staticMetaObject())
