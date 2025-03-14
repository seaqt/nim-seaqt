import ./qtnetwork_pkg

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

proc fcQHttpPart_operatorAssign(self: pointer, other: pointer): void {.importc: "QHttpPart_operatorAssign".}
proc fcQHttpPart_swap(self: pointer, other: pointer): void {.importc: "QHttpPart_swap".}
proc fcQHttpPart_operatorEqual(self: pointer, other: pointer): bool {.importc: "QHttpPart_operatorEqual".}
proc fcQHttpPart_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QHttpPart_operatorNotEqual".}
proc fcQHttpPart_setHeader(self: pointer, header: cint, value: pointer): void {.importc: "QHttpPart_setHeader".}
proc fcQHttpPart_setRawHeader(self: pointer, headerName: struct_miqt_string, headerValue: struct_miqt_string): void {.importc: "QHttpPart_setRawHeader".}
proc fcQHttpPart_setBody(self: pointer, body: struct_miqt_string): void {.importc: "QHttpPart_setBody".}
proc fcQHttpPart_setBodyDevice(self: pointer, device: pointer): void {.importc: "QHttpPart_setBodyDevice".}
proc fcQHttpPart_new(): ptr cQHttpPart {.importc: "QHttpPart_new".}
proc fcQHttpPart_new2(other: pointer): ptr cQHttpPart {.importc: "QHttpPart_new2".}
proc fcQHttpMultiPart_metaObject(self: pointer): pointer {.importc: "QHttpMultiPart_metaObject".}
proc fcQHttpMultiPart_metacast(self: pointer, param1: cstring): pointer {.importc: "QHttpMultiPart_metacast".}
proc fcQHttpMultiPart_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHttpMultiPart_metacall".}
proc fcQHttpMultiPart_tr(s: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr".}
proc fcQHttpMultiPart_trUtf8(s: cstring): struct_miqt_string {.importc: "QHttpMultiPart_trUtf8".}
proc fcQHttpMultiPart_append(self: pointer, httpPart: pointer): void {.importc: "QHttpMultiPart_append".}
proc fcQHttpMultiPart_setContentType(self: pointer, contentType: cint): void {.importc: "QHttpMultiPart_setContentType".}
proc fcQHttpMultiPart_boundary(self: pointer): struct_miqt_string {.importc: "QHttpMultiPart_boundary".}
proc fcQHttpMultiPart_setBoundary(self: pointer, boundary: struct_miqt_string): void {.importc: "QHttpMultiPart_setBoundary".}
proc fcQHttpMultiPart_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr2".}
proc fcQHttpMultiPart_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHttpMultiPart_tr3".}
proc fcQHttpMultiPart_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHttpMultiPart_trUtf82".}
proc fcQHttpMultiPart_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHttpMultiPart_trUtf83".}
proc fcQHttpMultiPart_vtbl(self: pointer): pointer {.importc: "QHttpMultiPart_vtbl".}
proc fcQHttpMultiPart_vdata(self: pointer): pointer {.importc: "QHttpMultiPart_vdata".}
type cQHttpMultiPartVTable {.pure.} = object
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
proc fcQHttpMultiPart_virtualbase_metaObject(self: pointer): pointer {.importc: "QHttpMultiPart_virtualbase_metaObject".}
proc fcQHttpMultiPart_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QHttpMultiPart_virtualbase_metacast".}
proc fcQHttpMultiPart_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHttpMultiPart_virtualbase_metacall".}
proc fcQHttpMultiPart_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QHttpMultiPart_virtualbase_event".}
proc fcQHttpMultiPart_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QHttpMultiPart_virtualbase_eventFilter".}
proc fcQHttpMultiPart_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QHttpMultiPart_virtualbase_timerEvent".}
proc fcQHttpMultiPart_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QHttpMultiPart_virtualbase_childEvent".}
proc fcQHttpMultiPart_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QHttpMultiPart_virtualbase_customEvent".}
proc fcQHttpMultiPart_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QHttpMultiPart_virtualbase_connectNotify".}
proc fcQHttpMultiPart_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QHttpMultiPart_virtualbase_disconnectNotify".}
proc fcQHttpMultiPart_protectedbase_sender(self: pointer): pointer {.importc: "QHttpMultiPart_protectedbase_sender".}
proc fcQHttpMultiPart_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QHttpMultiPart_protectedbase_senderSignalIndex".}
proc fcQHttpMultiPart_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QHttpMultiPart_protectedbase_receivers".}
proc fcQHttpMultiPart_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QHttpMultiPart_protectedbase_isSignalConnected".}
proc fcQHttpMultiPart_new(vtbl, vdata: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new".}
proc fcQHttpMultiPart_new2(vtbl, vdata: pointer, contentType: cint): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new2".}
proc fcQHttpMultiPart_new3(vtbl, vdata: pointer, parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new3".}
proc fcQHttpMultiPart_new4(vtbl, vdata: pointer, contentType: cint, parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new4".}
proc fcQHttpMultiPart_staticMetaObject(): pointer {.importc: "QHttpMultiPart_staticMetaObject".}

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

proc setRawHeader*(self: gen_qhttpmultipart_types.QHttpPart, headerName: openArray[byte], headerValue: openArray[byte]): void =
  fcQHttpPart_setRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(headerValue) == 0: nil else: unsafeAddr headerValue[0]), len: csize_t(len(headerValue))))

proc setBody*(self: gen_qhttpmultipart_types.QHttpPart, body: openArray[byte]): void =
  fcQHttpPart_setBody(self.h, struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setBodyDevice*(self: gen_qhttpmultipart_types.QHttpPart, device: gen_qiodevice_types.QIODevice): void =
  fcQHttpPart_setBodyDevice(self.h, device.h)

proc create*(T: type gen_qhttpmultipart_types.QHttpPart): gen_qhttpmultipart_types.QHttpPart =
  gen_qhttpmultipart_types.QHttpPart(h: fcQHttpPart_new(), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpPart,
    other: gen_qhttpmultipart_types.QHttpPart): gen_qhttpmultipart_types.QHttpPart =
  gen_qhttpmultipart_types.QHttpPart(h: fcQHttpPart_new2(other.h), owned: true)

proc metaObject*(self: gen_qhttpmultipart_types.QHttpMultiPart): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpMultiPart_metaObject(self.h), owned: false)

proc metacast*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cstring): pointer =
  fcQHttpMultiPart_metacast(self.h, param1)

