import ./qtcore_pkg

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


{.compile("gen_qsharedmemory.cpp", QtCoreCFlags).}


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

proc fcQSharedMemory_metaObject(self: pointer): pointer {.importc: "QSharedMemory_metaObject".}
proc fcQSharedMemory_metacast(self: pointer, param1: cstring): pointer {.importc: "QSharedMemory_metacast".}
proc fcQSharedMemory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSharedMemory_metacall".}
proc fcQSharedMemory_tr(s: cstring): struct_miqt_string {.importc: "QSharedMemory_tr".}
proc fcQSharedMemory_trUtf8(s: cstring): struct_miqt_string {.importc: "QSharedMemory_trUtf8".}
proc fcQSharedMemory_setKey(self: pointer, key: struct_miqt_string): void {.importc: "QSharedMemory_setKey".}
proc fcQSharedMemory_key(self: pointer): struct_miqt_string {.importc: "QSharedMemory_key".}
proc fcQSharedMemory_setNativeKey(self: pointer, key: struct_miqt_string): void {.importc: "QSharedMemory_setNativeKey".}
proc fcQSharedMemory_nativeKey(self: pointer): struct_miqt_string {.importc: "QSharedMemory_nativeKey".}
proc fcQSharedMemory_createX(self: pointer, size: cint): bool {.importc: "QSharedMemory_create".}
proc fcQSharedMemory_size(self: pointer): cint {.importc: "QSharedMemory_size".}
proc fcQSharedMemory_attach(self: pointer): bool {.importc: "QSharedMemory_attach".}
proc fcQSharedMemory_isAttached(self: pointer): bool {.importc: "QSharedMemory_isAttached".}
proc fcQSharedMemory_detach(self: pointer): bool {.importc: "QSharedMemory_detach".}
proc fcQSharedMemory_data(self: pointer): pointer {.importc: "QSharedMemory_data".}
proc fcQSharedMemory_constData(self: pointer): pointer {.importc: "QSharedMemory_constData".}
proc fcQSharedMemory_data2(self: pointer): pointer {.importc: "QSharedMemory_data2".}
proc fcQSharedMemory_lock(self: pointer): bool {.importc: "QSharedMemory_lock".}
proc fcQSharedMemory_unlock(self: pointer): bool {.importc: "QSharedMemory_unlock".}
proc fcQSharedMemory_error(self: pointer): cint {.importc: "QSharedMemory_error".}
proc fcQSharedMemory_errorString(self: pointer): struct_miqt_string {.importc: "QSharedMemory_errorString".}
proc fcQSharedMemory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSharedMemory_tr2".}
proc fcQSharedMemory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSharedMemory_tr3".}
proc fcQSharedMemory_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSharedMemory_trUtf82".}
proc fcQSharedMemory_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSharedMemory_trUtf83".}
proc fcQSharedMemory_create2(self: pointer, size: cint, mode: cint): bool {.importc: "QSharedMemory_create2".}
proc fcQSharedMemory_attach1(self: pointer, mode: cint): bool {.importc: "QSharedMemory_attach1".}
proc fcQSharedMemory_vtbl(self: pointer): pointer {.importc: "QSharedMemory_vtbl".}
proc fcQSharedMemory_vdata(self: pointer): pointer {.importc: "QSharedMemory_vdata".}

