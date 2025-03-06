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

proc fcQGraphicsTransform_new(): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new".}
proc fcQGraphicsTransform_new2(parent: pointer): ptr cQGraphicsTransform {.importc: "QGraphicsTransform_new2".}
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
proc fQGraphicsTransform_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsTransform_virtualbase_metaObject".}
proc fcQGraphicsTransform_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_metaObject".}
proc fQGraphicsTransform_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsTransform_virtualbase_metacast".}
proc fcQGraphicsTransform_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_metacast".}
proc fQGraphicsTransform_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsTransform_virtualbase_metacall".}
proc fcQGraphicsTransform_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_metacall".}
proc fcQGraphicsTransform_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_applyTo".}
proc fQGraphicsTransform_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsTransform_virtualbase_event".}
proc fcQGraphicsTransform_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_event".}
proc fQGraphicsTransform_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsTransform_virtualbase_eventFilter".}
proc fcQGraphicsTransform_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_eventFilter".}
proc fQGraphicsTransform_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTransform_virtualbase_timerEvent".}
proc fcQGraphicsTransform_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_timerEvent".}
proc fQGraphicsTransform_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTransform_virtualbase_childEvent".}
proc fcQGraphicsTransform_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_childEvent".}
proc fQGraphicsTransform_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsTransform_virtualbase_customEvent".}
proc fcQGraphicsTransform_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_customEvent".}
proc fQGraphicsTransform_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTransform_virtualbase_connectNotify".}
proc fcQGraphicsTransform_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_connectNotify".}
proc fQGraphicsTransform_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsTransform_virtualbase_disconnectNotify".}
proc fcQGraphicsTransform_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsTransform_override_virtual_disconnectNotify".}
proc fcQGraphicsTransform_staticMetaObject(): pointer {.importc: "QGraphicsTransform_staticMetaObject".}
proc fcQGraphicsTransform_delete(self: pointer) {.importc: "QGraphicsTransform_delete".}
proc fcQGraphicsScale_new(): ptr cQGraphicsScale {.importc: "QGraphicsScale_new".}
proc fcQGraphicsScale_new2(parent: pointer): ptr cQGraphicsScale {.importc: "QGraphicsScale_new2".}
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
proc fcQGraphicsScale_connect_originChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_originChanged".}
proc fcQGraphicsScale_xScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_xScaleChanged".}
proc fcQGraphicsScale_connect_xScaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_xScaleChanged".}
proc fcQGraphicsScale_yScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_yScaleChanged".}
proc fcQGraphicsScale_connect_yScaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_yScaleChanged".}
proc fcQGraphicsScale_zScaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_zScaleChanged".}
proc fcQGraphicsScale_connect_zScaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_zScaleChanged".}
proc fcQGraphicsScale_scaleChanged(self: pointer, ): void {.importc: "QGraphicsScale_scaleChanged".}
proc fcQGraphicsScale_connect_scaleChanged(self: pointer, slot: int) {.importc: "QGraphicsScale_connect_scaleChanged".}
proc fcQGraphicsScale_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_tr2".}
proc fcQGraphicsScale_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_tr3".}
proc fcQGraphicsScale_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsScale_trUtf82".}
proc fcQGraphicsScale_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsScale_trUtf83".}
proc fQGraphicsScale_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsScale_virtualbase_metaObject".}
proc fcQGraphicsScale_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_metaObject".}
proc fQGraphicsScale_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsScale_virtualbase_metacast".}
proc fcQGraphicsScale_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_metacast".}
proc fQGraphicsScale_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsScale_virtualbase_metacall".}
proc fcQGraphicsScale_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_metacall".}
proc fQGraphicsScale_virtualbase_applyTo(self: pointer, matrix: pointer): void{.importc: "QGraphicsScale_virtualbase_applyTo".}
proc fcQGraphicsScale_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_applyTo".}
proc fQGraphicsScale_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsScale_virtualbase_event".}
proc fcQGraphicsScale_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_event".}
proc fQGraphicsScale_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsScale_virtualbase_eventFilter".}
proc fcQGraphicsScale_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_eventFilter".}
proc fQGraphicsScale_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScale_virtualbase_timerEvent".}
proc fcQGraphicsScale_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_timerEvent".}
proc fQGraphicsScale_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScale_virtualbase_childEvent".}
proc fcQGraphicsScale_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_childEvent".}
proc fQGraphicsScale_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsScale_virtualbase_customEvent".}
proc fcQGraphicsScale_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_customEvent".}
proc fQGraphicsScale_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsScale_virtualbase_connectNotify".}
proc fcQGraphicsScale_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_connectNotify".}
proc fQGraphicsScale_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsScale_virtualbase_disconnectNotify".}
proc fcQGraphicsScale_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsScale_override_virtual_disconnectNotify".}
proc fcQGraphicsScale_staticMetaObject(): pointer {.importc: "QGraphicsScale_staticMetaObject".}
proc fcQGraphicsScale_delete(self: pointer) {.importc: "QGraphicsScale_delete".}
proc fcQGraphicsRotation_new(): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new".}
proc fcQGraphicsRotation_new2(parent: pointer): ptr cQGraphicsRotation {.importc: "QGraphicsRotation_new2".}
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
proc fcQGraphicsRotation_connect_originChanged(self: pointer, slot: int) {.importc: "QGraphicsRotation_connect_originChanged".}
proc fcQGraphicsRotation_angleChanged(self: pointer, ): void {.importc: "QGraphicsRotation_angleChanged".}
proc fcQGraphicsRotation_connect_angleChanged(self: pointer, slot: int) {.importc: "QGraphicsRotation_connect_angleChanged".}
proc fcQGraphicsRotation_axisChanged(self: pointer, ): void {.importc: "QGraphicsRotation_axisChanged".}
proc fcQGraphicsRotation_connect_axisChanged(self: pointer, slot: int) {.importc: "QGraphicsRotation_connect_axisChanged".}
proc fcQGraphicsRotation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_tr2".}
proc fcQGraphicsRotation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_tr3".}
proc fcQGraphicsRotation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsRotation_trUtf82".}
proc fcQGraphicsRotation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsRotation_trUtf83".}
proc fQGraphicsRotation_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsRotation_virtualbase_metaObject".}
proc fcQGraphicsRotation_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_metaObject".}
proc fQGraphicsRotation_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsRotation_virtualbase_metacast".}
proc fcQGraphicsRotation_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_metacast".}
proc fQGraphicsRotation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsRotation_virtualbase_metacall".}
proc fcQGraphicsRotation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_metacall".}
proc fQGraphicsRotation_virtualbase_applyTo(self: pointer, matrix: pointer): void{.importc: "QGraphicsRotation_virtualbase_applyTo".}
proc fcQGraphicsRotation_override_virtual_applyTo(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_applyTo".}
proc fQGraphicsRotation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsRotation_virtualbase_event".}
proc fcQGraphicsRotation_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_event".}
proc fQGraphicsRotation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsRotation_virtualbase_eventFilter".}
proc fcQGraphicsRotation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_eventFilter".}
proc fQGraphicsRotation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRotation_virtualbase_timerEvent".}
proc fcQGraphicsRotation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_timerEvent".}
proc fQGraphicsRotation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRotation_virtualbase_childEvent".}
proc fcQGraphicsRotation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_childEvent".}
proc fQGraphicsRotation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsRotation_virtualbase_customEvent".}
proc fcQGraphicsRotation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_customEvent".}
proc fQGraphicsRotation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsRotation_virtualbase_connectNotify".}
proc fcQGraphicsRotation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_connectNotify".}
proc fQGraphicsRotation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsRotation_virtualbase_disconnectNotify".}
proc fcQGraphicsRotation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsRotation_override_virtual_disconnectNotify".}
proc fcQGraphicsRotation_staticMetaObject(): pointer {.importc: "QGraphicsRotation_staticMetaObject".}
proc fcQGraphicsRotation_delete(self: pointer) {.importc: "QGraphicsRotation_delete".}


func init*(T: type gen_qgraphicstransform_types.QGraphicsTransform, h: ptr cQGraphicsTransform): gen_qgraphicstransform_types.QGraphicsTransform =
  T(h: h)
proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform, ): gen_qgraphicstransform_types.QGraphicsTransform =
  gen_qgraphicstransform_types.QGraphicsTransform.init(fcQGraphicsTransform_new())

