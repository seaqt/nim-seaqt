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
{.compile("gen_qaudioinput.cpp", cflags).}


import ./gen_qaudioinput_types
export gen_qaudioinput_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiodeviceinfo_types,
  ./gen_qaudioformat_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiodeviceinfo_types,
  gen_qaudioformat_types

type cQAudioInput*{.exportc: "QAudioInput", incompleteStruct.} = object

proc fcQAudioInput_metaObject(self: pointer, ): pointer {.importc: "QAudioInput_metaObject".}
proc fcQAudioInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioInput_metacast".}
proc fcQAudioInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioInput_metacall".}
proc fcQAudioInput_tr(s: cstring): struct_miqt_string {.importc: "QAudioInput_tr".}
proc fcQAudioInput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioInput_trUtf8".}
proc fcQAudioInput_format(self: pointer, ): pointer {.importc: "QAudioInput_format".}
proc fcQAudioInput_start(self: pointer, device: pointer): void {.importc: "QAudioInput_start".}
proc fcQAudioInput_start2(self: pointer, ): pointer {.importc: "QAudioInput_start2".}
proc fcQAudioInput_stop(self: pointer, ): void {.importc: "QAudioInput_stop".}
proc fcQAudioInput_reset(self: pointer, ): void {.importc: "QAudioInput_reset".}
proc fcQAudioInput_suspend(self: pointer, ): void {.importc: "QAudioInput_suspend".}
proc fcQAudioInput_resume(self: pointer, ): void {.importc: "QAudioInput_resume".}
proc fcQAudioInput_setBufferSize(self: pointer, bytes: cint): void {.importc: "QAudioInput_setBufferSize".}
proc fcQAudioInput_bufferSize(self: pointer, ): cint {.importc: "QAudioInput_bufferSize".}
proc fcQAudioInput_bytesReady(self: pointer, ): cint {.importc: "QAudioInput_bytesReady".}
proc fcQAudioInput_periodSize(self: pointer, ): cint {.importc: "QAudioInput_periodSize".}
proc fcQAudioInput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAudioInput_setNotifyInterval".}
proc fcQAudioInput_notifyInterval(self: pointer, ): cint {.importc: "QAudioInput_notifyInterval".}
proc fcQAudioInput_setVolume(self: pointer, volume: float64): void {.importc: "QAudioInput_setVolume".}
proc fcQAudioInput_volume(self: pointer, ): float64 {.importc: "QAudioInput_volume".}
proc fcQAudioInput_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioInput_processedUSecs".}
proc fcQAudioInput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioInput_elapsedUSecs".}
proc fcQAudioInput_error(self: pointer, ): cint {.importc: "QAudioInput_error".}
proc fcQAudioInput_state(self: pointer, ): cint {.importc: "QAudioInput_state".}
proc fcQAudioInput_stateChanged(self: pointer, state: cint): void {.importc: "QAudioInput_stateChanged".}
proc fcQAudioInput_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioInput_connect_stateChanged".}
proc fcQAudioInput_notify(self: pointer, ): void {.importc: "QAudioInput_notify".}
proc fcQAudioInput_connect_notify(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioInput_connect_notify".}
proc fcQAudioInput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInput_tr2".}
proc fcQAudioInput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInput_tr3".}
proc fcQAudioInput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInput_trUtf82".}
proc fcQAudioInput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInput_trUtf83".}
type cQAudioInputVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQAudioInputVTable, self: ptr cQAudioInput) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioInput_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioInput_virtualbase_metaObject".}
proc fcQAudioInput_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioInput_virtualbase_metacast".}
proc fcQAudioInput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioInput_virtualbase_metacall".}
proc fcQAudioInput_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioInput_virtualbase_event".}
proc fcQAudioInput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioInput_virtualbase_eventFilter".}
proc fcQAudioInput_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioInput_virtualbase_timerEvent".}
proc fcQAudioInput_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioInput_virtualbase_childEvent".}
proc fcQAudioInput_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioInput_virtualbase_customEvent".}
proc fcQAudioInput_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioInput_virtualbase_connectNotify".}
proc fcQAudioInput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioInput_virtualbase_disconnectNotify".}
proc fcQAudioInput_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioInput_protectedbase_sender".}
proc fcQAudioInput_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioInput_protectedbase_senderSignalIndex".}
proc fcQAudioInput_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioInput_protectedbase_receivers".}
proc fcQAudioInput_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioInput_protectedbase_isSignalConnected".}
proc fcQAudioInput_new(vtbl: pointer, ): ptr cQAudioInput {.importc: "QAudioInput_new".}
proc fcQAudioInput_new2(vtbl: pointer, audioDeviceInfo: pointer): ptr cQAudioInput {.importc: "QAudioInput_new2".}
proc fcQAudioInput_new3(vtbl: pointer, format: pointer): ptr cQAudioInput {.importc: "QAudioInput_new3".}
proc fcQAudioInput_new4(vtbl: pointer, format: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new4".}
proc fcQAudioInput_new5(vtbl: pointer, audioDeviceInfo: pointer, format: pointer): ptr cQAudioInput {.importc: "QAudioInput_new5".}
proc fcQAudioInput_new6(vtbl: pointer, audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new6".}
proc fcQAudioInput_staticMetaObject(): pointer {.importc: "QAudioInput_staticMetaObject".}

proc metaObject*(self: gen_qaudioinput_types.QAudioInput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInput_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudioinput_types.QAudioInput, param1: cstring): pointer =
  fcQAudioInput_metacast(self.h, param1)

proc metacall*(self: gen_qaudioinput_types.QAudioInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioInput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioinput_types.QAudioInput, s: cstring): string =
  let v_ms = fcQAudioInput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioinput_types.QAudioInput, s: cstring): string =
  let v_ms = fcQAudioInput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: gen_qaudioinput_types.QAudioInput, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioInput_format(self.h), owned: true)