proc metacall*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cint, param2: cint, param3: pointer): cint =
  fcQHttpMultiPart_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring): string =
  let v_ms = fcQHttpMultiPart_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring): string =
  let v_ms = fcQHttpMultiPart_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc append*(self: gen_qhttpmultipart_types.QHttpMultiPart, httpPart: gen_qhttpmultipart_types.QHttpPart): void =
  fcQHttpMultiPart_append(self.h, httpPart.h)

proc setContentType*(self: gen_qhttpmultipart_types.QHttpMultiPart, contentType: cint): void =
  fcQHttpMultiPart_setContentType(self.h, cint(contentType))

proc boundary*(self: gen_qhttpmultipart_types.QHttpMultiPart): seq[byte] =
  var v_bytearray = fcQHttpMultiPart_boundary(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setBoundary*(self: gen_qhttpmultipart_types.QHttpMultiPart, boundary: openArray[byte]): void =
  fcQHttpMultiPart_setBoundary(self.h, struct_miqt_string(data: cast[cstring](if len(boundary) == 0: nil else: unsafeAddr boundary[0]), len: csize_t(len(boundary))))

proc tr*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring): string =
  let v_ms = fcQHttpMultiPart_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHttpMultiPart_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring): string =
  let v_ms = fcQHttpMultiPart_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQHttpMultiPart_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QHttpMultiPartmetaObjectProc* = proc(self: QHttpMultiPart): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QHttpMultiPartmetacastProc* = proc(self: QHttpMultiPart, param1: cstring): pointer {.raises: [], gcsafe.}
