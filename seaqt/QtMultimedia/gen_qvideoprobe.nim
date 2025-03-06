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
{.compile("gen_qvideoprobe.cpp", cflags).}


import ./gen_qvideoprobe_types
export gen_qvideoprobe_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediaobject_types,
  ./gen_qmediarecorder_types,
  ./gen_qvideoframe_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qmediaobject_types,
  gen_qmediarecorder_types,
  gen_qvideoframe_types

type cQVideoProbe*{.exportc: "QVideoProbe", incompleteStruct.} = object

proc fcQVideoProbe_new(): ptr cQVideoProbe {.importc: "QVideoProbe_new".}
proc fcQVideoProbe_new2(parent: pointer): ptr cQVideoProbe {.importc: "QVideoProbe_new2".}
proc fcQVideoProbe_metaObject(self: pointer, ): pointer {.importc: "QVideoProbe_metaObject".}
proc fcQVideoProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoProbe_metacast".}
proc fcQVideoProbe_tr(s: cstring): struct_miqt_string {.importc: "QVideoProbe_tr".}
proc fcQVideoProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf8".}
proc fcQVideoProbe_setSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSource".}
proc fcQVideoProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSourceWithSource".}
proc fcQVideoProbe_isActive(self: pointer, ): bool {.importc: "QVideoProbe_isActive".}
proc fcQVideoProbe_videoFrameProbed(self: pointer, frame: pointer): void {.importc: "QVideoProbe_videoFrameProbed".}
proc fcQVideoProbe_connect_videoFrameProbed(self: pointer, slot: int) {.importc: "QVideoProbe_connect_videoFrameProbed".}
proc fcQVideoProbe_flush(self: pointer, ): void {.importc: "QVideoProbe_flush".}
proc fcQVideoProbe_connect_flush(self: pointer, slot: int) {.importc: "QVideoProbe_connect_flush".}
proc fcQVideoProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_tr2".}
proc fcQVideoProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_tr3".}
proc fcQVideoProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf82".}
proc fcQVideoProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_trUtf83".}
proc fQVideoProbe_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVideoProbe_virtualbase_event".}
proc fcQVideoProbe_override_virtual_event(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_event".}
proc fQVideoProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVideoProbe_virtualbase_eventFilter".}
proc fcQVideoProbe_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_eventFilter".}
proc fQVideoProbe_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVideoProbe_virtualbase_timerEvent".}
proc fcQVideoProbe_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_timerEvent".}
proc fQVideoProbe_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVideoProbe_virtualbase_childEvent".}
proc fcQVideoProbe_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_childEvent".}
proc fQVideoProbe_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVideoProbe_virtualbase_customEvent".}
proc fcQVideoProbe_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_customEvent".}
proc fQVideoProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVideoProbe_virtualbase_connectNotify".}
proc fcQVideoProbe_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_connectNotify".}
proc fQVideoProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVideoProbe_virtualbase_disconnectNotify".}
proc fcQVideoProbe_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVideoProbe_override_virtual_disconnectNotify".}
proc fcQVideoProbe_delete(self: pointer) {.importc: "QVideoProbe_delete".}


func init*(T: type gen_qvideoprobe_types.QVideoProbe, h: ptr cQVideoProbe): gen_qvideoprobe_types.QVideoProbe =
  T(h: h)
proc create*(T: type gen_qvideoprobe_types.QVideoProbe, ): gen_qvideoprobe_types.QVideoProbe =
  gen_qvideoprobe_types.QVideoProbe.init(fcQVideoProbe_new())

proc create*(T: type gen_qvideoprobe_types.QVideoProbe, parent: gen_qobject_types.QObject): gen_qvideoprobe_types.QVideoProbe =
  gen_qvideoprobe_types.QVideoProbe.init(fcQVideoProbe_new2(parent.h))

proc metaObject*(self: gen_qvideoprobe_types.QVideoProbe, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoProbe_metaObject(self.h))

proc metacast*(self: gen_qvideoprobe_types.QVideoProbe, param1: cstring): pointer =
  fcQVideoProbe_metacast(self.h, param1)

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =
  let v_ms = fcQVideoProbe_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =
  let v_ms = fcQVideoProbe_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediaobject_types.QMediaObject): bool =
  fcQVideoProbe_setSource(self.h, source.h)

