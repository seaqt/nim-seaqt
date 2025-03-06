import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qaudiooutput.cpp", cflags).}


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

proc fcQAudioOutput_new(): ptr cQAudioOutput {.importc: "QAudioOutput_new".}
proc fcQAudioOutput_new2(audioDeviceInfo: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_new5(audioDeviceInfo: pointer, format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new5".}
proc fcQAudioOutput_new6(audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new6".}
proc fcQAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_metacall".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf8".}
proc fcQAudioOutput_format(self: pointer, ): pointer {.importc: "QAudioOutput_format".}
proc fcQAudioOutput_start(self: pointer, device: pointer): void {.importc: "QAudioOutput_start".}
proc fcQAudioOutput_start2(self: pointer, ): pointer {.importc: "QAudioOutput_start2".}
proc fcQAudioOutput_stop(self: pointer, ): void {.importc: "QAudioOutput_stop".}
proc fcQAudioOutput_reset(self: pointer, ): void {.importc: "QAudioOutput_reset".}
proc fcQAudioOutput_suspend(self: pointer, ): void {.importc: "QAudioOutput_suspend".}
proc fcQAudioOutput_resume(self: pointer, ): void {.importc: "QAudioOutput_resume".}
proc fcQAudioOutput_setBufferSize(self: pointer, bytes: cint): void {.importc: "QAudioOutput_setBufferSize".}
proc fcQAudioOutput_bufferSize(self: pointer, ): cint {.importc: "QAudioOutput_bufferSize".}
proc fcQAudioOutput_bytesFree(self: pointer, ): cint {.importc: "QAudioOutput_bytesFree".}
proc fcQAudioOutput_periodSize(self: pointer, ): cint {.importc: "QAudioOutput_periodSize".}
proc fcQAudioOutput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAudioOutput_setNotifyInterval".}
proc fcQAudioOutput_notifyInterval(self: pointer, ): cint {.importc: "QAudioOutput_notifyInterval".}
proc fcQAudioOutput_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioOutput_processedUSecs".}
proc fcQAudioOutput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioOutput_elapsedUSecs".}
proc fcQAudioOutput_error(self: pointer, ): cint {.importc: "QAudioOutput_error".}
proc fcQAudioOutput_state(self: pointer, ): cint {.importc: "QAudioOutput_state".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float64): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_volume(self: pointer, ): float64 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_category(self: pointer, ): struct_miqt_string {.importc: "QAudioOutput_category".}
proc fcQAudioOutput_setCategory(self: pointer, category: struct_miqt_string): void {.importc: "QAudioOutput_setCategory".}
proc fcQAudioOutput_stateChanged(self: pointer, state: cint): void {.importc: "QAudioOutput_stateChanged".}
proc fcQAudioOutput_connect_stateChanged(self: pointer, slot: int) {.importc: "QAudioOutput_connect_stateChanged".}
proc fcQAudioOutput_notify(self: pointer, ): void {.importc: "QAudioOutput_notify".}
proc fcQAudioOutput_connect_notify(self: pointer, slot: int) {.importc: "QAudioOutput_connect_notify".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
proc fcQAudioOutput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf82".}
proc fcQAudioOutput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_trUtf83".}
proc fQAudioOutput_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioOutput_virtualbase_metaObject".}
proc fcQAudioOutput_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_metaObject".}
proc fQAudioOutput_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioOutput_virtualbase_metacast".}
proc fcQAudioOutput_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_metacast".}
proc fQAudioOutput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioOutput_virtualbase_metacall".}
proc fcQAudioOutput_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioOutput_override_virtual_metacall".}
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
proc fcQAudioOutput_staticMetaObject(): pointer {.importc: "QAudioOutput_staticMetaObject".}
proc fcQAudioOutput_delete(self: pointer) {.importc: "QAudioOutput_delete".}


func init*(T: type gen_qaudiooutput_types.QAudioOutput, h: ptr cQAudioOutput): gen_qaudiooutput_types.QAudioOutput =
  T(h: h)
proc create*(T: type gen_qaudiooutput_types.QAudioOutput, ): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new())

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new2(audioDeviceInfo.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, format: gen_qaudioformat_types.QAudioFormat): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new3(format.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new4(format.h, parent.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new5(audioDeviceInfo.h, format.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput, audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject): gen_qaudiooutput_types.QAudioOutput =
  gen_qaudiooutput_types.QAudioOutput.init(fcQAudioOutput_new6(audioDeviceInfo.h, format.h, parent.h))

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

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring): string =
  let v_ms = fcQAudioOutput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioOutput_format(self.h))

proc start*(self: gen_qaudiooutput_types.QAudioOutput, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioOutput_start(self.h, device.h)

proc start*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioOutput_start2(self.h))

proc stop*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_stop(self.h)

proc reset*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_reset(self.h)

proc suspend*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_suspend(self.h)

proc resume*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_resume(self.h)

proc setBufferSize*(self: gen_qaudiooutput_types.QAudioOutput, bytes: cint): void =
  fcQAudioOutput_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_bufferSize(self.h)

proc bytesFree*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_bytesFree(self.h)

proc periodSize*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_periodSize(self.h)

proc setNotifyInterval*(self: gen_qaudiooutput_types.QAudioOutput, milliSeconds: cint): void =
  fcQAudioOutput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_notifyInterval(self.h)

proc processedUSecs*(self: gen_qaudiooutput_types.QAudioOutput, ): clonglong =
  fcQAudioOutput_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiooutput_types.QAudioOutput, ): clonglong =
  fcQAudioOutput_elapsedUSecs(self.h)

proc error*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  cint(fcQAudioOutput_error(self.h))

proc state*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  cint(fcQAudioOutput_state(self.h))

proc setVolume*(self: gen_qaudiooutput_types.QAudioOutput, volume: float64): void =
  fcQAudioOutput_setVolume(self.h, volume)

proc volume*(self: gen_qaudiooutput_types.QAudioOutput, ): float64 =
  fcQAudioOutput_volume(self.h)

proc category*(self: gen_qaudiooutput_types.QAudioOutput, ): string =
  let v_ms = fcQAudioOutput_category(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCategory*(self: gen_qaudiooutput_types.QAudioOutput, category: string): void =
  fcQAudioOutput_setCategory(self.h, struct_miqt_string(data: category, len: csize_t(len(category))))

proc stateChanged*(self: gen_qaudiooutput_types.QAudioOutput, state: cint): void =
  fcQAudioOutput_stateChanged(self.h, cint(state))

type QAudioOutputstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_QAudioOutput_stateChanged(slot: int, state: cint) {.exportc.} =
  let nimfunc = cast[ptr QAudioOutputstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputstateChangedSlot) =
  var tmp = new QAudioOutputstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc notify*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_notify(self.h)

type QAudioOutputnotifySlot* = proc()
proc miqt_exec_callback_QAudioOutput_notify(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioOutputnotifySlot](cast[pointer](slot))
  nimfunc[]()

proc onnotify*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputnotifySlot) =
  var tmp = new QAudioOutputnotifySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_notify(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAudioOutputmetaObject*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAudioOutput_virtualbase_metaObject(self.h))

type QAudioOutputmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioOutputmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_metaObject(self: ptr cQAudioOutput, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioOutput_metaObject ".} =
  var nimfunc = cast[ptr QAudioOutputmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAudioOutputmetacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fQAudioOutput_virtualbase_metacast(self.h, param1)

type QAudioOutputmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputmetacastProc) =
  # TODO check subclass
  var tmp = new QAudioOutputmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_metacast(self: ptr cQAudioOutput, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioOutput_metacast ".} =
  var nimfunc = cast[ptr QAudioOutputmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioOutputmetacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fQAudioOutput_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioOutputmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputmetacallProc) =
  # TODO check subclass
  var tmp = new QAudioOutputmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioOutput_metacall(self: ptr cQAudioOutput, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioOutput_metacall ".} =
  var nimfunc = cast[ptr QAudioOutputmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
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
proc staticMetaObject*(_: type gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_staticMetaObject())
proc delete*(self: gen_qaudiooutput_types.QAudioOutput) =
  fcQAudioOutput_delete(self.h)
