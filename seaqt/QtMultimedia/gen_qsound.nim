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

proc fcQSound_metaObject(self: pointer, ): pointer {.importc: "QSound_metaObject".}
proc fcQSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QSound_metacast".}
proc fcQSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSound_metacall".}
proc fcQSound_tr(s: cstring): struct_miqt_string {.importc: "QSound_tr".}
proc fcQSound_trUtf8(s: cstring): struct_miqt_string {.importc: "QSound_trUtf8".}
proc fcQSound_play(filename: struct_miqt_string): void {.importc: "QSound_play".}
proc fcQSound_loops(self: pointer, ): cint {.importc: "QSound_loops".}
proc fcQSound_loopsRemaining(self: pointer, ): cint {.importc: "QSound_loopsRemaining".}
proc fcQSound_setLoops(self: pointer, loops: cint): void {.importc: "QSound_setLoops".}
proc fcQSound_fileName(self: pointer, ): struct_miqt_string {.importc: "QSound_fileName".}
proc fcQSound_isFinished(self: pointer, ): bool {.importc: "QSound_isFinished".}
proc fcQSound_play2(self: pointer, ): void {.importc: "QSound_play2".}
proc fcQSound_stop(self: pointer, ): void {.importc: "QSound_stop".}
proc fcQSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_tr2".}
proc fcQSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_tr3".}
proc fcQSound_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSound_trUtf82".}
proc fcQSound_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSound_trUtf83".}
type cQSoundVTable = object
  destructor*: proc(vtbl: ptr cQSoundVTable, self: ptr cQSound) {.cdecl, raises:[], gcsafe.}
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
proc fcQSound_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSound_virtualbase_metaObject".}
proc fcQSound_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSound_virtualbase_metacast".}
proc fcQSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSound_virtualbase_metacall".}
proc fcQSound_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSound_virtualbase_event".}
proc fcQSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSound_virtualbase_eventFilter".}
proc fcQSound_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSound_virtualbase_timerEvent".}
proc fcQSound_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSound_virtualbase_childEvent".}
proc fcQSound_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSound_virtualbase_customEvent".}
proc fcQSound_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSound_virtualbase_connectNotify".}
proc fcQSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSound_virtualbase_disconnectNotify".}
proc fcQSound_protectedbase_sender(self: pointer, ): pointer {.importc: "QSound_protectedbase_sender".}
proc fcQSound_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSound_protectedbase_senderSignalIndex".}
proc fcQSound_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSound_protectedbase_receivers".}
proc fcQSound_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSound_protectedbase_isSignalConnected".}
proc fcQSound_new(vtbl: pointer, filename: struct_miqt_string): ptr cQSound {.importc: "QSound_new".}
proc fcQSound_new2(vtbl: pointer, filename: struct_miqt_string, parent: pointer): ptr cQSound {.importc: "QSound_new2".}
proc fcQSound_staticMetaObject(): pointer {.importc: "QSound_staticMetaObject".}
proc fcQSound_delete(self: pointer) {.importc: "QSound_delete".}

proc metaObject*(self: gen_qsound_types.QSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_metaObject(self.h))

proc metacast*(self: gen_qsound_types.QSound, param1: cstring): pointer =
  fcQSound_metacast(self.h, param1)

proc metacall*(self: gen_qsound_types.QSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsound_types.QSound, s: cstring): string =
  let v_ms = fcQSound_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring): string =
  let v_ms = fcQSound_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc play*(_: type gen_qsound_types.QSound, filename: string): void =
  fcQSound_play(struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc loops*(self: gen_qsound_types.QSound, ): cint =
  fcQSound_loops(self.h)

proc loopsRemaining*(self: gen_qsound_types.QSound, ): cint =
  fcQSound_loopsRemaining(self.h)

proc setLoops*(self: gen_qsound_types.QSound, loops: cint): void =
  fcQSound_setLoops(self.h, loops)

proc fileName*(self: gen_qsound_types.QSound, ): string =
  let v_ms = fcQSound_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isFinished*(self: gen_qsound_types.QSound, ): bool =
  fcQSound_isFinished(self.h)

proc play*(self: gen_qsound_types.QSound, ): void =
  fcQSound_play2(self.h)

proc stop*(self: gen_qsound_types.QSound, ): void =
  fcQSound_stop(self.h)

proc tr*(_: type gen_qsound_types.QSound, s: cstring, c: cstring): string =
  let v_ms = fcQSound_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsound_types.QSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring, c: cstring): string =
  let v_ms = fcQSound_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsound_types.QSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSound_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QSoundVTable* = object
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
proc QSoundmetaObject*(self: gen_qsound_types.QSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSound_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSoundmetacast*(self: gen_qsound_types.QSound, param1: cstring): pointer =
  fcQSound_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSound_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSoundmetacall*(self: gen_qsound_types.QSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSound_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSoundevent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QEvent): bool =
  fcQSound_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSound_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSoundeventFilter*(self: gen_qsound_types.QSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSound_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSound_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSoundtimerEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSound_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSound_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSoundchildEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSound_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSound_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSoundcustomEvent*(self: gen_qsound_types.QSound, event: gen_qcoreevent_types.QEvent): void =
  fcQSound_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSound_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSoundconnectNotify*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSound_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSound_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSounddisconnectNotify*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSound_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSound_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSoundVTable](vtbl)
  let self = QSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qsound_types.QSound, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSound_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsound_types.QSound, ): cint =
  fcQSound_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsound_types.QSound, signal: cstring): cint =
  fcQSound_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsound_types.QSound, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSound_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsound_types.QSound,
    filename: string,
    vtbl: ref QSoundVTable = nil): gen_qsound_types.QSound =
  let vtbl = if vtbl == nil: new QSoundVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSoundVTable, _: ptr cQSound) {.cdecl.} =
    let vtbl = cast[ref QSoundVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSound_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSound_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSound_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSound_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSound_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSound_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSound_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSound_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSound_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSound_disconnectNotify
  gen_qsound_types.QSound(h: fcQSound_new(addr(vtbl[]), struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc create*(T: type gen_qsound_types.QSound,
    filename: string, parent: gen_qobject_types.QObject,
    vtbl: ref QSoundVTable = nil): gen_qsound_types.QSound =
  let vtbl = if vtbl == nil: new QSoundVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSoundVTable, _: ptr cQSound) {.cdecl.} =
    let vtbl = cast[ref QSoundVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSound_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSound_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSound_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSound_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSound_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSound_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSound_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSound_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSound_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSound_disconnectNotify
  gen_qsound_types.QSound(h: fcQSound_new2(addr(vtbl[]), struct_miqt_string(data: filename, len: csize_t(len(filename))), parent.h))

proc staticMetaObject*(_: type gen_qsound_types.QSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSound_staticMetaObject())
proc delete*(self: gen_qsound_types.QSound) =
  fcQSound_delete(self.h)
