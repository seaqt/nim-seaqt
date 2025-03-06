import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qkeyeventtransition.cpp", cflags).}


import ./gen_qkeyeventtransition_types
export gen_qkeyeventtransition_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qeventtransition,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qstate_types
export
  gen_qcoreevent_types,
  gen_qeventtransition,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQKeyEventTransition*{.exportc: "QKeyEventTransition", incompleteStruct.} = object

proc fcQKeyEventTransition_metaObject(self: pointer, ): pointer {.importc: "QKeyEventTransition_metaObject".}
proc fcQKeyEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeyEventTransition_metacast".}
proc fcQKeyEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeyEventTransition_metacall".}
proc fcQKeyEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr".}
proc fcQKeyEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf8".}
proc fcQKeyEventTransition_key(self: pointer, ): cint {.importc: "QKeyEventTransition_key".}
proc fcQKeyEventTransition_setKey(self: pointer, key: cint): void {.importc: "QKeyEventTransition_setKey".}
proc fcQKeyEventTransition_modifierMask(self: pointer, ): cint {.importc: "QKeyEventTransition_modifierMask".}
proc fcQKeyEventTransition_setModifierMask(self: pointer, modifiers: cint): void {.importc: "QKeyEventTransition_setModifierMask".}
proc fcQKeyEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr2".}
proc fcQKeyEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_tr3".}
proc fcQKeyEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf82".}
proc fcQKeyEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_trUtf83".}
type cQKeyEventTransitionVTable = object
  destructor*: proc(vtbl: ptr cQKeyEventTransitionVTable, self: ptr cQKeyEventTransition) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  onTransition*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventTest*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQKeyEventTransition_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QKeyEventTransition_virtualbase_metaObject".}
proc fcQKeyEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeyEventTransition_virtualbase_metacast".}
proc fcQKeyEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeyEventTransition_virtualbase_metacall".}
proc fcQKeyEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_onTransition".}
proc fcQKeyEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool {.importc: "QKeyEventTransition_virtualbase_eventTest".}
proc fcQKeyEventTransition_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QKeyEventTransition_virtualbase_event".}
proc fcQKeyEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QKeyEventTransition_virtualbase_eventFilter".}
proc fcQKeyEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_timerEvent".}
proc fcQKeyEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_childEvent".}
proc fcQKeyEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QKeyEventTransition_virtualbase_customEvent".}
proc fcQKeyEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QKeyEventTransition_virtualbase_connectNotify".}
proc fcQKeyEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QKeyEventTransition_virtualbase_disconnectNotify".}
proc fcQKeyEventTransition_new(vtbl: pointer, ): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new".}
proc fcQKeyEventTransition_new2(vtbl: pointer, objectVal: pointer, typeVal: cint, key: cint): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new2".}
proc fcQKeyEventTransition_new3(vtbl: pointer, sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new3".}
proc fcQKeyEventTransition_new4(vtbl: pointer, objectVal: pointer, typeVal: cint, key: cint, sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new4".}
proc fcQKeyEventTransition_staticMetaObject(): pointer {.importc: "QKeyEventTransition_staticMetaObject".}
proc fcQKeyEventTransition_delete(self: pointer) {.importc: "QKeyEventTransition_delete".}

proc metaObject*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_metaObject(self.h))

proc metacast*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cstring): pointer =
  fcQKeyEventTransition_metacast(self.h, param1)

proc metacall*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeyEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring): string =
  let v_ms = fcQKeyEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring): string =
  let v_ms = fcQKeyEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc key*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): cint =
  fcQKeyEventTransition_key(self.h)

proc setKey*(self: gen_qkeyeventtransition_types.QKeyEventTransition, key: cint): void =
  fcQKeyEventTransition_setKey(self.h, key)

proc modifierMask*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): cint =
  cint(fcQKeyEventTransition_modifierMask(self.h))

proc setModifierMask*(self: gen_qkeyeventtransition_types.QKeyEventTransition, modifiers: cint): void =
  fcQKeyEventTransition_setModifierMask(self.h, cint(modifiers))

proc tr*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQKeyEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQKeyEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring): string =
  let v_ms = fcQKeyEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeyeventtransition_types.QKeyEventTransition, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQKeyEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QKeyEventTransitionmetaObjectProc* = proc(self: QKeyEventTransition): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QKeyEventTransitionmetacastProc* = proc(self: QKeyEventTransition, param1: cstring): pointer {.raises: [], gcsafe.}
