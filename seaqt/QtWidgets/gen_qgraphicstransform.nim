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
{.compile("gen_qgraphicstransform.cpp", cflags).}


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

proc fcQGraphicsTransform_metaObject(self: pointer, ): pointer {.importc: "QGraphicsTransform_metaObject".}
proc fcQGraphicsTransform_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTransform_metacast".}
proc fcQGraphicsTransform_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTransform_metacall".}
proc fcQGraphicsTransform_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsTransform_tr".}
proc fcQGraphicsTransform_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsTransform_trUtf8".}
proc fcQGraphicsTransform_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsTransform_applyTo".}
proc fcQGraphicsTransform_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTransform_tr2".}
proc fcQGraphicsTransform_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTransform_tr3".}
proc fcQGraphicsTransform_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsTransform_trUtf82".}
proc fcQGraphicsTransform_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsTransform_trUtf83".}
type cQGraphicsTransformVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsTransformVTable, self: ptr cQGraphicsTransform) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(vtbl, self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsTransform_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsTransform_virtualbase_metaObject".}
proc fcQGraphicsTransform_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsTransform_virtualbase_metacast".}
proc fcQGraphicsTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsTransform_virtualbase_metacall".}
proc fcQGraphicsTransform_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGraphicsTransform_virtualbase_event".}
proc fcQGraphicsTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGraphicsTransform_virtualbase_eventFilter".}
proc fcQGraphicsTransform_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTransform_virtualbase_timerEvent".}
proc fcQGraphicsTransform_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTransform_virtualbase_childEvent".}
proc fcQGraphicsTransform_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGraphicsTransform_virtualbase_customEvent".}
proc fcQGraphicsTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsTransform_virtualbase_connectNotify".}
proc fcQGraphicsTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGraphicsTransform_virtualbase_disconnectNotify".}
proc fcQGraphicsTransform_protectedbase_update(self: pointer, ): void {.importc: "QGraphicsTransform_protectedbase_update".}
proc fcQGraphicsTransform_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsTransform_protectedbase_sender".}
proc fcQGraphicsTransform_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsTransform_protectedbase_senderSignalIndex".}
proc fcQGraphicsTransform_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsTransform_protectedbase_receivers".}
proc fcQGraphicsTransform_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsTransform_protectedbase_isSignalConnected".}
proc fcQGraphicsTransform_new(vtbl: pointer, ): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new".}
proc fcQGraphicsTransform_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new2".}
proc fcQGraphicsTransform_staticMetaObject(): pointer {.importc: "QGraphicsTransform_staticMetaObject".}
proc fcQGraphicsTransform_delete(self: pointer) {.importc: "QGraphicsTransform_delete".}
proc fcQGraphicsScale_metaObject(self: pointer, ): pointer {.importc: "QGraphicsScale_metaObject".}
proc fcQGraphicsScale_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsScale_metacast".}
proc fcQGraphicsScale_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsScale_metacall".}
proc fcQGraphicsScale_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsScale_tr".}
proc fcQGraphicsScale_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsScale_trUtf8".}
proc fcQGraphicsScale_origin(self: pointer, ): pointer {.importc: "QGraphicsScale_origin".}
proc fcQGraphicsScale_setOrigin(self: pointer, point: pointer): void {.importc: "QGraphicsScale_setOrigin".}
proc fcQGraphicsScale_xScale(self: pointer, ): float64 {.importc: "QGraphicsScale_xScale".}
proc fcQGraphicsScale_setXScale(self: pointer, xScale: float64): void {.importc: "QGraphicsScale_setXScale".}
proc fcQGraphicsScale_yScale(self: pointer, ): float64 {.importc: "QGraphicsScale_yScale".}
proc fcQGraphicsScale_setYScale(self: pointer, yScale: float64): void {.importc: "QGraphicsScale_setYScale".}
proc fcQGraphicsScale_zScale(self: pointer, ): float64 {.importc: "QGraphicsScale_zScale".}
proc fcQGraphicsScale_setZScale(self: pointer, zScale: float64): void {.importc: "QGraphicsScale_setZScale".}
proc fcQGraphicsScale_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsScale_applyTo".}
proc fcQGraphicsScale_originChanged(self: pointer, ): void {.importc: "QGraphicsScale_originChanged".}
proc fcQGraphicsScale_connect_originChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_originChanged".}
proc fcQGraphicsScale_xScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_xScaleChanged".}
proc fcQGraphicsScale_connect_xScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_xScaleChanged".}
proc fcQGraphicsScale_yScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_yScaleChanged".}
proc fcQGraphicsScale_connect_yScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_yScaleChanged".}
proc fcQGraphicsScale_zScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_zScaleChanged".}
proc fcQGraphicsScale_connect_zScaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_zScaleChanged".}
proc fcQGraphicsScale_scaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_scaleChanged".}
proc fcQGraphicsScale_connect_scaleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsScale_connect_scaleChanged".}
proc fcQGraphicsScale_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_tr2".}
proc fcQGraphicsScale_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_tr3".}
proc fcQGraphicsScale_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_trUtf82".}
proc fcQGraphicsScale_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_trUtf83".}
type cQGraphicsScaleVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsScaleVTable, self: ptr cQGraphicsScale) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(vtbl, self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsScale_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsScale_virtualbase_metaObject".}
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
proc fcQGraphicsScale_protectedbase_update(self: pointer, ): void {.importc: "QGraphicsScale_protectedbase_update".}
proc fcQGraphicsScale_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsScale_protectedbase_sender".}
proc fcQGraphicsScale_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsScale_protectedbase_senderSignalIndex".}
proc fcQGraphicsScale_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsScale_protectedbase_receivers".}
proc fcQGraphicsScale_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsScale_protectedbase_isSignalConnected".}
proc fcQGraphicsScale_new(vtbl: pointer, ): ptr cQGraphicsScale {.importc: "QGraphicsScale_new".}
proc fcQGraphicsScale_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsScale {.importc: "QGraphicsScale_new2".}
proc fcQGraphicsScale_staticMetaObject(): pointer {.importc: "QGraphicsScale_staticMetaObject".}
proc fcQGraphicsScale_delete(self: pointer) {.importc: "QGraphicsScale_delete".}
proc fcQGraphicsRotation_metaObject(self: pointer, ): pointer {.importc: "QGraphicsRotation_metaObject".}
proc fcQGraphicsRotation_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsRotation_metacast".}
proc fcQGraphicsRotation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsRotation_metacall".}
proc fcQGraphicsRotation_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsRotation_tr".}
proc fcQGraphicsRotation_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsRotation_trUtf8".}
proc fcQGraphicsRotation_origin(self: pointer, ): pointer {.importc: "QGraphicsRotation_origin".}
proc fcQGraphicsRotation_setOrigin(self: pointer, point: pointer): void {.importc: "QGraphicsRotation_setOrigin".}
proc fcQGraphicsRotation_angle(self: pointer, ): float64 {.importc: "QGraphicsRotation_angle".}
proc fcQGraphicsRotation_setAngle(self: pointer, angle: float64): void {.importc: "QGraphicsRotation_setAngle".}
proc fcQGraphicsRotation_axis(self: pointer, ): pointer {.importc: "QGraphicsRotation_axis".}
proc fcQGraphicsRotation_setAxis(self: pointer, axis: pointer): void {.importc: "QGraphicsRotation_setAxis".}
proc fcQGraphicsRotation_setAxisWithAxis(self: pointer, axis: cint): void {.importc: "QGraphicsRotation_setAxisWithAxis".}
proc fcQGraphicsRotation_applyTo(self: pointer, matrix: pointer): void {.importc: "QGraphicsRotation_applyTo".}
proc fcQGraphicsRotation_originChanged(self: pointer, ): void {.importc: "QGraphicsRotation_originChanged".}
proc fcQGraphicsRotation_connect_originChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsRotation_connect_originChanged".}
proc fcQGraphicsRotation_angleChanged(self: pointer, ): void {.importc: "QGraphicsRotation_angleChanged".}
proc fcQGraphicsRotation_connect_angleChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsRotation_connect_angleChanged".}
proc fcQGraphicsRotation_axisChanged(self: pointer, ): void {.importc: "QGraphicsRotation_axisChanged".}
proc fcQGraphicsRotation_connect_axisChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGraphicsRotation_connect_axisChanged".}
proc fcQGraphicsRotation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_tr2".}
proc fcQGraphicsRotation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_tr3".}
proc fcQGraphicsRotation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_trUtf82".}
proc fcQGraphicsRotation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_trUtf83".}
type cQGraphicsRotationVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsRotationVTable, self: ptr cQGraphicsRotation) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  applyTo*: proc(vtbl, self: pointer, matrix: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsRotation_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGraphicsRotation_virtualbase_metaObject".}
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
proc fcQGraphicsRotation_protectedbase_update(self: pointer, ): void {.importc: "QGraphicsRotation_protectedbase_update".}
proc fcQGraphicsRotation_protectedbase_sender(self: pointer, ): pointer {.importc: "QGraphicsRotation_protectedbase_sender".}
proc fcQGraphicsRotation_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGraphicsRotation_protectedbase_senderSignalIndex".}
proc fcQGraphicsRotation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGraphicsRotation_protectedbase_receivers".}
proc fcQGraphicsRotation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGraphicsRotation_protectedbase_isSignalConnected".}
proc fcQGraphicsRotation_new(vtbl: pointer, ): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new".}
proc fcQGraphicsRotation_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new2".}
proc fcQGraphicsRotation_staticMetaObject(): pointer {.importc: "QGraphicsRotation_staticMetaObject".}
proc fcQGraphicsRotation_delete(self: pointer) {.importc: "QGraphicsRotation_delete".}

proc metaObject*(self: gen_qgraphicstransform_types.QGraphicsTransform, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTransform_metaObject(self.h))

proc metacast*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cstring): pointer =
  fcQGraphicsTransform_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsTransform_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring): string =
  let v_ms = fcQGraphicsTransform_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring): string =
  let v_ms = fcQGraphicsTransform_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applyTo*(self: gen_qgraphicstransform_types.QGraphicsTransform, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsTransform_applyTo(self.h, matrix.h)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsTransform_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsTransform_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsTransform_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsTransform, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsTransform_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsTransformVTable* = object
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
proc QGraphicsTransformmetaObject*(self: gen_qgraphicstransform_types.QGraphicsTransform, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTransform_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsTransform_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsTransformmetacast*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cstring): pointer =
  fcQGraphicsTransform_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsTransform_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsTransformmetacall*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsTransform_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQGraphicsTransform_applyTo(vtbl: pointer, self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)
  vtbl[].applyTo(self, slotval1)

proc QGraphicsTransformevent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTransform_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTransform_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsTransformeventFilter*(self: gen_qgraphicstransform_types.QGraphicsTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsTransform_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsTransformtimerEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsTransform_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTransform_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsTransformchildEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsTransform_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTransform_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsTransformcustomEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsTransform_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsTransform_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsTransformconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsTransform_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsTransform_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsTransformdisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsTransform_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsTransform_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsTransformVTable](vtbl)
  let self = QGraphicsTransform(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc update*(self: gen_qgraphicstransform_types.QGraphicsTransform, ): void =
  fcQGraphicsTransform_protectedbase_update(self.h)

proc sender*(self: gen_qgraphicstransform_types.QGraphicsTransform, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsTransform_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicstransform_types.QGraphicsTransform, ): cint =
  fcQGraphicsTransform_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: cstring): cint =
  fcQGraphicsTransform_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsTransform_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform,
    vtbl: ref QGraphicsTransformVTable = nil): gen_qgraphicstransform_types.QGraphicsTransform =
  let vtbl = if vtbl == nil: new QGraphicsTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsTransformVTable, _: ptr cQGraphicsTransform) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTransformVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsTransform_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsTransform_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsTransform_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQGraphicsTransform_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsTransform_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsTransform_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsTransform_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsTransform_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsTransform_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsTransform_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsTransform_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsTransform(h: fcQGraphicsTransform_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsTransformVTable = nil): gen_qgraphicstransform_types.QGraphicsTransform =
  let vtbl = if vtbl == nil: new QGraphicsTransformVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsTransformVTable, _: ptr cQGraphicsTransform) {.cdecl.} =
    let vtbl = cast[ref QGraphicsTransformVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsTransform_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsTransform_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsTransform_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQGraphicsTransform_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsTransform_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsTransform_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsTransform_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsTransform_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsTransform_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsTransform_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsTransform_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsTransform(h: fcQGraphicsTransform_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTransform_staticMetaObject())
proc delete*(self: gen_qgraphicstransform_types.QGraphicsTransform) =
  fcQGraphicsTransform_delete(self.h)
proc metaObject*(self: gen_qgraphicstransform_types.QGraphicsScale, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScale_metaObject(self.h))

proc metacast*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cstring): pointer =
  fcQGraphicsScale_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsScale_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring): string =
  let v_ms = fcQGraphicsScale_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring): string =
  let v_ms = fcQGraphicsScale_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc origin*(self: gen_qgraphicstransform_types.QGraphicsScale, ): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQGraphicsScale_origin(self.h))

