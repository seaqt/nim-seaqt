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


{.compile("gen_qaudiosink.cpp", QtMultimediaCFlags).}


import ./gen_qaudiosink_types
export gen_qaudiosink_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiodevice_types,
  ./gen_qaudioformat_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiodevice_types,
  gen_qaudioformat_types

type cQAudioSink*{.exportc: "QAudioSink", incompleteStruct.} = object

proc fcQAudioSink_metaObject(self: pointer): pointer {.importc: "QAudioSink_metaObject".}
proc fcQAudioSink_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSink_metacast".}
proc fcQAudioSink_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSink_metacall".}
proc fcQAudioSink_tr(s: cstring): struct_miqt_string {.importc: "QAudioSink_tr".}
proc fcQAudioSink_isNull(self: pointer): bool {.importc: "QAudioSink_isNull".}
proc fcQAudioSink_format(self: pointer): pointer {.importc: "QAudioSink_format".}
proc fcQAudioSink_start(self: pointer, device: pointer): void {.importc: "QAudioSink_start".}
proc fcQAudioSink_start2(self: pointer): pointer {.importc: "QAudioSink_start2".}
proc fcQAudioSink_stop(self: pointer): void {.importc: "QAudioSink_stop".}
proc fcQAudioSink_reset(self: pointer): void {.importc: "QAudioSink_reset".}
proc fcQAudioSink_suspend(self: pointer): void {.importc: "QAudioSink_suspend".}
proc fcQAudioSink_resume(self: pointer): void {.importc: "QAudioSink_resume".}
proc fcQAudioSink_setBufferSize(self: pointer, bytes: int64): void {.importc: "QAudioSink_setBufferSize".}
proc fcQAudioSink_bufferSize(self: pointer): int64 {.importc: "QAudioSink_bufferSize".}
proc fcQAudioSink_bytesFree(self: pointer): int64 {.importc: "QAudioSink_bytesFree".}
proc fcQAudioSink_processedUSecs(self: pointer): clonglong {.importc: "QAudioSink_processedUSecs".}
proc fcQAudioSink_elapsedUSecs(self: pointer): clonglong {.importc: "QAudioSink_elapsedUSecs".}
proc fcQAudioSink_error(self: pointer): cint {.importc: "QAudioSink_error".}
proc fcQAudioSink_state(self: pointer): cint {.importc: "QAudioSink_state".}
proc fcQAudioSink_setVolume(self: pointer, volume: float64): void {.importc: "QAudioSink_setVolume".}
proc fcQAudioSink_volume(self: pointer): float64 {.importc: "QAudioSink_volume".}
proc fcQAudioSink_stateChanged(self: pointer, state: cint): void {.importc: "QAudioSink_stateChanged".}
proc fcQAudioSink_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioSink_connect_stateChanged".}
proc fcQAudioSink_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSink_tr2".}
proc fcQAudioSink_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSink_tr3".}
proc fcQAudioSink_vtbl(self: pointer): pointer {.importc: "QAudioSink_vtbl".}
proc fcQAudioSink_vdata(self: pointer): pointer {.importc: "QAudioSink_vdata".}

