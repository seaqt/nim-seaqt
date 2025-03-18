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


{.compile("gen_qaudiosource.cpp", QtMultimediaCFlags).}


import ./gen_qaudiosource_types
export gen_qaudiosource_types

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

type cQAudioSource*{.exportc: "QAudioSource", incompleteStruct.} = object

proc fcQAudioSource_metaObject(self: pointer): pointer {.importc: "QAudioSource_metaObject".}
proc fcQAudioSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSource_metacast".}
proc fcQAudioSource_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSource_metacall".}
proc fcQAudioSource_tr(s: cstring): struct_miqt_string {.importc: "QAudioSource_tr".}
proc fcQAudioSource_isNull(self: pointer): bool {.importc: "QAudioSource_isNull".}
proc fcQAudioSource_format(self: pointer): pointer {.importc: "QAudioSource_format".}
proc fcQAudioSource_start(self: pointer, device: pointer): void {.importc: "QAudioSource_start".}
proc fcQAudioSource_start2(self: pointer): pointer {.importc: "QAudioSource_start2".}
proc fcQAudioSource_stop(self: pointer): void {.importc: "QAudioSource_stop".}
proc fcQAudioSource_reset(self: pointer): void {.importc: "QAudioSource_reset".}
proc fcQAudioSource_suspend(self: pointer): void {.importc: "QAudioSource_suspend".}
proc fcQAudioSource_resume(self: pointer): void {.importc: "QAudioSource_resume".}
proc fcQAudioSource_setBufferSize(self: pointer, bytes: int64): void {.importc: "QAudioSource_setBufferSize".}
proc fcQAudioSource_bufferSize(self: pointer): int64 {.importc: "QAudioSource_bufferSize".}
proc fcQAudioSource_bytesAvailable(self: pointer): int64 {.importc: "QAudioSource_bytesAvailable".}
proc fcQAudioSource_setVolume(self: pointer, volume: float64): void {.importc: "QAudioSource_setVolume".}
proc fcQAudioSource_volume(self: pointer): float64 {.importc: "QAudioSource_volume".}
proc fcQAudioSource_processedUSecs(self: pointer): clonglong {.importc: "QAudioSource_processedUSecs".}
proc fcQAudioSource_elapsedUSecs(self: pointer): clonglong {.importc: "QAudioSource_elapsedUSecs".}
proc fcQAudioSource_error(self: pointer): cint {.importc: "QAudioSource_error".}
proc fcQAudioSource_state(self: pointer): cint {.importc: "QAudioSource_state".}
proc fcQAudioSource_stateChanged(self: pointer, state: cint): void {.importc: "QAudioSource_stateChanged".}
proc fcQAudioSource_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioSource_connect_stateChanged".}
proc fcQAudioSource_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSource_tr2".}
proc fcQAudioSource_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSource_tr3".}
proc fcQAudioSource_vtbl(self: pointer): pointer {.importc: "QAudioSource_vtbl".}
proc fcQAudioSource_vdata(self: pointer): pointer {.importc: "QAudioSource_vdata".}

type cQAudioSourceVTable {.pure.} = object
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
proc fcQAudioSource_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioSource_virtualbase_metaObject".}
proc fcQAudioSource_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSource_virtualbase_metacast".}
proc fcQAudioSource_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSource_virtualbase_metacall".}
proc fcQAudioSource_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioSource_virtualbase_event".}
proc fcQAudioSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioSource_virtualbase_eventFilter".}
proc fcQAudioSource_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioSource_virtualbase_timerEvent".}
proc fcQAudioSource_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioSource_virtualbase_childEvent".}
proc fcQAudioSource_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioSource_virtualbase_customEvent".}
proc fcQAudioSource_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSource_virtualbase_connectNotify".}
proc fcQAudioSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioSource_virtualbase_disconnectNotify".}
proc fcQAudioSource_protectedbase_sender(self: pointer): pointer {.importc: "QAudioSource_protectedbase_sender".}
proc fcQAudioSource_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioSource_protectedbase_senderSignalIndex".}
proc fcQAudioSource_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioSource_protectedbase_receivers".}
proc fcQAudioSource_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioSource_protectedbase_isSignalConnected".}
proc fcQAudioSource_new(vtbl, vdata: pointer): ptr cQAudioSource {.importc: "QAudioSource_new".}
proc fcQAudioSource_new2(vtbl, vdata: pointer, audioDeviceInfo: pointer): ptr cQAudioSource {.importc: "QAudioSource_new2".}
proc fcQAudioSource_new3(vtbl, vdata: pointer, format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new3".}
proc fcQAudioSource_new4(vtbl, vdata: pointer, format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new4".}
proc fcQAudioSource_new5(vtbl, vdata: pointer, audioDeviceInfo: pointer, format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new5".}
proc fcQAudioSource_new6(vtbl, vdata: pointer, audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new6".}
proc fcQAudioSource_staticMetaObject(): pointer {.importc: "QAudioSource_staticMetaObject".}

proc metaObject*(self: gen_qaudiosource_types.QAudioSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSource_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiosource_types.QAudioSource, param1: cstring): pointer =
  fcQAudioSource_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosource_types.QAudioSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSource_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring): string =
  let v_ms = fcQAudioSource_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qaudiosource_types.QAudioSource): bool =
  fcQAudioSource_isNull(self.h)

proc format*(self: gen_qaudiosource_types.QAudioSource): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioSource_format(self.h), owned: true)

proc start*(self: gen_qaudiosource_types.QAudioSource, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioSource_start(self.h, device.h)

proc start*(self: gen_qaudiosource_types.QAudioSource): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioSource_start2(self.h), owned: false)

proc stop*(self: gen_qaudiosource_types.QAudioSource): void =
  fcQAudioSource_stop(self.h)

proc reset*(self: gen_qaudiosource_types.QAudioSource): void =
  fcQAudioSource_reset(self.h)

proc suspend*(self: gen_qaudiosource_types.QAudioSource): void =
  fcQAudioSource_suspend(self.h)

proc resume*(self: gen_qaudiosource_types.QAudioSource): void =
  fcQAudioSource_resume(self.h)

proc setBufferSize*(self: gen_qaudiosource_types.QAudioSource, bytes: int64): void =
  fcQAudioSource_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiosource_types.QAudioSource): int64 =
  fcQAudioSource_bufferSize(self.h)