type QKeyEventTransitionmetacallProc* = proc(self: QKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QKeyEventTransitiononTransitionProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitioneventTestProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeyEventTransitioneventProc* = proc(self: QKeyEventTransition, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeyEventTransitioneventFilterProc* = proc(self: QKeyEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeyEventTransitiontimerEventProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitionchildEventProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitioncustomEventProc* = proc(self: QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeyEventTransitionconnectNotifyProc* = proc(self: QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QKeyEventTransitiondisconnectNotifyProc* = proc(self: QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QKeyEventTransitionVTable* = object
  vtbl: cQKeyEventTransitionVTable
  metaObject*: QKeyEventTransitionmetaObjectProc
  metacast*: QKeyEventTransitionmetacastProc
  metacall*: QKeyEventTransitionmetacallProc
  onTransition*: QKeyEventTransitiononTransitionProc
  eventTest*: QKeyEventTransitioneventTestProc
  event*: QKeyEventTransitioneventProc
  eventFilter*: QKeyEventTransitioneventFilterProc
  timerEvent*: QKeyEventTransitiontimerEventProc
  childEvent*: QKeyEventTransitionchildEventProc
  customEvent*: QKeyEventTransitioncustomEventProc
  connectNotify*: QKeyEventTransitionconnectNotifyProc
  disconnectNotify*: QKeyEventTransitiondisconnectNotifyProc
proc QKeyEventTransitionmetaObject*(self: gen_qkeyeventtransition_types.QKeyEventTransition, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQKeyEventTransition_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QKeyEventTransitionmetacast*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cstring): pointer =
  fcQKeyEventTransition_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQKeyEventTransition_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QKeyEventTransitionmetacall*(self: gen_qkeyeventtransition_types.QKeyEventTransition, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeyEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQKeyEventTransition_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QKeyEventTransitiononTransition*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQKeyEventTransition_virtualbase_onTransition(self.h, event.h)

proc miqt_exec_callback_cQKeyEventTransition_onTransition(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onTransition(self, slotval1)

proc QKeyEventTransitioneventTest*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): bool =
  fcQKeyEventTransition_virtualbase_eventTest(self.h, event.h)

proc miqt_exec_callback_cQKeyEventTransition_eventTest(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventTest(self, slotval1)
  virtualReturn

proc QKeyEventTransitionevent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, e: gen_qcoreevent_types.QEvent): bool =
  fcQKeyEventTransition_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQKeyEventTransition_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QKeyEventTransitioneventFilter*(self: gen_qkeyeventtransition_types.QKeyEventTransition, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQKeyEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQKeyEventTransition_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QKeyEventTransitiontimerEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQKeyEventTransition_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQKeyEventTransition_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QKeyEventTransitionchildEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QChildEvent): void =
  fcQKeyEventTransition_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQKeyEventTransition_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QKeyEventTransitioncustomEvent*(self: gen_qkeyeventtransition_types.QKeyEventTransition, event: gen_qcoreevent_types.QEvent): void =
  fcQKeyEventTransition_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQKeyEventTransition_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QKeyEventTransitionconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeyEventTransition_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQKeyEventTransition_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QKeyEventTransitiondisconnectNotify*(self: gen_qkeyeventtransition_types.QKeyEventTransition, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeyEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQKeyEventTransition_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeyEventTransitionVTable](vtbl)
  let self = QKeyEventTransition(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventTransitionVTable, _: ptr cQKeyEventTransition) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeyEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeyEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeyEventTransition_metacall
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQKeyEventTransition_onTransition
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQKeyEventTransition_eventTest
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeyEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeyEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeyEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeyEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeyEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeyEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeyEventTransition_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new(addr(vtbl[]), ))

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventTransitionVTable, _: ptr cQKeyEventTransition) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeyEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeyEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeyEventTransition_metacall
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQKeyEventTransition_onTransition
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQKeyEventTransition_eventTest
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeyEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeyEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeyEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeyEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeyEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeyEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeyEventTransition_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new2(addr(vtbl[]), objectVal.h, cint(typeVal), key))

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    sourceState: gen_qstate_types.QState,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventTransitionVTable, _: ptr cQKeyEventTransition) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeyEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeyEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeyEventTransition_metacall
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQKeyEventTransition_onTransition
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQKeyEventTransition_eventTest
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeyEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeyEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeyEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeyEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeyEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeyEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeyEventTransition_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new3(addr(vtbl[]), sourceState.h))

proc create*(T: type gen_qkeyeventtransition_types.QKeyEventTransition,
    objectVal: gen_qobject_types.QObject, typeVal: cint, key: cint, sourceState: gen_qstate_types.QState,
    vtbl: ref QKeyEventTransitionVTable = nil): gen_qkeyeventtransition_types.QKeyEventTransition =
  let vtbl = if vtbl == nil: new QKeyEventTransitionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQKeyEventTransitionVTable, _: ptr cQKeyEventTransition) {.cdecl.} =
    let vtbl = cast[ref QKeyEventTransitionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeyEventTransition_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeyEventTransition_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeyEventTransition_metacall
  if not isNil(vtbl.onTransition):
    vtbl[].vtbl.onTransition = miqt_exec_callback_cQKeyEventTransition_onTransition
  if not isNil(vtbl.eventTest):
    vtbl[].vtbl.eventTest = miqt_exec_callback_cQKeyEventTransition_eventTest
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeyEventTransition_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeyEventTransition_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeyEventTransition_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeyEventTransition_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeyEventTransition_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeyEventTransition_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeyEventTransition_disconnectNotify
  gen_qkeyeventtransition_types.QKeyEventTransition(h: fcQKeyEventTransition_new4(addr(vtbl[]), objectVal.h, cint(typeVal), key, sourceState.h))

proc staticMetaObject*(_: type gen_qkeyeventtransition_types.QKeyEventTransition): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeyEventTransition_staticMetaObject())
proc delete*(self: gen_qkeyeventtransition_types.QKeyEventTransition) =
  fcQKeyEventTransition_delete(self.h)