type cQAudioSinkVTable {.pure.} = object
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
proc fcQAudioSink_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioSink_virtualbase_metaObject".}
proc fcQAudioSink_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSink_virtualbase_metacast".}
proc fcQAudioSink_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSink_virtualbase_metacall".}
proc fcQAudioSink_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioSink_virtualbase_event".}
proc fcQAudioSink_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioSink_virtualbase_eventFilter".}
proc fcQAudioSink_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioSink_virtualbase_timerEvent".}
proc fcQAudioSink_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioSink_virtualbase_childEvent".}
proc fcQAudioSink_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioSink_virtualbase_customEvent".}
proc fcQAudioSink_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSink_virtualbase_connectNotify".}
proc fcQAudioSink_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSink_virtualbase_disconnectNotify".}
proc fcQAudioSink_protectedbase_sender(self: pointer): pointer {.importc: "QAudioSink_protectedbase_sender".}
proc fcQAudioSink_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioSink_protectedbase_senderSignalIndex".}
proc fcQAudioSink_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioSink_protectedbase_receivers".}
proc fcQAudioSink_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioSink_protectedbase_isSignalConnected".}
proc fcQAudioSink_new(vtbl, vdata: pointer): ptr cQAudioSink {.importc: "QAudioSink_new".}
proc fcQAudioSink_new2(vtbl, vdata: pointer, audioDeviceInfo: pointer): ptr cQAudioSink {.importc: "QAudioSink_new2".}
proc fcQAudioSink_new3(vtbl, vdata: pointer, format: pointer): ptr cQAudioSink {.importc: "QAudioSink_new3".}
proc fcQAudioSink_new4(vtbl, vdata: pointer, format: pointer, parent: pointer): ptr cQAudioSink {.importc: "QAudioSink_new4".}
proc fcQAudioSink_new5(vtbl, vdata: pointer, audioDeviceInfo: pointer, format: pointer): ptr cQAudioSink {.importc: "QAudioSink_new5".}
proc fcQAudioSink_new6(vtbl, vdata: pointer, audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioSink {.importc: "QAudioSink_new6".}
proc fcQAudioSink_staticMetaObject(): pointer {.importc: "QAudioSink_staticMetaObject".}

proc metaObject*(self: gen_qaudiosink_types.QAudioSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSink_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiosink_types.QAudioSink, param1: cstring): pointer =
  fcQAudioSink_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosink_types.QAudioSink, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSink_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosink_types.QAudioSink, s: cstring): string =
  let v_ms = fcQAudioSink_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qaudiosink_types.QAudioSink): bool =
  fcQAudioSink_isNull(self.h)

proc format*(self: gen_qaudiosink_types.QAudioSink): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioSink_format(self.h), owned: true)

proc start*(self: gen_qaudiosink_types.QAudioSink, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioSink_start(self.h, device.h)

proc start*(self: gen_qaudiosink_types.QAudioSink): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioSink_start2(self.h), owned: false)

proc stop*(self: gen_qaudiosink_types.QAudioSink): void =
  fcQAudioSink_stop(self.h)

proc reset*(self: gen_qaudiosink_types.QAudioSink): void =
  fcQAudioSink_reset(self.h)

proc suspend*(self: gen_qaudiosink_types.QAudioSink): void =
  fcQAudioSink_suspend(self.h)

proc resume*(self: gen_qaudiosink_types.QAudioSink): void =
  fcQAudioSink_resume(self.h)

proc setBufferSize*(self: gen_qaudiosink_types.QAudioSink, bytes: int64): void =
  fcQAudioSink_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiosink_types.QAudioSink): int64 =
  fcQAudioSink_bufferSize(self.h)

proc bytesFree*(self: gen_qaudiosink_types.QAudioSink): int64 =
  fcQAudioSink_bytesFree(self.h)

proc processedUSecs*(self: gen_qaudiosink_types.QAudioSink): clonglong =
  fcQAudioSink_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiosink_types.QAudioSink): clonglong =
  fcQAudioSink_elapsedUSecs(self.h)

proc error*(self: gen_qaudiosink_types.QAudioSink): cint =
  cint(fcQAudioSink_error(self.h))

proc state*(self: gen_qaudiosink_types.QAudioSink): cint =
  cint(fcQAudioSink_state(self.h))

proc setVolume*(self: gen_qaudiosink_types.QAudioSink, volume: float64): void =
  fcQAudioSink_setVolume(self.h, volume)

proc volume*(self: gen_qaudiosink_types.QAudioSink): float64 =
  fcQAudioSink_volume(self.h)

proc stateChanged*(self: gen_qaudiosink_types.QAudioSink, state: cint): void =
  fcQAudioSink_stateChanged(self.h, cint(state))

