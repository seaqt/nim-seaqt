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
{.compile("gen_qobjectcleanuphandler.cpp", cflags).}


import ./gen_qobjectcleanuphandler_types
export gen_qobjectcleanuphandler_types

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

type cQObjectCleanupHandler*{.exportc: "QObjectCleanupHandler", incompleteStruct.} = object

proc fcQObjectCleanupHandler_new(): ptr cQObjectCleanupHandler {.importc: "QObjectCleanupHandler_new".}
proc fcQObjectCleanupHandler_metaObject(self: pointer, ): pointer {.importc: "QObjectCleanupHandler_metaObject".}
proc fcQObjectCleanupHandler_metacast(self: pointer, param1: cstring): pointer {.importc: "QObjectCleanupHandler_metacast".}
proc fcQObjectCleanupHandler_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObjectCleanupHandler_metacall".}
proc fcQObjectCleanupHandler_tr(s: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr".}
proc fcQObjectCleanupHandler_trUtf8(s: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf8".}
proc fcQObjectCleanupHandler_add(self: pointer, objectVal: pointer): pointer {.importc: "QObjectCleanupHandler_add".}
proc fcQObjectCleanupHandler_remove(self: pointer, objectVal: pointer): void {.importc: "QObjectCleanupHandler_remove".}
proc fcQObjectCleanupHandler_isEmpty(self: pointer, ): bool {.importc: "QObjectCleanupHandler_isEmpty".}
proc fcQObjectCleanupHandler_clear(self: pointer, ): void {.importc: "QObjectCleanupHandler_clear".}
proc fcQObjectCleanupHandler_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr2".}
proc fcQObjectCleanupHandler_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObjectCleanupHandler_tr3".}
proc fcQObjectCleanupHandler_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf82".}
proc fcQObjectCleanupHandler_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf83".}
proc fQObjectCleanupHandler_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QObjectCleanupHandler_virtualbase_metaObject".}
proc fcQObjectCleanupHandler_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_metaObject".}
proc fQObjectCleanupHandler_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QObjectCleanupHandler_virtualbase_metacast".}
proc fcQObjectCleanupHandler_override_virtual_metacast(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_metacast".}
proc fQObjectCleanupHandler_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QObjectCleanupHandler_virtualbase_metacall".}
proc fcQObjectCleanupHandler_override_virtual_metacall(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_metacall".}
proc fQObjectCleanupHandler_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QObjectCleanupHandler_virtualbase_event".}
proc fcQObjectCleanupHandler_override_virtual_event(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_event".}
proc fQObjectCleanupHandler_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QObjectCleanupHandler_virtualbase_eventFilter".}
proc fcQObjectCleanupHandler_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_eventFilter".}
proc fQObjectCleanupHandler_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_timerEvent".}
proc fcQObjectCleanupHandler_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_timerEvent".}
proc fQObjectCleanupHandler_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_childEvent".}
proc fcQObjectCleanupHandler_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_childEvent".}
proc fQObjectCleanupHandler_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_customEvent".}
proc fcQObjectCleanupHandler_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_customEvent".}
proc fQObjectCleanupHandler_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_connectNotify".}
proc fcQObjectCleanupHandler_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_connectNotify".}
proc fQObjectCleanupHandler_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_disconnectNotify".}
proc fcQObjectCleanupHandler_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_disconnectNotify".}
proc fcQObjectCleanupHandler_staticMetaObject(): pointer {.importc: "QObjectCleanupHandler_staticMetaObject".}
proc fcQObjectCleanupHandler_delete(self: pointer) {.importc: "QObjectCleanupHandler_delete".}


func init*(T: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, h: ptr cQObjectCleanupHandler): gen_qobjectcleanuphandler_types.QObjectCleanupHandler =
  T(h: h)
proc create*(T: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): gen_qobjectcleanuphandler_types.QObjectCleanupHandler =
  gen_qobjectcleanuphandler_types.QObjectCleanupHandler.init(fcQObjectCleanupHandler_new())

proc metaObject*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_metaObject(self.h))

proc metacast*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cstring): pointer =
  fcQObjectCleanupHandler_metacast(self.h, param1)

proc metacall*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQObjectCleanupHandler_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring): string =
  let v_ms = fcQObjectCleanupHandler_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring): string =
  let v_ms = fcQObjectCleanupHandler_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc add*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, objectVal: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQObjectCleanupHandler_add(self.h, objectVal.h))

