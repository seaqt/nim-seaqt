import ./qtspatialaudio_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qaudiolistener.cpp", QtSpatialAudioCFlags).}


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
proc fcQAudioListener_position(self: pointer): pointer {.importc: "QAudioListener_position".}
proc fcQAudioListener_setRotation(self: pointer, q: pointer): void {.importc: "QAudioListener_setRotation".}
proc fcQAudioListener_rotation(self: pointer): pointer {.importc: "QAudioListener_rotation".}
proc fcQAudioListener_engine(self: pointer): pointer {.importc: "QAudioListener_engine".}
proc fcQAudioListener_vtbl(self: pointer): pointer {.importc: "QAudioListener_vtbl".}
proc fcQAudioListener_vdata(self: pointer): pointer {.importc: "QAudioListener_vdata".}

type cQAudioListenerVTable {.pure.} = object
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
proc fcQAudioListener_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioListener_virtualbase_metaObject".}
proc fcQAudioListener_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioListener_virtualbase_metacast".}
proc fcQAudioListener_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioListener_virtualbase_metacall".}
proc fcQAudioListener_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioListener_virtualbase_event".}
proc fcQAudioListener_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioListener_virtualbase_eventFilter".}
proc fcQAudioListener_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioListener_virtualbase_timerEvent".}
proc fcQAudioListener_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioListener_virtualbase_childEvent".}
proc fcQAudioListener_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioListener_virtualbase_customEvent".}
proc fcQAudioListener_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioListener_virtualbase_connectNotify".}
proc fcQAudioListener_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioListener_virtualbase_disconnectNotify".}
proc fcQAudioListener_protectedbase_sender(self: pointer): pointer {.importc: "QAudioListener_protectedbase_sender".}
proc fcQAudioListener_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioListener_protectedbase_senderSignalIndex".}
proc fcQAudioListener_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioListener_protectedbase_receivers".}
proc fcQAudioListener_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioListener_protectedbase_isSignalConnected".}
proc fcQAudioListener_new(vtbl, vdata: pointer, engine: pointer): ptr cQAudioListener {.importc: "QAudioListener_new".}

proc setPosition*(self: gen_qaudiolistener_types.QAudioListener, pos: gen_qvectornd_types.QVector3D): void =
  fcQAudioListener_setPosition(self.h, pos.h)

proc position*(self: gen_qaudiolistener_types.QAudioListener): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQAudioListener_position(self.h), owned: true)

proc setRotation*(self: gen_qaudiolistener_types.QAudioListener, q: gen_qquaternion_types.QQuaternion): void =
  fcQAudioListener_setRotation(self.h, q.h)

proc rotation*(self: gen_qaudiolistener_types.QAudioListener): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQAudioListener_rotation(self.h), owned: true)

proc engine*(self: gen_qaudiolistener_types.QAudioListener): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine(h: fcQAudioListener_engine(self.h), owned: false)

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

type QAudioListenerVTable* {.inheritable, pure.} = object
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

proc QAudioListenermetaObject*(self: gen_qaudiolistener_types.QAudioListener): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioListener_virtualbase_metaObject(self.h), owned: false)

proc QAudioListenermetacast*(self: gen_qaudiolistener_types.QAudioListener, param1: cstring): pointer =
  fcQAudioListener_virtualbase_metacast(self.h, param1)

proc QAudioListenermetacall*(self: gen_qaudiolistener_types.QAudioListener, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioListener_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioListenerevent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioListener_virtualbase_event(self.h, event.h)

proc QAudioListenereventFilter*(self: gen_qaudiolistener_types.QAudioListener, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioListener_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioListenertimerEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioListener_virtualbase_timerEvent(self.h, event.h)

proc QAudioListenerchildEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioListener_virtualbase_childEvent(self.h, event.h)

proc QAudioListenercustomEvent*(self: gen_qaudiolistener_types.QAudioListener, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioListener_virtualbase_customEvent(self.h, event.h)

proc QAudioListenerconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioListener_virtualbase_connectNotify(self.h, signal.h)

proc QAudioListenerdisconnectNotify*(self: gen_qaudiolistener_types.QAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioListener_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioListener_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioListener_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioListener_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioListener_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioListener_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioListener_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioListener_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioListener_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioListener_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioListener_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioListenerVTable](fcQAudioListener_vdata(self))
  let self = QAudioListener(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioListener* {.inheritable.} = ref object of QAudioListener
  vtbl*: cQAudioListenerVTable

method metaObject*(self: VirtualQAudioListener): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioListenermetaObject(self[])
method metacast*(self: VirtualQAudioListener, param1: cstring): pointer {.base.} =
  QAudioListenermetacast(self[], param1)
method metacall*(self: VirtualQAudioListener, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioListenermetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioListener, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioListenerevent(self[], event)
method eventFilter*(self: VirtualQAudioListener, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioListenereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioListener, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioListenertimerEvent(self[], event)
method childEvent*(self: VirtualQAudioListener, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioListenerchildEvent(self[], event)
method customEvent*(self: VirtualQAudioListener, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioListenercustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioListenerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioListener, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioListenerdisconnectNotify(self[], signal)

proc fcQAudioListener_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioListener_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioListener_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioListener_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioListener_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioListener_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioListener_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioListener_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioListener_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioListener_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioListener](fcQAudioListener_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudiolistener_types.QAudioListener): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioListener_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiolistener_types.QAudioListener): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioListenerVTable](fcQAudioListener_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioListener_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioListener_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioListener_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioListener_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioListener_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioListener_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioListener_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioListener_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioListener_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioListener_vtable_callback_disconnectNotify
  gen_qaudiolistener_types.QAudioListener(h: fcQAudioListener_new(addr(vtbl[].vtbl), addr(vtbl[]), engine.h), owned: true)

const cQAudioListener_mvtbl = cQAudioListenerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioListener()[])](self.fcQAudioListener_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioListener_method_callback_metaObject,
  metacast: fcQAudioListener_method_callback_metacast,
  metacall: fcQAudioListener_method_callback_metacall,
  event: fcQAudioListener_method_callback_event,
  eventFilter: fcQAudioListener_method_callback_eventFilter,
  timerEvent: fcQAudioListener_method_callback_timerEvent,
  childEvent: fcQAudioListener_method_callback_childEvent,
  customEvent: fcQAudioListener_method_callback_customEvent,
  connectNotify: fcQAudioListener_method_callback_connectNotify,
  disconnectNotify: fcQAudioListener_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiolistener_types.QAudioListener,
    engine: gen_qaudioengine_types.QAudioEngine,
    inst: VirtualQAudioListener) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioListener_new(addr(cQAudioListener_mvtbl), addr(inst[]), engine.h)
  inst[].owned = true

