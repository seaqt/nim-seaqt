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

const cflags = gorge("pkg-config --cflags Qt6Multimedia") & " -fPIC"
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

proc fcQAudioOutput_metaObject(self: pointer): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_metacall".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_device(self: pointer): pointer {.importc: "QAudioOutput_device".}
proc fcQAudioOutput_volume(self: pointer): float32 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_isMuted(self: pointer): bool {.importc: "QAudioOutput_isMuted".}
proc fcQAudioOutput_setDevice(self: pointer, device: pointer): void {.importc: "QAudioOutput_setDevice".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float32): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_setMuted(self: pointer, muted: bool): void {.importc: "QAudioOutput_setMuted".}
proc fcQAudioOutput_deviceChanged(self: pointer): void {.importc: "QAudioOutput_deviceChanged".}
proc fcQAudioOutput_connect_deviceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_deviceChanged".}
proc fcQAudioOutput_volumeChanged(self: pointer, volume: float32): void {.importc: "QAudioOutput_volumeChanged".}
proc fcQAudioOutput_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int, volume: float32) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_volumeChanged".}
proc fcQAudioOutput_mutedChanged(self: pointer, muted: bool): void {.importc: "QAudioOutput_mutedChanged".}
proc fcQAudioOutput_connect_mutedChanged(self: pointer, slot: int, callback: proc (slot: int, muted: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_mutedChanged".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
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
proc fcQAudioOutput_new2(vtbl, vdata: pointer, device: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(vtbl, vdata: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(vtbl, vdata: pointer, device: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_staticMetaObject(): pointer {.importc: "QAudioOutput_staticMetaObject".}

proc metaObject*(self: gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring): string =
  let v_ms = fcQAudioOutput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc device*(self: gen_qaudiooutput_types.QAudioOutput): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQAudioOutput_device(self.h), owned: true)

proc volume*(self: gen_qaudiooutput_types.QAudioOutput): float32 =
  fcQAudioOutput_volume(self.h)

proc isMuted*(self: gen_qaudiooutput_types.QAudioOutput): bool =
  fcQAudioOutput_isMuted(self.h)

proc setDevice*(self: gen_qaudiooutput_types.QAudioOutput, device: gen_qaudiodevice_types.QAudioDevice): void =
  fcQAudioOutput_setDevice(self.h, device.h)

proc setVolume*(self: gen_qaudiooutput_types.QAudioOutput, volume: float32): void =
  fcQAudioOutput_setVolume(self.h, volume)

proc setMuted*(self: gen_qaudiooutput_types.QAudioOutput, muted: bool): void =
  fcQAudioOutput_setMuted(self.h, muted)

proc deviceChanged*(self: gen_qaudiooutput_types.QAudioOutput): void =
  fcQAudioOutput_deviceChanged(self.h)

type QAudioOutputdeviceChangedSlot* = proc()
proc cQAudioOutput_slot_callback_deviceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputdeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAudioOutput_slot_callback_deviceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputdeviceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondeviceChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputdeviceChangedSlot) =
  var tmp = new QAudioOutputdeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_deviceChanged(self.h, cast[int](addr tmp[]), cQAudioOutput_slot_callback_deviceChanged, cQAudioOutput_slot_callback_deviceChanged_release)

proc volumeChanged*(self: gen_qaudiooutput_types.QAudioOutput, volume: float32): void =
  fcQAudioOutput_volumeChanged(self.h, volume)

type QAudioOutputvolumeChangedSlot* = proc(volume: float32)
proc cQAudioOutput_slot_callback_volumeChanged(slot: int, volume: float32) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc cQAudioOutput_slot_callback_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputvolumeChangedSlot) =
  var tmp = new QAudioOutputvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_volumeChanged(self.h, cast[int](addr tmp[]), cQAudioOutput_slot_callback_volumeChanged, cQAudioOutput_slot_callback_volumeChanged_release)

proc mutedChanged*(self: gen_qaudiooutput_types.QAudioOutput, muted: bool): void =
  fcQAudioOutput_mutedChanged(self.h, muted)

type QAudioOutputmutedChangedSlot* = proc(muted: bool)
proc cQAudioOutput_slot_callback_mutedChanged(slot: int, muted: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputmutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc cQAudioOutput_slot_callback_mutedChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputmutedChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmutedChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputmutedChangedSlot) =
  var tmp = new QAudioOutputmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_mutedChanged(self.h, cast[int](addr tmp[]), cQAudioOutput_slot_callback_mutedChanged, cQAudioOutput_slot_callback_mutedChanged_release)

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

proc cQAudioOutput_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAudioOutputmetacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_virtualbase_metacast(self.h, param1)

proc cQAudioOutput_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioOutputmetacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAudioOutput_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioOutputevent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_event(self.h, event.h)

proc cQAudioOutput_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioOutputeventFilter*(self: gen_qaudiooutput_types.QAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAudioOutput_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioOutputtimerEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioOutput_virtualbase_timerEvent(self.h, event.h)

proc cQAudioOutput_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAudioOutputchildEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioOutput_virtualbase_childEvent(self.h, event.h)

proc cQAudioOutput_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAudioOutputcustomEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioOutput_virtualbase_customEvent(self.h, event.h)

proc cQAudioOutput_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAudioOutputconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_connectNotify(self.h, signal.h)

proc cQAudioOutput_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAudioOutputdisconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAudioOutput_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](fcQAudioOutput_vdata(self))
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioOutput* {.inheritable.} = ref object of QAudioOutput
  vtbl*: cQAudioOutputVTable
method metaObject*(self: VirtualQAudioOutput): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioOutputmetaObject(self[])
proc cQAudioOutput_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAudioOutput, param1: cstring): pointer {.base.} =
  QAudioOutputmetacast(self[], param1)
proc cQAudioOutput_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAudioOutput, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioOutputmetacall(self[], param1, param2, param3)
proc cQAudioOutput_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioOutputevent(self[], event)
proc cQAudioOutput_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioOutputeventFilter(self[], watched, event)
proc cQAudioOutput_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioOutputtimerEvent(self[], event)
proc cQAudioOutput_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioOutputchildEvent(self[], event)
proc cQAudioOutput_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAudioOutput, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioOutputcustomEvent(self[], event)
proc cQAudioOutput_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioOutputconnectNotify(self[], signal)
proc cQAudioOutput_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioOutput](fcQAudioOutput_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioOutputdisconnectNotify(self[], signal)
proc cQAudioOutput_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
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
    vtbl[].vtbl.metaObject = cQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    device: gen_qaudiodevice_types.QAudioDevice,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new2(addr(vtbl[].vtbl), addr(vtbl[]), device.h), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    device: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](fcQAudioOutput_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAudioOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioOutput_vtable_callback_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new4(addr(vtbl[].vtbl), addr(vtbl[]), device.h, parent.h), owned: true)

const cQAudioOutput_mvtbl = cQAudioOutputVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioOutput()[])](self.fcQAudioOutput_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAudioOutput_method_callback_metaObject,
  metacast: cQAudioOutput_method_callback_metacast,
  metacall: cQAudioOutput_method_callback_metacall,
  event: cQAudioOutput_method_callback_event,
  eventFilter: cQAudioOutput_method_callback_eventFilter,
  timerEvent: cQAudioOutput_method_callback_timerEvent,
  childEvent: cQAudioOutput_method_callback_childEvent,
  customEvent: cQAudioOutput_method_callback_customEvent,
  connectNotify: cQAudioOutput_method_callback_connectNotify,
  disconnectNotify: cQAudioOutput_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new(addr(cQAudioOutput_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    device: gen_qaudiodevice_types.QAudioDevice,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new2(addr(cQAudioOutput_mvtbl), addr(inst[]), device.h)
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new3(addr(cQAudioOutput_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    device: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioOutput_new4(addr(cQAudioOutput_mvtbl), addr(inst[]), device.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_staticMetaObject())
