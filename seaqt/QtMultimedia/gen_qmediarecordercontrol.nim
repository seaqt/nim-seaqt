import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmediarecordercontrol.cpp", cflags).}


import ./gen_qmediarecordercontrol_types
export gen_qmediarecordercontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qmediacontrol

type cQMediaRecorderControl*{.exportc: "QMediaRecorderControl", incompleteStruct.} = object

proc fcQMediaRecorderControl_metaObject(self: pointer, ): pointer {.importc: "QMediaRecorderControl_metaObject".}
proc fcQMediaRecorderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaRecorderControl_metacast".}
proc fcQMediaRecorderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaRecorderControl_metacall".}
proc fcQMediaRecorderControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_tr".}
proc fcQMediaRecorderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_trUtf8".}
proc fcQMediaRecorderControl_outputLocation(self: pointer, ): pointer {.importc: "QMediaRecorderControl_outputLocation".}
proc fcQMediaRecorderControl_setOutputLocation(self: pointer, location: pointer): bool {.importc: "QMediaRecorderControl_setOutputLocation".}
proc fcQMediaRecorderControl_state(self: pointer, ): cint {.importc: "QMediaRecorderControl_state".}
proc fcQMediaRecorderControl_status(self: pointer, ): cint {.importc: "QMediaRecorderControl_status".}
proc fcQMediaRecorderControl_duration(self: pointer, ): clonglong {.importc: "QMediaRecorderControl_duration".}
proc fcQMediaRecorderControl_isMuted(self: pointer, ): bool {.importc: "QMediaRecorderControl_isMuted".}
proc fcQMediaRecorderControl_volume(self: pointer, ): float64 {.importc: "QMediaRecorderControl_volume".}
proc fcQMediaRecorderControl_applySettings(self: pointer, ): void {.importc: "QMediaRecorderControl_applySettings".}
proc fcQMediaRecorderControl_stateChanged(self: pointer, state: cint): void {.importc: "QMediaRecorderControl_stateChanged".}
proc fcQMediaRecorderControl_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorderControl_connect_stateChanged".}
proc fcQMediaRecorderControl_statusChanged(self: pointer, status: cint): void {.importc: "QMediaRecorderControl_statusChanged".}
proc fcQMediaRecorderControl_connect_statusChanged(self: pointer, slot: int, callback: proc (slot: int, status: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorderControl_connect_statusChanged".}
proc fcQMediaRecorderControl_durationChanged(self: pointer, position: clonglong): void {.importc: "QMediaRecorderControl_durationChanged".}
proc fcQMediaRecorderControl_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, position: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorderControl_connect_durationChanged".}
proc fcQMediaRecorderControl_mutedChanged(self: pointer, muted: bool): void {.importc: "QMediaRecorderControl_mutedChanged".}
proc fcQMediaRecorderControl_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorderControl_connect_mutedChanged".}
proc fcQMediaRecorderControl_volumeChanged(self: pointer, volume: float64): void {.importc: "QMediaRecorderControl_volumeChanged".}
proc fcQMediaRecorderControl_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorderControl_connect_volumeChanged".}
proc fcQMediaRecorderControl_actualLocationChanged(self: pointer, location: pointer): void {.importc: "QMediaRecorderControl_actualLocationChanged".}
proc fcQMediaRecorderControl_connect_actualLocationChanged(self: pointer, slot: int, callback: proc (slot: int, location: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorderControl_connect_actualLocationChanged".}
proc fcQMediaRecorderControl_error(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QMediaRecorderControl_error".}
proc fcQMediaRecorderControl_connect_error(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaRecorderControl_connect_error".}
proc fcQMediaRecorderControl_setState(self: pointer, state: cint): void {.importc: "QMediaRecorderControl_setState".}
proc fcQMediaRecorderControl_setMuted(self: pointer, muted: bool): void {.importc: "QMediaRecorderControl_setMuted".}
proc fcQMediaRecorderControl_setVolume(self: pointer, volume: float64): void {.importc: "QMediaRecorderControl_setVolume".}
proc fcQMediaRecorderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_tr2".}
proc fcQMediaRecorderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorderControl_tr3".}
proc fcQMediaRecorderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaRecorderControl_trUtf82".}
proc fcQMediaRecorderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaRecorderControl_trUtf83".}
proc fcQMediaRecorderControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QMediaRecorderControl_protectedbase_sender".}
proc fcQMediaRecorderControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMediaRecorderControl_protectedbase_senderSignalIndex".}
proc fcQMediaRecorderControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaRecorderControl_protectedbase_receivers".}
proc fcQMediaRecorderControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaRecorderControl_protectedbase_isSignalConnected".}
proc fcQMediaRecorderControl_staticMetaObject(): pointer {.importc: "QMediaRecorderControl_staticMetaObject".}
proc fcQMediaRecorderControl_delete(self: pointer) {.importc: "QMediaRecorderControl_delete".}

proc metaObject*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorderControl_metaObject(self.h))

proc metacast*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, param1: cstring): pointer =
  fcQMediaRecorderControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaRecorderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediarecordercontrol_types.QMediaRecorderControl, s: cstring): string =
  let v_ms = fcQMediaRecorderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediarecordercontrol_types.QMediaRecorderControl, s: cstring): string =
  let v_ms = fcQMediaRecorderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc outputLocation*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQMediaRecorderControl_outputLocation(self.h))

proc setOutputLocation*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, location: gen_qurl_types.QUrl): bool =
  fcQMediaRecorderControl_setOutputLocation(self.h, location.h)

proc state*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): cint =
  cint(fcQMediaRecorderControl_state(self.h))