proc remove*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, objectVal: gen_qobject_types.QObject): void =
  fcQObjectCleanupHandler_remove(self.h, objectVal.h)

proc isEmpty*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): bool =
  fcQObjectCleanupHandler_isEmpty(self.h)

proc clear*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): void =
  fcQObjectCleanupHandler_clear(self.h)

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring): string =
  let v_ms = fcQObjectCleanupHandler_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObjectCleanupHandler_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring): string =
  let v_ms = fcQObjectCleanupHandler_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQObjectCleanupHandler_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QObjectCleanupHandlermetaObject*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQObjectCleanupHandler_virtualbase_metaObject(self.h))

type QObjectCleanupHandlermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlermetaObjectProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_metaObject(self: ptr cQObjectCleanupHandler, slot: int): pointer {.exportc: "miqt_exec_callback_QObjectCleanupHandler_metaObject ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QObjectCleanupHandlermetacast*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cstring): pointer =
  fQObjectCleanupHandler_virtualbase_metacast(self.h, param1)

type QObjectCleanupHandlermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlermetacastProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_metacast(self: ptr cQObjectCleanupHandler, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QObjectCleanupHandler_metacast ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QObjectCleanupHandlermetacall*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, param1: cint, param2: cint, param3: pointer): cint =
  fQObjectCleanupHandler_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QObjectCleanupHandlermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlermetacallProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_metacall(self: ptr cQObjectCleanupHandler, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QObjectCleanupHandler_metacall ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QObjectCleanupHandlerevent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): bool =
  fQObjectCleanupHandler_virtualbase_event(self.h, event.h)

type QObjectCleanupHandlereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlereventProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_event(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QObjectCleanupHandler_event ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QObjectCleanupHandlereventFilter*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQObjectCleanupHandler_virtualbase_eventFilter(self.h, watched.h, event.h)

type QObjectCleanupHandlereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlereventFilterProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_eventFilter(self: ptr cQObjectCleanupHandler, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QObjectCleanupHandler_eventFilter ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QObjectCleanupHandlertimerEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QTimerEvent): void =
  fQObjectCleanupHandler_virtualbase_timerEvent(self.h, event.h)

type QObjectCleanupHandlertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlertimerEventProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_timerEvent(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_timerEvent ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QObjectCleanupHandlerchildEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QChildEvent): void =
  fQObjectCleanupHandler_virtualbase_childEvent(self.h, event.h)

type QObjectCleanupHandlerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlerchildEventProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_childEvent(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_childEvent ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QObjectCleanupHandlercustomEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, event: gen_qcoreevent_types.QEvent): void =
  fQObjectCleanupHandler_virtualbase_customEvent(self.h, event.h)

type QObjectCleanupHandlercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlercustomEventProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_customEvent(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_customEvent ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QObjectCleanupHandlerconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQObjectCleanupHandler_virtualbase_connectNotify(self.h, signal.h)

type QObjectCleanupHandlerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_connectNotify(self: ptr cQObjectCleanupHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_connectNotify ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QObjectCleanupHandlerdisconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQObjectCleanupHandler_virtualbase_disconnectNotify(self.h, signal.h)

type QObjectCleanupHandlerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler, slot: QObjectCleanupHandlerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QObjectCleanupHandlerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_disconnectNotify(self: ptr cQObjectCleanupHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_disconnectNotify ".} =
  var nimfunc = cast[ptr QObjectCleanupHandlerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qobjectcleanuphandler_types.QObjectCleanupHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQObjectCleanupHandler_staticMetaObject())
proc delete*(self: gen_qobjectcleanuphandler_types.QObjectCleanupHandler) =
  fcQObjectCleanupHandler_delete(self.h)
