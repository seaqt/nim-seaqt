import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qcamerafocuscontrol.cpp", cflags).}


import ./gen_qcamerafocuscontrol_types
export gen_qcamerafocuscontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qcamerafocus_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qcamerafocus_types,
  gen_qmediacontrol

type cQCameraFocusControl*{.exportc: "QCameraFocusControl", incompleteStruct.} = object

proc fcQCameraFocusControl_metaObject(self: pointer, ): pointer {.importc: "QCameraFocusControl_metaObject".}
proc fcQCameraFocusControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraFocusControl_metacast".}
proc fcQCameraFocusControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraFocusControl_metacall".}
proc fcQCameraFocusControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraFocusControl_tr".}
proc fcQCameraFocusControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraFocusControl_trUtf8".}
proc fcQCameraFocusControl_focusMode(self: pointer, ): cint {.importc: "QCameraFocusControl_focusMode".}
proc fcQCameraFocusControl_setFocusMode(self: pointer, mode: cint): void {.importc: "QCameraFocusControl_setFocusMode".}
proc fcQCameraFocusControl_isFocusModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraFocusControl_isFocusModeSupported".}
proc fcQCameraFocusControl_focusPointMode(self: pointer, ): cint {.importc: "QCameraFocusControl_focusPointMode".}
proc fcQCameraFocusControl_setFocusPointMode(self: pointer, mode: cint): void {.importc: "QCameraFocusControl_setFocusPointMode".}
proc fcQCameraFocusControl_isFocusPointModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraFocusControl_isFocusPointModeSupported".}
proc fcQCameraFocusControl_customFocusPoint(self: pointer, ): pointer {.importc: "QCameraFocusControl_customFocusPoint".}
proc fcQCameraFocusControl_setCustomFocusPoint(self: pointer, point: pointer): void {.importc: "QCameraFocusControl_setCustomFocusPoint".}
proc fcQCameraFocusControl_focusZones(self: pointer, ): struct_miqt_array {.importc: "QCameraFocusControl_focusZones".}
proc fcQCameraFocusControl_focusModeChanged(self: pointer, mode: cint): void {.importc: "QCameraFocusControl_focusModeChanged".}
proc fcQCameraFocusControl_connect_focusModeChanged(self: pointer, slot: int, callback: proc (slot: int, mode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraFocusControl_connect_focusModeChanged".}
proc fcQCameraFocusControl_focusPointModeChanged(self: pointer, mode: cint): void {.importc: "QCameraFocusControl_focusPointModeChanged".}
proc fcQCameraFocusControl_connect_focusPointModeChanged(self: pointer, slot: int, callback: proc (slot: int, mode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraFocusControl_connect_focusPointModeChanged".}
proc fcQCameraFocusControl_customFocusPointChanged(self: pointer, point: pointer): void {.importc: "QCameraFocusControl_customFocusPointChanged".}
proc fcQCameraFocusControl_connect_customFocusPointChanged(self: pointer, slot: int, callback: proc (slot: int, point: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraFocusControl_connect_customFocusPointChanged".}
proc fcQCameraFocusControl_focusZonesChanged(self: pointer, ): void {.importc: "QCameraFocusControl_focusZonesChanged".}
proc fcQCameraFocusControl_connect_focusZonesChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraFocusControl_connect_focusZonesChanged".}
proc fcQCameraFocusControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFocusControl_tr2".}
proc fcQCameraFocusControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFocusControl_tr3".}
proc fcQCameraFocusControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraFocusControl_trUtf82".}
proc fcQCameraFocusControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraFocusControl_trUtf83".}
proc fcQCameraFocusControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QCameraFocusControl_protectedbase_sender".}
proc fcQCameraFocusControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCameraFocusControl_protectedbase_senderSignalIndex".}
proc fcQCameraFocusControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraFocusControl_protectedbase_receivers".}
proc fcQCameraFocusControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraFocusControl_protectedbase_isSignalConnected".}
proc fcQCameraFocusControl_staticMetaObject(): pointer {.importc: "QCameraFocusControl_staticMetaObject".}

proc metaObject*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFocusControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, param1: cstring): pointer =
  fcQCameraFocusControl_metacast(self.h, param1)

proc metacall*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraFocusControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcamerafocuscontrol_types.QCameraFocusControl, s: cstring): string =
  let v_ms = fcQCameraFocusControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafocuscontrol_types.QCameraFocusControl, s: cstring): string =
  let v_ms = fcQCameraFocusControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc focusMode*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): cint =
  cint(fcQCameraFocusControl_focusMode(self.h))

proc setFocusMode*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, mode: cint): void =
  fcQCameraFocusControl_setFocusMode(self.h, cint(mode))

proc isFocusModeSupported*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, mode: cint): bool =
  fcQCameraFocusControl_isFocusModeSupported(self.h, cint(mode))

