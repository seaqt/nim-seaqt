import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qsignaltransition.cpp", cflags).}


import ./gen_qsignaltransition_types
export gen_qsignaltransition_types

import
  ./gen_qabstracttransition,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types
export
  gen_qabstracttransition,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQSignalTransition*{.exportc: "QSignalTransition", incompleteStruct.} = object

proc fcQSignalTransition_metaObject(self: pointer, ): pointer {.importc: "QSignalTransition_metaObject".}
proc fcQSignalTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalTransition_metacast".}
proc fcQSignalTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalTransition_metacall".}
proc fcQSignalTransition_tr(s: cstring): struct_miqt_string {.importc: "QSignalTransition_tr".}
proc fcQSignalTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QSignalTransition_trUtf8".}
proc fcQSignalTransition_senderObject(self: pointer, ): pointer {.importc: "QSignalTransition_senderObject".}
proc fcQSignalTransition_setSenderObject(self: pointer, sender: pointer): void {.importc: "QSignalTransition_setSenderObject".}
proc fcQSignalTransition_signal(self: pointer, ): struct_miqt_string {.importc: "QSignalTransition_signal".}
proc fcQSignalTransition_setSignal(self: pointer, signal: struct_miqt_string): void {.importc: "QSignalTransition_setSignal".}
proc fcQSignalTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalTransition_tr2".}
proc fcQSignalTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalTransition_tr3".}
proc fcQSignalTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalTransition_trUtf82".}
proc fcQSignalTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalTransition_trUtf83".}
type cQSignalTransitionVTable = object
  destructor*: proc(vtbl: ptr cQSignalTransitionVTable, self: ptr cQSignalTransition) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  eventTest*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  onTransition*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSignalTransition_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSignalTransition_virtualbase_metaObject".}
proc fcQSignalTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalTransition_virtualbase_metacast".}
proc fcQSignalTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalTransition_virtualbase_metacall".}
proc fcQSignalTransition_virtualbase_eventTest(self: pointer, event: pointer): bool {.importc: "QSignalTransition_virtualbase_eventTest".}
proc fcQSignalTransition_virtualbase_onTransition(self: pointer, event: pointer): void {.importc: "QSignalTransition_virtualbase_onTransition".}
proc fcQSignalTransition_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QSignalTransition_virtualbase_event".}
proc fcQSignalTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSignalTransition_virtualbase_eventFilter".}
proc fcQSignalTransition_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSignalTransition_virtualbase_timerEvent".}
proc fcQSignalTransition_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSignalTransition_virtualbase_childEvent".}
proc fcQSignalTransition_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSignalTransition_virtualbase_customEvent".}
proc fcQSignalTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSignalTransition_virtualbase_connectNotify".}
proc fcQSignalTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSignalTransition_virtualbase_disconnectNotify".}
proc fcQSignalTransition_protectedbase_sender(self: pointer, ): pointer {.importc: "QSignalTransition_protectedbase_sender".}
proc fcQSignalTransition_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSignalTransition_protectedbase_senderSignalIndex".}
proc fcQSignalTransition_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSignalTransition_protectedbase_receivers".}
proc fcQSignalTransition_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSignalTransition_protectedbase_isSignalConnected".}
proc fcQSignalTransition_new(vtbl: pointer, ): ptr cQSignalTransition {.importc: "QSignalTransition_new".}
proc fcQSignalTransition_new2(vtbl: pointer, sender: pointer, signal: cstring): ptr cQSignalTransition {.importc: "QSignalTransition_new2".}
proc fcQSignalTransition_new3(vtbl: pointer, sourceState: pointer): ptr cQSignalTransition {.importc: "QSignalTransition_new3".}
proc fcQSignalTransition_new4(vtbl: pointer, sender: pointer, signal: cstring, sourceState: pointer): ptr cQSignalTransition {.importc: "QSignalTransition_new4".}
proc fcQSignalTransition_staticMetaObject(): pointer {.importc: "QSignalTransition_staticMetaObject".}
proc fcQSignalTransition_delete(self: pointer) {.importc: "QSignalTransition_delete".}

proc metaObject*(self: gen_qsignaltransition_types.QSignalTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalTransition_metaObject(self.h))

