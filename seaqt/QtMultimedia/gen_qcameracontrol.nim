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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qcameracontrol.cpp", cflags).}


type QCameraControlPropertyChangeTypeEnum* = distinct cint
template CaptureMode*(_: type QCameraControlPropertyChangeTypeEnum): untyped = 1
template ImageEncodingSettings*(_: type QCameraControlPropertyChangeTypeEnum): untyped = 2
template VideoEncodingSettings*(_: type QCameraControlPropertyChangeTypeEnum): untyped = 3
template Viewfinder*(_: type QCameraControlPropertyChangeTypeEnum): untyped = 4
template ViewfinderSettings*(_: type QCameraControlPropertyChangeTypeEnum): untyped = 5


import ./gen_qcameracontrol_types
export gen_qcameracontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontrol

type cQCameraControl*{.exportc: "QCameraControl", incompleteStruct.} = object

proc fcQCameraControl_metaObject(self: pointer, ): pointer {.importc: "QCameraControl_metaObject".}
proc fcQCameraControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraControl_metacast".}
proc fcQCameraControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraControl_metacall".}
proc fcQCameraControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraControl_tr".}
proc fcQCameraControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraControl_trUtf8".}
proc fcQCameraControl_state(self: pointer, ): cint {.importc: "QCameraControl_state".}
proc fcQCameraControl_setState(self: pointer, state: cint): void {.importc: "QCameraControl_setState".}
proc fcQCameraControl_status(self: pointer, ): cint {.importc: "QCameraControl_status".}
proc fcQCameraControl_captureMode(self: pointer, ): cint {.importc: "QCameraControl_captureMode".}
proc fcQCameraControl_setCaptureMode(self: pointer, captureMode: cint): void {.importc: "QCameraControl_setCaptureMode".}
proc fcQCameraControl_isCaptureModeSupported(self: pointer, mode: cint): bool {.importc: "QCameraControl_isCaptureModeSupported".}
proc fcQCameraControl_canChangeProperty(self: pointer, changeType: cint, status: cint): bool {.importc: "QCameraControl_canChangeProperty".}
proc fcQCameraControl_stateChanged(self: pointer, param1: cint): void {.importc: "QCameraControl_stateChanged".}
proc fcQCameraControl_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraControl_connect_stateChanged".}
proc fcQCameraControl_statusChanged(self: pointer, param1: cint): void {.importc: "QCameraControl_statusChanged".}
proc fcQCameraControl_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraControl_connect_statusChanged".}
proc fcQCameraControl_error(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QCameraControl_error".}
proc fcQCameraControl_connect_error(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraControl_connect_error".}
proc fcQCameraControl_captureModeChanged(self: pointer, mode: cint): void {.importc: "QCameraControl_captureModeChanged".}
proc fcQCameraControl_connect_captureModeChanged(self: pointer, slot: int, callback: proc (slot: int, mode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QCameraControl_connect_captureModeChanged".}
proc fcQCameraControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraControl_tr2".}
proc fcQCameraControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraControl_tr3".}
proc fcQCameraControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraControl_trUtf82".}
proc fcQCameraControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraControl_trUtf83".}
proc fcQCameraControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QCameraControl_protectedbase_sender".}
proc fcQCameraControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCameraControl_protectedbase_senderSignalIndex".}
proc fcQCameraControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraControl_protectedbase_receivers".}
proc fcQCameraControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraControl_protectedbase_isSignalConnected".}
proc fcQCameraControl_staticMetaObject(): pointer {.importc: "QCameraControl_staticMetaObject".}
proc fcQCameraControl_delete(self: pointer) {.importc: "QCameraControl_delete".}

proc metaObject*(self: gen_qcameracontrol_types.QCameraControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraControl_metaObject(self.h))

proc metacast*(self: gen_qcameracontrol_types.QCameraControl, param1: cstring): pointer =
  fcQCameraControl_metacast(self.h, param1)

proc metacall*(self: gen_qcameracontrol_types.QCameraControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameracontrol_types.QCameraControl, s: cstring): string =
  let v_ms = fcQCameraControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracontrol_types.QCameraControl, s: cstring): string =
  let v_ms = fcQCameraControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qcameracontrol_types.QCameraControl, ): cint =
  cint(fcQCameraControl_state(self.h))

proc setState*(self: gen_qcameracontrol_types.QCameraControl, state: cint): void =
  fcQCameraControl_setState(self.h, cint(state))

proc status*(self: gen_qcameracontrol_types.QCameraControl, ): cint =
  cint(fcQCameraControl_status(self.h))

proc captureMode*(self: gen_qcameracontrol_types.QCameraControl, ): cint =
  cint(fcQCameraControl_captureMode(self.h))

proc setCaptureMode*(self: gen_qcameracontrol_types.QCameraControl, captureMode: cint): void =
  fcQCameraControl_setCaptureMode(self.h, cint(captureMode))

proc isCaptureModeSupported*(self: gen_qcameracontrol_types.QCameraControl, mode: cint): bool =
  fcQCameraControl_isCaptureModeSupported(self.h, cint(mode))

proc canChangeProperty*(self: gen_qcameracontrol_types.QCameraControl, changeType: cint, status: cint): bool =
  fcQCameraControl_canChangeProperty(self.h, cint(changeType), cint(status))

proc stateChanged*(self: gen_qcameracontrol_types.QCameraControl, param1: cint): void =
  fcQCameraControl_stateChanged(self.h, cint(param1))

type QCameraControlstateChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCameraControl_stateChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraControlstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraControl_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraControlstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qcameracontrol_types.QCameraControl, slot: QCameraControlstateChangedSlot) =
  var tmp = new QCameraControlstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraControl_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraControl_stateChanged, miqt_exec_callback_cQCameraControl_stateChanged_release)

