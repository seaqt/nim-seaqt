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
{.compile("gen_qaudiosink.cpp", cflags).}


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

proc fcQAudioSink_new(): ptr cQAudioSink {.importc: "QAudioSink_new".}
proc fcQAudioSink_new2(audioDeviceInfo: pointer): ptr cQAudioSink {.importc: "QAudioSink_new2".}
proc fcQAudioSink_new3(format: pointer): ptr cQAudioSink {.importc: "QAudioSink_new3".}
proc fcQAudioSink_new4(format: pointer, parent: pointer): ptr cQAudioSink {.importc: "QAudioSink_new4".}
proc fcQAudioSink_new5(audioDeviceInfo: pointer, format: pointer): ptr cQAudioSink {.importc: "QAudioSink_new5".}
proc fcQAudioSink_new6(audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioSink {.importc: "QAudioSink_new6".}
proc fcQAudioSink_metaObject(self: pointer, ): pointer {.importc: "QAudioSink_metaObject".}
proc fcQAudioSink_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSink_metacast".}
proc fcQAudioSink_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSink_metacall".}
proc fcQAudioSink_tr(s: cstring): struct_miqt_string {.importc: "QAudioSink_tr".}
proc fcQAudioSink_isNull(self: pointer, ): bool {.importc: "QAudioSink_isNull".}
proc fcQAudioSink_format(self: pointer, ): pointer {.importc: "QAudioSink_format".}
proc fcQAudioSink_start(self: pointer, device: pointer): void {.importc: "QAudioSink_start".}
proc fcQAudioSink_start2(self: pointer, ): pointer {.importc: "QAudioSink_start2".}
proc fcQAudioSink_stop(self: pointer, ): void {.importc: "QAudioSink_stop".}
proc fcQAudioSink_reset(self: pointer, ): void {.importc: "QAudioSink_reset".}
proc fcQAudioSink_suspend(self: pointer, ): void {.importc: "QAudioSink_suspend".}
proc fcQAudioSink_resume(self: pointer, ): void {.importc: "QAudioSink_resume".}
proc fcQAudioSink_setBufferSize(self: pointer, bytes: int64): void {.importc: "QAudioSink_setBufferSize".}
proc fcQAudioSink_bufferSize(self: pointer, ): int64 {.importc: "QAudioSink_bufferSize".}
proc fcQAudioSink_bytesFree(self: pointer, ): int64 {.importc: "QAudioSink_bytesFree".}
proc fcQAudioSink_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioSink_processedUSecs".}
proc fcQAudioSink_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioSink_elapsedUSecs".}
proc fcQAudioSink_error(self: pointer, ): cint {.importc: "QAudioSink_error".}
proc fcQAudioSink_state(self: pointer, ): cint {.importc: "QAudioSink_state".}
proc fcQAudioSink_setVolume(self: pointer, volume: float64): void {.importc: "QAudioSink_setVolume".}
proc fcQAudioSink_volume(self: pointer, ): float64 {.importc: "QAudioSink_volume".}
proc fcQAudioSink_stateChanged(self: pointer, state: cint): void {.importc: "QAudioSink_stateChanged".}
proc fcQAudioSink_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioSink_connect_stateChanged".}
proc fcQAudioSink_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSink_tr2".}
proc fcQAudioSink_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSink_tr3".}
proc fQAudioSink_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioSink_virtualbase_metaObject".}
proc fcQAudioSink_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_metaObject".}
proc fQAudioSink_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioSink_virtualbase_metacast".}
proc fcQAudioSink_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_metacast".}
proc fQAudioSink_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioSink_virtualbase_metacall".}
proc fcQAudioSink_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_metacall".}
proc fQAudioSink_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioSink_virtualbase_event".}
proc fcQAudioSink_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_event".}
proc fQAudioSink_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioSink_virtualbase_eventFilter".}
proc fcQAudioSink_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_eventFilter".}
proc fQAudioSink_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioSink_virtualbase_timerEvent".}
proc fcQAudioSink_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_timerEvent".}
proc fQAudioSink_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioSink_virtualbase_childEvent".}
proc fcQAudioSink_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_childEvent".}
proc fQAudioSink_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioSink_virtualbase_customEvent".}
proc fcQAudioSink_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_customEvent".}
proc fQAudioSink_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSink_virtualbase_connectNotify".}
proc fcQAudioSink_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_connectNotify".}
proc fQAudioSink_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSink_virtualbase_disconnectNotify".}
proc fcQAudioSink_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioSink_override_virtual_disconnectNotify".}
proc fcQAudioSink_staticMetaObject(): pointer {.importc: "QAudioSink_staticMetaObject".}
proc fcQAudioSink_delete(self: pointer) {.importc: "QAudioSink_delete".}


func init*(T: type gen_qaudiosink_types.QAudioSink, h: ptr cQAudioSink): gen_qaudiosink_types.QAudioSink =
  T(h: h)
proc create*(T: type gen_qaudiosink_types.QAudioSink, ): gen_qaudiosink_types.QAudioSink =
  gen_qaudiosink_types.QAudioSink.init(fcQAudioSink_new())

proc create*(T: type gen_qaudiosink_types.QAudioSink, audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice): gen_qaudiosink_types.QAudioSink =
  gen_qaudiosink_types.QAudioSink.init(fcQAudioSink_new2(audioDeviceInfo.h))

proc create*(T: type gen_qaudiosink_types.QAudioSink, format: gen_qaudioformat_types.QAudioFormat): gen_qaudiosink_types.QAudioSink =
  gen_qaudiosink_types.QAudioSink.init(fcQAudioSink_new3(format.h))

proc create*(T: type gen_qaudiosink_types.QAudioSink, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject): gen_qaudiosink_types.QAudioSink =
  gen_qaudiosink_types.QAudioSink.init(fcQAudioSink_new4(format.h, parent.h))

proc create*(T: type gen_qaudiosink_types.QAudioSink, audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat): gen_qaudiosink_types.QAudioSink =
  gen_qaudiosink_types.QAudioSink.init(fcQAudioSink_new5(audioDeviceInfo.h, format.h))

proc create*(T: type gen_qaudiosink_types.QAudioSink, audioDeviceInfo: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject): gen_qaudiosink_types.QAudioSink =
  gen_qaudiosink_types.QAudioSink.init(fcQAudioSink_new6(audioDeviceInfo.h, format.h, parent.h))

proc metaObject*(self: gen_qaudiosink_types.QAudioSink, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSink_metaObject(self.h))

proc metacast*(self: gen_qaudiosink_types.QAudioSink, param1: cstring): pointer =
  fcQAudioSink_metacast(self.h, param1)

proc metacall*(self: gen_qaudiosink_types.QAudioSink, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioSink_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiosink_types.QAudioSink, s: cstring): string =
  let v_ms = fcQAudioSink_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qaudiosink_types.QAudioSink, ): bool =
  fcQAudioSink_isNull(self.h)