type QHttpMultiPartmetacallProc* = proc(self: QHttpMultiPart, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QHttpMultiParteventProc* = proc(self: QHttpMultiPart, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHttpMultiParteventFilterProc* = proc(self: QHttpMultiPart, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QHttpMultiParttimerEventProc* = proc(self: QHttpMultiPart, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QHttpMultiPartchildEventProc* = proc(self: QHttpMultiPart, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QHttpMultiPartcustomEventProc* = proc(self: QHttpMultiPart, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QHttpMultiPartconnectNotifyProc* = proc(self: QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHttpMultiPartdisconnectNotifyProc* = proc(self: QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QHttpMultiPartVTable* {.inheritable, pure.} = object
  vtbl: cQHttpMultiPartVTable
  metaObject*: QHttpMultiPartmetaObjectProc
  metacast*: QHttpMultiPartmetacastProc
  metacall*: QHttpMultiPartmetacallProc
  event*: QHttpMultiParteventProc
  eventFilter*: QHttpMultiParteventFilterProc
  timerEvent*: QHttpMultiParttimerEventProc
  childEvent*: QHttpMultiPartchildEventProc
  customEvent*: QHttpMultiPartcustomEventProc
  connectNotify*: QHttpMultiPartconnectNotifyProc
  disconnectNotify*: QHttpMultiPartdisconnectNotifyProc
proc QHttpMultiPartmetaObject*(self: gen_qhttpmultipart_types.QHttpMultiPart): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpMultiPart_virtualbase_metaObject(self.h), owned: false)

proc cQHttpMultiPart_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHttpMultiPartmetacast*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cstring): pointer =
  fcQHttpMultiPart_virtualbase_metacast(self.h, param1)

proc cQHttpMultiPart_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QHttpMultiPartmetacall*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cint, param2: cint, param3: pointer): cint =
  fcQHttpMultiPart_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQHttpMultiPart_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QHttpMultiPartevent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QEvent): bool =
  fcQHttpMultiPart_virtualbase_event(self.h, event.h)

proc cQHttpMultiPart_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QHttpMultiParteventFilter*(self: gen_qhttpmultipart_types.QHttpMultiPart, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHttpMultiPart_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQHttpMultiPart_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QHttpMultiParttimerEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHttpMultiPart_virtualbase_timerEvent(self.h, event.h)

proc cQHttpMultiPart_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QHttpMultiPartchildEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QChildEvent): void =
  fcQHttpMultiPart_virtualbase_childEvent(self.h, event.h)

proc cQHttpMultiPart_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QHttpMultiPartcustomEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QEvent): void =
  fcQHttpMultiPart_virtualbase_customEvent(self.h, event.h)

proc cQHttpMultiPart_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QHttpMultiPartconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHttpMultiPart_virtualbase_connectNotify(self.h, signal.h)

proc cQHttpMultiPart_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QHttpMultiPartdisconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHttpMultiPart_virtualbase_disconnectNotify(self.h, signal.h)

proc cQHttpMultiPart_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQHttpMultiPart* {.inheritable.} = ref object of QHttpMultiPart
  vtbl*: cQHttpMultiPartVTable
method metaObject*(self: VirtualQHttpMultiPart): gen_qobjectdefs_types.QMetaObject {.base.} =
  QHttpMultiPartmetaObject(self[])
proc cQHttpMultiPart_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQHttpMultiPart, param1: cstring): pointer {.base.} =
  QHttpMultiPartmetacast(self[], param1)
proc cQHttpMultiPart_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQHttpMultiPart, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QHttpMultiPartmetacall(self[], param1, param2, param3)
proc cQHttpMultiPart_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHttpMultiPartevent(self[], event)
proc cQHttpMultiPart_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQHttpMultiPart, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHttpMultiParteventFilter(self[], watched, event)
proc cQHttpMultiPart_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QHttpMultiParttimerEvent(self[], event)
proc cQHttpMultiPart_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QHttpMultiPartchildEvent(self[], event)
proc cQHttpMultiPart_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QHttpMultiPartcustomEvent(self[], event)
proc cQHttpMultiPart_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHttpMultiPartconnectNotify(self[], signal)
proc cQHttpMultiPart_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHttpMultiPartdisconnectNotify(self[], signal)
proc cQHttpMultiPart_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQHttpMultiPart](fcQHttpMultiPart_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qhttpmultipart_types.QHttpMultiPart): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQHttpMultiPart_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qhttpmultipart_types.QHttpMultiPart): cint =
  fcQHttpMultiPart_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: cstring): cint =
  fcQHttpMultiPart_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQHttpMultiPart_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQHttpMultiPart_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQHttpMultiPart_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQHttpMultiPart_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQHttpMultiPart_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQHttpMultiPart_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQHttpMultiPart_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQHttpMultiPart_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQHttpMultiPart_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQHttpMultiPart_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQHttpMultiPart_vtable_callback_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQHttpMultiPart_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQHttpMultiPart_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQHttpMultiPart_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQHttpMultiPart_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQHttpMultiPart_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQHttpMultiPart_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQHttpMultiPart_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQHttpMultiPart_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQHttpMultiPart_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQHttpMultiPart_vtable_callback_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new2(addr(vtbl[].vtbl), addr(vtbl[]), cint(contentType)), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    parent: gen_qobject_types.QObject,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQHttpMultiPart_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQHttpMultiPart_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQHttpMultiPart_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQHttpMultiPart_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQHttpMultiPart_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQHttpMultiPart_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQHttpMultiPart_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQHttpMultiPart_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQHttpMultiPart_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQHttpMultiPart_vtable_callback_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](fcQHttpMultiPart_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQHttpMultiPart_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQHttpMultiPart_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQHttpMultiPart_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQHttpMultiPart_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQHttpMultiPart_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQHttpMultiPart_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQHttpMultiPart_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQHttpMultiPart_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQHttpMultiPart_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQHttpMultiPart_vtable_callback_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(contentType), parent.h), owned: true)

