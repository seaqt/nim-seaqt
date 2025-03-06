import ./Qt5WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebEngineCore")  & " -fPIC"
{.compile("gen_qwebengineurlschemehandler.cpp", cflags).}


import ./gen_qwebengineurlschemehandler_types
export gen_qwebengineurlschemehandler_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qwebengineurlrequestjob_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwebengineurlrequestjob_types

type cQWebEngineUrlSchemeHandler*{.exportc: "QWebEngineUrlSchemeHandler", incompleteStruct.} = object

proc fcQWebEngineUrlSchemeHandler_new(): ptr cQWebEngineUrlSchemeHandler {.importc: "QWebEngineUrlSchemeHandler_new".}
proc fcQWebEngineUrlSchemeHandler_new2(parent: pointer): ptr cQWebEngineUrlSchemeHandler {.importc: "QWebEngineUrlSchemeHandler_new2".}
proc fcQWebEngineUrlSchemeHandler_metaObject(self: pointer, ): pointer {.importc: "QWebEngineUrlSchemeHandler_metaObject".}
proc fcQWebEngineUrlSchemeHandler_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlSchemeHandler_metacast".}
proc fcQWebEngineUrlSchemeHandler_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlSchemeHandler_metacall".}
proc fcQWebEngineUrlSchemeHandler_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr".}
proc fcQWebEngineUrlSchemeHandler_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf8".}
proc fcQWebEngineUrlSchemeHandler_requestStarted(self: pointer, param1: pointer): void {.importc: "QWebEngineUrlSchemeHandler_requestStarted".}
proc fcQWebEngineUrlSchemeHandler_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr2".}
proc fcQWebEngineUrlSchemeHandler_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr3".}
proc fcQWebEngineUrlSchemeHandler_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf82".}
proc fcQWebEngineUrlSchemeHandler_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf83".}
proc fQWebEngineUrlSchemeHandler_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebEngineUrlSchemeHandler_virtualbase_metaObject".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_metaObject".}
proc fQWebEngineUrlSchemeHandler_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebEngineUrlSchemeHandler_virtualbase_metacast".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_metacast".}
proc fQWebEngineUrlSchemeHandler_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebEngineUrlSchemeHandler_virtualbase_metacall".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_metacall".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_requestStarted(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_requestStarted".}
proc fQWebEngineUrlSchemeHandler_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebEngineUrlSchemeHandler_virtualbase_event".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_event".}
proc fQWebEngineUrlSchemeHandler_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineUrlSchemeHandler_virtualbase_eventFilter".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_eventFilter".}
proc fQWebEngineUrlSchemeHandler_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_timerEvent".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_timerEvent".}
proc fQWebEngineUrlSchemeHandler_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_childEvent".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_childEvent".}
proc fQWebEngineUrlSchemeHandler_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_customEvent".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_customEvent".}
proc fQWebEngineUrlSchemeHandler_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_connectNotify".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_connectNotify".}
proc fQWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_disconnectNotify".}
proc fcQWebEngineUrlSchemeHandler_staticMetaObject(): pointer {.importc: "QWebEngineUrlSchemeHandler_staticMetaObject".}
proc fcQWebEngineUrlSchemeHandler_delete(self: pointer) {.importc: "QWebEngineUrlSchemeHandler_delete".}


func init*(T: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, h: ptr cQWebEngineUrlSchemeHandler): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  T(h: h)
proc create*(T: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, ): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler.init(fcQWebEngineUrlSchemeHandler_new())

proc create*(T: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, parent: gen_qobject_types.QObject): gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler =
  gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler.init(fcQWebEngineUrlSchemeHandler_new2(parent.h))

proc metaObject*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlSchemeHandler_metaObject(self.h))

proc metacast*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cstring): pointer =
  fcQWebEngineUrlSchemeHandler_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineUrlSchemeHandler_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc requestStarted*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): void =
  fcQWebEngineUrlSchemeHandler_requestStarted(self.h, param1.h)

proc tr*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWebEngineUrlSchemeHandlermetaObject*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQWebEngineUrlSchemeHandler_virtualbase_metaObject(self.h))

type QWebEngineUrlSchemeHandlermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlermetaObjectProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_metaObject(self: ptr cQWebEngineUrlSchemeHandler, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_metaObject ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEngineUrlSchemeHandlermetacast*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cstring): pointer =
  fQWebEngineUrlSchemeHandler_virtualbase_metacast(self.h, param1)

type QWebEngineUrlSchemeHandlermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlermetacastProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_metacast(self: ptr cQWebEngineUrlSchemeHandler, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_metacast ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineUrlSchemeHandlermetacall*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, param1: cint, param2: cint, param3: pointer): cint =
  fQWebEngineUrlSchemeHandler_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEngineUrlSchemeHandlermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlermetacallProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_metacall(self: ptr cQWebEngineUrlSchemeHandler, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_metacall ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QWebEngineUrlSchemeHandlerrequestStartedProc* = proc(param1: gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob): void
proc onrequestStarted*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlerrequestStartedProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlerrequestStartedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_requestStarted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_requestStarted(self: ptr cQWebEngineUrlSchemeHandler, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_requestStarted ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlerrequestStartedProc](cast[pointer](slot))
  let slotval1 = gen_qwebengineurlrequestjob_types.QWebEngineUrlRequestJob(h: param1)


  nimfunc[](slotval1)
proc QWebEngineUrlSchemeHandlerevent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineUrlSchemeHandler_virtualbase_event(self.h, event.h)

type QWebEngineUrlSchemeHandlereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlereventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_event(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_event ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineUrlSchemeHandlereventFilter*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineUrlSchemeHandler_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineUrlSchemeHandlereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlereventFilterProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_eventFilter(self: ptr cQWebEngineUrlSchemeHandler, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_eventFilter ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebEngineUrlSchemeHandlertimerEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebEngineUrlSchemeHandler_virtualbase_timerEvent(self.h, event.h)

type QWebEngineUrlSchemeHandlertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlertimerEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_timerEvent(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_timerEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlSchemeHandlerchildEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebEngineUrlSchemeHandler_virtualbase_childEvent(self.h, event.h)

type QWebEngineUrlSchemeHandlerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlerchildEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_childEvent(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_childEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlSchemeHandlercustomEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, event: gen_qcoreevent_types.QEvent): void =
  fQWebEngineUrlSchemeHandler_virtualbase_customEvent(self.h, event.h)

type QWebEngineUrlSchemeHandlercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlercustomEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_customEvent(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_customEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlSchemeHandlerconnectNotify*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineUrlSchemeHandler_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineUrlSchemeHandlerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_connectNotify(self: ptr cQWebEngineUrlSchemeHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_connectNotify ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebEngineUrlSchemeHandlerdisconnectNotify*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineUrlSchemeHandlerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler, slot: QWebEngineUrlSchemeHandlerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlSchemeHandlerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_disconnectNotify(self: ptr cQWebEngineUrlSchemeHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebEngineUrlSchemeHandlerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlSchemeHandler_staticMetaObject())
proc delete*(self: gen_qwebengineurlschemehandler_types.QWebEngineUrlSchemeHandler) =
  fcQWebEngineUrlSchemeHandler_delete(self.h)
