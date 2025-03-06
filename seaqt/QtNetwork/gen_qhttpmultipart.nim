import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
{.compile("gen_qhttpmultipart.cpp", cflags).}


type QHttpMultiPartContentTypeEnum* = distinct cint
template MixedType*(_: type QHttpMultiPartContentTypeEnum): untyped = 0
template RelatedType*(_: type QHttpMultiPartContentTypeEnum): untyped = 1
template FormDataType*(_: type QHttpMultiPartContentTypeEnum): untyped = 2
template AlternativeType*(_: type QHttpMultiPartContentTypeEnum): untyped = 3


import ./gen_qhttpmultipart_types
export gen_qhttpmultipart_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQHttpPart*{.exportc: "QHttpPart", incompleteStruct.} = object
type cQHttpMultiPart*{.exportc: "QHttpMultiPart", incompleteStruct.} = object

proc fcQHttpPart_new(): ptr cQHttpPart {.importc: "QHttpPart_new".}
proc fcQHttpPart_new2(other: pointer): ptr cQHttpPart {.importc: "QHttpPart_new2".}
proc fcQHttpPart_operatorAssign(self: pointer, other: pointer): void {.importc: "QHttpPart_operatorAssign".}
proc fcQHttpPart_swap(self: pointer, other: pointer): void {.importc: "QHttpPart_swap".}
proc fcQHttpPart_operatorEqual(self: pointer, other: pointer): bool {.importc: "QHttpPart_operatorEqual".}
proc fcQHttpPart_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QHttpPart_operatorNotEqual".}
proc fcQHttpPart_setHeader(self: pointer, header: cint, value: pointer): void {.importc: "QHttpPart_setHeader".}
proc fcQHttpPart_setRawHeader(self: pointer, headerName: struct_miqt_string, headerValue: struct_miqt_string): void {.importc: "QHttpPart_setRawHeader".}
proc fcQHttpPart_setBody(self: pointer, body: struct_miqt_string): void {.importc: "QHttpPart_setBody".}
proc fcQHttpPart_setBodyDevice(self: pointer, device: pointer): void {.importc: "QHttpPart_setBodyDevice".}
proc fcQHttpPart_delete(self: pointer) {.importc: "QHttpPart_delete".}
proc fcQHttpMultiPart_new(): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new".}
proc fcQHttpMultiPart_new2(contentType: cint): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new2".}
proc fcQHttpMultiPart_new3(parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new3".}
proc fcQHttpMultiPart_new4(contentType: cint, parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new4".}
proc fcQHttpMultiPart_metaObject(self: pointer, ): pointer {.importc: "QHttpMultiPart_metaObject".}
proc fcQHttpMultiPart_metacast(self: pointer, param1: cstring): pointer {.importc: "QHttpMultiPart_metacast".}
proc fcQHttpMultiPart_tr(s: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr".}
proc fcQHttpMultiPart_trUtf8(s: cstring): struct_miqt_string {.importc: "QHttpMultiPart_trUtf8".}
proc fcQHttpMultiPart_append(self: pointer, httpPart: pointer): void {.importc: "QHttpMultiPart_append".}
proc fcQHttpMultiPart_setContentType(self: pointer, contentType: cint): void {.importc: "QHttpMultiPart_setContentType".}
proc fcQHttpMultiPart_boundary(self: pointer, ): struct_miqt_string {.importc: "QHttpMultiPart_boundary".}
proc fcQHttpMultiPart_setBoundary(self: pointer, boundary: struct_miqt_string): void {.importc: "QHttpMultiPart_setBoundary".}
proc fcQHttpMultiPart_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr2".}
proc fcQHttpMultiPart_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHttpMultiPart_tr3".}
proc fcQHttpMultiPart_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHttpMultiPart_trUtf82".}
proc fcQHttpMultiPart_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHttpMultiPart_trUtf83".}
proc fQHttpMultiPart_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QHttpMultiPart_virtualbase_event".}
proc fcQHttpMultiPart_override_virtual_event(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_event".}
proc fQHttpMultiPart_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QHttpMultiPart_virtualbase_eventFilter".}
proc fcQHttpMultiPart_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_eventFilter".}
proc fQHttpMultiPart_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHttpMultiPart_virtualbase_timerEvent".}
proc fcQHttpMultiPart_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_timerEvent".}
proc fQHttpMultiPart_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QHttpMultiPart_virtualbase_childEvent".}
proc fcQHttpMultiPart_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_childEvent".}
proc fQHttpMultiPart_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHttpMultiPart_virtualbase_customEvent".}
proc fcQHttpMultiPart_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_customEvent".}
proc fQHttpMultiPart_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHttpMultiPart_virtualbase_connectNotify".}
proc fcQHttpMultiPart_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_connectNotify".}
proc fQHttpMultiPart_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHttpMultiPart_virtualbase_disconnectNotify".}
proc fcQHttpMultiPart_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_disconnectNotify".}
proc fcQHttpMultiPart_delete(self: pointer) {.importc: "QHttpMultiPart_delete".}


func init*(T: type gen_qhttpmultipart_types.QHttpPart, h: ptr cQHttpPart): gen_qhttpmultipart_types.QHttpPart =
  T(h: h)
proc create*(T: type gen_qhttpmultipart_types.QHttpPart, ): gen_qhttpmultipart_types.QHttpPart =
  gen_qhttpmultipart_types.QHttpPart.init(fcQHttpPart_new())

proc create*(T: type gen_qhttpmultipart_types.QHttpPart, other: gen_qhttpmultipart_types.QHttpPart): gen_qhttpmultipart_types.QHttpPart =
  gen_qhttpmultipart_types.QHttpPart.init(fcQHttpPart_new2(other.h))

proc operatorAssign*(self: gen_qhttpmultipart_types.QHttpPart, other: gen_qhttpmultipart_types.QHttpPart): void =
  fcQHttpPart_operatorAssign(self.h, other.h)

proc swap*(self: gen_qhttpmultipart_types.QHttpPart, other: gen_qhttpmultipart_types.QHttpPart): void =
  fcQHttpPart_swap(self.h, other.h)

proc operatorEqual*(self: gen_qhttpmultipart_types.QHttpPart, other: gen_qhttpmultipart_types.QHttpPart): bool =
  fcQHttpPart_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qhttpmultipart_types.QHttpPart, other: gen_qhttpmultipart_types.QHttpPart): bool =
  fcQHttpPart_operatorNotEqual(self.h, other.h)

proc setHeader*(self: gen_qhttpmultipart_types.QHttpPart, header: cint, value: gen_qvariant_types.QVariant): void =
  fcQHttpPart_setHeader(self.h, cint(header), value.h)

proc setRawHeader*(self: gen_qhttpmultipart_types.QHttpPart, headerName: seq[byte], headerValue: seq[byte]): void =
  fcQHttpPart_setRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(headerValue) == 0: nil else: unsafeAddr headerValue[0]), len: csize_t(len(headerValue))))