proc format*(self: gen_qaudiosink_types.QAudioSink, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioSink_format(self.h))

proc start*(self: gen_qaudiosink_types.QAudioSink, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioSink_start(self.h, device.h)

proc start*(self: gen_qaudiosink_types.QAudioSink, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioSink_start2(self.h))

proc stop*(self: gen_qaudiosink_types.QAudioSink, ): void =
  fcQAudioSink_stop(self.h)

proc reset*(self: gen_qaudiosink_types.QAudioSink, ): void =
  fcQAudioSink_reset(self.h)

proc suspend*(self: gen_qaudiosink_types.QAudioSink, ): void =
  fcQAudioSink_suspend(self.h)

proc resume*(self: gen_qaudiosink_types.QAudioSink, ): void =
  fcQAudioSink_resume(self.h)

proc setBufferSize*(self: gen_qaudiosink_types.QAudioSink, bytes: int64): void =
  fcQAudioSink_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiosink_types.QAudioSink, ): int64 =
  fcQAudioSink_bufferSize(self.h)

proc bytesFree*(self: gen_qaudiosink_types.QAudioSink, ): int64 =
  fcQAudioSink_bytesFree(self.h)

proc processedUSecs*(self: gen_qaudiosink_types.QAudioSink, ): clonglong =
  fcQAudioSink_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiosink_types.QAudioSink, ): clonglong =
  fcQAudioSink_elapsedUSecs(self.h)

proc error*(self: gen_qaudiosink_types.QAudioSink, ): cint =
  cint(fcQAudioSink_error(self.h))

proc state*(self: gen_qaudiosink_types.QAudioSink, ): cint =
  cint(fcQAudioSink_state(self.h))