proc setOrigin*(self: gen_qgraphicstransform_types.QGraphicsScale, point: gen_qvector3d_types.QVector3D): void =
  fcQGraphicsScale_setOrigin(self.h, point.h)

proc xScale*(self: gen_qgraphicstransform_types.QGraphicsScale, ): float64 =
  fcQGraphicsScale_xScale(self.h)

proc setXScale*(self: gen_qgraphicstransform_types.QGraphicsScale, xScale: float64): void =
  fcQGraphicsScale_setXScale(self.h, xScale)

proc yScale*(self: gen_qgraphicstransform_types.QGraphicsScale, ): float64 =
  fcQGraphicsScale_yScale(self.h)

proc setYScale*(self: gen_qgraphicstransform_types.QGraphicsScale, yScale: float64): void =
  fcQGraphicsScale_setYScale(self.h, yScale)

proc zScale*(self: gen_qgraphicstransform_types.QGraphicsScale, ): float64 =
  fcQGraphicsScale_zScale(self.h)

proc setZScale*(self: gen_qgraphicstransform_types.QGraphicsScale, zScale: float64): void =
  fcQGraphicsScale_setZScale(self.h, zScale)

proc applyTo*(self: gen_qgraphicstransform_types.QGraphicsScale, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsScale_applyTo(self.h, matrix.h)

proc originChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_originChanged(self.h)

type QGraphicsScaleoriginChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsScale_originChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScaleoriginChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsScale_originChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScaleoriginChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoriginChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleoriginChangedSlot) =
  var tmp = new QGraphicsScaleoriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_originChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScale_originChanged, miqt_exec_callback_cQGraphicsScale_originChanged_release)