proc setBody*(self: gen_qhttpmultipart_types.QHttpPart, body: seq[byte]): void =
  fcQHttpPart_setBody(self.h, struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setBodyDevice*(self: gen_qhttpmultipart_types.QHttpPart, device: gen_qiodevice_types.QIODevice): void =
  fcQHttpPart_setBodyDevice(self.h, device.h)

proc delete*(self: gen_qhttpmultipart_types.QHttpPart) =
  fcQHttpPart_delete(self.h)

func init*(T: type gen_qhttpmultipart_types.QHttpMultiPart, h: ptr cQHttpMultiPart): gen_qhttpmultipart_types.QHttpMultiPart =
  T(h: h)
proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart, ): gen_qhttpmultipart_types.QHttpMultiPart =
  gen_qhttpmultipart_types.QHttpMultiPart.init(fcQHttpMultiPart_new())

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart, contentType: cint): gen_qhttpmultipart_types.QHttpMultiPart =
  gen_qhttpmultipart_types.QHttpMultiPart.init(fcQHttpMultiPart_new2(cint(contentType)))

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart, parent: gen_qobject_types.QObject): gen_qhttpmultipart_types.QHttpMultiPart =
  gen_qhttpmultipart_types.QHttpMultiPart.init(fcQHttpMultiPart_new3(parent.h))

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart, contentType: cint, parent: gen_qobject_types.QObject): gen_qhttpmultipart_types.QHttpMultiPart =
  gen_qhttpmultipart_types.QHttpMultiPart.init(fcQHttpMultiPart_new4(cint(contentType), parent.h))

proc metaObject*(self: gen_qhttpmultipart_types.QHttpMultiPart, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpMultiPart_metaObject(self.h))

proc metacast*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cstring): pointer =
  fcQHttpMultiPart_metacast(self.h, param1)

