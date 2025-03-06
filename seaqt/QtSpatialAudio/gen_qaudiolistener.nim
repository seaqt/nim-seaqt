import ./Qt6SpatialAudio_libs

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

const cflags = gorge("pkg-config --cflags Qt6SpatialAudio")  & " -fPIC"
{.compile("gen_qaudiolistener.cpp", cflags).}


import ./gen_qaudiolistener_types
export gen_qaudiolistener_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qquaternion_types,
  ../QtGui/gen_qvectornd_types,
  ./gen_qaudioengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qquaternion_types,
  gen_qvectornd_types,
  gen_qaudioengine_types

type cQAudioListener*{.exportc: "QAudioListener", incompleteStruct.} = object

proc fcQAudioListener_setPosition(self: pointer, pos: pointer): void {.importc: "QAudioListener_setPosition".}
proc fcQAudioListener_position(self: pointer, ): pointer {.importc: "QAudioListener_position".}
proc fcQAudioListener_setRotation(self: pointer, q: pointer): void {.importc: "QAudioListener_setRotation".}
proc fcQAudioListener_rotation(self: pointer, ): pointer {.importc: "QAudioListener_rotation".}
proc fcQAudioListener_engine(self: pointer, ): pointer {.importc: "QAudioListener_engine".}
type cQAudioListenerVTable = object
  destructor*: proc(vtbl: ptr cQAudioListenerVTable, self: ptr cQAudioListener) {.cdecl, raises:[], gcsafe.}
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
proc fcQAudioListener_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioListener_virtualbase_metaObject".}
proc fcQAudioListener_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioListener_virtualbase_metacast".}
proc fcQAudioListener_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioListener_virtualbase_metacall".}
proc fcQAudioListener_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioListener_virtualbase_event".}
proc fcQAudioListener_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioListener_virtualbase_eventFilter".}
proc fcQAudioListener_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioListener_virtualbase_timerEvent".}
proc fcQAudioListener_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioListener_virtualbase_childEvent".}
proc fcQAudioListener_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioListener_virtualbase_customEvent".}
proc fcQAudioListener_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioListener_virtualbase_connectNotify".}
proc fcQAudioListener_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioListener_virtualbase_disconnectNotify".}
proc fcQAudioListener_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioListener_protectedbase_sender".}
proc fcQAudioListener_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioListener_protectedbase_senderSignalIndex".}
proc fcQAudioListener_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioListener_protectedbase_receivers".}
proc fcQAudioListener_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioListener_protectedbase_isSignalConnected".}
proc fcQAudioListener_new(vtbl: pointer, engine: pointer): ptr cQAudioListener {.importc: "QAudioListener_new".}
proc fcQAudioListener_delete(self: pointer) {.importc: "QAudioListener_delete".}

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

type QAudioListenermetaObjectProc* = proc(self: QAudioListener): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioListenermetacastProc* = proc(self: QAudioListener, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioListenermetacallProc* = proc(self: QAudioListener, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioListenereventProc* = proc(self: QAudioListener, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioListenereventFilterProc* = proc(self: QAudioListener, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioListenertimerEventProc* = proc(self: QAudioListener, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioListenerchildEventProc* = proc(self: QAudioListener, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioListenercustomEventProc* = proc(self: QAudioListener, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioListenerconnectNotifyProc* = proc(self: QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioListenerdisconnectNotifyProc* = proc(self: QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioListenerVTable* = object
  vtbl: cQAudioListenerVTable
  metaObject*: QAudioListenermetaObjectProc
  metacast*: QAudioListenermetacastProc
  metacall*: QAudioListenermetacallProc
  event*: QAudioListenereventProc
  eventFilter*: QAudioListenereventFilterProc
  timerEvent*: QAudioListenertimerEventProc
  childEvent*: QAudioListenerchildEventProc
  customEvent*: QAudioListenercustomEventProc
  connectNotify*: QAudioListenerconnectNotifyProc
  disconnectNotify*: QAudioListenerdisconnectNotifyProc
proc QAudioListenermetaObject*(self: gen_qaudiolistener_types.QAudioListener, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioListener_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioListener_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioListenermetacast*(self: gen_qaudiolistener_types.QAudioListener, param1: cstring): pointer =
  fcQAudioListener_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioListener_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioListenermetacall*(self: gen_qaudiolistener_types.QAudioListener, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioListener_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioListener_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioListenerevent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioListener_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioListener_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioListenereventFilter*(self: gen_qaudiolistener_types.QAudioListener, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioListener_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioListener_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioListenertimerEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioListener_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioListener_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioListenerchildEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioListener_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioListener_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioListenercustomEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioListener_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioListener_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioListenerconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioListener_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioListener_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioListenerdisconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioListener_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioListener_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](vtbl)
  let self = QAudioListener(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qaudiolistener_types.QAudioListener, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioListener_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qaudiolistener_types.QAudioListener, ): cint =
  fcQAudioListener_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiolistener_types.QAudioListener, signal: cstring): cint =
  fcQAudioListener_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiolistener_types.QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioListener_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiolistener_types.QAudioListener,
    engine: gen_qaudioengine_types.QAudioEngine,
    vtbl: ref QAudioListenerVTable = nil): gen_qaudiolistener_types.QAudioListener =
  let vtbl = if vtbl == nil: new QAudioListenerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioListenerVTable, _: ptr cQAudioListener) {.cdecl.} =
    let vtbl = cast[ref QAudioListenerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioListener_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioListener_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioListener_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioListener_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioListener_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioListener_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioListener_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioListener_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioListener_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioListener_disconnectNotify
  gen_qaudiolistener_types.QAudioListener(h: fcQAudioListener_new(addr(vtbl[]), engine.h))

proc delete*(self: gen_qaudiolistener_types.QAudioListener) =
  fcQAudioListener_delete(self.h)
