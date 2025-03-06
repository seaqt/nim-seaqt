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

proc fcQAudioOutput_new(): ptr cQAudioOutput {.importc: "QAudioOutput_new".}
proc fcQAudioOutput_new2(device: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(device: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_device(self: pointer, ): pointer {.importc: "QAudioOutput_device".}
proc fcQAudioOutput_volume(self: pointer, ): float32 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_isMuted(self: pointer, ): bool {.importc: "QAudioOutput_isMuted".}
proc fcQAudioOutput_setDevice(self: pointer, device: pointer): void {.importc: "QAudioOutput_setDevice".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float32): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_setMuted(self: pointer, muted: bool): void {.importc: "QAudioOutput_setMuted".}
proc fcQAudioOutput_deviceChanged(self: pointer, ): void {.importc: "QAudioOutput_deviceChanged".}
proc fcQAudioOutput_connect_deviceChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_deviceChanged".}
proc fcQAudioOutput_volumeChanged(self: pointer, volume: float32): void {.importc: "QAudioOutput_volumeChanged".}
proc fcQAudioOutput_connect_volumeChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_volumeChanged".}
proc fcQAudioOutput_mutedChanged(self: pointer, muted: bool): void {.importc: "QAudioOutput_mutedChanged".}
proc fcQAudioOutput_connect_mutedChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_mutedChanged".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
proc fQAudioOutput_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioOutput_virtualbase_event".}
proc fcQAudioOutput_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_event".}
proc fQAudioOutput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioOutput_virtualbase_eventFilter".}
proc fcQAudioOutput_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_eventFilter".}
proc fQAudioOutput_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioOutput_virtualbase_timerEvent".}
proc fcQAudioOutput_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_timerEvent".}
proc fQAudioOutput_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioOutput_virtualbase_childEvent".}
proc fcQAudioOutput_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_childEvent".}
proc fQAudioOutput_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioOutput_virtualbase_customEvent".}
proc fcQAudioOutput_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_customEvent".}
proc fQAudioOutput_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioOutput_virtualbase_connectNotify".}
proc fcQAudioOutput_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_connectNotify".}
proc fQAudioOutput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioOutput_virtualbase_disconnectNotify".}
proc fcQAudioOutput_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_disconnectNotify".}
proc fcQAudioOutput_delete(self: pointer) {.importc: "QAudioOutput_delete".}


func init*(T: type gen_qaudiooutput_types.QAudioOutput, h: ptr cQAudioOutput): gen_qaudiooutput_types.QAudioOutput =
  T(h: h)
proc create*(T: type gen_qaudiooutput_types.QAudioOutput, ): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new())

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, device: gen_qaudiodevice_types.QAudioDevice): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new2(device.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, parent: gen_qobject_types.QObject): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new3(parent.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, device: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new4(device.h, parent.h))

proc metaObject*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_metaObject(self.h))

proc metacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_metacast(self.h, param1)

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
proc miqt_exec_callback_QAudioOutput_deviceChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioOutputdeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondeviceChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputdeviceChangedSlot) =
  var tmp = new QAudioOutputdeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_deviceChanged(self.h, cast[int](addr tmp[]))

proc volumeChanged*(self: gen_qaudiooutput_types.QAudioOutput, volume: float32): void =
  fcQAudioOutput_volumeChanged(self.h, volume)

type QAudioOutputvolumeChangedSlot* = proc(volume: float32)
proc miqt_exec_callback_QAudioOutput_volumeChanged(slot: int, volume: float32) {.exportc.} =
  let nimfunc = cast[ptr QAudioOutputvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc onvolumeChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputvolumeChangedSlot) =
  var tmp = new QAudioOutputvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_volumeChanged(self.h, cast[int](addr tmp[]))

proc mutedChanged*(self: gen_qaudiooutput_types.QAudioOutput, muted: bool): void =
  fcQAudioOutput_mutedChanged(self.h, muted)

type QAudioOutputmutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_QAudioOutput_mutedChanged(slot: int, muted: bool) {.exportc.} =
  let nimfunc = cast[ptr QAudioOutputmutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc onmutedChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputmutedChangedSlot) =
  var tmp = new QAudioOutputmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_mutedChanged(self.h, cast[int](addr tmp[]))

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

proc QAudioOutputevent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioOutput_virtualbase_event(self.h, event.h)

type QAudioOutputeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputeventProc) =
  # TODO check subclass
  var tmp = new QAudioOutputeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_event(self: ptr cQAudioOutput, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioOutput_event ".} =
  var nimfunc = cast[ptr QAudioOutputeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioOutputeventFilter*(self: gen_qaudiooutput_types.QAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioOutput_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioOutputeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputeventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioOutputeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_eventFilter(self: ptr cQAudioOutput, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioOutput_eventFilter ".} =
  var nimfunc = cast[ptr QAudioOutputeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioOutputtimerEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioOutput_virtualbase_timerEvent(self.h, event.h)

type QAudioOutputtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputtimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioOutputtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_timerEvent(self: ptr cQAudioOutput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_timerEvent ".} =
  var nimfunc = cast[ptr QAudioOutputtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioOutputchildEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioOutput_virtualbase_childEvent(self.h, event.h)

type QAudioOutputchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputchildEventProc) =
  # TODO check subclass
  var tmp = new QAudioOutputchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_childEvent(self: ptr cQAudioOutput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_childEvent ".} =
  var nimfunc = cast[ptr QAudioOutputchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioOutputcustomEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): void =
  fQAudioOutput_virtualbase_customEvent(self.h, event.h)

type QAudioOutputcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputcustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioOutputcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_customEvent(self: ptr cQAudioOutput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_customEvent ".} =
  var nimfunc = cast[ptr QAudioOutputcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioOutputconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioOutput_virtualbase_connectNotify(self.h, signal.h)

type QAudioOutputconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioOutputconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_connectNotify(self: ptr cQAudioOutput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_connectNotify ".} =
  var nimfunc = cast[ptr QAudioOutputconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioOutputdisconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioOutput_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioOutputdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioOutputdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_disconnectNotify(self: ptr cQAudioOutput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioOutput_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioOutputdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qaudiooutput_types.QAudioOutput) =
  fcQAudioOutput_delete(self.h)