proc status*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): cint =
  cint(fcQMediaRecorderControl_status(self.h))

proc duration*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): clonglong =
  fcQMediaRecorderControl_duration(self.h)

proc isMuted*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): bool =
  fcQMediaRecorderControl_isMuted(self.h)

proc volume*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): float64 =
  fcQMediaRecorderControl_volume(self.h)

proc applySettings*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): void =
  fcQMediaRecorderControl_applySettings(self.h)

proc stateChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, state: cint): void =
  fcQMediaRecorderControl_stateChanged(self.h, cint(state))

type QMediaRecorderControlstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQMediaRecorderControl_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderControlstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorderControl_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderControlstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, slot: QMediaRecorderControlstateChangedSlot) =
  var tmp = new QMediaRecorderControlstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorderControl_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorderControl_stateChanged, miqt_exec_callback_cQMediaRecorderControl_stateChanged_release)

proc statusChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, status: cint): void =
  fcQMediaRecorderControl_statusChanged(self.h, cint(status))

type QMediaRecorderControlstatusChangedSlot* = proc(status: cint)
proc miqt_exec_callback_cQMediaRecorderControl_statusChanged(slot: int, status: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderControlstatusChangedSlot](cast[pointer](slot))
  let slotval1 = cint(status)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorderControl_statusChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderControlstatusChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstatusChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, slot: QMediaRecorderControlstatusChangedSlot) =
  var tmp = new QMediaRecorderControlstatusChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorderControl_connect_statusChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorderControl_statusChanged, miqt_exec_callback_cQMediaRecorderControl_statusChanged_release)

proc durationChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, position: clonglong): void =
  fcQMediaRecorderControl_durationChanged(self.h, position)

type QMediaRecorderControldurationChangedSlot* = proc(position: clonglong)
proc miqt_exec_callback_cQMediaRecorderControl_durationChanged(slot: int, position: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderControldurationChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorderControl_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderControldurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondurationChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, slot: QMediaRecorderControldurationChangedSlot) =
  var tmp = new QMediaRecorderControldurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorderControl_connect_durationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorderControl_durationChanged, miqt_exec_callback_cQMediaRecorderControl_durationChanged_release)

proc mutedChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, muted: bool): void =
  fcQMediaRecorderControl_mutedChanged(self.h, muted)

type QMediaRecorderControlmutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_cQMediaRecorderControl_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderControlmutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorderControl_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderControlmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, slot: QMediaRecorderControlmutedChangedSlot) =
  var tmp = new QMediaRecorderControlmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorderControl_connect_mutedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorderControl_mutedChanged, miqt_exec_callback_cQMediaRecorderControl_mutedChanged_release)

proc volumeChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, volume: float64): void =
  fcQMediaRecorderControl_volumeChanged(self.h, volume)

type QMediaRecorderControlvolumeChangedSlot* = proc(volume: float64)
proc miqt_exec_callback_cQMediaRecorderControl_volumeChanged(slot: int, volume: float64) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderControlvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorderControl_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderControlvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, slot: QMediaRecorderControlvolumeChangedSlot) =
  var tmp = new QMediaRecorderControlvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorderControl_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorderControl_volumeChanged, miqt_exec_callback_cQMediaRecorderControl_volumeChanged_release)

proc actualLocationChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, location: gen_qurl_types.QUrl): void =
  fcQMediaRecorderControl_actualLocationChanged(self.h, location.h)

type QMediaRecorderControlactualLocationChangedSlot* = proc(location: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQMediaRecorderControl_actualLocationChanged(slot: int, location: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderControlactualLocationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: location)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaRecorderControl_actualLocationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderControlactualLocationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactualLocationChanged*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, slot: QMediaRecorderControlactualLocationChangedSlot) =
  var tmp = new QMediaRecorderControlactualLocationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorderControl_connect_actualLocationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorderControl_actualLocationChanged, miqt_exec_callback_cQMediaRecorderControl_actualLocationChanged_release)

proc error*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, error: cint, errorString: string): void =
  fcQMediaRecorderControl_error(self.h, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

type QMediaRecorderControlerrorSlot* = proc(error: cint, errorString: string)
proc miqt_exec_callback_cQMediaRecorderControl_error(slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QMediaRecorderControlerrorSlot](cast[pointer](slot))
  let slotval1 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQMediaRecorderControl_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaRecorderControlerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, slot: QMediaRecorderControlerrorSlot) =
  var tmp = new QMediaRecorderControlerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaRecorderControl_connect_error(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaRecorderControl_error, miqt_exec_callback_cQMediaRecorderControl_error_release)

proc setState*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, state: cint): void =
  fcQMediaRecorderControl_setState(self.h, cint(state))

proc setMuted*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, muted: bool): void =
  fcQMediaRecorderControl_setMuted(self.h, muted)

proc setVolume*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, volume: float64): void =
  fcQMediaRecorderControl_setVolume(self.h, volume)

proc tr*(_: type gen_qmediarecordercontrol_types.QMediaRecorderControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaRecorderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediarecordercontrol_types.QMediaRecorderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaRecorderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediarecordercontrol_types.QMediaRecorderControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaRecorderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediarecordercontrol_types.QMediaRecorderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaRecorderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaRecorderControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, ): cint =
  fcQMediaRecorderControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, signal: cstring): cint =
  fcQMediaRecorderControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaRecorderControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediarecordercontrol_types.QMediaRecorderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaRecorderControl_staticMetaObject())
proc delete*(self: gen_qmediarecordercontrol_types.QMediaRecorderControl) =
  fcQMediaRecorderControl_delete(self.h)
