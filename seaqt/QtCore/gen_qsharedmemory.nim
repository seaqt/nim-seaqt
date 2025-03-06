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
{.compile("gen_qsharedmemory.cpp", cflags).}


type QSharedMemoryAccessModeEnum* = distinct cint
template ReadOnly*(_: type QSharedMemoryAccessModeEnum): untyped = 0
template ReadWrite*(_: type QSharedMemoryAccessModeEnum): untyped = 1


type QSharedMemorySharedMemoryErrorEnum* = distinct cint
template NoError*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 0
template PermissionDenied*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 1
template InvalidSize*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 2
template KeyError*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 3
template AlreadyExists*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 4
template NotFound*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 5
template LockError*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 6
template OutOfResources*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 7
template UnknownError*(_: type QSharedMemorySharedMemoryErrorEnum): untyped = 8


import ./gen_qsharedmemory_types
export gen_qsharedmemory_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQSharedMemory*{.exportc: "QSharedMemory", incompleteStruct.} = object

proc fcQSharedMemory_metaObject(self: pointer, ): pointer {.importc: "QSharedMemory_metaObject".}
proc fcQSharedMemory_metacast(self: pointer, param1: cstring): pointer {.importc: "QSharedMemory_metacast".}
proc fcQSharedMemory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSharedMemory_metacall".}
proc fcQSharedMemory_tr(s: cstring): struct_miqt_string {.importc: "QSharedMemory_tr".}
proc fcQSharedMemory_trUtf8(s: cstring): struct_miqt_string {.importc: "QSharedMemory_trUtf8".}
proc fcQSharedMemory_setKey(self: pointer, key: struct_miqt_string): void {.importc: "QSharedMemory_setKey".}
proc fcQSharedMemory_key(self: pointer, ): struct_miqt_string {.importc: "QSharedMemory_key".}
proc fcQSharedMemory_setNativeKey(self: pointer, key: struct_miqt_string): void {.importc: "QSharedMemory_setNativeKey".}
proc fcQSharedMemory_nativeKey(self: pointer, ): struct_miqt_string {.importc: "QSharedMemory_nativeKey".}
proc fcQSharedMemory_create(self: pointer, size: cint): bool {.importc: "QSharedMemory_create".}
proc fcQSharedMemory_size(self: pointer, ): cint {.importc: "QSharedMemory_size".}
proc fcQSharedMemory_attach(self: pointer, ): bool {.importc: "QSharedMemory_attach".}
proc fcQSharedMemory_isAttached(self: pointer, ): bool {.importc: "QSharedMemory_isAttached".}
proc fcQSharedMemory_detach(self: pointer, ): bool {.importc: "QSharedMemory_detach".}
proc fcQSharedMemory_data(self: pointer, ): pointer {.importc: "QSharedMemory_data".}
proc fcQSharedMemory_constData(self: pointer, ): pointer {.importc: "QSharedMemory_constData".}
proc fcQSharedMemory_data2(self: pointer, ): pointer {.importc: "QSharedMemory_data2".}
proc fcQSharedMemory_lock(self: pointer, ): bool {.importc: "QSharedMemory_lock".}
proc fcQSharedMemory_unlock(self: pointer, ): bool {.importc: "QSharedMemory_unlock".}
proc fcQSharedMemory_error(self: pointer, ): cint {.importc: "QSharedMemory_error".}
proc fcQSharedMemory_errorString(self: pointer, ): struct_miqt_string {.importc: "QSharedMemory_errorString".}
proc fcQSharedMemory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSharedMemory_tr2".}
proc fcQSharedMemory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSharedMemory_tr3".}
proc fcQSharedMemory_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSharedMemory_trUtf82".}
proc fcQSharedMemory_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSharedMemory_trUtf83".}
proc fcQSharedMemory_create2(self: pointer, size: cint, mode: cint): bool {.importc: "QSharedMemory_create2".}
proc fcQSharedMemory_attach1(self: pointer, mode: cint): bool {.importc: "QSharedMemory_attach1".}
type cQSharedMemoryVTable = object
  destructor*: proc(vtbl: ptr cQSharedMemoryVTable, self: ptr cQSharedMemory) {.cdecl, raises:[], gcsafe.}
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
proc fcQSharedMemory_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSharedMemory_virtualbase_metaObject".}
proc fcQSharedMemory_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSharedMemory_virtualbase_metacast".}
proc fcQSharedMemory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSharedMemory_virtualbase_metacall".}
proc fcQSharedMemory_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSharedMemory_virtualbase_event".}
proc fcQSharedMemory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSharedMemory_virtualbase_eventFilter".}
proc fcQSharedMemory_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSharedMemory_virtualbase_timerEvent".}
proc fcQSharedMemory_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSharedMemory_virtualbase_childEvent".}
proc fcQSharedMemory_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSharedMemory_virtualbase_customEvent".}
proc fcQSharedMemory_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSharedMemory_virtualbase_connectNotify".}
proc fcQSharedMemory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSharedMemory_virtualbase_disconnectNotify".}
proc fcQSharedMemory_new(vtbl: pointer, ): ptr cQSharedMemory {.importc: "QSharedMemory_new".}
proc fcQSharedMemory_new2(vtbl: pointer, key: struct_miqt_string): ptr cQSharedMemory {.importc: "QSharedMemory_new2".}
proc fcQSharedMemory_new3(vtbl: pointer, parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new3".}
proc fcQSharedMemory_new4(vtbl: pointer, key: struct_miqt_string, parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new4".}
proc fcQSharedMemory_staticMetaObject(): pointer {.importc: "QSharedMemory_staticMetaObject".}
proc fcQSharedMemory_delete(self: pointer) {.importc: "QSharedMemory_delete".}

proc metaObject*(self: gen_qsharedmemory_types.QSharedMemory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSharedMemory_metaObject(self.h))

proc metacast*(self: gen_qsharedmemory_types.QSharedMemory, param1: cstring): pointer =
  fcQSharedMemory_metacast(self.h, param1)

proc metacall*(self: gen_qsharedmemory_types.QSharedMemory, param1: cint, param2: cint, param3: pointer): cint =
  fcQSharedMemory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring): string =
  let v_ms = fcQSharedMemory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring): string =
  let v_ms = fcQSharedMemory_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: gen_qsharedmemory_types.QSharedMemory, key: string): void =
  fcQSharedMemory_setKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc key*(self: gen_qsharedmemory_types.QSharedMemory, ): string =
  let v_ms = fcQSharedMemory_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setNativeKey*(self: gen_qsharedmemory_types.QSharedMemory, key: string): void =
  fcQSharedMemory_setNativeKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc nativeKey*(self: gen_qsharedmemory_types.QSharedMemory, ): string =
  let v_ms = fcQSharedMemory_nativeKey(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qsharedmemory_types.QSharedMemory, size: cint): bool =
  fcQSharedMemory_create(self.h, size)