proc create*(T: type gen_qgraphicstransform_types.QGraphicsTransform, parent: gen_qobject_types.QObject): gen_qgraphicstransform_types.QGraphicsTransform =
  gen_qgraphicstransform_types.QGraphicsTransform.init(fcQGraphicsTransform_new2(parent.h))

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

proc QGraphicsTransformmetaObject*(self: gen_qgraphicstransform_types.QGraphicsTransform, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGraphicsTransform_virtualbase_metaObject(self.h))

type QGraphicsTransformmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformmetaObjectProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_metaObject(self: ptr cQGraphicsTransform, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsTransform_metaObject ".} =
  var nimfunc = cast[ptr QGraphicsTransformmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsTransformmetacast*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cstring): pointer =
  fQGraphicsTransform_virtualbase_metacast(self.h, param1)

type QGraphicsTransformmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformmetacastProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_metacast(self: ptr cQGraphicsTransform, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsTransform_metacast ".} =
  var nimfunc = cast[ptr QGraphicsTransformmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsTransformmetacall*(self: gen_qgraphicstransform_types.QGraphicsTransform, param1: cint, param2: cint, param3: pointer): cint =
  fQGraphicsTransform_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsTransformmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformmetacallProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_metacall(self: ptr cQGraphicsTransform, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsTransform_metacall ".} =
  var nimfunc = cast[ptr QGraphicsTransformmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QGraphicsTransformapplyToProc* = proc(matrix: gen_qmatrix4x4_types.QMatrix4x4): void
proc onapplyTo*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformapplyToProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformapplyToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_applyTo(self: ptr cQGraphicsTransform, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_applyTo ".} =
  var nimfunc = cast[ptr QGraphicsTransformapplyToProc](cast[pointer](slot))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)


  nimfunc[](slotval1)
proc QGraphicsTransformevent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsTransform_virtualbase_event(self.h, event.h)

type QGraphicsTransformeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_event(self: ptr cQGraphicsTransform, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTransform_event ".} =
  var nimfunc = cast[ptr QGraphicsTransformeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsTransformeventFilter*(self: gen_qgraphicstransform_types.QGraphicsTransform, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsTransform_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsTransformeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_eventFilter(self: ptr cQGraphicsTransform, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsTransform_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsTransformeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsTransformtimerEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsTransform_virtualbase_timerEvent(self.h, event.h)

type QGraphicsTransformtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_timerEvent(self: ptr cQGraphicsTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsTransformtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTransformchildEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsTransform_virtualbase_childEvent(self.h, event.h)

type QGraphicsTransformchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_childEvent(self: ptr cQGraphicsTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsTransformchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTransformcustomEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsTransform_virtualbase_customEvent(self.h, event.h)

type QGraphicsTransformcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_customEvent(self: ptr cQGraphicsTransform, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsTransformcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsTransformconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsTransform_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsTransformconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_connectNotify(self: ptr cQGraphicsTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsTransformconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsTransformdisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsTransform_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsTransformdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsTransform, slot: QGraphicsTransformdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsTransformdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsTransform_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsTransform_disconnectNotify(self: ptr cQGraphicsTransform, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsTransform_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsTransformdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsTransform): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsTransform_staticMetaObject())
proc delete*(self: gen_qgraphicstransform_types.QGraphicsTransform) =
  fcQGraphicsTransform_delete(self.h)

func init*(T: type gen_qgraphicstransform_types.QGraphicsScale, h: ptr cQGraphicsScale): gen_qgraphicstransform_types.QGraphicsScale =
  T(h: h)
proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale, ): gen_qgraphicstransform_types.QGraphicsScale =
  gen_qgraphicstransform_types.QGraphicsScale.init(fcQGraphicsScale_new())

proc create*(T: type gen_qgraphicstransform_types.QGraphicsScale, parent: gen_qobject_types.QObject): gen_qgraphicstransform_types.QGraphicsScale =
  gen_qgraphicstransform_types.QGraphicsScale.init(fcQGraphicsScale_new2(parent.h))

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
proc miqt_exec_callback_QGraphicsScale_originChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsScaleoriginChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onoriginChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleoriginChangedSlot) =
  var tmp = new QGraphicsScaleoriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_originChanged(self.h, cast[int](addr tmp[]))

proc xScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_xScaleChanged(self.h)

type QGraphicsScalexScaleChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsScale_xScaleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsScalexScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onxScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalexScaleChangedSlot) =
  var tmp = new QGraphicsScalexScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_xScaleChanged(self.h, cast[int](addr tmp[]))

proc yScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_yScaleChanged(self.h)

type QGraphicsScaleyScaleChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsScale_yScaleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsScaleyScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onyScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleyScaleChangedSlot) =
  var tmp = new QGraphicsScaleyScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_yScaleChanged(self.h, cast[int](addr tmp[]))

proc zScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_zScaleChanged(self.h)

type QGraphicsScalezScaleChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsScale_zScaleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsScalezScaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onzScaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalezScaleChangedSlot) =
  var tmp = new QGraphicsScalezScaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_zScaleChanged(self.h, cast[int](addr tmp[]))

proc scaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, ): void =
  fcQGraphicsScale_scaleChanged(self.h)

type QGraphicsScalescaleChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsScale_scaleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsScalescaleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onscaleChanged*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalescaleChangedSlot) =
  var tmp = new QGraphicsScalescaleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_connect_scaleChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsScalemetaObject*(self: gen_qgraphicstransform_types.QGraphicsScale, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGraphicsScale_virtualbase_metaObject(self.h))

type QGraphicsScalemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalemetaObjectProc) =
  # TODO check subclass
  var tmp = new QGraphicsScalemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_metaObject(self: ptr cQGraphicsScale, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsScale_metaObject ".} =
  var nimfunc = cast[ptr QGraphicsScalemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsScalemetacast*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cstring): pointer =
  fQGraphicsScale_virtualbase_metacast(self.h, param1)

type QGraphicsScalemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalemetacastProc) =
  # TODO check subclass
  var tmp = new QGraphicsScalemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_metacast(self: ptr cQGraphicsScale, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsScale_metacast ".} =
  var nimfunc = cast[ptr QGraphicsScalemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsScalemetacall*(self: gen_qgraphicstransform_types.QGraphicsScale, param1: cint, param2: cint, param3: pointer): cint =
  fQGraphicsScale_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsScalemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalemetacallProc) =
  # TODO check subclass
  var tmp = new QGraphicsScalemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_metacall(self: ptr cQGraphicsScale, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsScale_metacall ".} =
  var nimfunc = cast[ptr QGraphicsScalemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGraphicsScaleapplyTo*(self: gen_qgraphicstransform_types.QGraphicsScale, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fQGraphicsScale_virtualbase_applyTo(self.h, matrix.h)

type QGraphicsScaleapplyToProc* = proc(matrix: gen_qmatrix4x4_types.QMatrix4x4): void
proc onapplyTo*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleapplyToProc) =
  # TODO check subclass
  var tmp = new QGraphicsScaleapplyToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_applyTo(self: ptr cQGraphicsScale, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_applyTo ".} =
  var nimfunc = cast[ptr QGraphicsScaleapplyToProc](cast[pointer](slot))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)


  nimfunc[](slotval1)
proc QGraphicsScaleevent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsScale_virtualbase_event(self.h, event.h)

type QGraphicsScaleeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScaleeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_event(self: ptr cQGraphicsScale, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScale_event ".} =
  var nimfunc = cast[ptr QGraphicsScaleeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsScaleeventFilter*(self: gen_qgraphicstransform_types.QGraphicsScale, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsScale_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsScaleeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsScaleeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_eventFilter(self: ptr cQGraphicsScale, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsScale_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsScaleeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsScaletimerEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsScale_virtualbase_timerEvent(self.h, event.h)

type QGraphicsScaletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaletimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScaletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_timerEvent(self: ptr cQGraphicsScale, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsScaletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScalechildEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsScale_virtualbase_childEvent(self.h, event.h)

type QGraphicsScalechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalechildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScalechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_childEvent(self: ptr cQGraphicsScale, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsScalechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScalecustomEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsScale_virtualbase_customEvent(self.h, event.h)

type QGraphicsScalecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScalecustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsScalecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_customEvent(self: ptr cQGraphicsScale, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsScalecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsScaleconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsScale_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsScaleconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaleconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsScaleconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_connectNotify(self: ptr cQGraphicsScale, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsScaleconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsScaledisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsScale_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsScaledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsScale, slot: QGraphicsScaledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsScaledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsScale_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsScale_disconnectNotify(self: ptr cQGraphicsScale, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsScale_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsScaledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsScale): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsScale_staticMetaObject())
proc delete*(self: gen_qgraphicstransform_types.QGraphicsScale) =
  fcQGraphicsScale_delete(self.h)

func init*(T: type gen_qgraphicstransform_types.QGraphicsRotation, h: ptr cQGraphicsRotation): gen_qgraphicstransform_types.QGraphicsRotation =
  T(h: h)
proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation, ): gen_qgraphicstransform_types.QGraphicsRotation =
  gen_qgraphicstransform_types.QGraphicsRotation.init(fcQGraphicsRotation_new())

proc create*(T: type gen_qgraphicstransform_types.QGraphicsRotation, parent: gen_qobject_types.QObject): gen_qgraphicstransform_types.QGraphicsRotation =
  gen_qgraphicstransform_types.QGraphicsRotation.init(fcQGraphicsRotation_new2(parent.h))

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
proc miqt_exec_callback_QGraphicsRotation_originChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsRotationoriginChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onoriginChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationoriginChangedSlot) =
  var tmp = new QGraphicsRotationoriginChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_originChanged(self.h, cast[int](addr tmp[]))

proc angleChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): void =
  fcQGraphicsRotation_angleChanged(self.h)

type QGraphicsRotationangleChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsRotation_angleChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsRotationangleChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onangleChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationangleChangedSlot) =
  var tmp = new QGraphicsRotationangleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_angleChanged(self.h, cast[int](addr tmp[]))

proc axisChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): void =
  fcQGraphicsRotation_axisChanged(self.h)

type QGraphicsRotationaxisChangedSlot* = proc()
proc miqt_exec_callback_QGraphicsRotation_axisChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGraphicsRotationaxisChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaxisChanged*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationaxisChangedSlot) =
  var tmp = new QGraphicsRotationaxisChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_connect_axisChanged(self.h, cast[int](addr tmp[]))

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

proc QGraphicsRotationmetaObject*(self: gen_qgraphicstransform_types.QGraphicsRotation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQGraphicsRotation_virtualbase_metaObject(self.h))

type QGraphicsRotationmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationmetaObjectProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_metaObject(self: ptr cQGraphicsRotation, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsRotation_metaObject ".} =
  var nimfunc = cast[ptr QGraphicsRotationmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGraphicsRotationmetacast*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cstring): pointer =
  fQGraphicsRotation_virtualbase_metacast(self.h, param1)

type QGraphicsRotationmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationmetacastProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_metacast(self: ptr cQGraphicsRotation, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsRotation_metacast ".} =
  var nimfunc = cast[ptr QGraphicsRotationmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsRotationmetacall*(self: gen_qgraphicstransform_types.QGraphicsRotation, param1: cint, param2: cint, param3: pointer): cint =
  fQGraphicsRotation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsRotationmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationmetacallProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_metacall(self: ptr cQGraphicsRotation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsRotation_metacall ".} =
  var nimfunc = cast[ptr QGraphicsRotationmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGraphicsRotationapplyTo*(self: gen_qgraphicstransform_types.QGraphicsRotation, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fQGraphicsRotation_virtualbase_applyTo(self.h, matrix.h)

type QGraphicsRotationapplyToProc* = proc(matrix: gen_qmatrix4x4_types.QMatrix4x4): void
proc onapplyTo*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationapplyToProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationapplyToProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_applyTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_applyTo(self: ptr cQGraphicsRotation, slot: int, matrix: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_applyTo ".} =
  var nimfunc = cast[ptr QGraphicsRotationapplyToProc](cast[pointer](slot))
  let slotval1 = gen_qmatrix4x4_types.QMatrix4x4(h: matrix)


  nimfunc[](slotval1)
proc QGraphicsRotationevent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsRotation_virtualbase_event(self.h, event.h)

type QGraphicsRotationeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationeventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_event(self: ptr cQGraphicsRotation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRotation_event ".} =
  var nimfunc = cast[ptr QGraphicsRotationeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGraphicsRotationeventFilter*(self: gen_qgraphicstransform_types.QGraphicsRotation, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGraphicsRotation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsRotationeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationeventFilterProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_eventFilter(self: ptr cQGraphicsRotation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsRotation_eventFilter ".} =
  var nimfunc = cast[ptr QGraphicsRotationeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGraphicsRotationtimerEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGraphicsRotation_virtualbase_timerEvent(self.h, event.h)

type QGraphicsRotationtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationtimerEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_timerEvent(self: ptr cQGraphicsRotation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_timerEvent ".} =
  var nimfunc = cast[ptr QGraphicsRotationtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRotationchildEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QChildEvent): void =
  fQGraphicsRotation_virtualbase_childEvent(self.h, event.h)

type QGraphicsRotationchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationchildEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_childEvent(self: ptr cQGraphicsRotation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_childEvent ".} =
  var nimfunc = cast[ptr QGraphicsRotationchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRotationcustomEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, event: gen_qcoreevent_types.QEvent): void =
  fQGraphicsRotation_virtualbase_customEvent(self.h, event.h)

type QGraphicsRotationcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationcustomEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_customEvent(self: ptr cQGraphicsRotation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_customEvent ".} =
  var nimfunc = cast[ptr QGraphicsRotationcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGraphicsRotationconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsRotation_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsRotationconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_connectNotify(self: ptr cQGraphicsRotation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_connectNotify ".} =
  var nimfunc = cast[ptr QGraphicsRotationconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGraphicsRotationdisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGraphicsRotation_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsRotationdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgraphicstransform_types.QGraphicsRotation, slot: QGraphicsRotationdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGraphicsRotationdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsRotation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsRotation_disconnectNotify(self: ptr cQGraphicsRotation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsRotation_disconnectNotify ".} =
  var nimfunc = cast[ptr QGraphicsRotationdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qgraphicstransform_types.QGraphicsRotation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGraphicsRotation_staticMetaObject())
proc delete*(self: gen_qgraphicstransform_types.QGraphicsRotation) =
  fcQGraphicsRotation_delete(self.h)
