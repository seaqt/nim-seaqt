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
{.compile("gen_qaudiosource.cpp", cflags).}


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

proc fcQAudioSource_new(): ptr cQAudioSource {.importc: "QAudioSource_new".}
proc fcQAudioSource_new2(audioDeviceInfo: pointer): ptr cQAudioSource {.importc: "QAudioSource_new2".}
proc fcQAudioSource_new3(format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new3".}
proc fcQAudioSource_new4(format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new4".}
proc fcQAudioSource_new5(audioDeviceInfo: pointer, format: pointer): ptr cQAudioSource {.importc: "QAudioSource_new5".}
proc fcQAudioSource_new6(audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioSource {.importc: "QAudioSource_new6".}
proc fcQAudioSource_metaObject(self: pointer, ): pointer {.importc: "QAudioSource_metaObject".}
proc fcQAudioSource_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSource_metacast".}
proc fcQAudioSource_tr(s: cstring): struct_miqt_string {.importc: "QAudioSource_tr".}
proc fcQAudioSource_isNull(self: pointer, ): bool {.importc: "QAudioSource_isNull".}
proc fcQAudioSource_format(self: pointer, ): pointer {.importc: "QAudioSource_format".}
proc fcQAudioSource_start(self: pointer, device: pointer): void {.importc: "QAudioSource_start".}
proc fcQAudioSource_start2(self: pointer, ): pointer {.importc: "QAudioSource_start2".}
proc fcQAudioSource_stop(self: pointer, ): void {.importc: "QAudioSource_stop".}
proc fcQAudioSource_reset(self: pointer, ): void {.importc: "QAudioSource_reset".}
proc fcQAudioSource_suspend(self: pointer, ): void {.importc: "QAudioSource_suspend".}
proc fcQAudioSource_resume(self: pointer, ): void {.importc: "QAudioSource_resume".}
proc fcQAudioSource_setBufferSize(self: pointer, bytes: int64): void {.importc: "QAudioSource_setBufferSize".}
proc fcQAudioSource_bufferSize(self: pointer, ): int64 {.importc: "QAudioSource_bufferSize".}
proc fcQAudioSource_bytesAvailable(self: pointer, ): int64 {.importc: "QAudioSource_bytesAvailable".}
proc fcQAudioSource_setVolume(self: pointer, volume: float64): void {.importc: "QAudioSource_setVolume".}
proc fcQAudioSource_volume(self: pointer, ): float64 {.importc: "QAudioSource_volume".}
proc fcQAudioSource_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioSource_processedUSecs".}
proc fcQAudioSource_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioSource_elapsedUSecs".}
proc fcQAudioSource_error(self: pointer, ): cint {.importc: "QAudioSource_error".}
proc fcQAudioSource_state(self: pointer, ): cint {.importc: "QAudioSource_state".}
proc fcQAudioSource_stateChanged(self: pointer, state: cint): void {.importc: "QAudioSource_stateChanged".}
proc fcQAudioSource_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioSource_connect_stateChanged".}
proc fcQAudioSource_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSource_tr2".}
proc fcQAudioSource_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSource_tr3".}
proc fQAudioSource_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioSource_virtualbase_event".}
proc fcQAudioSource_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_event".}
proc fQAudioSource_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioSource_virtualbase_eventFilter".}
proc fcQAudioSource_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_eventFilter".}
proc fQAudioSource_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioSource_virtualbase_timerEvent".}
proc fcQAudioSource_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_timerEvent".}
proc fQAudioSource_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioSource_virtualbase_childEvent".}
proc fcQAudioSource_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_childEvent".}
proc fQAudioSource_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioSource_virtualbase_customEvent".}
proc fcQAudioSource_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_customEvent".}
proc fQAudioSource_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSource_virtualbase_connectNotify".}
proc fcQAudioSource_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_connectNotify".}
proc fQAudioSource_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSource_virtualbase_disconnectNotify".}
proc fcQAudioSource_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioSource_override_virtual_disconnectNotify".}
proc fcQAudioSource_delete(self: pointer) {.importc: "QAudioSource_delete".}


func init*(T: type gen_qaudiosource_types.QAudioSource, h: ptr cQAudioSource): gen_qaudiosource_types.QAudioSource =
  T(h: h)
proc create*(T: type gen_qaudiosource_types.QAudioSource, ): gen_qaudiosource_types.QAudioSource =
  gen_qaudiosource_types.QAudioSource.init(fcQAudioSource_new())

proc create*(T: type gen_qaudiosource_types.QAudioSource, audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice): gen_qaudiosource_types.QAudioSource =
  gen_qaudiosource_types.QAudioSource.init(fcQAudioSource_new2(audioDeviceInfo.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource, format: gen_qaudioformat_types.QAudioFormat): gen_qaudiosource_types.QAudioSource =
  gen_qaudiosource_types.QAudioSource.init(fcQAudioSource_new3(format.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject): gen_qaudiosource_types.QAudioSource =
  gen_qaudiosource_types.QAudioSource.init(fcQAudioSource_new4(format.h, parent.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource, audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat): gen_qaudiosource_types.QAudioSource =
  gen_qaudiosource_types.QAudioSource.init(fcQAudioSource_new5(audioDeviceInfo.h, format.h))

proc create*(T: type gen_qaudiosource_types.QAudioSource, audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject): gen_qaudiosource_types.QAudioSource =
  gen_qaudiosource_types.QAudioSource.init(fcQAudioSource_new6(audioDeviceInfo.h, format.h, parent.h))

proc metaObject*(self: gen_qaudiosource_types.QAudioSource, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSource_metaObject(self.h))

proc metacast*(self: gen_qaudiosource_types.QAudioSource, param1: cstring): pointer =
  fcQAudioSource_metacast(self.h, param1)

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring): string =
  let v_ms = fcQAudioSource_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qaudiosource_types.QAudioSource, ): bool =
  fcQAudioSource_isNull(self.h)

proc format*(self: gen_qaudiosource_types.QAudioSource, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioSource_format(self.h))

proc start*(self: gen_qaudiosource_types.QAudioSource, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioSource_start(self.h, device.h)

proc start*(self: gen_qaudiosource_types.QAudioSource, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioSource_start2(self.h))

proc stop*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_stop(self.h)

proc reset*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_reset(self.h)

proc suspend*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_suspend(self.h)

proc resume*(self: gen_qaudiosource_types.QAudioSource, ): void =
  fcQAudioSource_resume(self.h)

proc setBufferSize*(self: gen_qaudiosource_types.QAudioSource, bytes: int64): void =
  fcQAudioSource_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiosource_types.QAudioSource, ): int64 =
  fcQAudioSource_bufferSize(self.h)

proc bytesAvailable*(self: gen_qaudiosource_types.QAudioSource, ): int64 =
  fcQAudioSource_bytesAvailable(self.h)

proc setVolume*(self: gen_qaudiosource_types.QAudioSource, volume: float64): void =
  fcQAudioSource_setVolume(self.h, volume)

proc volume*(self: gen_qaudiosource_types.QAudioSource, ): float64 =
  fcQAudioSource_volume(self.h)

proc processedUSecs*(self: gen_qaudiosource_types.QAudioSource, ): clonglong =
  fcQAudioSource_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiosource_types.QAudioSource, ): clonglong =
  fcQAudioSource_elapsedUSecs(self.h)

proc error*(self: gen_qaudiosource_types.QAudioSource, ): cint =
  cint(fcQAudioSource_error(self.h))

proc state*(self: gen_qaudiosource_types.QAudioSource, ): cint =
  cint(fcQAudioSource_state(self.h))

proc stateChanged*(self: gen_qaudiosource_types.QAudioSource, state: cint): void =
  fcQAudioSource_stateChanged(self.h, cint(state))

type QAudioSourcestateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QAudioSource_stateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QAudioSourcestateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourcestateChangedSlot) =
  var tmp = new QAudioSourcestateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSource_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosource_types.QAudioSource, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSource_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAudioSourceevent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioSource_virtualbase_event(self.h, event.h)

type QAudioSourceeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourceeventProc) =
  # TODO check subclass
  var tmp = new QAudioSourceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_event(self: ptr cQAudioSource, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSource_event ".} =
  var nimfunc = cast[ptr QAudioSourceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioSourceeventFilter*(self: gen_qaudiosource_types.QAudioSource, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioSource_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioSourceeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourceeventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioSourceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_eventFilter(self: ptr cQAudioSource, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSource_eventFilter ".} =
  var nimfunc = cast[ptr QAudioSourceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioSourcetimerEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioSource_virtualbase_timerEvent(self.h, event.h)

type QAudioSourcetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourcetimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioSourcetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_timerEvent(self: ptr cQAudioSource, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_timerEvent ".} =
  var nimfunc = cast[ptr QAudioSourcetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSourcechildEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioSource_virtualbase_childEvent(self.h, event.h)

type QAudioSourcechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourcechildEventProc) =
  # TODO check subclass
  var tmp = new QAudioSourcechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_childEvent(self: ptr cQAudioSource, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_childEvent ".} =
  var nimfunc = cast[ptr QAudioSourcechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSourcecustomEvent*(self: gen_qaudiosource_types.QAudioSource, event: gen_qcoreevent_types.QEvent): void =
  fQAudioSource_virtualbase_customEvent(self.h, event.h)

type QAudioSourcecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourcecustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioSourcecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_customEvent(self: ptr cQAudioSource, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_customEvent ".} =
  var nimfunc = cast[ptr QAudioSourcecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSourceconnectNotify*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioSource_virtualbase_connectNotify(self.h, signal.h)

type QAudioSourceconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioSourceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_connectNotify(self: ptr cQAudioSource, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_connectNotify ".} =
  var nimfunc = cast[ptr QAudioSourceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioSourcedisconnectNotify*(self: gen_qaudiosource_types.QAudioSource, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioSource_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioSourcedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudiosource_types.QAudioSource, slot: QAudioSourcedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioSourcedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSource_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSource_disconnectNotify(self: ptr cQAudioSource, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSource_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioSourcedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qaudiosource_types.QAudioSource) =
  fcQAudioSource_delete(self.h)
