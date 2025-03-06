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

proc fcQSharedMemory_new(): ptr cQSharedMemory {.importc: "QSharedMemory_new".}
proc fcQSharedMemory_new2(key: struct_miqt_string): ptr cQSharedMemory {.importc: "QSharedMemory_new2".}
proc fcQSharedMemory_new3(parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new3".}
proc fcQSharedMemory_new4(key: struct_miqt_string, parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new4".}
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
proc fQSharedMemory_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSharedMemory_virtualbase_metaObject".}
proc fcQSharedMemory_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_metaObject".}
proc fQSharedMemory_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSharedMemory_virtualbase_metacast".}
proc fcQSharedMemory_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_metacast".}
proc fQSharedMemory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSharedMemory_virtualbase_metacall".}
proc fcQSharedMemory_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_metacall".}
proc fQSharedMemory_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSharedMemory_virtualbase_event".}
proc fcQSharedMemory_override_virtual_event(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_event".}
proc fQSharedMemory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSharedMemory_virtualbase_eventFilter".}
proc fcQSharedMemory_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_eventFilter".}
proc fQSharedMemory_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSharedMemory_virtualbase_timerEvent".}
proc fcQSharedMemory_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_timerEvent".}
proc fQSharedMemory_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSharedMemory_virtualbase_childEvent".}
proc fcQSharedMemory_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_childEvent".}
proc fQSharedMemory_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSharedMemory_virtualbase_customEvent".}
proc fcQSharedMemory_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_customEvent".}
proc fQSharedMemory_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSharedMemory_virtualbase_connectNotify".}
proc fcQSharedMemory_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_connectNotify".}
proc fQSharedMemory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSharedMemory_virtualbase_disconnectNotify".}
proc fcQSharedMemory_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_disconnectNotify".}
proc fcQSharedMemory_staticMetaObject(): pointer {.importc: "QSharedMemory_staticMetaObject".}
proc fcQSharedMemory_delete(self: pointer) {.importc: "QSharedMemory_delete".}


func init*(T: type gen_qsharedmemory_types.QSharedMemory, h: ptr cQSharedMemory): gen_qsharedmemory_types.QSharedMemory =
  T(h: h)
proc create*(T: type gen_qsharedmemory_types.QSharedMemory, ): gen_qsharedmemory_types.QSharedMemory =
  gen_qsharedmemory_types.QSharedMemory.init(fcQSharedMemory_new())

proc create*(T: type gen_qsharedmemory_types.QSharedMemory, key: string): gen_qsharedmemory_types.QSharedMemory =
  gen_qsharedmemory_types.QSharedMemory.init(fcQSharedMemory_new2(struct_miqt_string(data: key, len: csize_t(len(key)))))

proc create*(T: type gen_qsharedmemory_types.QSharedMemory, parent: gen_qobject_types.QObject): gen_qsharedmemory_types.QSharedMemory =
  gen_qsharedmemory_types.QSharedMemory.init(fcQSharedMemory_new3(parent.h))

proc create*(T: type gen_qsharedmemory_types.QSharedMemory, key: string, parent: gen_qobject_types.QObject): gen_qsharedmemory_types.QSharedMemory =
  gen_qsharedmemory_types.QSharedMemory.init(fcQSharedMemory_new4(struct_miqt_string(data: key, len: csize_t(len(key))), parent.h))

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

proc QSharedMemorymetaObject*(self: gen_qsharedmemory_types.QSharedMemory, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSharedMemory_virtualbase_metaObject(self.h))

type QSharedMemorymetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemorymetaObjectProc) =
  # TODO check subclass
  var tmp = new QSharedMemorymetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_metaObject(self: ptr cQSharedMemory, slot: int): pointer {.exportc: "miqt_exec_callback_QSharedMemory_metaObject ".} =
  var nimfunc = cast[ptr QSharedMemorymetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSharedMemorymetacast*(self: gen_qsharedmemory_types.QSharedMemory, param1: cstring): pointer =
  fQSharedMemory_virtualbase_metacast(self.h, param1)

type QSharedMemorymetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemorymetacastProc) =
  # TODO check subclass
  var tmp = new QSharedMemorymetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_metacast(self: ptr cQSharedMemory, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSharedMemory_metacast ".} =
  var nimfunc = cast[ptr QSharedMemorymetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSharedMemorymetacall*(self: gen_qsharedmemory_types.QSharedMemory, param1: cint, param2: cint, param3: pointer): cint =
  fQSharedMemory_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSharedMemorymetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemorymetacallProc) =
  # TODO check subclass
  var tmp = new QSharedMemorymetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_metacall(self: ptr cQSharedMemory, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSharedMemory_metacall ".} =
  var nimfunc = cast[ptr QSharedMemorymetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSharedMemoryevent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QEvent): bool =
  fQSharedMemory_virtualbase_event(self.h, event.h)

type QSharedMemoryeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemoryeventProc) =
  # TODO check subclass
  var tmp = new QSharedMemoryeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_event(self: ptr cQSharedMemory, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSharedMemory_event ".} =
  var nimfunc = cast[ptr QSharedMemoryeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSharedMemoryeventFilter*(self: gen_qsharedmemory_types.QSharedMemory, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSharedMemory_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSharedMemoryeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemoryeventFilterProc) =
  # TODO check subclass
  var tmp = new QSharedMemoryeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_eventFilter(self: ptr cQSharedMemory, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSharedMemory_eventFilter ".} =
  var nimfunc = cast[ptr QSharedMemoryeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSharedMemorytimerEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSharedMemory_virtualbase_timerEvent(self.h, event.h)

type QSharedMemorytimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemorytimerEventProc) =
  # TODO check subclass
  var tmp = new QSharedMemorytimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_timerEvent(self: ptr cQSharedMemory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_timerEvent ".} =
  var nimfunc = cast[ptr QSharedMemorytimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSharedMemorychildEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QChildEvent): void =
  fQSharedMemory_virtualbase_childEvent(self.h, event.h)

type QSharedMemorychildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemorychildEventProc) =
  # TODO check subclass
  var tmp = new QSharedMemorychildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_childEvent(self: ptr cQSharedMemory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_childEvent ".} =
  var nimfunc = cast[ptr QSharedMemorychildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSharedMemorycustomEvent*(self: gen_qsharedmemory_types.QSharedMemory, event: gen_qcoreevent_types.QEvent): void =
  fQSharedMemory_virtualbase_customEvent(self.h, event.h)

type QSharedMemorycustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemorycustomEventProc) =
  # TODO check subclass
  var tmp = new QSharedMemorycustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_customEvent(self: ptr cQSharedMemory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_customEvent ".} =
  var nimfunc = cast[ptr QSharedMemorycustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSharedMemoryconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSharedMemory_virtualbase_connectNotify(self.h, signal.h)

type QSharedMemoryconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemoryconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSharedMemoryconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_connectNotify(self: ptr cQSharedMemory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_connectNotify ".} =
  var nimfunc = cast[ptr QSharedMemoryconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSharedMemorydisconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSharedMemory_virtualbase_disconnectNotify(self.h, signal.h)

type QSharedMemorydisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsharedmemory_types.QSharedMemory, slot: QSharedMemorydisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSharedMemorydisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_disconnectNotify(self: ptr cQSharedMemory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_disconnectNotify ".} =
  var nimfunc = cast[ptr QSharedMemorydisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsharedmemory_types.QSharedMemory): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSharedMemory_staticMetaObject())
proc delete*(self: gen_qsharedmemory_types.QSharedMemory) =
  fcQSharedMemory_delete(self.h)