proc focusPointMode*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): cint =
  cint(fcQCameraFocusControl_focusPointMode(self.h))

proc setFocusPointMode*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, mode: cint): void =
  fcQCameraFocusControl_setFocusPointMode(self.h, cint(mode))

proc isFocusPointModeSupported*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, mode: cint): bool =
  fcQCameraFocusControl_isFocusPointModeSupported(self.h, cint(mode))

proc customFocusPoint*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQCameraFocusControl_customFocusPoint(self.h), owned: true)

proc setCustomFocusPoint*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, point: gen_qpoint_types.QPointF): void =
  fcQCameraFocusControl_setCustomFocusPoint(self.h, point.h)

proc focusZones*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): seq[gen_qcamerafocus_types.QCameraFocusZone] =
  var v_ma = fcQCameraFocusControl_focusZones(self.h)
  var vx_ret = newSeq[gen_qcamerafocus_types.QCameraFocusZone](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcamerafocus_types.QCameraFocusZone(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc focusModeChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, mode: cint): void =
  fcQCameraFocusControl_focusModeChanged(self.h, cint(mode))

type QCameraFocusControlfocusModeChangedSlot* = proc(mode: cint)
proc miqt_exec_callback_cQCameraFocusControl_focusModeChanged(slot: int, mode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraFocusControlfocusModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraFocusControl_focusModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraFocusControlfocusModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusModeChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, slot: QCameraFocusControlfocusModeChangedSlot) =
  var tmp = new QCameraFocusControlfocusModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocusControl_connect_focusModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraFocusControl_focusModeChanged, miqt_exec_callback_cQCameraFocusControl_focusModeChanged_release)

proc focusPointModeChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, mode: cint): void =
  fcQCameraFocusControl_focusPointModeChanged(self.h, cint(mode))

type QCameraFocusControlfocusPointModeChangedSlot* = proc(mode: cint)
proc miqt_exec_callback_cQCameraFocusControl_focusPointModeChanged(slot: int, mode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraFocusControlfocusPointModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraFocusControl_focusPointModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraFocusControlfocusPointModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusPointModeChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, slot: QCameraFocusControlfocusPointModeChangedSlot) =
  var tmp = new QCameraFocusControlfocusPointModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocusControl_connect_focusPointModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraFocusControl_focusPointModeChanged, miqt_exec_callback_cQCameraFocusControl_focusPointModeChanged_release)

proc customFocusPointChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, point: gen_qpoint_types.QPointF): void =
  fcQCameraFocusControl_customFocusPointChanged(self.h, point.h)

type QCameraFocusControlcustomFocusPointChangedSlot* = proc(point: gen_qpoint_types.QPointF)
proc miqt_exec_callback_cQCameraFocusControl_customFocusPointChanged(slot: int, point: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QCameraFocusControlcustomFocusPointChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraFocusControl_customFocusPointChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraFocusControlcustomFocusPointChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncustomFocusPointChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, slot: QCameraFocusControlcustomFocusPointChangedSlot) =
  var tmp = new QCameraFocusControlcustomFocusPointChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocusControl_connect_customFocusPointChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraFocusControl_customFocusPointChanged, miqt_exec_callback_cQCameraFocusControl_customFocusPointChanged_release)

proc focusZonesChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): void =
  fcQCameraFocusControl_focusZonesChanged(self.h)

type QCameraFocusControlfocusZonesChangedSlot* = proc()
proc miqt_exec_callback_cQCameraFocusControl_focusZonesChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QCameraFocusControlfocusZonesChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQCameraFocusControl_focusZonesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraFocusControlfocusZonesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfocusZonesChanged*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, slot: QCameraFocusControlfocusZonesChangedSlot) =
  var tmp = new QCameraFocusControlfocusZonesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraFocusControl_connect_focusZonesChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraFocusControl_focusZonesChanged, miqt_exec_callback_cQCameraFocusControl_focusZonesChanged_release)

proc tr*(_: type gen_qcamerafocuscontrol_types.QCameraFocusControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFocusControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcamerafocuscontrol_types.QCameraFocusControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFocusControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafocuscontrol_types.QCameraFocusControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraFocusControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcamerafocuscontrol_types.QCameraFocusControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraFocusControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraFocusControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, ): cint =
  fcQCameraFocusControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, signal: cstring): cint =
  fcQCameraFocusControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcamerafocuscontrol_types.QCameraFocusControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraFocusControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcamerafocuscontrol_types.QCameraFocusControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraFocusControl_staticMetaObject())