proc setSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediarecorder_types.QMediaRecorder): bool =
  fcQVideoProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: gen_qvideoprobe_types.QVideoProbe, ): bool =
  fcQVideoProbe_isActive(self.h)

proc videoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoProbe_videoFrameProbed(self.h, frame.h)

type QVideoProbevideoFrameProbedSlot* = proc(frame: gen_qvideoframe_types.QVideoFrame)
proc miqt_exec_callback_QVideoProbe_videoFrameProbed(slot: int, frame: pointer) {.exportc.} =
  let nimfunc = cast[ptr QVideoProbevideoFrameProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame)

  nimfunc[](slotval1)

proc onvideoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbevideoFrameProbedSlot) =
  var tmp = new QVideoProbevideoFrameProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_connect_videoFrameProbed(self.h, cast[int](addr tmp[]))

proc flush*(self: gen_qvideoprobe_types.QVideoProbe, ): void =
  fcQVideoProbe_flush(self.h)

type QVideoProbeflushSlot* = proc()
proc miqt_exec_callback_QVideoProbe_flush(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QVideoProbeflushSlot](cast[pointer](slot))
  nimfunc[]()

proc onflush*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeflushSlot) =
  var tmp = new QVideoProbeflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_connect_flush(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =
  let v_ms = fcQVideoProbe_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =
  let v_ms = fcQVideoProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QVideoProbeevent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QEvent): bool =
  fQVideoProbe_virtualbase_event(self.h, event.h)

type QVideoProbeeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeeventProc) =
  # TODO check subclass
  var tmp = new QVideoProbeeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_event(self: ptr cQVideoProbe, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoProbe_event ".} =
  var nimfunc = cast[ptr QVideoProbeeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoProbeeventFilter*(self: gen_qvideoprobe_types.QVideoProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQVideoProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVideoProbeeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeeventFilterProc) =
  # TODO check subclass
  var tmp = new QVideoProbeeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_eventFilter(self: ptr cQVideoProbe, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoProbe_eventFilter ".} =
  var nimfunc = cast[ptr QVideoProbeeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QVideoProbetimerEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QTimerEvent): void =
  fQVideoProbe_virtualbase_timerEvent(self.h, event.h)

type QVideoProbetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbetimerEventProc) =
  # TODO check subclass
  var tmp = new QVideoProbetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_timerEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_timerEvent ".} =
  var nimfunc = cast[ptr QVideoProbetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QVideoProbechildEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QChildEvent): void =
  fQVideoProbe_virtualbase_childEvent(self.h, event.h)

type QVideoProbechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbechildEventProc) =
  # TODO check subclass
  var tmp = new QVideoProbechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_childEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_childEvent ".} =
  var nimfunc = cast[ptr QVideoProbechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QVideoProbecustomEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QEvent): void =
  fQVideoProbe_virtualbase_customEvent(self.h, event.h)

type QVideoProbecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbecustomEventProc) =
  # TODO check subclass
  var tmp = new QVideoProbecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_customEvent(self: ptr cQVideoProbe, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_customEvent ".} =
  var nimfunc = cast[ptr QVideoProbecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QVideoProbeconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVideoProbe_virtualbase_connectNotify(self.h, signal.h)

type QVideoProbeconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoProbeconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_connectNotify(self: ptr cQVideoProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_connectNotify ".} =
  var nimfunc = cast[ptr QVideoProbeconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QVideoProbedisconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVideoProbe_virtualbase_disconnectNotify(self.h, signal.h)

type QVideoProbedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoProbedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoProbe_disconnectNotify(self: ptr cQVideoProbe, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoProbe_disconnectNotify ".} =
  var nimfunc = cast[ptr QVideoProbedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qvideoprobe_types.QVideoProbe) =
  fcQVideoProbe_delete(self.h)
