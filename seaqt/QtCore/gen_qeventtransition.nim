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
{.compile("gen_qeventtransition.cpp", cflags).}


import ./gen_qeventtransition_types
export gen_qeventtransition_types

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

type cQEventTransition*{.exportc: "QEventTransition", incompleteStruct.} = object

proc fcQEventTransition_metaObject(self: pointer, ): pointer {.importc: "QEventTransition_metaObject".}
proc fcQEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventTransition_metacast".}
proc fcQEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventTransition_metacall".}
proc fcQEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QEventTransition_tr".}
proc fcQEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf8".}
proc fcQEventTransition_eventSource(self: pointer, ): pointer {.importc: "QEventTransition_eventSource".}
proc fcQEventTransition_setEventSource(self: pointer, objectVal: pointer): void {.importc: "QEventTransition_setEventSource".}
proc fcQEventTransition_eventType(self: pointer, ): cint {.importc: "QEventTransition_eventType".}
proc fcQEventTransition_setEventType(self: pointer, typeVal: cint): void {.importc: "QEventTransition_setEventType".}
proc fcQEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_tr2".}
proc fcQEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_tr3".}
proc fcQEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf82".}
proc fcQEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_trUtf83".}
type cQEventTransitionVTable = object
  destructor*: proc(vtbl: ptr cQEventTransitionVTable, self: ptr cQEventTransition) {.cdecl, raises:[], gcsafe.}
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
proc fcQEventTransition_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QEventTransition_virtualbase_metaObject".}
proc fcQEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventTransition_virtualbase_metacast".}
proc fcQEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventTransition_virtualbase_metacall".}
proc fcQEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool {.importc: "QEventTransition_virtualbase_eventTest".}
proc fcQEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_onTransition".}
proc fcQEventTransition_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QEventTransition_virtualbase_event".}
proc fcQEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QEventTransition_virtualbase_eventFilter".}
proc fcQEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_timerEvent".}
proc fcQEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_childEvent".}
proc fcQEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QEventTransition_virtualbase_customEvent".}
proc fcQEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QEventTransition_virtualbase_connectNotify".}
proc fcQEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QEventTransition_virtualbase_disconnectNotify".}
proc fcQEventTransition_protectedbase_sender(self: pointer, ): pointer {.importc: "QEventTransition_protectedbase_sender".}
proc fcQEventTransition_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QEventTransition_protectedbase_senderSignalIndex".}
proc fcQEventTransition_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QEventTransition_protectedbase_receivers".}
proc fcQEventTransition_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QEventTransition_protectedbase_isSignalConnected".}
proc fcQEventTransition_new(vtbl: pointer, ): ptr cQEventTransition {.importc: "QEventTransition_new".}
proc fcQEventTransition_new2(vtbl: pointer, objectVal: pointer, typeVal: cint): ptr cQEventTransition {.importc: "QEventTransition_new2".}
proc fcQEventTransition_new3(vtbl: pointer, sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new3".}
proc fcQEventTransition_new4(vtbl: pointer, objectVal: pointer, typeVal: cint, sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new4".}
proc fcQEventTransition_staticMetaObject(): pointer {.importc: "QEventTransition_staticMetaObject".}
proc fcQEventTransition_delete(self: pointer) {.importc: "QEventTransition_delete".}

proc metaObject*(self: gen_qeventtransition_types.QEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_metaObject(self.h))

proc metacast*(self: gen_qeventtransition_types.QEventTransition, param1: cstring): pointer =
  fcQEventTransition_metacast(self.h, param1)

proc metacall*(self: gen_qeventtransition_types.QEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring): string =
  let v_ms = fcQEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring): string =
  let v_ms = fcQEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc eventSource*(self: gen_qeventtransition_types.QEventTransition, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQEventTransition_eventSource(self.h))

proc setEventSource*(self: gen_qeventtransition_types.QEventTransition, objectVal: gen_qobject_types.QObject): void =
  fcQEventTransition_setEventSource(self.h, objectVal.h)

proc eventType*(self: gen_qeventtransition_types.QEventTransition, ): cint =
  cint(fcQEventTransition_eventType(self.h))

proc setEventType*(self: gen_qeventtransition_types.QEventTransition, typeVal: cint): void =
  fcQEventTransition_setEventType(self.h, cint(typeVal))

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qeventtransition_types.QEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QEventTransitionmetaObjectProc* = proc(self: QEventTransition): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QEventTransitionmetacastProc* = proc(self: QEventTransition, param1: cstring): pointer {.raises: [], gcsafe.}
type QEventTransitionmetacallProc* = proc(self: QEventTransition, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QEventTransitioneventTestProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventTransitiononTransitionProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QEventTransitioneventProc* = proc(self: QEventTransition, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventTransitioneventFilterProc* = proc(self: QEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QEventTransitiontimerEventProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QEventTransitionchildEventProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QEventTransitioncustomEventProc* = proc(self: QEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QEventTransitionconnectNotifyProc* = proc(self: QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QEventTransitiondisconnectNotifyProc* = proc(self: QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QEventTransitionVTable* = object
  vtbl: cQEventTransitionVTable
  metaObject*: QEventTransitionmetaObjectProc
  metacast*: QEventTransitionmetacastProc
  metacall*: QEventTransitionmetacallProc
  eventTest*: QEventTransitioneventTestProc
  onTransition*: QEventTransitiononTransitionProc
  event*: QEventTransitioneventProc
  eventFilter*: QEventTransitioneventFilterProc
  timerEvent*: QEventTransitiontimerEventProc
  childEvent*: QEventTransitionchildEventProc
  customEvent*: QEventTransitioncustomEventProc
  connectNotify*: QEventTransitionconnectNotifyProc
  disconnectNotify*: QEventTransitiondisconnectNotifyProc
proc QEventTransitionmetaObject*(self: gen_qeventtransition_types.QEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQEventTransition_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QEventTransitionmetacast*(self: gen_qeventtransition_types.QEventTransition, param1: cstring): pointer =
  fcQEventTransition_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQEventTransition_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QEventTransitionmetacall*(self: gen_qeventtransition_types.QEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQEventTransition_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QEventTransitioneventTest*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fcQEventTransition_virtualbase_eventTest(self.h, event.h)

proc miqt_exec_callback_cQEventTransition_eventTest(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventTest(self, slotval1)
  virtualReturn

proc QEventTransitiononTransition*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQEventTransition_virtualbase_onTransition(self.h, event.h)

proc miqt_exec_callback_cQEventTransition_onTransition(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onTransition(self, slotval1)

proc QEventTransitionevent*(self: gen_qeventtransition_types.QEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fcQEventTransition_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQEventTransition_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QEventTransitioneventFilter*(self: gen_qeventtransition_types.QEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQEventTransition_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QEventTransitiontimerEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQEventTransition_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQEventTransition_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QEventTransitionchildEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fcQEventTransition_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQEventTransition_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QEventTransitioncustomEvent*(self: gen_qeventtransition_types.QEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQEventTransition_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQEventTransition_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QEventTransitionconnectNotify*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQEventTransition_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQEventTransition_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QEventTransitiondisconnectNotify*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQEventTransition_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QEventTransitionVTable](vtbl)
  let self = QEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qeventtransition_types.QEventTransition, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQEventTransition_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qeventtransition_types.QEventTransition, ): cint =
  fcQEventTransition_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qeventtransition_types.QEventTransition, signal: cstring): cint =
  fcQEventTransition_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qeventtransition_types.QEventTransition, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQEventTransition_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQEventTransitionVTable, _: ptr cQEventTransition) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQEventTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQEventTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQEventTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQEventTransition_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new(addr(vtbl[]), ))

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQEventTransitionVTable, _: ptr cQEventTransition) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQEventTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQEventTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQEventTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQEventTransition_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new2(addr(vtbl[]), objectVal.h, cint(typeVal)))

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    sourceState: gen_qstate_types.QState,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQEventTransitionVTable, _: ptr cQEventTransition) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQEventTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQEventTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQEventTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQEventTransition_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new3(addr(vtbl[]), sourceState.h))

proc create*(T: type gen_qeventtransition_types.QEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, sourceState: gen_qstate_types.QState,
    vtbl: ref QEventTransitionVTable = nil): gen_qeventtransition_types.QEventTransition =
  let vtbl = if vtbl == nil: new QEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQEventTransitionVTable, _: ptr cQEventTransition) {.cdecl.} =
    let vtbl = cast[ref QEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQEventTransition_metacall
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQEventTransition_eventTest
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQEventTransition_onTransition
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQEventTransition_disconnectNotify
  gen_qeventtransition_types.QEventTransition(h: fcQEventTransition_new4(addr(vtbl[]), objectVal.h, cint(typeVal), sourceState.h))

proc staticMetaObject*(_: type gen_qeventtransition_types.QEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEventTransition_staticMetaObject())
proc delete*(self: gen_qeventtransition_types.QEventTransition) =
  fcQEventTransition_delete(self.h)