proc xScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_xScaleChanged(self.h)

type QGraphicsScalexScaleChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsScale_xScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScalexScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsScale_xScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScalexScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onxScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalexScaleChangedSlot) =
  var tmp = new QGraphicsScalexScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_xScaleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScale_xScaleChanged, miqt_exec_callback_cQGraphicsScale_xScaleChanged_release)

proc yScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_yScaleChanged(self.h)

type QGraphicsScaleyScaleChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsScale_yScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScaleyScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsScale_yScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScaleyScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onyScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleyScaleChangedSlot) =
  var tmp = new QGraphicsScaleyScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_yScaleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScale_yScaleChanged, miqt_exec_callback_cQGraphicsScale_yScaleChanged_release)

proc zScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_zScaleChanged(self.h)

type QGraphicsScalezScaleChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsScale_zScaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScalezScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsScale_zScaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScalezScaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onzScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalezScaleChangedSlot) =
  var tmp = new QGraphicsScalezScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_zScaleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScale_zScaleChanged, miqt_exec_callback_cQGraphicsScale_zScaleChanged_release)

proc scaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_scaleChanged(self.h)

type QGraphicsScalescaleChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsScale_scaleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsScalescaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsScale_scaleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsScalescaleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalescaleChangedSlot) =
  var tmp = new QGraphicsScalescaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_scaleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsScale_scaleChanged, miqt_exec_callback_cQGraphicsScale_scaleChanged_release)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsScale_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsScale_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsScale_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsScale, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsScale_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsScaleVTable* = object
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
proc QGraphicsScalemetaObject*(self: gen_qgraphicstransform_types.QGraphicsScale, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScale_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsScale_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsScalemetacast*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cstring): pointer =
  fcQGraphicsScale_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsScale_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsScalemetacall*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsScale_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsScale_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsScaleapplyTo*(self: gen_qgraphicstransform_types.QGraphicsScale, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsScale_virtualbase_applyTo(self.h, matrix.h)

proc miqt_exec_callback_cQGraphicsScale_applyTo(vtbl: pointer, self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)
  vtbl[].applyTo(self, slotval1)

proc QGraphicsScaleevent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsScale_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScale_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsScaleeventFilter*(self: gen_qgraphicstransform_types.QGraphicsScale, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsScale_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsScale_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsScaletimerEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsScale_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScale_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsScalechildEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsScale_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScale_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsScalecustomEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsScale_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsScale_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsScaleconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsScale_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsScale_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsScaledisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsScale_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsScale_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsScaleVTable](vtbl)
  let self = QGraphicsScale(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc update*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_protectedbase_update(self.h)

proc sender*(self: gen_qgraphicstransform_types.QGraphicsScale, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsScale_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicstransform_types.QGraphicsScale, ): cint =
  fcQGraphicsScale_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: cstring): cint =
  fcQGraphicsScale_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsScale_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale,
    vtbl: ref QGraphicsScaleVTable = nil): gen_qgraphicstransform_types.QGraphicsScale =
  let vtbl = if vtbl == nil: new QGraphicsScaleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsScaleVTable, _: ptr cQGraphicsScale) {.cdecl.} =
    let vtbl = cast[ref QGraphicsScaleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScale_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScale_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScale_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQGraphicsScale_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScale_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScale_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScale_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScale_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScale_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScale_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScale_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsScale(h: fcQGraphicsScale_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsScaleVTable = nil): gen_qgraphicstransform_types.QGraphicsScale =
  let vtbl = if vtbl == nil: new QGraphicsScaleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsScaleVTable, _: ptr cQGraphicsScale) {.cdecl.} =
    let vtbl = cast[ref QGraphicsScaleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsScale_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsScale_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsScale_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQGraphicsScale_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsScale_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsScale_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsScale_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsScale_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsScale_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsScale_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsScale_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsScale(h: fcQGraphicsScale_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsScale): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScale_staticMetaObject())