proc start*(self: gen_qaudioinput_types.QAudioInput, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioInput_start(self.h, device.h)

proc start*(self: gen_qaudioinput_types.QAudioInput, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioInput_start2(self.h), owned: false)

proc stop*(self: gen_qaudioinput_types.QAudioInput, ): void =
  fcQAudioInput_stop(self.h)

proc reset*(self: gen_qaudioinput_types.QAudioInput, ): void =
  fcQAudioInput_reset(self.h)

proc suspend*(self: gen_qaudioinput_types.QAudioInput, ): void =
  fcQAudioInput_suspend(self.h)

proc resume*(self: gen_qaudioinput_types.QAudioInput, ): void =
  fcQAudioInput_resume(self.h)

proc setBufferSize*(self: gen_qaudioinput_types.QAudioInput, bytes: cint): void =
  fcQAudioInput_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudioinput_types.QAudioInput, ): cint =
  fcQAudioInput_bufferSize(self.h)

proc bytesReady*(self: gen_qaudioinput_types.QAudioInput, ): cint =
  fcQAudioInput_bytesReady(self.h)

proc periodSize*(self: gen_qaudioinput_types.QAudioInput, ): cint =
  fcQAudioInput_periodSize(self.h)

proc setNotifyInterval*(self: gen_qaudioinput_types.QAudioInput, milliSeconds: cint): void =
  fcQAudioInput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: gen_qaudioinput_types.QAudioInput, ): cint =
  fcQAudioInput_notifyInterval(self.h)

proc setVolume*(self: gen_qaudioinput_types.QAudioInput, volume: float64): void =
  fcQAudioInput_setVolume(self.h, volume)

proc volume*(self: gen_qaudioinput_types.QAudioInput, ): float64 =
  fcQAudioInput_volume(self.h)

proc processedUSecs*(self: gen_qaudioinput_types.QAudioInput, ): clonglong =
  fcQAudioInput_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudioinput_types.QAudioInput, ): clonglong =
  fcQAudioInput_elapsedUSecs(self.h)

proc error*(self: gen_qaudioinput_types.QAudioInput, ): cint =
  cint(fcQAudioInput_error(self.h))

proc state*(self: gen_qaudioinput_types.QAudioInput, ): cint =
  cint(fcQAudioInput_state(self.h))

proc stateChanged*(self: gen_qaudioinput_types.QAudioInput, state: cint): void =
  fcQAudioInput_stateChanged(self.h, cint(state))

type QAudioInputstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQAudioInput_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioInputstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioInput_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioInputstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputstateChangedSlot) =
  var tmp = new QAudioInputstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioInput_stateChanged, miqt_exec_callback_cQAudioInput_stateChanged_release)

proc notify*(self: gen_qaudioinput_types.QAudioInput, ): void =
  fcQAudioInput_notify(self.h)

type QAudioInputnotifySlot* = proc()
proc miqt_exec_callback_cQAudioInput_notify(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioInputnotifySlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioInput_notify_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioInputnotifySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnotify*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputnotifySlot) =
  var tmp = new QAudioInputnotifySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_notify(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioInput_notify, miqt_exec_callback_cQAudioInput_notify_release)