type QAudioSinkstateChangedSlot* = proc(state: cint)
proc fcQAudioSink_slot_callback_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioSinkstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc fcQAudioSink_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioSinkstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkstateChangedSlot) =
  var tmp = new QAudioSinkstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQAudioSink_slot_callback_stateChanged, fcQAudioSink_slot_callback_stateChanged_release)

proc tr*(_: type gen_qaudiosink_types.QAudioSink, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSink_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosink_types.QAudioSink, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSink_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioSinkmetaObjectProc* = proc(self: QAudioSink): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioSinkmetacastProc* = proc(self: QAudioSink, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioSinkmetacallProc* = proc(self: QAudioSink, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioSinkeventProc* = proc(self: QAudioSink, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSinkeventFilterProc* = proc(self: QAudioSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSinktimerEventProc* = proc(self: QAudioSink, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioSinkchildEventProc* = proc(self: QAudioSink, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioSinkcustomEventProc* = proc(self: QAudioSink, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioSinkconnectNotifyProc* = proc(self: QAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioSinkdisconnectNotifyProc* = proc(self: QAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioSinkVTable* {.inheritable, pure.} = object
  vtbl: cQAudioSinkVTable
  metaObject*: QAudioSinkmetaObjectProc
  metacast*: QAudioSinkmetacastProc
  metacall*: QAudioSinkmetacallProc
  event*: QAudioSinkeventProc
  eventFilter*: QAudioSinkeventFilterProc
  timerEvent*: QAudioSinktimerEventProc
  childEvent*: QAudioSinkchildEventProc
  customEvent*: QAudioSinkcustomEventProc
  connectNotify*: QAudioSinkconnectNotifyProc
  disconnectNotify*: QAudioSinkdisconnectNotifyProc

proc QAudioSinkmetaObject*(self: gen_qaudiosink_types.QAudioSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSink_virtualbase_metaObject(self.h), owned: false)

proc QAudioSinkmetacast*(self: gen_qaudiosink_types.QAudioSink, param1: cstring): pointer =
  fcQAudioSink_virtualbase_metacast(self.h, param1)

proc QAudioSinkmetacall*(self: gen_qaudiosink_types.QAudioSink, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSink_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioSinkevent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSink_virtualbase_event(self.h, event.h)

proc QAudioSinkeventFilter*(self: gen_qaudiosink_types.QAudioSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSink_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioSinktimerEvent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioSink_virtualbase_timerEvent(self.h, event.h)

proc QAudioSinkchildEvent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioSink_virtualbase_childEvent(self.h, event.h)

proc QAudioSinkcustomEvent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioSink_virtualbase_customEvent(self.h, event.h)

proc QAudioSinkconnectNotify*(self: gen_qaudiosink_types.QAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSink_virtualbase_connectNotify(self.h, signal.h)

proc QAudioSinkdisconnectNotify*(self: gen_qaudiosink_types.QAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSink_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioSink_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSink_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioSink_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioSink_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioSink_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioSink_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioSink_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioSink_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioSink_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioSink_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSinkVTable](fcQAudioSink_vdata(self))
  let self = QAudioSink(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioSink* {.inheritable.} = ref object of QAudioSink
  vtbl*: cQAudioSinkVTable

method metaObject*(self: VirtualQAudioSink): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioSinkmetaObject(self[])
method metacast*(self: VirtualQAudioSink, param1: cstring): pointer {.base.} =
  QAudioSinkmetacast(self[], param1)
method metacall*(self: VirtualQAudioSink, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioSinkmetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioSink, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioSinkevent(self[], event)
method eventFilter*(self: VirtualQAudioSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioSinkeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioSink, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioSinktimerEvent(self[], event)
method childEvent*(self: VirtualQAudioSink, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioSinkchildEvent(self[], event)
method customEvent*(self: VirtualQAudioSink, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioSinkcustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioSinkconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioSinkdisconnectNotify(self[], signal)

proc fcQAudioSink_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSink_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioSink_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioSink_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioSink_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioSink_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioSink_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioSink_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioSink_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioSink_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSink](fcQAudioSink_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudiosink_types.QAudioSink): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioSink_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiosink_types.QAudioSink): cint =
  fcQAudioSink_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiosink_types.QAudioSink, signal: cstring): cint =
  fcQAudioSink_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiosink_types.QAudioSink, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioSink_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    vtbl: ref QAudioSinkVTable = nil): gen_qaudiosink_types.QAudioSink =
  let vtbl = if vtbl == nil: new QAudioSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSinkVTable](fcQAudioSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSink_vtable_callback_disconnectNotify
  gen_qaudiosink_types.QAudioSink(h: fcQAudioSink_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QAudioSinkVTable = nil): gen_qaudiosink_types.QAudioSink =
  let vtbl = if vtbl == nil: new QAudioSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSinkVTable](fcQAudioSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSink_vtable_callback_disconnectNotify
  gen_qaudiosink_types.QAudioSink(h: fcQAudioSink_new2(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h), owned: true)

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioSinkVTable = nil): gen_qaudiosink_types.QAudioSink =
  let vtbl = if vtbl == nil: new QAudioSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSinkVTable](fcQAudioSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSink_vtable_callback_disconnectNotify
  gen_qaudiosink_types.QAudioSink(h: fcQAudioSink_new3(addr(vtbl[].vtbl), addr(vtbl[]), format.h), owned: true)

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioSinkVTable = nil): gen_qaudiosink_types.QAudioSink =
  let vtbl = if vtbl == nil: new QAudioSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSinkVTable](fcQAudioSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSink_vtable_callback_disconnectNotify
  gen_qaudiosink_types.QAudioSink(h: fcQAudioSink_new4(addr(vtbl[].vtbl), addr(vtbl[]), format.h, parent.h), owned: true)

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioSinkVTable = nil): gen_qaudiosink_types.QAudioSink =
  let vtbl = if vtbl == nil: new QAudioSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSinkVTable](fcQAudioSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSink_vtable_callback_disconnectNotify
  gen_qaudiosink_types.QAudioSink(h: fcQAudioSink_new5(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h, format.h), owned: true)

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioSinkVTable = nil): gen_qaudiosink_types.QAudioSink =
  let vtbl = if vtbl == nil: new QAudioSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSinkVTable](fcQAudioSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSink_vtable_callback_disconnectNotify
  gen_qaudiosink_types.QAudioSink(h: fcQAudioSink_new6(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h, format.h, parent.h), owned: true)

const cQAudioSink_mvtbl = cQAudioSinkVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioSink()[])](self.fcQAudioSink_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioSink_method_callback_metaObject,
  metacast: fcQAudioSink_method_callback_metacast,
  metacall: fcQAudioSink_method_callback_metacall,
  event: fcQAudioSink_method_callback_event,
  eventFilter: fcQAudioSink_method_callback_eventFilter,
  timerEvent: fcQAudioSink_method_callback_timerEvent,
  childEvent: fcQAudioSink_method_callback_childEvent,
  customEvent: fcQAudioSink_method_callback_customEvent,
  connectNotify: fcQAudioSink_method_callback_connectNotify,
  disconnectNotify: fcQAudioSink_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiosink_types.QAudioSink,
    inst: VirtualQAudioSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSink_new(addr(cQAudioSink_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice,
    inst: VirtualQAudioSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSink_new2(addr(cQAudioSink_mvtbl), addr(inst[]), audioDeviceInfo.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSink_new3(addr(cQAudioSink_mvtbl), addr(inst[]), format.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSink_new4(addr(cQAudioSink_mvtbl), addr(inst[]), format.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSink_new5(addr(cQAudioSink_mvtbl), addr(inst[]), audioDeviceInfo.h, format.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosink_types.QAudioSink,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSink_new6(addr(cQAudioSink_mvtbl), addr(inst[]), audioDeviceInfo.h, format.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiosink_types.QAudioSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSink_staticMetaObject())
