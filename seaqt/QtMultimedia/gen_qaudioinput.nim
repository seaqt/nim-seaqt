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

proc fcQAudioInput_new(): ptr cQAudioInput {.importc: "QAudioInput_new".}
proc fcQAudioInput_new2(deviceInfo: pointer): ptr cQAudioInput {.importc: "QAudioInput_new2".}
proc fcQAudioInput_new3(parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new3".}
proc fcQAudioInput_new4(deviceInfo: pointer, parent: pointer): ptr cQAudioInput {.importc: "QAudioInput_new4".}
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
proc fcQAudioInput_connect_deviceChanged(self: pointer, slot: int) {.importc: "QAudioInput_connect_deviceChanged".}
proc fcQAudioInput_volumeChanged(self: pointer, volume: float32): void {.importc: "QAudioInput_volumeChanged".}
proc fcQAudioInput_connect_volumeChanged(self: pointer, slot: int) {.importc: "QAudioInput_connect_volumeChanged".}
proc fcQAudioInput_mutedChanged(self: pointer, muted: bool): void {.importc: "QAudioInput_mutedChanged".}
proc fcQAudioInput_connect_mutedChanged(self: pointer, slot: int) {.importc: "QAudioInput_connect_mutedChanged".}
proc fcQAudioInput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioInput_tr2".}
proc fcQAudioInput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioInput_tr3".}
proc fQAudioInput_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioInput_virtualbase_metaObject".}
proc fcQAudioInput_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_metaObject".}
proc fQAudioInput_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioInput_virtualbase_metacast".}
proc fcQAudioInput_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_metacast".}
proc fQAudioInput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioInput_virtualbase_metacall".}
proc fcQAudioInput_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_metacall".}
proc fQAudioInput_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioInput_virtualbase_event".}
proc fcQAudioInput_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_event".}
proc fQAudioInput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioInput_virtualbase_eventFilter".}
proc fcQAudioInput_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_eventFilter".}
proc fQAudioInput_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioInput_virtualbase_timerEvent".}
proc fcQAudioInput_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_timerEvent".}
proc fQAudioInput_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioInput_virtualbase_childEvent".}
proc fcQAudioInput_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_childEvent".}
proc fQAudioInput_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioInput_virtualbase_customEvent".}
proc fcQAudioInput_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_customEvent".}
proc fQAudioInput_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioInput_virtualbase_connectNotify".}
proc fcQAudioInput_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_connectNotify".}
proc fQAudioInput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioInput_virtualbase_disconnectNotify".}
proc fcQAudioInput_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioInput_override_virtual_disconnectNotify".}
proc fcQAudioInput_staticMetaObject(): pointer {.importc: "QAudioInput_staticMetaObject".}
proc fcQAudioInput_delete(self: pointer) {.importc: "QAudioInput_delete".}


func init*(T: type gen_qaudioinput_types.QAudioInput, h: ptr cQAudioInput): gen_qaudioinput_types.QAudioInput =
  T(h: h)
proc create*(T: type gen_qaudioinput_types.QAudioInput, ): gen_qaudioinput_types.QAudioInput =
  gen_qaudioinput_types.QAudioInput.init(fcQAudioInput_new())

proc create*(T: type gen_qaudioinput_types.QAudioInput, deviceInfo: gen_qaudiodevice_types.QAudioDevice): gen_qaudioinput_types.QAudioInput =
  gen_qaudioinput_types.QAudioInput.init(fcQAudioInput_new2(deviceInfo.h))

proc create*(T: type gen_qaudioinput_types.QAudioInput, parent: gen_qobject_types.QObject): gen_qaudioinput_types.QAudioInput =
  gen_qaudioinput_types.QAudioInput.init(fcQAudioInput_new3(parent.h))

proc create*(T: type gen_qaudioinput_types.QAudioInput, deviceInfo: gen_qaudiodevice_types.QAudioDevice, parent: gen_qobject_types.QObject): gen_qaudioinput_types.QAudioInput =
  gen_qaudioinput_types.QAudioInput.init(fcQAudioInput_new4(deviceInfo.h, parent.h))

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
proc miqt_exec_callback_QAudioInput_deviceChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioInputdeviceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc ondeviceChanged*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputdeviceChangedSlot) =
  var tmp = new QAudioInputdeviceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_deviceChanged(self.h, cast[int](addr tmp[]))

proc volumeChanged*(self: gen_qaudioinput_types.QAudioInput, volume: float32): void =
  fcQAudioInput_volumeChanged(self.h, volume)