proc tr*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring): string =
  let v_ms = fcQHttpMultiPart_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring): string =
  let v_ms = fcQHttpMultiPart_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc append*(self: gen_qhttpmultipart_types.QHttpMultiPart, httpPart: gen_qhttpmultipart_types.QHttpPart): void =
  fcQHttpMultiPart_append(self.h, httpPart.h)

proc setContentType*(self: gen_qhttpmultipart_types.QHttpMultiPart, contentType: cint): void =
  fcQHttpMultiPart_setContentType(self.h, cint(contentType))

proc boundary*(self: gen_qhttpmultipart_types.QHttpMultiPart, ): seq[byte] =
  var v_bytearray = fcQHttpMultiPart_boundary(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setBoundary*(self: gen_qhttpmultipart_types.QHttpMultiPart, boundary: seq[byte]): void =
  fcQHttpMultiPart_setBoundary(self.h, struct_miqt_string(data: cast[cstring](if len(boundary) == 0: nil else: unsafeAddr boundary[0]), len: csize_t(len(boundary))))

proc tr*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring): string =
  let v_ms = fcQHttpMultiPart_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHttpMultiPart_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring): string =
  let v_ms = fcQHttpMultiPart_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHttpMultiPart_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QHttpMultiPartevent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QEvent): bool =
  fQHttpMultiPart_virtualbase_event(self.h, event.h)

type QHttpMultiParteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qhttpmultipart_types.QHttpMultiPart, slot: QHttpMultiParteventProc) =
  # TODO check subclass
  var tmp = new QHttpMultiParteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_event(self: ptr cQHttpMultiPart, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QHttpMultiPart_event ".} =
  var nimfunc = cast[ptr QHttpMultiParteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QHttpMultiParteventFilter*(self: gen_qhttpmultipart_types.QHttpMultiPart, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQHttpMultiPart_virtualbase_eventFilter(self.h, watched.h, event.h)

type QHttpMultiParteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qhttpmultipart_types.QHttpMultiPart, slot: QHttpMultiParteventFilterProc) =
  # TODO check subclass
  var tmp = new QHttpMultiParteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_eventFilter(self: ptr cQHttpMultiPart, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHttpMultiPart_eventFilter ".} =
  var nimfunc = cast[ptr QHttpMultiParteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QHttpMultiParttimerEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QTimerEvent): void =
  fQHttpMultiPart_virtualbase_timerEvent(self.h, event.h)

type QHttpMultiParttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, slot: QHttpMultiParttimerEventProc) =
  # TODO check subclass
  var tmp = new QHttpMultiParttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_timerEvent(self: ptr cQHttpMultiPart, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_timerEvent ".} =
  var nimfunc = cast[ptr QHttpMultiParttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QHttpMultiPartchildEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QChildEvent): void =
  fQHttpMultiPart_virtualbase_childEvent(self.h, event.h)

type QHttpMultiPartchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, slot: QHttpMultiPartchildEventProc) =
  # TODO check subclass
  var tmp = new QHttpMultiPartchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_childEvent(self: ptr cQHttpMultiPart, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_childEvent ".} =
  var nimfunc = cast[ptr QHttpMultiPartchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QHttpMultiPartcustomEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QEvent): void =
  fQHttpMultiPart_virtualbase_customEvent(self.h, event.h)

type QHttpMultiPartcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, slot: QHttpMultiPartcustomEventProc) =
  # TODO check subclass
  var tmp = new QHttpMultiPartcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_customEvent(self: ptr cQHttpMultiPart, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_customEvent ".} =
  var nimfunc = cast[ptr QHttpMultiPartcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QHttpMultiPartconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHttpMultiPart_virtualbase_connectNotify(self.h, signal.h)

type QHttpMultiPartconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, slot: QHttpMultiPartconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHttpMultiPartconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_connectNotify(self: ptr cQHttpMultiPart, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_connectNotify ".} =
  var nimfunc = cast[ptr QHttpMultiPartconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QHttpMultiPartdisconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQHttpMultiPart_virtualbase_disconnectNotify(self.h, signal.h)

type QHttpMultiPartdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, slot: QHttpMultiPartdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QHttpMultiPartdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_disconnectNotify(self: ptr cQHttpMultiPart, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_disconnectNotify ".} =
  var nimfunc = cast[ptr QHttpMultiPartdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qhttpmultipart_types.QHttpMultiPart) =
  fcQHttpMultiPart_delete(self.h)
