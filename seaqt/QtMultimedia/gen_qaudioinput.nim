import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qaudioinput.cpp", cflags).}


import ./gen_qaudioinput_types
export gen_qaudioinput_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiodevice_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiodevice_types

type cQAudioInput*{.exportc: "QAudioInput", incompleteStruct.} = object

proc fcQAudioInput_metaObject(self: pointer, ): pointer {.importc: "QAudioInput_metaObject".}
proc fcQAudioInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioInput_metacast".}
proc fcQAudioInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioInput_metacall".}
proc fcQAudioInput_tr(s: cstring): struct_miqt_string {.importc: "QAudioInput_tr".}
proc fcQAudioInput_device(self: pointer, ): pointer {.importc: "QAudioInput_device".}
proc fcQAudioInput_volume(self: pointer, ): float32 {.importc: "QAudioInput_volume".}
proc fcQAudioInput_isMuted(self: pointer, ): bool {.importc: "QAudioInput_isMuted".}
proc fcQAudioInput_setDevice(self: pointer, device: pointer): void {.importc: "QAudioInput_setDevice".}
proc fcQAudioInput_setVolume(self: pointer, volume: float32): void {.importc: "QAudioInput_setVolume".}
proc fcQAudioInput_setMuted(self: pointer, muted: bool): void {.importc: "QAudioInput_setMuted".}
proc fcQAudioInput_deviceChanged(self: pointer, ): void {.importc: "QAudioInput_deviceChanged".}
proc fcQAudioInput_connect_deviceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioInput_connect_deviceChanged".}
proc fcQAudioInput_volumeChanged(self: pointer, volume: float32): void {.importc: "QAudioInput_volumeChanged".}
proc fcQAudioInput_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioInput_connect_volumeChanged".}
proc fcQAudioInput_mutedChanged(self: pointer, muted: bool): void {.importc: "QAudioInput_mutedChanged".}
proc fcQAudioInput_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioInput_connect_mutedChanged".}
proc fcQAudioInput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInput_tr2".}
proc fcQAudioInput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInput_tr3".}
type cQAudioInputVTable = object
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
proc fcQAudioInput_new2(vtbl: pointer, deviceInfo: pointer): ptr cQAudioInput {.importc: "QAudioInput_new2".}
proc fcQAudioInput_new3(vtbl: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new3".}
proc fcQAudioInput_new4(vtbl: pointer, deviceInfo: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new4".}
proc fcQAudioInput_staticMetaObject(): pointer {.importc: "QAudioInput_staticMetaObject".}
proc fcQAudioInput_delete(self: pointer) {.importc: "QAudioInput_delete".}

proc metaObject*(self: gen_qaudioinput_types.QAudioInput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInput_metaObject(self.h))

proc metacast*(self: gen_qaudioinput_types.QAudioInput, param1: cstring): pointer =
  fcQAudioInput_metacast(self.h, param1)

proc metacall*(self: gen_qaudioinput_types.QAudioInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioInput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioinput_types.QAudioInput, s: cstring): string =
  let v_ms = fcQAudioInput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc device*(self: gen_qaudioinput_types.QAudioInput, ): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQAudioInput_device(self.h))

proc volume*(self: gen_qaudioinput_types.QAudioInput, ): float32 =
  fcQAudioInput_volume(self.h)

proc isMuted*(self: gen_qaudioinput_types.QAudioInput, ): bool =
  fcQAudioInput_isMuted(self.h)

proc setDevice*(self: gen_qaudioinput_types.QAudioInput, device: gen_qaudiodevice_types.QAudioDevice): void =
  fcQAudioInput_setDevice(self.h, device.h)

proc setVolume*(self: gen_qaudioinput_types.QAudioInput, volume: float32): void =
  fcQAudioInput_setVolume(self.h, volume)

proc setMuted*(self: gen_qaudioinput_types.QAudioInput, muted: bool): void =
  fcQAudioInput_setMuted(self.h, muted)

proc deviceChanged*(self: gen_qaudioinput_types.QAudioInput, ): void =
  fcQAudioInput_deviceChanged(self.h)

type QAudioInputdeviceChangedSlot* = proc()
proc miqt_exec_callback_cQAudioInput_deviceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioInputdeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioInput_deviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioInputdeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondeviceChanged*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputdeviceChangedSlot) =
  var tmp = new QAudioInputdeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_deviceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioInput_deviceChanged, miqt_exec_callback_cQAudioInput_deviceChanged_release)

proc volumeChanged*(self: gen_qaudioinput_types.QAudioInput, volume: float32): void =
  fcQAudioInput_volumeChanged(self.h, volume)

type QAudioInputvolumeChangedSlot* = proc(volume: float32)
proc miqt_exec_callback_cQAudioInput_volumeChanged(slot: int, volume: float32) {.cdecl.} =
  let nimfunc = cast[ptr QAudioInputvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioInput_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioInputvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputvolumeChangedSlot) =
  var tmp = new QAudioInputvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioInput_volumeChanged, miqt_exec_callback_cQAudioInput_volumeChanged_release)

proc mutedChanged*(self: gen_qaudioinput_types.QAudioInput, muted: bool): void =
  fcQAudioInput_mutedChanged(self.h, muted)

type QAudioInputmutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_cQAudioInput_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAudioInputmutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioInput_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioInputmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputmutedChangedSlot) =
  var tmp = new QAudioInputmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_mutedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioInput_mutedChanged, miqt_exec_callback_cQAudioInput_mutedChanged_release)

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
type QAudioInputVTable* = object
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
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInput_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioInput_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

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
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioInputeventFilter*(self: gen_qaudioinput_types.QAudioInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioInput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioInput_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioInputtimerEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioInput_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioInput_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioInputchildEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioInput_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioInput_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioInputcustomEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioInput_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioInput_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioInputconnectNotify*(self: gen_qaudioinput_types.QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioInput_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioInput_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioInputdisconnectNotify*(self: gen_qaudioinput_types.QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioInput_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioInput_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioInputVTable](vtbl)
  let self = QAudioInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qaudioinput_types.QAudioInput, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioInput_protectedbase_sender(self.h))

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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new(addr(vtbl[]), ))

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    deviceInfo: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new2(addr(vtbl[]), deviceInfo.h))

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qaudioinput_types.QAudioInput,
    deviceInfo: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioInputVTable = nil): gen_qaudioinput_types.QAudioInput =
  let vtbl = if vtbl == nil: new QAudioInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioInputVTable, _: ptr cQAudioInput) {.cdecl.} =
    let vtbl = cast[ref QAudioInputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioInput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioInput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioInput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioInput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioInput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioInput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioInput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioInput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioInput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioInput_disconnectNotify
  gen_qaudioinput_types.QAudioInput(h: fcQAudioInput_new4(addr(vtbl[]), deviceInfo.h, parent.h))

proc staticMetaObject*(_: type gen_qaudioinput_types.QAudioInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInput_staticMetaObject())
proc delete*(self: gen_qaudioinput_types.QAudioInput) =
  fcQAudioInput_delete(self.h)
