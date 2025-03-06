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
{.compile("gen_qwebengineurlrequestinterceptor.cpp", cflags).}


import ./gen_qwebengineurlrequestinterceptor_types
export gen_qwebengineurlrequestinterceptor_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qwebengineurlrequestinfo_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwebengineurlrequestinfo_types

type cQWebEngineUrlRequestInterceptor*{.exportc: "QWebEngineUrlRequestInterceptor", incompleteStruct.} = object

proc fcQWebEngineUrlRequestInterceptor_new(): ptr cQWebEngineUrlRequestInterceptor {.importc: "QWebEngineUrlRequestInterceptor_new".}
proc fcQWebEngineUrlRequestInterceptor_new2(p: pointer): ptr cQWebEngineUrlRequestInterceptor {.importc: "QWebEngineUrlRequestInterceptor_new2".}
proc fcQWebEngineUrlRequestInterceptor_metaObject(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInterceptor_metaObject".}
proc fcQWebEngineUrlRequestInterceptor_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlRequestInterceptor_metacast".}
proc fcQWebEngineUrlRequestInterceptor_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr".}
proc fcQWebEngineUrlRequestInterceptor_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_trUtf8".}
proc fcQWebEngineUrlRequestInterceptor_interceptRequest(self: pointer, info: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_interceptRequest".}
proc fcQWebEngineUrlRequestInterceptor_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr2".}
proc fcQWebEngineUrlRequestInterceptor_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr3".}
proc fcQWebEngineUrlRequestInterceptor_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_trUtf82".}
proc fcQWebEngineUrlRequestInterceptor_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_trUtf83".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_interceptRequest(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_interceptRequest".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_event".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_event".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_eventFilter".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_eventFilter".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_timerEvent".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_timerEvent".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_childEvent".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_childEvent".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_customEvent".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_customEvent".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_connectNotify".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_connectNotify".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_disconnectNotify".}
proc fcQWebEngineUrlRequestInterceptor_delete(self: pointer) {.importc: "QWebEngineUrlRequestInterceptor_delete".}


func init*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, h: ptr cQWebEngineUrlRequestInterceptor): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =
  T(h: h)
proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =
  gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor.init(fcQWebEngineUrlRequestInterceptor_new())

proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, p: gen_qobject_types.QObject): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =
  gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor.init(fcQWebEngineUrlRequestInterceptor_new2(p.h))

proc metaObject*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_metaObject(self.h))

proc metacast*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cstring): pointer =
  fcQWebEngineUrlRequestInterceptor_metacast(self.h, param1)

proc tr*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc interceptRequest*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, info: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): void =
  fcQWebEngineUrlRequestInterceptor_interceptRequest(self.h, info.h)

proc tr*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineUrlRequestInterceptor_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWebEngineUrlRequestInterceptorinterceptRequestProc* = proc(info: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): void
proc oninterceptRequest*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorinterceptRequestProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorinterceptRequestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_interceptRequest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_interceptRequest(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, info: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_interceptRequest ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorinterceptRequestProc](cast[pointer](slot))
  let slotval1 = gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo(h: info)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorevent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineUrlRequestInterceptor_virtualbase_event(self.h, event.h)

type QWebEngineUrlRequestInterceptoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptoreventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_event(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_event ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineUrlRequestInterceptoreventFilter*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebEngineUrlRequestInterceptor_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineUrlRequestInterceptoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptoreventFilterProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_eventFilter(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_eventFilter ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebEngineUrlRequestInterceptortimerEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebEngineUrlRequestInterceptor_virtualbase_timerEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptortimerEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_timerEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_timerEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorchildEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebEngineUrlRequestInterceptor_virtualbase_childEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorchildEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_childEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_childEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorcustomEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent_types.QEvent): void =
  fQWebEngineUrlRequestInterceptor_virtualbase_customEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorcustomEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_customEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_customEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineUrlRequestInterceptor_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineUrlRequestInterceptorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_connectNotify(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_connectNotify ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptordisconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineUrlRequestInterceptordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_disconnectNotify(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor) =
  fcQWebEngineUrlRequestInterceptor_delete(self.h)
