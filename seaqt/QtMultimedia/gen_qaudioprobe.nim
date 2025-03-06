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
{.compile("gen_qaudioprobe.cpp", cflags).}


import ./gen_qaudioprobe_types
export gen_qaudioprobe_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiobuffer_types,
  ./gen_qmediaobject_types,
  ./gen_qmediarecorder_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiobuffer_types,
  gen_qmediaobject_types,
  gen_qmediarecorder_types

type cQAudioProbe*{.exportc: "QAudioProbe", incompleteStruct.} = object

proc fcQAudioProbe_new(): ptr cQAudioProbe {.importc: "QAudioProbe_new".}
proc fcQAudioProbe_new2(parent: pointer): ptr cQAudioProbe {.importc: "QAudioProbe_new2".}
proc fcQAudioProbe_metaObject(self: pointer, ): pointer {.importc: "QAudioProbe_metaObject".}
proc fcQAudioProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioProbe_metacast".}
proc fcQAudioProbe_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioProbe_metacall".}
proc fcQAudioProbe_tr(s: cstring): struct_miqt_string {.importc: "QAudioProbe_tr".}
proc fcQAudioProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf8".}
proc fcQAudioProbe_setSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSource".}
proc fcQAudioProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSourceWithSource".}
proc fcQAudioProbe_isActive(self: pointer, ): bool {.importc: "QAudioProbe_isActive".}
proc fcQAudioProbe_audioBufferProbed(self: pointer, buffer: pointer): void {.importc: "QAudioProbe_audioBufferProbed".}
proc fcQAudioProbe_connect_audioBufferProbed(self: pointer, slot: int) {.importc: "QAudioProbe_connect_audioBufferProbed".}
proc fcQAudioProbe_flush(self: pointer, ): void {.importc: "QAudioProbe_flush".}
proc fcQAudioProbe_connect_flush(self: pointer, slot: int) {.importc: "QAudioProbe_connect_flush".}
proc fcQAudioProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_tr2".}
proc fcQAudioProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_tr3".}
proc fcQAudioProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf82".}
proc fcQAudioProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_trUtf83".}
proc fQAudioProbe_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioProbe_virtualbase_metaObject".}
proc fcQAudioProbe_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_metaObject".}
proc fQAudioProbe_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioProbe_virtualbase_metacast".}
proc fcQAudioProbe_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_metacast".}
proc fQAudioProbe_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioProbe_virtualbase_metacall".}
proc fcQAudioProbe_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_metacall".}
proc fQAudioProbe_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioProbe_virtualbase_event".}
proc fcQAudioProbe_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_event".}
proc fQAudioProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioProbe_virtualbase_eventFilter".}
proc fcQAudioProbe_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_eventFilter".}
proc fQAudioProbe_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioProbe_virtualbase_timerEvent".}
proc fcQAudioProbe_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_timerEvent".}
proc fQAudioProbe_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioProbe_virtualbase_childEvent".}
proc fcQAudioProbe_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_childEvent".}
proc fQAudioProbe_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioProbe_virtualbase_customEvent".}
proc fcQAudioProbe_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_customEvent".}
proc fQAudioProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioProbe_virtualbase_connectNotify".}
proc fcQAudioProbe_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_connectNotify".}
proc fQAudioProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioProbe_virtualbase_disconnectNotify".}
proc fcQAudioProbe_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioProbe_override_virtual_disconnectNotify".}
proc fcQAudioProbe_staticMetaObject(): pointer {.importc: "QAudioProbe_staticMetaObject".}
proc fcQAudioProbe_delete(self: pointer) {.importc: "QAudioProbe_delete".}


func init*(T: type gen_qaudioprobe_types.QAudioProbe, h: ptr cQAudioProbe): gen_qaudioprobe_types.QAudioProbe =
  T(h: h)
proc create*(T: type gen_qaudioprobe_types.QAudioProbe, ): gen_qaudioprobe_types.QAudioProbe =
  gen_qaudioprobe_types.QAudioProbe.init(fcQAudioProbe_new())

proc create*(T: type gen_qaudioprobe_types.QAudioProbe, parent: gen_qobject_types.QObject): gen_qaudioprobe_types.QAudioProbe =
  gen_qaudioprobe_types.QAudioProbe.init(fcQAudioProbe_new2(parent.h))

proc metaObject*(self: gen_qaudioprobe_types.QAudioProbe, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_metaObject(self.h))

proc metacast*(self: gen_qaudioprobe_types.QAudioProbe, param1: cstring): pointer =
  fcQAudioProbe_metacast(self.h, param1)

proc metacall*(self: gen_qaudioprobe_types.QAudioProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring): string =
  let v_ms = fcQAudioProbe_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring): string =
  let v_ms = fcQAudioProbe_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qaudioprobe_types.QAudioProbe, source: gen_qmediaobject_types.QMediaObject): bool =
  fcQAudioProbe_setSource(self.h, source.h)