proc bytesAvailable*(self: gen_qaudiosource_types.QAudioSource): int64 =
  fcQAudioSource_bytesAvailable(self.h)

proc setVolume*(self: gen_qaudiosource_types.QAudioSource, volume: float64): void =
  fcQAudioSource_setVolume(self.h, volume)

proc volume*(self: gen_qaudiosource_types.QAudioSource): float64 =
  fcQAudioSource_volume(self.h)

proc processedUSecs*(self: gen_qaudiosource_types.QAudioSource): clonglong =
  fcQAudioSource_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiosource_types.QAudioSource): clonglong =
  fcQAudioSource_elapsedUSecs(self.h)

proc error*(self: gen_qaudiosource_types.QAudioSource): cint =
  cint(fcQAudioSource_error(self.h))

proc state*(self: gen_qaudiosource_types.QAudioSource): cint =
  cint(fcQAudioSource_state(self.h))

proc stateChanged*(self: gen_qaudiosource_types.QAudioSource, state: cint): void =
  fcQAudioSource_stateChanged(self.h, cint(state))

type QAudioSourcestateChangedSlot* = proc(state: cint)
proc fcQAudioSource_slot_callback_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioSourcestateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc fcQAudioSource_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioSourcestateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourcestateChangedSlot) =
  var tmp = new QAudioSourcestateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQAudioSource_slot_callback_stateChanged, fcQAudioSource_slot_callback_stateChanged_release)

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSource_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSource_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioSourcemetaObjectProc* = proc(self: QAudioSource): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioSourcemetacastProc* = proc(self: QAudioSource, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioSourcemetacallProc* = proc(self: QAudioSource, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioSourceeventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSourceeventFilterProc* = proc(self: QAudioSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioSourcetimerEventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioSourcechildEventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioSourcecustomEventProc* = proc(self: QAudioSource, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioSourceconnectNotifyProc* = proc(self: QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioSourcedisconnectNotifyProc* = proc(self: QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioSourceVTable* {.inheritable, pure.} = object
  vtbl: cQAudioSourceVTable
  metaObject*: QAudioSourcemetaObjectProc
  metacast*: QAudioSourcemetacastProc
  metacall*: QAudioSourcemetacallProc
  event*: QAudioSourceeventProc
  eventFilter*: QAudioSourceeventFilterProc
  timerEvent*: QAudioSourcetimerEventProc
  childEvent*: QAudioSourcechildEventProc
  customEvent*: QAudioSourcecustomEventProc
  connectNotify*: QAudioSourceconnectNotifyProc
  disconnectNotify*: QAudioSourcedisconnectNotifyProc

proc QAudioSourcemetaObject*(self: gen_qaudiosource_types.QAudioSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSource_virtualbase_metaObject(self.h), owned: false)

proc QAudioSourcemetacast*(self: gen_qaudiosource_types.QAudioSource, param1: cstring): pointer =
  fcQAudioSource_virtualbase_metacast(self.h, param1)

proc QAudioSourcemetacall*(self: gen_qaudiosource_types.QAudioSource, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSource_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioSourceevent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSource_virtualbase_event(self.h, event.h)

proc QAudioSourceeventFilter*(self: gen_qaudiosource_types.QAudioSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioSource_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioSourcetimerEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioSource_virtualbase_timerEvent(self.h, event.h)

proc QAudioSourcechildEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioSource_virtualbase_childEvent(self.h, event.h)

proc QAudioSourcecustomEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioSource_virtualbase_customEvent(self.h, event.h)

proc QAudioSourceconnectNotify*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSource_virtualbase_connectNotify(self.h, signal.h)

proc QAudioSourcedisconnectNotify*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioSource_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioSource_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSource_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioSource_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioSource_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioSource_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioSource_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioSource_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioSource_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioSource_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioSource_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioSourceVTable](fcQAudioSource_vdata(self))
  let self = QAudioSource(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioSource* {.inheritable.} = ref object of QAudioSource
  vtbl*: cQAudioSourceVTable

method metaObject*(self: VirtualQAudioSource): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioSourcemetaObject(self[])
method metacast*(self: VirtualQAudioSource, param1: cstring): pointer {.base.} =
  QAudioSourcemetacast(self[], param1)
method metacall*(self: VirtualQAudioSource, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioSourcemetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioSource, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioSourceevent(self[], event)
method eventFilter*(self: VirtualQAudioSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioSourceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioSource, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioSourcetimerEvent(self[], event)
method childEvent*(self: VirtualQAudioSource, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioSourcechildEvent(self[], event)
method customEvent*(self: VirtualQAudioSource, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioSourcecustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioSourceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioSourcedisconnectNotify(self[], signal)

proc fcQAudioSource_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioSource_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioSource_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioSource_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioSource_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioSource_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioSource_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioSource_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioSource_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioSource_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioSource](fcQAudioSource_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudiosource_types.QAudioSource): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioSource_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiosource_types.QAudioSource): cint =
  fcQAudioSource_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiosource_types.QAudioSource, signal: cstring): cint =
  fcQAudioSource_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioSource_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](fcQAudioSource_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSource_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSource_vtable_callback_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](fcQAudioSource_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSource_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSource_vtable_callback_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new2(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h), owned: true)

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](fcQAudioSource_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSource_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSource_vtable_callback_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new3(addr(vtbl[].vtbl), addr(vtbl[]), format.h), owned: true)

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](fcQAudioSource_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSource_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSource_vtable_callback_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new4(addr(vtbl[].vtbl), addr(vtbl[]), format.h, parent.h), owned: true)

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](fcQAudioSource_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSource_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSource_vtable_callback_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new5(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h, format.h), owned: true)

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioSourceVTable = nil): gen_qaudiosource_types.QAudioSource =
  let vtbl = if vtbl == nil: new QAudioSourceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioSourceVTable](fcQAudioSource_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioSource_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioSource_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioSource_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioSource_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioSource_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioSource_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioSource_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioSource_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioSource_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioSource_vtable_callback_disconnectNotify
  gen_qaudiosource_types.QAudioSource(h: fcQAudioSource_new6(addr(vtbl[].vtbl), addr(vtbl[]), audioDeviceInfo.h, format.h, parent.h), owned: true)

const cQAudioSource_mvtbl = cQAudioSourceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioSource()[])](self.fcQAudioSource_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioSource_method_callback_metaObject,
  metacast: fcQAudioSource_method_callback_metacast,
  metacall: fcQAudioSource_method_callback_metacall,
  event: fcQAudioSource_method_callback_event,
  eventFilter: fcQAudioSource_method_callback_eventFilter,
  timerEvent: fcQAudioSource_method_callback_timerEvent,
  childEvent: fcQAudioSource_method_callback_childEvent,
  customEvent: fcQAudioSource_method_callback_customEvent,
  connectNotify: fcQAudioSource_method_callback_connectNotify,
  disconnectNotify: fcQAudioSource_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiosource_types.QAudioSource,
    inst: VirtualQAudioSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSource_new(addr(cQAudioSource_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice,
    inst: VirtualQAudioSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSource_new2(addr(cQAudioSource_mvtbl), addr(inst[]), audioDeviceInfo.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSource_new3(addr(cQAudioSource_mvtbl), addr(inst[]), format.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSource_new4(addr(cQAudioSource_mvtbl), addr(inst[]), format.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSource_new5(addr(cQAudioSource_mvtbl), addr(inst[]), audioDeviceInfo.h, format.h)
  inst[].owned = true

proc create*(T: type gen_qaudiosource_types.QAudioSource,
    audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioSource) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioSource_new6(addr(cQAudioSource_mvtbl), addr(inst[]), audioDeviceInfo.h, format.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiosource_types.QAudioSource): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSource_staticMetaObject())