const cQHttpMultiPart_mvtbl = cQHttpMultiPartVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQHttpMultiPart()[])](self.fcQHttpMultiPart_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQHttpMultiPart_method_callback_metaObject,
  metacast: cQHttpMultiPart_method_callback_metacast,
  metacall: cQHttpMultiPart_method_callback_metacall,
  event: cQHttpMultiPart_method_callback_event,
  eventFilter: cQHttpMultiPart_method_callback_eventFilter,
  timerEvent: cQHttpMultiPart_method_callback_timerEvent,
  childEvent: cQHttpMultiPart_method_callback_childEvent,
  customEvent: cQHttpMultiPart_method_callback_customEvent,
  connectNotify: cQHttpMultiPart_method_callback_connectNotify,
  disconnectNotify: cQHttpMultiPart_method_callback_disconnectNotify,
)
proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    inst: VirtualQHttpMultiPart) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHttpMultiPart_new(addr(cQHttpMultiPart_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint,
    inst: VirtualQHttpMultiPart) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHttpMultiPart_new2(addr(cQHttpMultiPart_mvtbl), addr(inst[]), cint(contentType))
  inst[].owned = true

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    parent: gen_qobject_types.QObject,
    inst: VirtualQHttpMultiPart) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHttpMultiPart_new3(addr(cQHttpMultiPart_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQHttpMultiPart) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQHttpMultiPart_new4(addr(cQHttpMultiPart_mvtbl), addr(inst[]), cint(contentType), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qhttpmultipart_types.QHttpMultiPart): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpMultiPart_staticMetaObject())
