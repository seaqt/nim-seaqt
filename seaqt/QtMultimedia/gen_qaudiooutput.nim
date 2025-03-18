import ./qtmultimedia_pkg

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


{.compile("gen_qaudiooutput.cpp", QtMultimediaCFlags).}


import ./gen_qaudiooutput_types
export gen_qaudiooutput_types

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

type cQAudioOutput*{.exportc: "QAudioOutput", incompleteStruct.} = object

proc fcQAudioOutput_metaObject(self: pointer): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_metacall".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf8".}
proc fcQAudioOutput_format(self: pointer): pointer {.importc: "QAudioOutput_format".}
proc fcQAudioOutput_start(self: pointer, device: pointer): void {.importc: "QAudioOutput_start".}
proc fcQAudioOutput_start2(self: pointer): pointer {.importc: "QAudioOutput_start2".}
proc fcQAudioOutput_stop(self: pointer): void {.importc: "QAudioOutput_stop".}
proc fcQAudioOutput_reset(self: pointer): void {.importc: "QAudioOutput_reset".}
proc fcQAudioOutput_suspend(self: pointer): void {.importc: "QAudioOutput_suspend".}
proc fcQAudioOutput_resume(self: pointer): void {.importc: "QAudioOutput_resume".}
proc fcQAudioOutput_setBufferSize(self: pointer, bytes: cint): void {.importc: "QAudioOutput_setBufferSize".}
proc fcQAudioOutput_bufferSize(self: pointer): cint {.importc: "QAudioOutput_bufferSize".}
proc fcQAudioOutput_bytesFree(self: pointer): cint {.importc: "QAudioOutput_bytesFree".}
proc fcQAudioOutput_periodSize(self: pointer): cint {.importc: "QAudioOutput_periodSize".}
proc fcQAudioOutput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAudioOutput_setNotifyInterval".}
proc fcQAudioOutput_notifyInterval(self: pointer): cint {.importc: "QAudioOutput_notifyInterval".}
proc fcQAudioOutput_processedUSecs(self: pointer): clonglong {.importc: "QAudioOutput_processedUSecs".}
proc fcQAudioOutput_elapsedUSecs(self: pointer): clonglong {.importc: "QAudioOutput_elapsedUSecs".}
proc fcQAudioOutput_error(self: pointer): cint {.importc: "QAudioOutput_error".}
proc fcQAudioOutput_state(self: pointer): cint {.importc: "QAudioOutput_state".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float64): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_volume(self: pointer): float64 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_category(self: pointer): struct_miqt_string {.importc: "QAudioOutput_category".}
proc fcQAudioOutput_setCategory(self: pointer, category: struct_miqt_string): void {.importc: "QAudioOutput_setCategory".}
proc fcQAudioOutput_stateChanged(self: pointer, state: cint): void {.importc: "QAudioOutput_stateChanged".}
proc fcQAudioOutput_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_stateChanged".}
proc fcQAudioOutput_notify(self: pointer): void {.importc: "QAudioOutput_notify".}
proc fcQAudioOutput_connect_notify(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_notify".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
proc fcQAudioOutput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf82".}
proc fcQAudioOutput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_trUtf83".}
proc fcQAudioOutput_vtbl(self: pointer): pointer {.importc: "QAudioOutput_vtbl".}
proc fcQAudioOutput_vdata(self: pointer): pointer {.importc: "QAudioOutput_vdata".}

type cQAudioOutputVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioOutput_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioOutput_virtualbase_metaObject".}
proc fcQAudioOutput_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_virtualbase_metacast".}
proc fcQAudioOutput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_virtualbase_metacall".}
proc fcQAudioOutput_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioOutput_virtualbase_event".}
proc fcQAudioOutput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioOutput_virtualbase_eventFilter".}
proc fcQAudioOutput_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_timerEvent".}
proc fcQAudioOutput_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_childEvent".}
proc fcQAudioOutput_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_customEvent".}
proc fcQAudioOutput_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioOutput_virtualbase_connectNotify".}
proc fcQAudioOutput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioOutput_virtualbase_disconnectNotify".}
proc fcQAudioOutput_protectedbase_sender(self: pointer): pointer {.importc: "QAudioOutput_protectedbase_sender".}
proc fcQAudioOutput_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioOutput_protectedbase_senderSignalIndex".}
proc fcQAudioOutput_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioOutput_protectedbase_receivers".}
proc fcQAudioOutput_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioOutput_protectedbase_isSignalConnected".}
proc fcQAudioOutput_new(vtbl, vdata: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new".}
proc fcQAudioOutput_new2(vtbl, vdata: pointer, audioDeviceInfo: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(vtbl, vdata: pointer, format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(vtbl, vdata: pointer, format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_new5(vtbl, vdata: pointer, audioDeviceInfo: pointer, format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new5".}
proc fcQAudioOutput_new6(vtbl, vdata: pointer, audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new6".}
proc fcQAudioOutput_staticMetaObject(): pointer {.importc: "QAudioOutput_staticMetaObject".}

proc metaObject*(self: gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring): string =
  let v_ms = fcQAudioOutput_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring): string =
  let v_ms = fcQAudioOutput_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc format*(self: gen_qaudiooutput_types.QAudioOutput): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioOutput_format(self.h), owned: true)

proc start*(self: gen_qaudiooutput_types.QAudioOutput, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioOutput_start(self.h, device.h)

proc start*(self: gen_qaudiooutput_types.QAudioOutput): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioOutput_start2(self.h), owned: false)

proc stop*(self: gen_qaudiooutput_types.QAudioOutput): void =
  fcQAudioOutput_stop(self.h)

proc reset*(self: gen_qaudiooutput_types.QAudioOutput): void =
  fcQAudioOutput_reset(self.h)

proc suspend*(self: gen_qaudiooutput_types.QAudioOutput): void =
  fcQAudioOutput_suspend(self.h)

proc resume*(self: gen_qaudiooutput_types.QAudioOutput): void =
  fcQAudioOutput_resume(self.h)

proc setBufferSize*(self: gen_qaudiooutput_types.QAudioOutput, bytes: cint): void =
  fcQAudioOutput_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiooutput_types.QAudioOutput): cint =
  fcQAudioOutput_bufferSize(self.h)

proc bytesFree*(self: gen_qaudiooutput_types.QAudioOutput): cint =
  fcQAudioOutput_bytesFree(self.h)

proc periodSize*(self: gen_qaudiooutput_types.QAudioOutput): cint =
  fcQAudioOutput_periodSize(self.h)

proc setNotifyInterval*(self: gen_qaudiooutput_types.QAudioOutput, milliSeconds: cint): void =
  fcQAudioOutput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: gen_qaudiooutput_types.QAudioOutput): cint =
  fcQAudioOutput_notifyInterval(self.h)

proc processedUSecs*(self: gen_qaudiooutput_types.QAudioOutput): clonglong =
  fcQAudioOutput_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiooutput_types.QAudioOutput): clonglong =
  fcQAudioOutput_elapsedUSecs(self.h)

proc error*(self: gen_qaudiooutput_types.QAudioOutput): cint =
  cint(fcQAudioOutput_error(self.h))

proc state*(self: gen_qaudiooutput_types.QAudioOutput): cint =
  cint(fcQAudioOutput_state(self.h))

proc setVolume*(self: gen_qaudiooutput_types.QAudioOutput, volume: float64): void =
  fcQAudioOutput_setVolume(self.h, volume)

proc volume*(self: gen_qaudiooutput_types.QAudioOutput): float64 =
  fcQAudioOutput_volume(self.h)

proc category*(self: gen_qaudiooutput_types.QAudioOutput): string =
  let v_ms = fcQAudioOutput_category(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCategory*(self: gen_qaudiooutput_types.QAudioOutput, category: openArray[char]): void =
  fcQAudioOutput_setCategory(self.h, struct_miqt_string(data: if len(category) > 0: addr category[0] else: nil, len: csize_t(len(category))))

proc stateChanged*(self: gen_qaudiooutput_types.QAudioOutput, state: cint): void =
  fcQAudioOutput_stateChanged(self.h, cint(state))

type QAudioOutputstateChangedSlot* = proc(state: cint)
proc fcQAudioOutput_slot_callback_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc fcQAudioOutput_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputstateChangedSlot) =
  var tmp = new QAudioOutputstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQAudioOutput_slot_callback_stateChanged, fcQAudioOutput_slot_callback_stateChanged_release)

proc notify*(self: gen_qaudiooutput_types.QAudioOutput): void =
  fcQAudioOutput_notify(self.h)

type QAudioOutputnotifySlot* = proc()
proc fcQAudioOutput_slot_callback_notify(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputnotifySlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioOutput_slot_callback_notify_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputnotifySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNotify*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputnotifySlot) =
  var tmp = new QAudioOutputnotifySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_notify(self.h, cast[int](addr tmp[]), fcQAudioOutput_slot_callback_notify, fcQAudioOutput_slot_callback_notify_release)

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutput_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutput_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutput_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioOutputmetaObjectProc* = proc(self: QAudioOutput): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioOutputmetacastProc* = proc(self: QAudioOutput, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioOutputmetacallProc* = proc(self: QAudioOutput, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioOutputeventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioOutputeventFilterProc* = proc(self: QAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioOutputtimerEventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioOutputchildEventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioOutputcustomEventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioOutputconnectNotifyProc* = proc(self: QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioOutputdisconnectNotifyProc* = proc(self: QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioOutputVTable* {.inheritable, pure.} = object
  vtbl: cQAudioOutputVTable
  metaObject*: QAudioOutputmetaObjectProc
  metacast*: QAudioOutputmetacastProc
  metacall*: QAudioOutputmetacallProc
  event*: QAudioOutputeventProc
  eventFilter*: QAudioOutputeventFilterProc
  timerEvent*: QAudioOutputtimerEventProc
  childEvent*: QAudioOutputchildEventProc
  customEvent*: QAudioOutputcustomEventProc
  connectNotify*: QAudioOutputconnectNotifyProc
  disconnectNotify*: QAudioOutputdisconnectNotifyProc

proc QAudioOutputmetaObject*(self: gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_virtualbase_metaObject(self.h), owned: false)

proc QAudioOutputmetacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_virtualbase_metacast(self.h, param1)

proc QAudioOutputmetacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioOutputevent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_event(self.h, event.h)

proc QAudioOutputeventFilter*(self: gen_qaudiooutput_types.QAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioOutputtimerEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioOutput_virtualbase_timerEvent(self.h, event.h)

proc QAudioOutputchildEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioOutput_virtualbase_childEvent(self.h, event.h)

proc QAudioOutputcustomEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioOutput_virtualbase_customEvent(self.h, event.h)

proc QAudioOutputconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_connectNotify(self.h, signal.h)

proc QAudioOutputdisconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioOutput_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioOutput_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioOutput_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioOutput_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioOutput_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioOutput_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioOutput_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioOutput_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioOutput_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioOutput_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioOutput* {.inheritable.} = ref object of QAudioOutput
  vtbl*: cQAudioOutputVTable

method metaObject*(self: VirtualQAudioOutput): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioOutputmetaObject(self[])
method metacast*(self: VirtualQAudioOutput, param1: cstring): pointer {.base.} =
  QAudioOutputmetacast(self[], param1)
method metacall*(self: VirtualQAudioOutput, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioOutputmetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioOutputevent(self[], event)
method eventFilter*(self: VirtualQAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioOutputeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioOutputtimerEvent(self[], event)
method childEvent*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioOutputchildEvent(self[], event)
method customEvent*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioOutputcustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioOutputconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioOutputdisconnectNotify(self[], signal)

proc fcQAudioOutput_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioOutput_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioOutput_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioOutput_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioOutput_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioOutput_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioOutput_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioOutput_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioOutput_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioOutput_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudiooutput_types.QAudioOutput): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioOutput_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiooutput_types.QAudioOutput): cint =
  fcQAudioOutput_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiooutput_types.QAudioOutput, signal: cstring): cint =
  fcQAudioOutput_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioOutput_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new2(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new3(addr(vtbl[].vtbl), addr(vtbl[]), format.h), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new4(addr(vtbl[].vtbl), addr(vtbl[]), format.h, parent.h), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new5(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h, format.h), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new6(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h, format.h, parent.h), owned: true)

const cQAudioOutput_mvtbl = cQAudioOutputVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioOutput()[])](self.fcQAudioOutput_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioOutput_method_callback_metaObject,
  metacast: fcQAudioOutput_method_callback_metacast,
  metacall: fcQAudioOutput_method_callback_metacall,
  event: fcQAudioOutput_method_callback_event,
  eventFilter: fcQAudioOutput_method_callback_eventFilter,
  timerEvent: fcQAudioOutput_method_callback_timerEvent,
  childEvent: fcQAudioOutput_method_callback_childEvent,
  customEvent: fcQAudioOutput_method_callback_customEvent,
  connectNotify: fcQAudioOutput_method_callback_connectNotify,
  disconnectNotify: fcQAudioOutput_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new(addr(cQAudioOutput_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new2(addr(cQAudioOutput_mvtbl), addr(inst[]), audioDeviceInfo.h)
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new3(addr(cQAudioOutput_mvtbl), addr(inst[]), format.h)
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new4(addr(cQAudioOutput_mvtbl), addr(inst[]), format.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new5(addr(cQAudioOutput_mvtbl), addr(inst[]), audioDeviceInfo.h, format.h)
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new6(addr(cQAudioOutput_mvtbl), addr(inst[]), audioDeviceInfo.h, format.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_staticMetaObject())
