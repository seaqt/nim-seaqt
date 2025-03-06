import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qaudiooutput.cpp", cflags).}


import ./gen_qaudiooutput_types
export gen_qaudiooutput_types

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

type cQAudioOutput*{.exportc: "QAudioOutput", incompleteStruct.} = object

proc fcQAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_metacall".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_device(self: pointer, ): pointer {.importc: "QAudioOutput_device".}
proc fcQAudioOutput_volume(self: pointer, ): float32 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_isMuted(self: pointer, ): bool {.importc: "QAudioOutput_isMuted".}
proc fcQAudioOutput_setDevice(self: pointer, device: pointer): void {.importc: "QAudioOutput_setDevice".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float32): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_setMuted(self: pointer, muted: bool): void {.importc: "QAudioOutput_setMuted".}
proc fcQAudioOutput_deviceChanged(self: pointer, ): void {.importc: "QAudioOutput_deviceChanged".}
proc fcQAudioOutput_connect_deviceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_deviceChanged".}
proc fcQAudioOutput_volumeChanged(self: pointer, volume: float32): void {.importc: "QAudioOutput_volumeChanged".}
proc fcQAudioOutput_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_volumeChanged".}
proc fcQAudioOutput_mutedChanged(self: pointer, muted: bool): void {.importc: "QAudioOutput_mutedChanged".}
proc fcQAudioOutput_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_mutedChanged".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
type cQAudioOutputVTable = object
  destructor*: proc(vtbl: ptr cQAudioOutputVTable, self: ptr cQAudioOutput) {.cdecl, raises:[], gcsafe.}
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
proc fcQAudioOutput_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_virtualbase_metaObject".}
proc fcQAudioOutput_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_virtualbase_metacast".}
proc fcQAudioOutput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_virtualbase_metacall".}
proc fcQAudioOutput_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioOutput_virtualbase_event".}
proc fcQAudioOutput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioOutput_virtualbase_eventFilter".}
proc fcQAudioOutput_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_timerEvent".}
proc fcQAudioOutput_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_childEvent".}
proc fcQAudioOutput_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_customEvent".}
proc fcQAudioOutput_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioOutput_virtualbase_connectNotify".}
proc fcQAudioOutput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioOutput_virtualbase_disconnectNotify".}
proc fcQAudioOutput_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioOutput_protectedbase_sender".}
proc fcQAudioOutput_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioOutput_protectedbase_senderSignalIndex".}
proc fcQAudioOutput_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioOutput_protectedbase_receivers".}
proc fcQAudioOutput_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioOutput_protectedbase_isSignalConnected".}
proc fcQAudioOutput_new(vtbl: pointer, ): ptr cQAudioOutput {.importc: "QAudioOutput_new".}
proc fcQAudioOutput_new2(vtbl: pointer, device: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(vtbl: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(vtbl: pointer, device: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_staticMetaObject(): pointer {.importc: "QAudioOutput_staticMetaObject".}
proc fcQAudioOutput_delete(self: pointer) {.importc: "QAudioOutput_delete".}

proc metaObject*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_metaObject(self.h))

proc metacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring): string =
  let v_ms = fcQAudioOutput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc device*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQAudioOutput_device(self.h))

proc volume*(self: gen_qaudiooutput_types.QAudioOutput, ): float32 =
  fcQAudioOutput_volume(self.h)

proc isMuted*(self: gen_qaudiooutput_types.QAudioOutput, ): bool =
  fcQAudioOutput_isMuted(self.h)

proc setDevice*(self: gen_qaudiooutput_types.QAudioOutput, device: gen_qaudiodevice_types.QAudioDevice): void =
  fcQAudioOutput_setDevice(self.h, device.h)

proc setVolume*(self: gen_qaudiooutput_types.QAudioOutput, volume: float32): void =
  fcQAudioOutput_setVolume(self.h, volume)

proc setMuted*(self: gen_qaudiooutput_types.QAudioOutput, muted: bool): void =
  fcQAudioOutput_setMuted(self.h, muted)

proc deviceChanged*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_deviceChanged(self.h)

type QAudioOutputdeviceChangedSlot* = proc()
proc miqt_exec_callback_cQAudioOutput_deviceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputdeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioOutput_deviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputdeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondeviceChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputdeviceChangedSlot) =
  var tmp = new QAudioOutputdeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_deviceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioOutput_deviceChanged, miqt_exec_callback_cQAudioOutput_deviceChanged_release)

proc volumeChanged*(self: gen_qaudiooutput_types.QAudioOutput, volume: float32): void =
  fcQAudioOutput_volumeChanged(self.h, volume)

type QAudioOutputvolumeChangedSlot* = proc(volume: float32)
proc miqt_exec_callback_cQAudioOutput_volumeChanged(slot: int, volume: float32) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioOutput_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputvolumeChangedSlot) =
  var tmp = new QAudioOutputvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioOutput_volumeChanged, miqt_exec_callback_cQAudioOutput_volumeChanged_release)

proc mutedChanged*(self: gen_qaudiooutput_types.QAudioOutput, muted: bool): void =
  fcQAudioOutput_mutedChanged(self.h, muted)

type QAudioOutputmutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_cQAudioOutput_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputmutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioOutput_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputmutedChangedSlot) =
  var tmp = new QAudioOutputmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_mutedChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioOutput_mutedChanged, miqt_exec_callback_cQAudioOutput_mutedChanged_release)

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QAudioOutputVTable* = object
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
proc QAudioOutputmetaObject*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioOutput_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioOutputmetacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioOutput_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioOutputmetacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioOutput_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioOutputevent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioOutputeventFilter*(self: gen_qaudiooutput_types.QAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioOutput_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioOutputtimerEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioOutput_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioOutputchildEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioOutput_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioOutputcustomEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioOutput_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioOutputconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioOutput_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioOutputdisconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioOutput_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioOutput_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiooutput_types.QAudioOutput, signal: cstring): cint =
  fcQAudioOutput_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioOutput_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new(addr(vtbl[]), ))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    device: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new2(addr(vtbl[]), device.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    device: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new4(addr(vtbl[]), device.h, parent.h))

proc staticMetaObject*(_: type gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_staticMetaObject())
proc delete*(self: gen_qaudiooutput_types.QAudioOutput) =
  fcQAudioOutput_delete(self.h)