proc metacast*(self: gen_qsignaltransition_types.QSignalTransition, param1: cstring): pointer =
  fcQSignalTransition_metacast(self.h, param1)

proc metacall*(self: gen_qsignaltransition_types.QSignalTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQSignalTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring): string =
  let v_ms = fcQSignalTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring): string =
  let v_ms = fcQSignalTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc senderObject*(self: gen_qsignaltransition_types.QSignalTransition, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalTransition_senderObject(self.h))

proc setSenderObject*(self: gen_qsignaltransition_types.QSignalTransition, sender: gen_qobject_types.QObject): void =
  fcQSignalTransition_setSenderObject(self.h, sender.h)

proc signal*(self: gen_qsignaltransition_types.QSignalTransition, ): seq[byte] =
  var v_bytearray = fcQSignalTransition_signal(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setSignal*(self: gen_qsignaltransition_types.QSignalTransition, signal: seq[byte]): void =
  fcQSignalTransition_setSignal(self.h, struct_miqt_string(data: cast[cstring](if len(signal) == 0: nil else: unsafeAddr signal[0]), len: csize_t(len(signal))))

proc tr*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring): string =
  let v_ms = fcQSignalTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring): string =
  let v_ms = fcQSignalTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignaltransition_types.QSignalTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSignalTransitionmetaObjectProc* = proc(self: QSignalTransition): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSignalTransitionmetacastProc* = proc(self: QSignalTransition, param1: cstring): pointer {.raises: [], gcsafe.}