proc delete*(self: gen_qgraphicstransform_types.QGraphicsScale) =
  fcQGraphicsScale_delete(self.h)
proc metaObject*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsRotation_metaObject(self.h))

proc metacast*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cstring): pointer =
  fcQGraphicsRotation_metacast(self.h, param1)

proc metacall*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsRotation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring): string =
  let v_ms = fcQGraphicsRotation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring): string =
  let v_ms = fcQGraphicsRotation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc origin*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQGraphicsRotation_origin(self.h))

proc setOrigin*(self: gen_qgraphicstransform_types.QGraphicsRotation, point: gen_qvector3d_types.QVector3D): void =
  fcQGraphicsRotation_setOrigin(self.h, point.h)

proc angle*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): float64 =
  fcQGraphicsRotation_angle(self.h)

proc setAngle*(self: gen_qgraphicstransform_types.QGraphicsRotation, angle: float64): void =
  fcQGraphicsRotation_setAngle(self.h, angle)

proc axis*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQGraphicsRotation_axis(self.h))

proc setAxis*(self: gen_qgraphicstransform_types.QGraphicsRotation, axis: gen_qvector3d_types.QVector3D): void =
  fcQGraphicsRotation_setAxis(self.h, axis.h)

proc setAxis*(self: gen_qgraphicstransform_types.QGraphicsRotation, axis: cint): void =
  fcQGraphicsRotation_setAxisWithAxis(self.h, cint(axis))

