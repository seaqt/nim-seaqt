import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qsound.cpp", cflags).}


type QSoundLoopEnum* = distinct cint
template Infinite*(_: type QSoundLoopEnum): untyped = -1


import ./gen_qsound_types
export gen_qsound_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQSound*{.exportc: "QSound", incompleteStruct.} = object

proc fcQSound_metaObject(self: pointer): pointer {.importc: "QSound_metaObject".}
proc fcQSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QSound_metacast".}
proc fcQSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSound_metacall".}
proc fcQSound_tr(s: cstring): struct_miqt_string {.importc: "QSound_tr".}
proc fcQSound_trUtf8(s: cstring): struct_miqt_string {.importc: "QSound_trUtf8".}
proc fcQSound_play(filename: struct_miqt_string): void {.importc: "QSound_play".}
proc fcQSound_loops(self: pointer): cint {.importc: "QSound_loops".}
proc fcQSound_loopsRemaining(self: pointer): cint {.importc: "QSound_loopsRemaining".}
proc fcQSound_setLoops(self: pointer, loops: cint): void {.importc: "QSound_setLoops".}
proc fcQSound_fileName(self: pointer): struct_miqt_string {.importc: "QSound_fileName".}
proc fcQSound_isFinished(self: pointer): bool {.importc: "QSound_isFinished".}
proc fcQSound_play2(self: pointer): void {.importc: "QSound_play2".}
proc fcQSound_stop(self: pointer): void {.importc: "QSound_stop".}
proc fcQSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_tr2".}
proc fcQSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_tr3".}
proc fcQSound_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_trUtf82".}
proc fcQSound_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_trUtf83".}
proc fcQSound_vtbl(self: pointer): pointer {.importc: "QSound_vtbl".}
proc fcQSound_vdata(self: pointer): pointer {.importc: "QSound_vdata".}
type cQSoundVTable {.pure.} = object
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
proc fcQSound_virtualbase_metaObject(self: pointer): pointer {.importc: "QSound_virtualbase_metaObject".}
proc fcQSound_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSound_virtualbase_metacast".}
proc fcQSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSound_virtualbase_metacall".}
proc fcQSound_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSound_virtualbase_event".}
proc fcQSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSound_virtualbase_eventFilter".}
proc fcQSound_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSound_virtualbase_timerEvent".}
proc fcQSound_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSound_virtualbase_childEvent".}
proc fcQSound_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSound_virtualbase_customEvent".}
proc fcQSound_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSound_virtualbase_connectNotify".}
proc fcQSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSound_virtualbase_disconnectNotify".}
proc fcQSound_protectedbase_sender(self: pointer): pointer {.importc: "QSound_protectedbase_sender".}
proc fcQSound_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSound_protectedbase_senderSignalIndex".}
proc fcQSound_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSound_protectedbase_receivers".}
proc fcQSound_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSound_protectedbase_isSignalConnected".}
proc fcQSound_new(vtbl, vdata: pointer, filename: struct_miqt_string): ptr cQSound {.importc: "QSound_new".}
proc fcQSound_new2(vtbl, vdata: pointer, filename: struct_miqt_string, parent: pointer): ptr cQSound {.importc: "QSound_new2".}
proc fcQSound_staticMetaObject(): pointer {.importc: "QSound_staticMetaObject".}

proc metaObject*(self: gen_qsound_types.QSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsound_types.QSound, param1: cstring): pointer =
  fcQSound_metacast(self.h, param1)

proc metacall*(self: gen_qsound_types.QSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsound_types.QSound, s: cstring): string =
  let v_ms = fcQSound_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring): string =
  let v_ms = fcQSound_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc play*(_: type gen_qsound_types.QSound, filename: openArray[char]): void =
  fcQSound_play(struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc loops*(self: gen_qsound_types.QSound): cint =
  fcQSound_loops(self.h)

proc loopsRemaining*(self: gen_qsound_types.QSound): cint =
  fcQSound_loopsRemaining(self.h)

proc setLoops*(self: gen_qsound_types.QSound, loops: cint): void =
  fcQSound_setLoops(self.h, loops)

proc fileName*(self: gen_qsound_types.QSound): string =
  let v_ms = fcQSound_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: gen_qsound_types.QSound): bool =
  fcQSound_isFinished(self.h)

proc play*(self: gen_qsound_types.QSound): void =
  fcQSound_play2(self.h)

proc stop*(self: gen_qsound_types.QSound): void =
  fcQSound_stop(self.h)

proc tr*(_: type gen_qsound_types.QSound, s: cstring, c: cstring): string =
  let v_ms = fcQSound_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsound_types.QSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring, c: cstring): string =
  let v_ms = fcQSound_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSound_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSoundmetaObjectProc* = proc(self: QSound): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSoundmetacastProc* = proc(self: QSound, param1: cstring): pointer {.raises: [], gcsafe.}