proc setSource*(self: gen_qaudioprobe_types.QAudioProbe, source: gen_qmediarecorder_types.QMediaRecorder): bool =
  fcQAudioProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: gen_qaudioprobe_types.QAudioProbe, ): bool =
  fcQAudioProbe_isActive(self.h)

proc audioBufferProbed*(self: gen_qaudioprobe_types.QAudioProbe, buffer: gen_qaudiobuffer_types.QAudioBuffer): void =
  fcQAudioProbe_audioBufferProbed(self.h, buffer.h)

type QAudioProbeaudioBufferProbedSlot* = proc(buffer: gen_qaudiobuffer_types.QAudioBuffer)
proc miqt_exec_callback_QAudioProbe_audioBufferProbed(slot: int, buffer: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAudioProbeaudioBufferProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudiobuffer_types.QAudioBuffer(h: buffer)

  nimfunc[](slotval1)

proc onaudioBufferProbed*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeaudioBufferProbedSlot) =
  var tmp = new QAudioProbeaudioBufferProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_connect_audioBufferProbed(self.h, cast[int](addr tmp[]))

proc flush*(self: gen_qaudioprobe_types.QAudioProbe, ): void =
  fcQAudioProbe_flush(self.h)

type QAudioProbeflushSlot* = proc()
proc miqt_exec_callback_QAudioProbe_flush(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioProbeflushSlot](cast[pointer](slot))
  nimfunc[]()

proc onflush*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeflushSlot) =
  var tmp = new QAudioProbeflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_connect_flush(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring): string =
  let v_ms = fcQAudioProbe_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring): string =
  let v_ms = fcQAudioProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAudioProbemetaObject*(self: gen_qaudioprobe_types.QAudioProbe, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAudioProbe_virtualbase_metaObject(self.h))

type QAudioProbemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbemetaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioProbemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_metaObject(self: ptr cQAudioProbe, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioProbe_metaObject ".} =
  var nimfunc = cast[ptr QAudioProbemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAudioProbemetacast*(self: gen_qaudioprobe_types.QAudioProbe, param1: cstring): pointer =
  fQAudioProbe_virtualbase_metacast(self.h, param1)

type QAudioProbemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbemetacastProc) =
  # TODO check subclass
  var tmp = new QAudioProbemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_metacast(self: ptr cQAudioProbe, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioProbe_metacast ".} =
  var nimfunc = cast[ptr QAudioProbemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioProbemetacall*(self: gen_qaudioprobe_types.QAudioProbe, param1: cint, param2: cint, param3: pointer): cint =
  fQAudioProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioProbemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbemetacallProc) =
  # TODO check subclass
  var tmp = new QAudioProbemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_metacall(self: ptr cQAudioProbe, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioProbe_metacall ".} =
  var nimfunc = cast[ptr QAudioProbemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAudioProbeevent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioProbe_virtualbase_event(self.h, event.h)

type QAudioProbeeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeeventProc) =
  # TODO check subclass
  var tmp = new QAudioProbeeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_event(self: ptr cQAudioProbe, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioProbe_event ".} =
  var nimfunc = cast[ptr QAudioProbeeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioProbeeventFilter*(self: gen_qaudioprobe_types.QAudioProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioProbeeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeeventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioProbeeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_eventFilter(self: ptr cQAudioProbe, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioProbe_eventFilter ".} =
  var nimfunc = cast[ptr QAudioProbeeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioProbetimerEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioProbe_virtualbase_timerEvent(self.h, event.h)

type QAudioProbetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbetimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioProbetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_timerEvent(self: ptr cQAudioProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_timerEvent ".} =
  var nimfunc = cast[ptr QAudioProbetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioProbechildEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioProbe_virtualbase_childEvent(self.h, event.h)

type QAudioProbechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbechildEventProc) =
  # TODO check subclass
  var tmp = new QAudioProbechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_childEvent(self: ptr cQAudioProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_childEvent ".} =
  var nimfunc = cast[ptr QAudioProbechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioProbecustomEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QEvent): void =
  fQAudioProbe_virtualbase_customEvent(self.h, event.h)

type QAudioProbecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbecustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioProbecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_customEvent(self: ptr cQAudioProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_customEvent ".} =
  var nimfunc = cast[ptr QAudioProbecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioProbeconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioProbe_virtualbase_connectNotify(self.h, signal.h)

type QAudioProbeconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioProbeconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_connectNotify(self: ptr cQAudioProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_connectNotify ".} =
  var nimfunc = cast[ptr QAudioProbeconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioProbedisconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioProbe_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioProbedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioProbedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioProbe_disconnectNotify(self: ptr cQAudioProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioProbe_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioProbedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qaudioprobe_types.QAudioProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_staticMetaObject())
proc delete*(self: gen_qaudioprobe_types.QAudioProbe) =
  fcQAudioProbe_delete(self.h)