proc size*(self: gen_qsharedmemory_types.QSharedMemory, ): cint =
  fcQSharedMemory_size(self.h)

proc attach*(self: gen_qsharedmemory_types.QSharedMemory, ): bool =
  fcQSharedMemory_attach(self.h)

proc isAttached*(self: gen_qsharedmemory_types.QSharedMemory, ): bool =
  fcQSharedMemory_isAttached(self.h)

proc detach*(self: gen_qsharedmemory_types.QSharedMemory, ): bool =
  fcQSharedMemory_detach(self.h)

proc data*(self: gen_qsharedmemory_types.QSharedMemory, ): pointer =
  fcQSharedMemory_data(self.h)

proc constData*(self: gen_qsharedmemory_types.QSharedMemory, ): pointer =
  fcQSharedMemory_constData(self.h)

proc data2*(self: gen_qsharedmemory_types.QSharedMemory, ): pointer =
  fcQSharedMemory_data2(self.h)

proc lock*(self: gen_qsharedmemory_types.QSharedMemory, ): bool =
  fcQSharedMemory_lock(self.h)

proc unlock*(self: gen_qsharedmemory_types.QSharedMemory, ): bool =
  fcQSharedMemory_unlock(self.h)

proc error*(self: gen_qsharedmemory_types.QSharedMemory, ): cint =
  cint(fcQSharedMemory_error(self.h))

proc errorString*(self: gen_qsharedmemory_types.QSharedMemory, ): string =
  let v_ms = fcQSharedMemory_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring): string =
  let v_ms = fcQSharedMemory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSharedMemory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring): string =
  let v_ms = fcQSharedMemory_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSharedMemory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: gen_qsharedmemory_types.QSharedMemory, size: cint, mode: cint): bool =
  fcQSharedMemory_create2(self.h, size, cint(mode))