type QSoundmetacallProc* = proc(self: QSound, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSoundeventProc* = proc(self: QSound, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSoundeventFilterProc* = proc(self: QSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSoundtimerEventProc* = proc(self: QSound, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSoundchildEventProc* = proc(self: QSound, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSoundcustomEventProc* = proc(self: QSound, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSoundconnectNotifyProc* = proc(self: QSound, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSounddisconnectNotifyProc* = proc(self: QSound, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSoundVTable* {.inheritable, pure.} = object
  vtbl: cQSoundVTable
  metaObject*: QSoundmetaObjectProc
  metacast*: QSoundmetacastProc
  metacall*: QSoundmetacallProc
  event*: QSoundeventProc
  eventFilter*: QSoundeventFilterProc
  timerEvent*: QSoundtimerEventProc
  childEvent*: QSoundchildEventProc
  customEvent*: QSoundcustomEventProc
  connectNotify*: QSoundconnectNotifyProc
  disconnectNotify*: QSounddisconnectNotifyProc
proc QSoundmetaObject*(self: gen_qsound_types.QSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_virtualbase_metaObject(self.h), owned: false)

proc cQSound_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSoundmetacast*(self: gen_qsound_types.QSound, param1: cstring): pointer =
  fcQSound_virtualbase_metacast(self.h, param1)

proc cQSound_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSoundmetacall*(self: gen_qsound_types.QSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSound_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSoundevent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QEvent): bool =
  fcQSound_virtualbase_event(self.h, event.h)

proc cQSound_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSoundeventFilter*(self: gen_qsound_types.QSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSound_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSound_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSoundtimerEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSound_virtualbase_timerEvent(self.h, event.h)

proc cQSound_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSoundchildEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSound_virtualbase_childEvent(self.h, event.h)

proc cQSound_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSoundcustomEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QEvent): void =
  fcQSound_virtualbase_customEvent(self.h, event.h)

proc cQSound_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSoundconnectNotify*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSound_virtualbase_connectNotify(self.h, signal.h)

proc cQSound_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSounddisconnectNotify*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSound_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSound_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](fcQSound_vdata(self))
  let self = QSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSound* {.inheritable.} = ref object of QSound
  vtbl*: cQSoundVTable
method metaObject*(self: VirtualQSound): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSoundmetaObject(self[])
proc cQSound_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSound, param1: cstring): pointer {.base.} =
  QSoundmetacast(self[], param1)
proc cQSound_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSound, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSoundmetacall(self[], param1, param2, param3)
proc cQSound_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQSound, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSoundevent(self[], event)
proc cQSound_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSoundeventFilter(self[], watched, event)
proc cQSound_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSound, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSoundtimerEvent(self[], event)
proc cQSound_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSound, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSoundchildEvent(self[], event)
proc cQSound_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSound, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSoundcustomEvent(self[], event)
proc cQSound_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSound, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSoundconnectNotify(self[], signal)
proc cQSound_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSound, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSounddisconnectNotify(self[], signal)
proc cQSound_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSound](fcQSound_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qsound_types.QSound): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSound_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsound_types.QSound): cint =
  fcQSound_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsound_types.QSound, signal: cstring): cint =
  fcQSound_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSound_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsound_types.QSound,
    filename: openArray[char],
    vtbl: ref QSoundVTable = nil): gen_qsound_types.QSound =
  let vtbl = if vtbl == nil: new QSoundVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSoundVTable](fcQSound_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSound_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSound_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSound_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSound_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSound_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSound_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSound_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSound_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSound_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSound_vtable_callback_disconnectNotify
  gen_qsound_types.QSound(h: fcQSound_new(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename)))), owned: true)

proc create*(T: type gen_qsound_types.QSound,
    filename: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QSoundVTable = nil): gen_qsound_types.QSound =
  let vtbl = if vtbl == nil: new QSoundVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSoundVTable](fcQSound_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSound_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSound_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSound_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSound_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSound_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSound_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSound_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSound_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSound_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSound_vtable_callback_disconnectNotify
  gen_qsound_types.QSound(h: fcQSound_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), parent.h), owned: true)

const cQSound_mvtbl = cQSoundVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSound()[])](self.fcQSound_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSound_method_callback_metaObject,
  metacast: cQSound_method_callback_metacast,
  metacall: cQSound_method_callback_metacall,
  event: cQSound_method_callback_event,
  eventFilter: cQSound_method_callback_eventFilter,
  timerEvent: cQSound_method_callback_timerEvent,
  childEvent: cQSound_method_callback_childEvent,
  customEvent: cQSound_method_callback_customEvent,
  connectNotify: cQSound_method_callback_connectNotify,
  disconnectNotify: cQSound_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsound_types.QSound,
    filename: openArray[char],
    inst: VirtualQSound) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSound_new(addr(cQSound_mvtbl), addr(inst[]), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))
  inst[].owned = true

proc create*(T: type gen_qsound_types.QSound,
    filename: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQSound) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSound_new2(addr(cQSound_mvtbl), addr(inst[]), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsound_types.QSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_staticMetaObject())