type cQSharedMemoryVTable {.pure.} = object
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
proc fcQSharedMemory_virtualbase_metaObject(self: pointer): pointer {.importc: "QSharedMemory_virtualbase_metaObject".}
proc fcQSharedMemory_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSharedMemory_virtualbase_metacast".}
proc fcQSharedMemory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSharedMemory_virtualbase_metacall".}
proc fcQSharedMemory_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSharedMemory_virtualbase_event".}
proc fcQSharedMemory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSharedMemory_virtualbase_eventFilter".}
proc fcQSharedMemory_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSharedMemory_virtualbase_timerEvent".}
proc fcQSharedMemory_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSharedMemory_virtualbase_childEvent".}
proc fcQSharedMemory_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSharedMemory_virtualbase_customEvent".}
proc fcQSharedMemory_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSharedMemory_virtualbase_connectNotify".}
proc fcQSharedMemory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSharedMemory_virtualbase_disconnectNotify".}
proc fcQSharedMemory_protectedbase_sender(self: pointer): pointer {.importc: "QSharedMemory_protectedbase_sender".}
proc fcQSharedMemory_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSharedMemory_protectedbase_senderSignalIndex".}
proc fcQSharedMemory_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSharedMemory_protectedbase_receivers".}
proc fcQSharedMemory_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSharedMemory_protectedbase_isSignalConnected".}
proc fcQSharedMemory_new(vtbl, vdata: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new".}
proc fcQSharedMemory_new2(vtbl, vdata: pointer, key: struct_miqt_string): ptr cQSharedMemory {.importc: "QSharedMemory_new2".}
proc fcQSharedMemory_new3(vtbl, vdata: pointer, parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new3".}
proc fcQSharedMemory_new4(vtbl, vdata: pointer, key: struct_miqt_string, parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new4".}
proc fcQSharedMemory_staticMetaObject(): pointer {.importc: "QSharedMemory_staticMetaObject".}

proc metaObject*(self: gen_qsharedmemory_types.QSharedMemory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSharedMemory_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsharedmemory_types.QSharedMemory, param1: cstring): pointer =
  fcQSharedMemory_metacast(self.h, param1)

proc metacall*(self: gen_qsharedmemory_types.QSharedMemory, param1: cint, param2: cint, param3: pointer): cint =
  fcQSharedMemory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring): string =
  let v_ms = fcQSharedMemory_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring): string =
  let v_ms = fcQSharedMemory_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: gen_qsharedmemory_types.QSharedMemory, key: openArray[char]): void =
  fcQSharedMemory_setKey(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc key*(self: gen_qsharedmemory_types.QSharedMemory): string =
  let v_ms = fcQSharedMemory_key(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setNativeKey*(self: gen_qsharedmemory_types.QSharedMemory, key: openArray[char]): void =
  fcQSharedMemory_setNativeKey(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc nativeKey*(self: gen_qsharedmemory_types.QSharedMemory): string =
  let v_ms = fcQSharedMemory_nativeKey(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createX*(self: gen_qsharedmemory_types.QSharedMemory, size: cint): bool =
  fcQSharedMemory_createX(self.h, size)

proc size*(self: gen_qsharedmemory_types.QSharedMemory): cint =
  fcQSharedMemory_size(self.h)

proc attach*(self: gen_qsharedmemory_types.QSharedMemory): bool =
  fcQSharedMemory_attach(self.h)

proc isAttached*(self: gen_qsharedmemory_types.QSharedMemory): bool =
  fcQSharedMemory_isAttached(self.h)

proc detach*(self: gen_qsharedmemory_types.QSharedMemory): bool =
  fcQSharedMemory_detach(self.h)

proc data*(self: gen_qsharedmemory_types.QSharedMemory): pointer =
  fcQSharedMemory_data(self.h)

proc constData*(self: gen_qsharedmemory_types.QSharedMemory): pointer =
  fcQSharedMemory_constData(self.h)

proc data2*(self: gen_qsharedmemory_types.QSharedMemory): pointer =
  fcQSharedMemory_data2(self.h)

proc lock*(self: gen_qsharedmemory_types.QSharedMemory): bool =
  fcQSharedMemory_lock(self.h)

proc unlock*(self: gen_qsharedmemory_types.QSharedMemory): bool =
  fcQSharedMemory_unlock(self.h)

proc error*(self: gen_qsharedmemory_types.QSharedMemory): cint =
  cint(fcQSharedMemory_error(self.h))

proc errorString*(self: gen_qsharedmemory_types.QSharedMemory): string =
  let v_ms = fcQSharedMemory_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring): string =
  let v_ms = fcQSharedMemory_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSharedMemory_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring): string =
  let v_ms = fcQSharedMemory_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsharedmemory_types.QSharedMemory, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSharedMemory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createX*(self: gen_qsharedmemory_types.QSharedMemory, size: cint, mode: cint): bool =
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

type QSharedMemoryVTable* {.inheritable, pure.} = object
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

proc QSharedMemorymetaObject*(self: gen_qsharedmemory_types.QSharedMemory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSharedMemory_virtualbase_metaObject(self.h), owned: false)

proc QSharedMemorymetacast*(self: gen_qsharedmemory_types.QSharedMemory, param1: cstring): pointer =
  fcQSharedMemory_virtualbase_metacast(self.h, param1)

proc QSharedMemorymetacall*(self: gen_qsharedmemory_types.QSharedMemory, param1: cint, param2: cint, param3: pointer): cint =
  fcQSharedMemory_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSharedMemoryevent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QEvent): bool =
  fcQSharedMemory_virtualbase_event(self.h, event.h)

proc QSharedMemoryeventFilter*(self: gen_qsharedmemory_types.QSharedMemory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSharedMemory_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSharedMemorytimerEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSharedMemory_virtualbase_timerEvent(self.h, event.h)

proc QSharedMemorychildEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSharedMemory_virtualbase_childEvent(self.h, event.h)

proc QSharedMemorycustomEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QEvent): void =
  fcQSharedMemory_virtualbase_customEvent(self.h, event.h)

proc QSharedMemoryconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSharedMemory_virtualbase_connectNotify(self.h, signal.h)

proc QSharedMemorydisconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSharedMemory_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSharedMemory_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSharedMemory_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSharedMemory_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSharedMemory_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSharedMemory_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSharedMemory_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSharedMemory_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSharedMemory_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSharedMemory_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSharedMemory_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSharedMemoryVTable](fcQSharedMemory_vdata(self))
  let self = QSharedMemory(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSharedMemory* {.inheritable.} = ref object of QSharedMemory
  vtbl*: cQSharedMemoryVTable

method metaObject*(self: VirtualQSharedMemory): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSharedMemorymetaObject(self[])
method metacast*(self: VirtualQSharedMemory, param1: cstring): pointer {.base.} =
  QSharedMemorymetacast(self[], param1)
method metacall*(self: VirtualQSharedMemory, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSharedMemorymetacall(self[], param1, param2, param3)
method event*(self: VirtualQSharedMemory, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSharedMemoryevent(self[], event)
method eventFilter*(self: VirtualQSharedMemory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSharedMemoryeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSharedMemory, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSharedMemorytimerEvent(self[], event)
method childEvent*(self: VirtualQSharedMemory, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSharedMemorychildEvent(self[], event)
method customEvent*(self: VirtualQSharedMemory, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSharedMemorycustomEvent(self[], event)
method connectNotify*(self: VirtualQSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSharedMemoryconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSharedMemorydisconnectNotify(self[], signal)

proc fcQSharedMemory_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSharedMemory_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSharedMemory_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSharedMemory_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSharedMemory_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSharedMemory_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSharedMemory_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSharedMemory_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSharedMemory_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSharedMemory_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSharedMemory](fcQSharedMemory_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qsharedmemory_types.QSharedMemory): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSharedMemory_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsharedmemory_types.QSharedMemory): cint =
  fcQSharedMemory_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsharedmemory_types.QSharedMemory, signal: cstring): cint =
  fcQSharedMemory_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsharedmemory_types.QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSharedMemory_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](fcQSharedMemory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSharedMemory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSharedMemory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSharedMemory_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSharedMemory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSharedMemory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSharedMemory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSharedMemory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSharedMemory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSharedMemory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSharedMemory_vtable_callback_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    key: openArray[char],
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](fcQSharedMemory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSharedMemory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSharedMemory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSharedMemory_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSharedMemory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSharedMemory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSharedMemory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSharedMemory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSharedMemory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSharedMemory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSharedMemory_vtable_callback_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](fcQSharedMemory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSharedMemory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSharedMemory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSharedMemory_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSharedMemory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSharedMemory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSharedMemory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSharedMemory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSharedMemory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSharedMemory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSharedMemory_vtable_callback_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    key: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QSharedMemoryVTable = nil): gen_qsharedmemory_types.QSharedMemory =
  let vtbl = if vtbl == nil: new QSharedMemoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSharedMemoryVTable](fcQSharedMemory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSharedMemory_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSharedMemory_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSharedMemory_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSharedMemory_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSharedMemory_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSharedMemory_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSharedMemory_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSharedMemory_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSharedMemory_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSharedMemory_vtable_callback_disconnectNotify
  gen_qsharedmemory_types.QSharedMemory(h: fcQSharedMemory_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), parent.h), owned: true)

const cQSharedMemory_mvtbl = cQSharedMemoryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSharedMemory()[])](self.fcQSharedMemory_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSharedMemory_method_callback_metaObject,
  metacast: fcQSharedMemory_method_callback_metacast,
  metacall: fcQSharedMemory_method_callback_metacall,
  event: fcQSharedMemory_method_callback_event,
  eventFilter: fcQSharedMemory_method_callback_eventFilter,
  timerEvent: fcQSharedMemory_method_callback_timerEvent,
  childEvent: fcQSharedMemory_method_callback_childEvent,
  customEvent: fcQSharedMemory_method_callback_customEvent,
  connectNotify: fcQSharedMemory_method_callback_connectNotify,
  disconnectNotify: fcQSharedMemory_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    inst: VirtualQSharedMemory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSharedMemory_new(addr(cQSharedMemory_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    key: openArray[char],
    inst: VirtualQSharedMemory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSharedMemory_new2(addr(cQSharedMemory_mvtbl), addr(inst[]), struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))
  inst[].owned = true

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSharedMemory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSharedMemory_new3(addr(cQSharedMemory_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qsharedmemory_types.QSharedMemory,
    key: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQSharedMemory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSharedMemory_new4(addr(cQSharedMemory_mvtbl), addr(inst[]), struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsharedmemory_types.QSharedMemory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSharedMemory_staticMetaObject())
