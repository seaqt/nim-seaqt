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
{.compile("gen_qhistorystate.cpp", cflags).}


type QHistoryStateHistoryTypeEnum* = distinct cint
template ShallowHistory*(_: type QHistoryStateHistoryTypeEnum): untyped = 0
template DeepHistory*(_: type QHistoryStateHistoryTypeEnum): untyped = 1


import ./gen_qhistorystate_types
export gen_qhistorystate_types

import
  ./gen_qabstractstate,
  ./gen_qabstracttransition_types,
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types,
  ./gen_qstate_types
export
  gen_qabstractstate,
  gen_qabstracttransition_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qstate_types

type cQHistoryState*{.exportc: "QHistoryState", incompleteStruct.} = object

proc fcQHistoryState_metaObject(self: pointer, ): pointer {.importc: "QHistoryState_metaObject".}
proc fcQHistoryState_metacast(self: pointer, param1: cstring): pointer {.importc: "QHistoryState_metacast".}
proc fcQHistoryState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHistoryState_metacall".}
proc fcQHistoryState_tr(s: cstring): struct_miqt_string {.importc: "QHistoryState_tr".}
proc fcQHistoryState_trUtf8(s: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf8".}
proc fcQHistoryState_defaultTransition(self: pointer, ): pointer {.importc: "QHistoryState_defaultTransition".}
proc fcQHistoryState_setDefaultTransition(self: pointer, transition: pointer): void {.importc: "QHistoryState_setDefaultTransition".}
proc fcQHistoryState_defaultState(self: pointer, ): pointer {.importc: "QHistoryState_defaultState".}
proc fcQHistoryState_setDefaultState(self: pointer, state: pointer): void {.importc: "QHistoryState_setDefaultState".}
proc fcQHistoryState_historyType(self: pointer, ): cint {.importc: "QHistoryState_historyType".}
proc fcQHistoryState_setHistoryType(self: pointer, typeVal: cint): void {.importc: "QHistoryState_setHistoryType".}
proc fcQHistoryState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_tr2".}
proc fcQHistoryState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_tr3".}
proc fcQHistoryState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf82".}
proc fcQHistoryState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_trUtf83".}
type cQHistoryStateVTable = object
  destructor*: proc(vtbl: ptr cQHistoryStateVTable, self: ptr cQHistoryState) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  onEntry*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  onExit*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQHistoryState_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QHistoryState_virtualbase_metaObject".}
proc fcQHistoryState_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QHistoryState_virtualbase_metacast".}
proc fcQHistoryState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHistoryState_virtualbase_metacall".}
proc fcQHistoryState_virtualbase_onEntry(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_onEntry".}
proc fcQHistoryState_virtualbase_onExit(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_onExit".}
proc fcQHistoryState_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QHistoryState_virtualbase_event".}
proc fcQHistoryState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QHistoryState_virtualbase_eventFilter".}
proc fcQHistoryState_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_timerEvent".}
proc fcQHistoryState_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_childEvent".}
proc fcQHistoryState_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QHistoryState_virtualbase_customEvent".}
proc fcQHistoryState_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QHistoryState_virtualbase_connectNotify".}
proc fcQHistoryState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QHistoryState_virtualbase_disconnectNotify".}
proc fcQHistoryState_new(vtbl: pointer, ): ptr cQHistoryState {.importc: "QHistoryState_new".}
proc fcQHistoryState_new2(vtbl: pointer, typeVal: cint): ptr cQHistoryState {.importc: "QHistoryState_new2".}
proc fcQHistoryState_new3(vtbl: pointer, parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new3".}
proc fcQHistoryState_new4(vtbl: pointer, typeVal: cint, parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new4".}
proc fcQHistoryState_staticMetaObject(): pointer {.importc: "QHistoryState_staticMetaObject".}
proc fcQHistoryState_delete(self: pointer) {.importc: "QHistoryState_delete".}

proc metaObject*(self: gen_qhistorystate_types.QHistoryState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHistoryState_metaObject(self.h))

proc metacast*(self: gen_qhistorystate_types.QHistoryState, param1: cstring): pointer =
  fcQHistoryState_metacast(self.h, param1)

proc metacall*(self: gen_qhistorystate_types.QHistoryState, param1: cint, param2: cint, param3: pointer): cint =
  fcQHistoryState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring): string =
  let v_ms = fcQHistoryState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring): string =
  let v_ms = fcQHistoryState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultTransition*(self: gen_qhistorystate_types.QHistoryState, ): gen_qabstracttransition_types.QAbstractTransition =
  gen_qabstracttransition_types.QAbstractTransition(h: fcQHistoryState_defaultTransition(self.h))

proc setDefaultTransition*(self: gen_qhistorystate_types.QHistoryState, transition: gen_qabstracttransition_types.QAbstractTransition): void =
  fcQHistoryState_setDefaultTransition(self.h, transition.h)

proc defaultState*(self: gen_qhistorystate_types.QHistoryState, ): gen_qabstractstate_types.QAbstractState =
  gen_qabstractstate_types.QAbstractState(h: fcQHistoryState_defaultState(self.h))

proc setDefaultState*(self: gen_qhistorystate_types.QHistoryState, state: gen_qabstractstate_types.QAbstractState): void =
  fcQHistoryState_setDefaultState(self.h, state.h)

proc historyType*(self: gen_qhistorystate_types.QHistoryState, ): cint =
  cint(fcQHistoryState_historyType(self.h))

proc setHistoryType*(self: gen_qhistorystate_types.QHistoryState, typeVal: cint): void =
  fcQHistoryState_setHistoryType(self.h, cint(typeVal))

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring): string =
  let v_ms = fcQHistoryState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHistoryState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring): string =
  let v_ms = fcQHistoryState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhistorystate_types.QHistoryState, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHistoryState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QHistoryStatemetaObjectProc* = proc(self: QHistoryState): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QHistoryStatemetacastProc* = proc(self: QHistoryState, param1: cstring): pointer {.raises: [], gcsafe.}
type QHistoryStatemetacallProc* = proc(self: QHistoryState, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QHistoryStateonEntryProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHistoryStateonExitProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHistoryStateeventProc* = proc(self: QHistoryState, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHistoryStateeventFilterProc* = proc(self: QHistoryState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHistoryStatetimerEventProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QHistoryStatechildEventProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QHistoryStatecustomEventProc* = proc(self: QHistoryState, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHistoryStateconnectNotifyProc* = proc(self: QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHistoryStatedisconnectNotifyProc* = proc(self: QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHistoryStateVTable* = object
  vtbl: cQHistoryStateVTable
  metaObject*: QHistoryStatemetaObjectProc
  metacast*: QHistoryStatemetacastProc
  metacall*: QHistoryStatemetacallProc
  onEntry*: QHistoryStateonEntryProc
  onExit*: QHistoryStateonExitProc
  event*: QHistoryStateeventProc
  eventFilter*: QHistoryStateeventFilterProc
  timerEvent*: QHistoryStatetimerEventProc
  childEvent*: QHistoryStatechildEventProc
  customEvent*: QHistoryStatecustomEventProc
  connectNotify*: QHistoryStateconnectNotifyProc
  disconnectNotify*: QHistoryStatedisconnectNotifyProc
proc QHistoryStatemetaObject*(self: gen_qhistorystate_types.QHistoryState, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHistoryState_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQHistoryState_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QHistoryStatemetacast*(self: gen_qhistorystate_types.QHistoryState, param1: cstring): pointer =
  fcQHistoryState_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQHistoryState_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QHistoryStatemetacall*(self: gen_qhistorystate_types.QHistoryState, param1: cint, param2: cint, param3: pointer): cint =
  fcQHistoryState_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQHistoryState_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QHistoryStateonEntry*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fcQHistoryState_virtualbase_onEntry(self.h, event.h)

proc miqt_exec_callback_cQHistoryState_onEntry(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onEntry(self, slotval1)

proc QHistoryStateonExit*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fcQHistoryState_virtualbase_onExit(self.h, event.h)

proc miqt_exec_callback_cQHistoryState_onExit(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].onExit(self, slotval1)

proc QHistoryStateevent*(self: gen_qhistorystate_types.QHistoryState, e: gen_qcoreevent_types.QEvent): bool =
  fcQHistoryState_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQHistoryState_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QHistoryStateeventFilter*(self: gen_qhistorystate_types.QHistoryState, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHistoryState_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQHistoryState_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QHistoryStatetimerEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHistoryState_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQHistoryState_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QHistoryStatechildEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QChildEvent): void =
  fcQHistoryState_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQHistoryState_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QHistoryStatecustomEvent*(self: gen_qhistorystate_types.QHistoryState, event: gen_qcoreevent_types.QEvent): void =
  fcQHistoryState_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQHistoryState_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QHistoryStateconnectNotify*(self: gen_qhistorystate_types.QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHistoryState_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHistoryState_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QHistoryStatedisconnectNotify*(self: gen_qhistorystate_types.QHistoryState, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHistoryState_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHistoryState_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHistoryStateVTable](vtbl)
  let self = QHistoryState(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHistoryStateVTable, _: ptr cQHistoryState) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHistoryState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHistoryState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHistoryState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQHistoryState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQHistoryState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHistoryState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHistoryState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHistoryState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHistoryState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHistoryState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHistoryState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHistoryState_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new(addr(vtbl[]), ))

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    typeVal: cint,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHistoryStateVTable, _: ptr cQHistoryState) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHistoryState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHistoryState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHistoryState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQHistoryState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQHistoryState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHistoryState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHistoryState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHistoryState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHistoryState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHistoryState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHistoryState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHistoryState_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new2(addr(vtbl[]), cint(typeVal)))

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    parent: gen_qstate_types.QState,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHistoryStateVTable, _: ptr cQHistoryState) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHistoryState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHistoryState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHistoryState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQHistoryState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQHistoryState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHistoryState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHistoryState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHistoryState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHistoryState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHistoryState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHistoryState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHistoryState_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qhistorystate_types.QHistoryState,
    typeVal: cint, parent: gen_qstate_types.QState,
    vtbl: ref QHistoryStateVTable = nil): gen_qhistorystate_types.QHistoryState =
  let vtbl = if vtbl == nil: new QHistoryStateVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQHistoryStateVTable, _: ptr cQHistoryState) {.cdecl.} =
    let vtbl = cast[ref QHistoryStateVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHistoryState_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHistoryState_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHistoryState_metacall
  if not isNil(vtbl.onEntry):
    vtbl[].vtbl.onEntry = miqt_exec_callback_cQHistoryState_onEntry
  if not isNil(vtbl.onExit):
    vtbl[].vtbl.onExit = miqt_exec_callback_cQHistoryState_onExit
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHistoryState_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHistoryState_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHistoryState_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHistoryState_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHistoryState_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHistoryState_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHistoryState_disconnectNotify
  gen_qhistorystate_types.QHistoryState(h: fcQHistoryState_new4(addr(vtbl[]), cint(typeVal), parent.h))

proc staticMetaObject*(_: type gen_qhistorystate_types.QHistoryState): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHistoryState_staticMetaObject())
proc delete*(self: gen_qhistorystate_types.QHistoryState) =
  fcQHistoryState_delete(self.h)