type QAudioInputvolumeChangedSlot* = proc(volume: float32)
proc miqt_exec_callback_QAudioInput_volumeChanged(slot: int, volume: float32) {.exportc.} =
  let nimfunc = cast[ptr QAudioInputvolumeChangedSlot](cast[pointer](slot))
  let slotval1 = volume

  nimfunc[](slotval1)

proc onvolumeChanged*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputvolumeChangedSlot) =
  var tmp = new QAudioInputvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_volumeChanged(self.h, cast[int](addr tmp[]))

proc mutedChanged*(self: gen_qaudioinput_types.QAudioInput, muted: bool): void =
  fcQAudioInput_mutedChanged(self.h, muted)

type QAudioInputmutedChangedSlot* = proc(muted: bool)
proc miqt_exec_callback_QAudioInput_mutedChanged(slot: int, muted: bool) {.exportc.} =
  let nimfunc = cast[ptr QAudioInputmutedChangedSlot](cast[pointer](slot))
  let slotval1 = muted

  nimfunc[](slotval1)

proc onmutedChanged*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputmutedChangedSlot) =
  var tmp = new QAudioInputmutedChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_connect_mutedChanged(self.h, cast[int](addr tmp[]))

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

proc QAudioInputmetaObject*(self: gen_qaudioinput_types.QAudioInput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAudioInput_virtualbase_metaObject(self.h))

type QAudioInputmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioInputmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_metaObject(self: ptr cQAudioInput, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioInput_metaObject ".} =
  var nimfunc = cast[ptr QAudioInputmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAudioInputmetacast*(self: gen_qaudioinput_types.QAudioInput, param1: cstring): pointer =
  fQAudioInput_virtualbase_metacast(self.h, param1)

type QAudioInputmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputmetacastProc) =
  # TODO check subclass
  var tmp = new QAudioInputmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_metacast(self: ptr cQAudioInput, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioInput_metacast ".} =
  var nimfunc = cast[ptr QAudioInputmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioInputmetacall*(self: gen_qaudioinput_types.QAudioInput, param1: cint, param2: cint, param3: pointer): cint =
  fQAudioInput_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioInputmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputmetacallProc) =
  # TODO check subclass
  var tmp = new QAudioInputmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_metacall(self: ptr cQAudioInput, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioInput_metacall ".} =
  var nimfunc = cast[ptr QAudioInputmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAudioInputevent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioInput_virtualbase_event(self.h, event.h)

type QAudioInputeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputeventProc) =
  # TODO check subclass
  var tmp = new QAudioInputeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_event(self: ptr cQAudioInput, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioInput_event ".} =
  var nimfunc = cast[ptr QAudioInputeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioInputeventFilter*(self: gen_qaudioinput_types.QAudioInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioInput_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioInputeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputeventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioInputeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_eventFilter(self: ptr cQAudioInput, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioInput_eventFilter ".} =
  var nimfunc = cast[ptr QAudioInputeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioInputtimerEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioInput_virtualbase_timerEvent(self.h, event.h)

type QAudioInputtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputtimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioInputtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_timerEvent(self: ptr cQAudioInput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_timerEvent ".} =
  var nimfunc = cast[ptr QAudioInputtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioInputchildEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioInput_virtualbase_childEvent(self.h, event.h)

type QAudioInputchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputchildEventProc) =
  # TODO check subclass
  var tmp = new QAudioInputchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_childEvent(self: ptr cQAudioInput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_childEvent ".} =
  var nimfunc = cast[ptr QAudioInputchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioInputcustomEvent*(self: gen_qaudioinput_types.QAudioInput, event: gen_qcoreevent_types.QEvent): void =
  fQAudioInput_virtualbase_customEvent(self.h, event.h)

type QAudioInputcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputcustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioInputcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_customEvent(self: ptr cQAudioInput, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_customEvent ".} =
  var nimfunc = cast[ptr QAudioInputcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioInputconnectNotify*(self: gen_qaudioinput_types.QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioInput_virtualbase_connectNotify(self.h, signal.h)

type QAudioInputconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioInputconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_connectNotify(self: ptr cQAudioInput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_connectNotify ".} =
  var nimfunc = cast[ptr QAudioInputconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioInputdisconnectNotify*(self: gen_qaudioinput_types.QAudioInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioInput_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioInputdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudioinput_types.QAudioInput, slot: QAudioInputdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioInputdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioInput_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioInput_disconnectNotify(self: ptr cQAudioInput, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioInput_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioInputdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qaudioinput_types.QAudioInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioInput_staticMetaObject())
proc delete*(self: gen_qaudioinput_types.QAudioInput) =
  fcQAudioInput_delete(self.h)