type QSignalTransitionmetacallProc* = proc(self: QSignalTransition, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSignalTransitioneventTestProc* = proc(self: QSignalTransition, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSignalTransitiononTransitionProc* = proc(self: QSignalTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSignalTransitioneventProc* = proc(self: QSignalTransition, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSignalTransitioneventFilterProc* = proc(self: QSignalTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSignalTransitiontimerEventProc* = proc(self: QSignalTransition, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSignalTransitionchildEventProc* = proc(self: QSignalTransition, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSignalTransitioncustomEventProc* = proc(self: QSignalTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSignalTransitionconnectNotifyProc* = proc(self: QSignalTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSignalTransitiondisconnectNotifyProc* = proc(self: QSignalTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSignalTransitionVTable* = object
  vtbl: cQSignalTransitionVTable
  metaObject*: QSignalTransitionmetaObjectProc
  metacast*: QSignalTransitionmetacastProc
  metacall*: QSignalTransitionmetacallProc
  eventTest*: QSignalTransitioneventTestProc
  onTransition*: QSignalTransitiononTransitionProc
  event*: QSignalTransitioneventProc
  eventFilter*: QSignalTransitioneventFilterProc
  timerEvent*: QSignalTransitiontimerEventProc
  childEvent*: QSignalTransitionchildEventProc
  customEvent*: QSignalTransitioncustomEventProc
  connectNotify*: QSignalTransitionconnectNotifyProc
  disconnectNotify*: QSignalTransitiondisconnectNotifyProc
proc QSignalTransitionmetaObject*(self: gen_qsignaltransition_types.QSignalTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalTransition_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSignalTransition_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSignalTransitionmetacast*(self: gen_qsignaltransition_types.QSignalTransition, param1: cstring): pointer =
  fcQSignalTransition_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSignalTransition_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSignalTransitionmetacall*(self: gen_qsignaltransition_types.QSignalTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQSignalTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSignalTransition_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSignalTransitioneventTest*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QEvent): bool =
  fcQSignalTransition_virtualbase_eventTest(self.h, event.h)

proc miqt_exec_callback_cQSignalTransition_eventTest(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventTest(self, slotval1)
  virtualReturn

proc QSignalTransitiononTransition*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQSignalTransition_virtualbase_onTransition(self.h, event.h)

proc miqt_exec_callback_cQSignalTransition_onTransition(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onTransition(self, slotval1)

proc QSignalTransitionevent*(self: gen_qsignaltransition_types.QSignalTransition, e: gen_qcoreevent_types.QEvent): bool =
  fcQSignalTransition_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQSignalTransition_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSignalTransitioneventFilter*(self: gen_qsignaltransition_types.QSignalTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSignalTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSignalTransition_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSignalTransitiontimerEvent*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSignalTransition_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSignalTransition_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSignalTransitionchildEvent*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSignalTransition_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSignalTransition_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSignalTransitioncustomEvent*(self: gen_qsignaltransition_types.QSignalTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQSignalTransition_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSignalTransition_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSignalTransitionconnectNotify*(self: gen_qsignaltransition_types.QSignalTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSignalTransition_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSignalTransition_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSignalTransitiondisconnectNotify*(self: gen_qsignaltransition_types.QSignalTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSignalTransition_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSignalTransition_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalTransitionVTable](vtbl)
  let self = QSignalTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qsignaltransition_types.QSignalTransition, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalTransition_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsignaltransition_types.QSignalTransition, ): cint =
  fcQSignalTransition_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsignaltransition_types.QSignalTransition, signal: cstring): cint =
  fcQSignalTransition_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsignaltransition_types.QSignalTransition, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSignalTransition_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsignaltransition_types.QSignalTransition,
    vtbl: ref QSignalTransitionVTable = nil): gen_qsignaltransition_types.QSignalTransition =
  let vtbl = if vtbl == nil: new QSignalTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSignalTransitionVTable, _: ptr cQSignalTransition) {.cdecl.} =
    let vtbl = cast[ref QSignalTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSignalTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSignalTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSignalTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQSignalTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQSignalTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSignalTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSignalTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSignalTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSignalTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSignalTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSignalTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSignalTransition_disconnectNotify
  gen_qsignaltransition_types.QSignalTransition(h: fcQSignalTransition_new(addr(vtbl[]), ))

proc create*(T: type gen_qsignaltransition_types.QSignalTransition,
    sender: gen_qobject_types.QObject, signal: cstring,
    vtbl: ref QSignalTransitionVTable = nil): gen_qsignaltransition_types.QSignalTransition =
  let vtbl = if vtbl == nil: new QSignalTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSignalTransitionVTable, _: ptr cQSignalTransition) {.cdecl.} =
    let vtbl = cast[ref QSignalTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSignalTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSignalTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSignalTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQSignalTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQSignalTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSignalTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSignalTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSignalTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSignalTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSignalTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSignalTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSignalTransition_disconnectNotify
  gen_qsignaltransition_types.QSignalTransition(h: fcQSignalTransition_new2(addr(vtbl[]), sender.h, signal))

proc create*(T: type gen_qsignaltransition_types.QSignalTransition,
    sourceState: gen_qstate_types.QState,
    vtbl: ref QSignalTransitionVTable = nil): gen_qsignaltransition_types.QSignalTransition =
  let vtbl = if vtbl == nil: new QSignalTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSignalTransitionVTable, _: ptr cQSignalTransition) {.cdecl.} =
    let vtbl = cast[ref QSignalTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSignalTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSignalTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSignalTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQSignalTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQSignalTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSignalTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSignalTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSignalTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSignalTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSignalTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSignalTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSignalTransition_disconnectNotify
  gen_qsignaltransition_types.QSignalTransition(h: fcQSignalTransition_new3(addr(vtbl[]), sourceState.h))

proc create*(T: type gen_qsignaltransition_types.QSignalTransition,
    sender: gen_qobject_types.QObject, signal: cstring, sourceState: gen_qstate_types.QState,
    vtbl: ref QSignalTransitionVTable = nil): gen_qsignaltransition_types.QSignalTransition =
  let vtbl = if vtbl == nil: new QSignalTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSignalTransitionVTable, _: ptr cQSignalTransition) {.cdecl.} =
    let vtbl = cast[ref QSignalTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSignalTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSignalTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSignalTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQSignalTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQSignalTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSignalTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSignalTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSignalTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSignalTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSignalTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSignalTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSignalTransition_disconnectNotify
  gen_qsignaltransition_types.QSignalTransition(h: fcQSignalTransition_new4(addr(vtbl[]), sender.h, signal, sourceState.h))

proc staticMetaObject*(_: type gen_qsignaltransition_types.QSignalTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalTransition_staticMetaObject())
proc delete*(self: gen_qsignaltransition_types.QSignalTransition) =
  fcQSignalTransition_delete(self.h)