proc applyTo*(self: gen_qgraphicstransform_types.QGraphicsRotation, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsRotation_applyTo(self.h, matrix.h)

proc originChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): void =
  fcQGraphicsRotation_originChanged(self.h)

type QGraphicsRotationoriginChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsRotation_originChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsRotationoriginChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsRotation_originChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsRotationoriginChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onoriginChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationoriginChangedSlot) =
  var tmp = new QGraphicsRotationoriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_originChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsRotation_originChanged, miqt_exec_callback_cQGraphicsRotation_originChanged_release)

proc angleChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): void =
  fcQGraphicsRotation_angleChanged(self.h)

type QGraphicsRotationangleChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsRotation_angleChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsRotationangleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsRotation_angleChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsRotationangleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onangleChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationangleChangedSlot) =
  var tmp = new QGraphicsRotationangleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_angleChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsRotation_angleChanged, miqt_exec_callback_cQGraphicsRotation_angleChanged_release)

proc axisChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): void =
  fcQGraphicsRotation_axisChanged(self.h)

type QGraphicsRotationaxisChangedSlot* = proc()
proc miqt_exec_callback_cQGraphicsRotation_axisChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGraphicsRotationaxisChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGraphicsRotation_axisChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGraphicsRotationaxisChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaxisChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationaxisChangedSlot) =
  var tmp = new QGraphicsRotationaxisChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_axisChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGraphicsRotation_axisChanged, miqt_exec_callback_cQGraphicsRotation_axisChanged_release)

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsRotation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsRotation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring): string =
  let v_ms = fcQGraphicsRotation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgraphicstransform_types.QGraphicsRotation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGraphicsRotation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QGraphicsRotationVTable* = object
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
proc QGraphicsRotationmetaObject*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsRotation_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGraphicsRotation_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGraphicsRotationmetacast*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cstring): pointer =
  fcQGraphicsRotation_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGraphicsRotation_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGraphicsRotationmetacall*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cint, param2: cint, param3: pointer): cint =
  fcQGraphicsRotation_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGraphicsRotation_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGraphicsRotationapplyTo*(self: gen_qgraphicstransform_types.QGraphicsRotation, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQGraphicsRotation_virtualbase_applyTo(self.h, matrix.h)

proc miqt_exec_callback_cQGraphicsRotation_applyTo(vtbl: pointer, self: pointer, matrix: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)
  vtbl[].applyTo(self, slotval1)

proc QGraphicsRotationevent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsRotation_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRotation_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGraphicsRotationeventFilter*(self: gen_qgraphicstransform_types.QGraphicsRotation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGraphicsRotation_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGraphicsRotation_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGraphicsRotationtimerEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGraphicsRotation_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRotation_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGraphicsRotationchildEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGraphicsRotation_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRotation_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGraphicsRotationcustomEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsRotation_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGraphicsRotation_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGraphicsRotationconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsRotation_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsRotation_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGraphicsRotationdisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGraphicsRotation_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGraphicsRotation_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsRotationVTable](vtbl)
  let self = QGraphicsRotation(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc update*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): void =
  fcQGraphicsRotation_protectedbase_update(self.h)

proc sender*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGraphicsRotation_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): cint =
  fcQGraphicsRotation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: cstring): cint =
  fcQGraphicsRotation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGraphicsRotation_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation,
    vtbl: ref QGraphicsRotationVTable = nil): gen_qgraphicstransform_types.QGraphicsRotation =
  let vtbl = if vtbl == nil: new QGraphicsRotationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRotationVTable, _: ptr cQGraphicsRotation) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRotationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsRotation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsRotation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsRotation_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQGraphicsRotation_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsRotation_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsRotation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsRotation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsRotation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsRotation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsRotation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsRotation_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsRotation(h: fcQGraphicsRotation_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGraphicsRotationVTable = nil): gen_qgraphicstransform_types.QGraphicsRotation =
  let vtbl = if vtbl == nil: new QGraphicsRotationVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsRotationVTable, _: ptr cQGraphicsRotation) {.cdecl.} =
    let vtbl = cast[ref QGraphicsRotationVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGraphicsRotation_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGraphicsRotation_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGraphicsRotation_metacall
  if not isNil(vtbl.applyTo):
    vtbl[].vtbl.applyTo = miqt_exec_callback_cQGraphicsRotation_applyTo
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGraphicsRotation_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGraphicsRotation_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGraphicsRotation_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGraphicsRotation_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGraphicsRotation_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGraphicsRotation_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGraphicsRotation_disconnectNotify
  gen_qgraphicstransform_types.QGraphicsRotation(h: fcQGraphicsRotation_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsRotation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsRotation_staticMetaObject())
proc delete*(self: gen_qgraphicstransform_types.QGraphicsRotation) =
  fcQGraphicsRotation_delete(self.h)