proc attach*(self: gen_qsharedmemory_types.QSharedMemory, mode: cint): bool =
  fcQSharedMemory_attach1(self.h, cint(mode))

type QSharedMemorymetaObjectProc* = proc(self: QSharedMemory): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSharedMemorymetacastProc* = proc(self: QSharedMemory, param1: cstring): pointer {.raises: [], gcsafe.}
type QSharedMemorymetacallProc* = proc(self: QSharedMemory, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSharedMemoryeventProc* = proc(self: QSharedMemory, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSharedMemoryeventFilterProc* = proc(self: QSharedMemory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSharedMemorytimerEventProc* = proc(self: QSharedMemory, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSharedMemorychildEventProc* = proc(self: QSharedMemory, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSharedMemorycustomEventProc* = proc(self: QSharedMemory, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSharedMemoryconnectNotifyProc* = proc(self: QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSharedMemorydisconnectNotifyProc* = proc(self: QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSharedMemoryVTable* = object
  vtbl: cQSharedMemoryVTable
  metaObject*: QSharedMemorymetaObjectProc
  metacast*: QSharedMemorymetacastProc
  metacall*: QSharedMemorymetacallProc
  event*: QSharedMemoryeventProc
  eventFilter*: QSharedMemoryeventFilterProc
  timerEvent*: QSharedMemorytimerEventProc
  childEvent*: QSharedMemorychildEventProc
  customEvent*: QSharedMemorycustomEventProc
  connectNotify*: QSharedMemoryconnectNotifyProc
  disconnectNotify*: QSharedMemorydisconnectNotifyProc
proc QSharedMemorymetaObject*(self: gen_qsharedmemory_types.QSharedMemory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSharedMemory_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSharedMemory_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSharedMemorymetacast*(self: gen_qsharedmemory_types.QSharedMemory, param1: cstring): pointer =
  fcQSharedMemory_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSharedMemory_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSharedMemorymetacall*(self: gen_qsharedmemory_types.QSharedMemory, param1: cint, param2: cint, param3: pointer): cint =
  fcQSharedMemory_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSharedMemory_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSharedMemoryevent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QEvent): bool =
  fcQSharedMemory_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSharedMemory_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSharedMemoryeventFilter*(self: gen_qsharedmemory_types.QSharedMemory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSharedMemory_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSharedMemory_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSharedMemorytimerEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSharedMemory_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSharedMemory_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSharedMemorychildEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSharedMemory_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSharedMemory_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSharedMemorycustomEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QEvent): void =
  fcQSharedMemory_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSharedMemory_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSharedMemoryconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSharedMemory_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSharedMemory_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSharedMemorydisconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSharedMemory_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSharedMemory_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](vtbl)
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSharedMemoryVTable, _: ptr cQSharedMemory) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSharedMemory_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSharedMemory_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSharedMemory_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSharedMemory_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSharedMemory_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSharedMemory_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSharedMemory_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSharedMemory_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSharedMemory_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSharedMemory_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new(addr(vtbl[]), ))

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    key: string,
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSharedMemoryVTable, _: ptr cQSharedMemory) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSharedMemory_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSharedMemory_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSharedMemory_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSharedMemory_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSharedMemory_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSharedMemory_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSharedMemory_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSharedMemory_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSharedMemory_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSharedMemory_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new2(addr(vtbl[]), struct_miqt_string(data: key, len: csize_t(len(key)))))

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSharedMemoryVTable, _: ptr cQSharedMemory) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSharedMemory_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSharedMemory_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSharedMemory_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSharedMemory_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSharedMemory_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSharedMemory_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSharedMemory_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSharedMemory_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSharedMemory_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSharedMemory_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    key: string, parent: gen_qobject_types.QObject,
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSharedMemoryVTable, _: ptr cQSharedMemory) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSharedMemory_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSharedMemory_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSharedMemory_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSharedMemory_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSharedMemory_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSharedMemory_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSharedMemory_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSharedMemory_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSharedMemory_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSharedMemory_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new4(addr(vtbl[]), struct_miqt_string(data: key, len: csize_t(len(key))), parent.h))

proc staticMetaObject*(_: type gen_qsharedmemory_types.QSharedMemory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSharedMemory_staticMetaObject())
proc delete*(self: gen_qsharedmemory_types.QSharedMemory) =
  fcQSharedMemory_delete(self.h)