proc statusChanged*(self: gen_qcameracontrol_types.QCameraControl, param1: cint): void =
  fcQCameraControl_statusChanged(self.h, cint(param1))

type QCameraControlstatusChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQCameraControl_statusChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraControlstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraControl_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraControlstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusChanged*(self: gen_qcameracontrol_types.QCameraControl, slot: QCameraControlstatusChangedSlot) =
  var tmp = new QCameraControlstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraControl_connect_statusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraControl_statusChanged, miqt_exec_callback_cQCameraControl_statusChanged_release)

proc error*(self: gen_qcameracontrol_types.QCameraControl, error: cint, errorString: string): void =
  fcQCameraControl_error(self.h, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QCameraControlerrorSlot* = proc(error: cint, errorString: string)
proc miqt_exec_callback_cQCameraControl_error(slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QCameraControlerrorSlot](cast[pointer](slot))
  let slotval1 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQCameraControl_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraControlerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qcameracontrol_types.QCameraControl, slot: QCameraControlerrorSlot) =
  var tmp = new QCameraControlerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraControl_connect_error(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraControl_error, miqt_exec_callback_cQCameraControl_error_release)

proc captureModeChanged*(self: gen_qcameracontrol_types.QCameraControl, mode: cint): void =
  fcQCameraControl_captureModeChanged(self.h, cint(mode))

type QCameraControlcaptureModeChangedSlot* = proc(mode: cint)
proc miqt_exec_callback_cQCameraControl_captureModeChanged(slot: int, mode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QCameraControlcaptureModeChangedSlot](cast[pointer](slot))
  let slotval1 = cint(mode)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQCameraControl_captureModeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QCameraControlcaptureModeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncaptureModeChanged*(self: gen_qcameracontrol_types.QCameraControl, slot: QCameraControlcaptureModeChangedSlot) =
  var tmp = new QCameraControlcaptureModeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraControl_connect_captureModeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQCameraControl_captureModeChanged, miqt_exec_callback_cQCameraControl_captureModeChanged_release)

proc tr*(_: type gen_qcameracontrol_types.QCameraControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameracontrol_types.QCameraControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracontrol_types.QCameraControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameracontrol_types.QCameraControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qcameracontrol_types.QCameraControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qcameracontrol_types.QCameraControl, ): cint =
  fcQCameraControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameracontrol_types.QCameraControl, signal: cstring): cint =
  fcQCameraControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameracontrol_types.QCameraControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcameracontrol_types.QCameraControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraControl_staticMetaObject())
proc delete*(self: gen_qcameracontrol_types.QCameraControl) =
  fcQCameraControl_delete(self.h)