proc setVolume*(self: gen_qaudiosink_types.QAudioSink, volume: float64): void =
  fcQAudioSink_setVolume(self.h, volume)

proc volume*(self: gen_qaudiosink_types.QAudioSink, ): float64 =
  fcQAudioSink_volume(self.h)

proc stateChanged*(self: gen_qaudiosink_types.QAudioSink, state: cint): void =
  fcQAudioSink_stateChanged(self.h, cint(state))

type QAudioSinkstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QAudioSink_stateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QAudioSinkstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkstateChangedSlot) =
  var tmp = new QAudioSinkstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudiosink_types.QAudioSink, s: cstring, c: cstring): string =
  let v_ms = fcQAudioSink_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiosink_types.QAudioSink, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioSink_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAudioSinkmetaObject*(self: gen_qaudiosink_types.QAudioSink, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAudioSink_virtualbase_metaObject(self.h))

type QAudioSinkmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioSinkmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_metaObject(self: ptr cQAudioSink, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioSink_metaObject ".} =
  var nimfunc = cast[ptr QAudioSinkmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAudioSinkmetacast*(self: gen_qaudiosink_types.QAudioSink, param1: cstring): pointer =
  fQAudioSink_virtualbase_metacast(self.h, param1)

type QAudioSinkmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkmetacastProc) =
  # TODO check subclass
  var tmp = new QAudioSinkmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_metacast(self: ptr cQAudioSink, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioSink_metacast ".} =
  var nimfunc = cast[ptr QAudioSinkmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioSinkmetacall*(self: gen_qaudiosink_types.QAudioSink, param1: cint, param2: cint, param3: pointer): cint =
  fQAudioSink_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioSinkmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkmetacallProc) =
  # TODO check subclass
  var tmp = new QAudioSinkmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_metacall(self: ptr cQAudioSink, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioSink_metacall ".} =
  var nimfunc = cast[ptr QAudioSinkmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAudioSinkevent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioSink_virtualbase_event(self.h, event.h)

type QAudioSinkeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkeventProc) =
  # TODO check subclass
  var tmp = new QAudioSinkeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_event(self: ptr cQAudioSink, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSink_event ".} =
  var nimfunc = cast[ptr QAudioSinkeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioSinkeventFilter*(self: gen_qaudiosink_types.QAudioSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioSink_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioSinkeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkeventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioSinkeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_eventFilter(self: ptr cQAudioSink, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSink_eventFilter ".} =
  var nimfunc = cast[ptr QAudioSinkeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioSinktimerEvent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioSink_virtualbase_timerEvent(self.h, event.h)

type QAudioSinktimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinktimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioSinktimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_timerEvent(self: ptr cQAudioSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_timerEvent ".} =
  var nimfunc = cast[ptr QAudioSinktimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSinkchildEvent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioSink_virtualbase_childEvent(self.h, event.h)

type QAudioSinkchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkchildEventProc) =
  # TODO check subclass
  var tmp = new QAudioSinkchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_childEvent(self: ptr cQAudioSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_childEvent ".} =
  var nimfunc = cast[ptr QAudioSinkchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSinkcustomEvent*(self: gen_qaudiosink_types.QAudioSink, event: gen_qcoreevent_types.QEvent): void =
  fQAudioSink_virtualbase_customEvent(self.h, event.h)

type QAudioSinkcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkcustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioSinkcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_customEvent(self: ptr cQAudioSink, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_customEvent ".} =
  var nimfunc = cast[ptr QAudioSinkcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioSinkconnectNotify*(self: gen_qaudiosink_types.QAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioSink_virtualbase_connectNotify(self.h, signal.h)

type QAudioSinkconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioSinkconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_connectNotify(self: ptr cQAudioSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_connectNotify ".} =
  var nimfunc = cast[ptr QAudioSinkconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioSinkdisconnectNotify*(self: gen_qaudiosink_types.QAudioSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioSink_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioSinkdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudiosink_types.QAudioSink, slot: QAudioSinkdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioSinkdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSink_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSink_disconnectNotify(self: ptr cQAudioSink, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSink_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioSinkdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qaudiosink_types.QAudioSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioSink_staticMetaObject())
proc delete*(self: gen_qaudiosink_types.QAudioSink) =
  fcQAudioSink_delete(self.h)
