import ./Qt6SpatialAudio_libs

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

const cflags = gorge("pkg-config --cflags Qt6SpatialAudio")  & " -fPIC"
{.compile("gen_qaudiolistener.cpp", cflags).}


import ./gen_qaudiolistener_types
export gen_qaudiolistener_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtGui/gen_qquaternion_types,
  ../QtGui/gen_qvectornd_types,
  ./gen_qaudioengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qquaternion_types,
  gen_qvectornd_types,
  gen_qaudioengine_types

type cQAudioListener*{.exportc: "QAudioListener", incompleteStruct.} = object

proc fcQAudioListener_new(engine: pointer): ptr cQAudioListener {.importc: "QAudioListener_new".}
proc fcQAudioListener_setPosition(self: pointer, pos: pointer): void {.importc: "QAudioListener_setPosition".}
proc fcQAudioListener_position(self: pointer, ): pointer {.importc: "QAudioListener_position".}
proc fcQAudioListener_setRotation(self: pointer, q: pointer): void {.importc: "QAudioListener_setRotation".}
proc fcQAudioListener_rotation(self: pointer, ): pointer {.importc: "QAudioListener_rotation".}
proc fcQAudioListener_engine(self: pointer, ): pointer {.importc: "QAudioListener_engine".}
proc fQAudioListener_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioListener_virtualbase_event".}
proc fcQAudioListener_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_event".}
proc fQAudioListener_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioListener_virtualbase_eventFilter".}
proc fcQAudioListener_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_eventFilter".}
proc fQAudioListener_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioListener_virtualbase_timerEvent".}
proc fcQAudioListener_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_timerEvent".}
proc fQAudioListener_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioListener_virtualbase_childEvent".}
proc fcQAudioListener_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_childEvent".}
proc fQAudioListener_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioListener_virtualbase_customEvent".}
proc fcQAudioListener_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_customEvent".}
proc fQAudioListener_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioListener_virtualbase_connectNotify".}
proc fcQAudioListener_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_connectNotify".}
proc fQAudioListener_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioListener_virtualbase_disconnectNotify".}
proc fcQAudioListener_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioListener_override_virtual_disconnectNotify".}
proc fcQAudioListener_delete(self: pointer) {.importc: "QAudioListener_delete".}


func init*(T: type gen_qaudiolistener_types.QAudioListener, h: ptr cQAudioListener): gen_qaudiolistener_types.QAudioListener =
  T(h: h)
proc create*(T: type gen_qaudiolistener_types.QAudioListener, engine: gen_qaudioengine_types.QAudioEngine): gen_qaudiolistener_types.QAudioListener =
  gen_qaudiolistener_types.QAudioListener.init(fcQAudioListener_new(engine.h))

proc setPosition*(self: gen_qaudiolistener_types.QAudioListener, pos: gen_qvectornd_types.QVector3D): void =
  fcQAudioListener_setPosition(self.h, pos.h)

proc position*(self: gen_qaudiolistener_types.QAudioListener, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQAudioListener_position(self.h))

proc setRotation*(self: gen_qaudiolistener_types.QAudioListener, q: gen_qquaternion_types.QQuaternion): void =
  fcQAudioListener_setRotation(self.h, q.h)

proc rotation*(self: gen_qaudiolistener_types.QAudioListener, ): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQAudioListener_rotation(self.h))

proc engine*(self: gen_qaudiolistener_types.QAudioListener, ): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioListener_engine(self.h))

proc QAudioListenerevent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioListener_virtualbase_event(self.h, event.h)

type QAudioListenereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudiolistener_types.QAudioListener, slot: QAudioListenereventProc) =
  # TODO check subclass
  var tmp = new QAudioListenereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_event(self: ptr cQAudioListener, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioListener_event ".} =
  var nimfunc = cast[ptr QAudioListenereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioListenereventFilter*(self: gen_qaudiolistener_types.QAudioListener, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioListener_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioListenereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudiolistener_types.QAudioListener, slot: QAudioListenereventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioListenereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_eventFilter(self: ptr cQAudioListener, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioListener_eventFilter ".} =
  var nimfunc = cast[ptr QAudioListenereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioListenertimerEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioListener_virtualbase_timerEvent(self.h, event.h)

type QAudioListenertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudiolistener_types.QAudioListener, slot: QAudioListenertimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioListenertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_timerEvent(self: ptr cQAudioListener, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_timerEvent ".} =
  var nimfunc = cast[ptr QAudioListenertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioListenerchildEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioListener_virtualbase_childEvent(self.h, event.h)

type QAudioListenerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudiolistener_types.QAudioListener, slot: QAudioListenerchildEventProc) =
  # TODO check subclass
  var tmp = new QAudioListenerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_childEvent(self: ptr cQAudioListener, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_childEvent ".} =
  var nimfunc = cast[ptr QAudioListenerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioListenercustomEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QEvent): void =
  fQAudioListener_virtualbase_customEvent(self.h, event.h)

type QAudioListenercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudiolistener_types.QAudioListener, slot: QAudioListenercustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioListenercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_customEvent(self: ptr cQAudioListener, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_customEvent ".} =
  var nimfunc = cast[ptr QAudioListenercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioListenerconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioListener_virtualbase_connectNotify(self.h, signal.h)

type QAudioListenerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, slot: QAudioListenerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioListenerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_connectNotify(self: ptr cQAudioListener, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_connectNotify ".} =
  var nimfunc = cast[ptr QAudioListenerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioListenerdisconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioListener_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioListenerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, slot: QAudioListenerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioListenerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioListener_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioListener_disconnectNotify(self: ptr cQAudioListener, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioListener_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioListenerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qaudiolistener_types.QAudioListener) =
  fcQAudioListener_delete(self.h)