proc tr*(_: type gen_qaudioinput_types.QAudioInput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioInput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioinput_types.QAudioInput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioInput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioinput_types.QAudioInput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioInput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioinput_types.QAudioInput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioInput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAudioInputmetaObjectProc* = proc(self: QAudioInput): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioInputmetacastProc* = proc(self: QAudioInput, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioInputmetacallProc* = proc(self: QAudioInput, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioInputeventProc* = proc(self: QAudioInput, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioInputeventFilterProc* = proc(self: QAudioInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioInputtimerEventProc* = proc(self: QAudioInput, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioInputchildEventProc* = proc(self: QAudioInput, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioInputcustomEventProc* = proc(self: QAudioInput, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioInputconnectNotifyProc* = proc(self: QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioInputdisconnectNotifyProc* = proc(self: QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioInputVTable* {.inheritable, pure.} = object
  vtbl: cQAudioInputVTable
  metaObject*: QAudioInputmetaObjectProc
  metacast*: QAudioInputmetacastProc
  metacall*: QAudioInputmetacallProc
  event*: QAudioInputeventProc
  eventFilter*: QAudioInputeventFilterProc
  timerEvent*: QAudioInputtimerEventProc
  childEvent*: QAudioInputchildEventProc
  customEvent*: QAudioInputcustomEventProc
  connectNotify*: QAudioInputconnectNotifyProc
  disconnectNotify*: QAudioInputdisconnectNotifyProc
proc QAudioInputmetaObject*(self: gen_qaudioinput_types.QAudioInput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInput_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQAudioInput_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAudioInputmetacast*(self: gen_qaudioinput_types.QAudioInput, param1: cstring): pointer =
  fcQAudioInput_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioInput_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioInputmetacall*(self: gen_qaudioinput_types.QAudioInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioInput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioInput_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioInputevent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioInput_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioInput_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioInputeventFilter*(self: gen_qaudioinput_types.QAudioInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioInput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioInput_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioInputtimerEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioInput_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioInput_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAudioInputchildEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioInput_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioInput_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAudioInputcustomEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioInput_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioInput_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAudioInputconnectNotify*(self: gen_qaudioinput_types.QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioInput_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioInput_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAudioInputdisconnectNotify*(self: gen_qaudioinput_types.QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioInput_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioInput_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioInput* {.inheritable.} = ref object of QAudioInput
  vtbl*: cQAudioInputVTable
method metaObject*(self: VirtualQAudioInput, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioInputmetaObject(self[])
proc miqt_exec_method_cQAudioInput_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAudioInput, param1: cstring): pointer {.base.} =
  QAudioInputmetacast(self[], param1)
proc miqt_exec_method_cQAudioInput_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAudioInput, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioInputmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQAudioInput_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQAudioInput, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioInputevent(self[], event)
proc miqt_exec_method_cQAudioInput_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAudioInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioInputeventFilter(self[], watched, event)
proc miqt_exec_method_cQAudioInput_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAudioInput, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioInputtimerEvent(self[], event)
proc miqt_exec_method_cQAudioInput_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQAudioInput, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioInputchildEvent(self[], event)
proc miqt_exec_method_cQAudioInput_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQAudioInput, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioInputcustomEvent(self[], event)
proc miqt_exec_method_cQAudioInput_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioInputconnectNotify(self[], signal)
proc miqt_exec_method_cQAudioInput_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioInputdisconnectNotify(self[], signal)
proc miqt_exec_method_cQAudioInput_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioInput](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qaudioinput_types.QAudioInput, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioInput_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudioinput_types.QAudioInput, ): cint =
  fcQAudioInput_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudioinput_types.QAudioInput, signal: cstring): cint =
  fcQAudioInput_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudioinput_types.QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioInput_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new2(addr(vtbl[].vtbl), audioDeviceInfo.h), owned: true)

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new3(addr(vtbl[].vtbl), format.h), owned: true)

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new4(addr(vtbl[].vtbl), format.h, parent.h), owned: true)

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new5(addr(vtbl[].vtbl), audioDeviceInfo.h, format.h), owned: true)

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new6(addr(vtbl[].vtbl), audioDeviceInfo.h, format.h, parent.h), owned: true)

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    vtbl: VirtualQAudioInput) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioInput()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioInput_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioInput_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioInput_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAudioInput_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioInput_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioInput_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioInput_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioInput_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioInput_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioInput_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioInput_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo,
    vtbl: VirtualQAudioInput) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioInput()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioInput_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioInput_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioInput_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAudioInput_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioInput_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioInput_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioInput_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioInput_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioInput_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioInput_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioInput_new2(addr(vtbl[].vtbl), audioDeviceInfo.h)
  vtbl[].owned = true

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: VirtualQAudioInput) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioInput()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioInput_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioInput_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioInput_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAudioInput_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioInput_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioInput_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioInput_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioInput_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioInput_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioInput_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioInput_new3(addr(vtbl[].vtbl), format.h)
  vtbl[].owned = true

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: VirtualQAudioInput) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioInput()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioInput_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioInput_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioInput_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAudioInput_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioInput_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioInput_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioInput_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioInput_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioInput_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioInput_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioInput_new4(addr(vtbl[].vtbl), format.h, parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: VirtualQAudioInput) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioInput()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioInput_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioInput_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioInput_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAudioInput_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioInput_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioInput_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioInput_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioInput_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioInput_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioInput_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioInput_new5(addr(vtbl[].vtbl), audioDeviceInfo.h, format.h)
  vtbl[].owned = true

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: VirtualQAudioInput) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioInput()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioInput, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioInput_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioInput_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioInput_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQAudioInput_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioInput_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioInput_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioInput_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioInput_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioInput_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioInput_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioInput_new6(addr(vtbl[].vtbl), audioDeviceInfo.h, format.h, parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qaudioinput_types.QAudioInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInput_staticMetaObject())
