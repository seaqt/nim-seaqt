import ./Qt6Network_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
proc fcQHttpMultiPart_metaObject(self: pointer, ): pointer {.importc: "QHttpMultiPart_metaObject".}
proc fcQHttpMultiPart_metacast(self: pointer, param1: cstring): pointer {.importc: "QHttpMultiPart_metacast".}
proc fcQHttpMultiPart_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHttpMultiPart_metacall".}
proc fcQHttpMultiPart_tr(s: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr".}
proc fcQHttpMultiPart_append(self: pointer, httpPart: pointer): void {.importc: "QHttpMultiPart_append".}
proc fcQHttpMultiPart_setContentType(self: pointer, contentType: cint): void {.importc: "QHttpMultiPart_setContentType".}
proc fcQHttpMultiPart_boundary(self: pointer, ): struct_miqt_string {.importc: "QHttpMultiPart_boundary".}
proc fcQHttpMultiPart_setBoundary(self: pointer, boundary: struct_miqt_string): void {.importc: "QHttpMultiPart_setBoundary".}
proc fcQHttpMultiPart_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr2".}
proc fcQHttpMultiPart_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHttpMultiPart_tr3".}
type cQHttpMultiPartVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQHttpMultiPartVTable, self: ptr cQHttpMultiPart) {.cdecl, raises:[], gcsafe.}
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
proc fcQHttpMultiPart_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QHttpMultiPart_virtualbase_metaObject".}
proc fcQHttpMultiPart_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QHttpMultiPart_virtualbase_metacast".}
proc fcQHttpMultiPart_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHttpMultiPart_virtualbase_metacall".}
proc fcQHttpMultiPart_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QHttpMultiPart_virtualbase_event".}
proc fcQHttpMultiPart_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QHttpMultiPart_virtualbase_eventFilter".}
proc fcQHttpMultiPart_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QHttpMultiPart_virtualbase_timerEvent".}
proc fcQHttpMultiPart_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QHttpMultiPart_virtualbase_childEvent".}
proc fcQHttpMultiPart_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QHttpMultiPart_virtualbase_customEvent".}
proc fcQHttpMultiPart_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QHttpMultiPart_virtualbase_connectNotify".}
proc fcQHttpMultiPart_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QHttpMultiPart_virtualbase_disconnectNotify".}
proc fcQHttpMultiPart_protectedbase_sender(self: pointer, ): pointer {.importc: "QHttpMultiPart_protectedbase_sender".}
proc fcQHttpMultiPart_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QHttpMultiPart_protectedbase_senderSignalIndex".}
proc fcQHttpMultiPart_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QHttpMultiPart_protectedbase_receivers".}
proc fcQHttpMultiPart_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QHttpMultiPart_protectedbase_isSignalConnected".}
proc fcQHttpMultiPart_new(vtbl: pointer, ): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new".}
proc fcQHttpMultiPart_new2(vtbl: pointer, contentType: cint): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new2".}
proc fcQHttpMultiPart_new3(vtbl: pointer, parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new3".}
proc fcQHttpMultiPart_new4(vtbl: pointer, contentType: cint, parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new4".}
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

proc setRawHeader*(self: gen_qhttpmultipart_types.QHttpPart, headerName: seq[byte], headerValue: seq[byte]): void =
  fcQHttpPart_setRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(headerValue) == 0: nil else: unsafeAddr headerValue[0]), len: csize_t(len(headerValue))))

proc setBody*(self: gen_qhttpmultipart_types.QHttpPart, body: seq[byte]): void =
  fcQHttpPart_setBody(self.h, struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setBodyDevice*(self: gen_qhttpmultipart_types.QHttpPart, device: gen_qiodevice_types.QIODevice): void =
  fcQHttpPart_setBodyDevice(self.h, device.h)

proc create*(T: type gen_qhttpmultipart_types.QHttpPart): gen_qhttpmultipart_types.QHttpPart =
  gen_qhttpmultipart_types.QHttpPart(h: fcQHttpPart_new(), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpPart,
    other: gen_qhttpmultipart_types.QHttpPart): gen_qhttpmultipart_types.QHttpPart =
  gen_qhttpmultipart_types.QHttpPart(h: fcQHttpPart_new2(other.h), owned: true)

proc metaObject*(self: gen_qhttpmultipart_types.QHttpMultiPart, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpMultiPart_metaObject(self.h), owned: false)

proc metacast*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cstring): pointer =
  fcQHttpMultiPart_metacast(self.h, param1)

proc metacall*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cint, param2: cint, param3: pointer): cint =
  fcQHttpMultiPart_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qhttpmultipart_types.QHttpMultiPart, s: cstring): string =
  let v_ms = fcQHttpMultiPart_tr(s)
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
proc QHttpMultiPartmetaObject*(self: gen_qhttpmultipart_types.QHttpMultiPart, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpMultiPart_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQHttpMultiPart_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QHttpMultiPartmetacast*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cstring): pointer =
  fcQHttpMultiPart_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQHttpMultiPart_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QHttpMultiPartmetacall*(self: gen_qhttpmultipart_types.QHttpMultiPart, param1: cint, param2: cint, param3: pointer): cint =
  fcQHttpMultiPart_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQHttpMultiPart_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QHttpMultiPartevent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QEvent): bool =
  fcQHttpMultiPart_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQHttpMultiPart_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QHttpMultiParteventFilter*(self: gen_qhttpmultipart_types.QHttpMultiPart, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQHttpMultiPart_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQHttpMultiPart_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QHttpMultiParttimerEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQHttpMultiPart_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQHttpMultiPart_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QHttpMultiPartchildEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QChildEvent): void =
  fcQHttpMultiPart_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQHttpMultiPart_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QHttpMultiPartcustomEvent*(self: gen_qhttpmultipart_types.QHttpMultiPart, event: gen_qcoreevent_types.QEvent): void =
  fcQHttpMultiPart_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQHttpMultiPart_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QHttpMultiPartconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHttpMultiPart_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHttpMultiPart_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QHttpMultiPartdisconnectNotify*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQHttpMultiPart_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQHttpMultiPart_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QHttpMultiPartVTable](vtbl)
  let self = QHttpMultiPart(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQHttpMultiPart* {.inheritable.} = ref object of QHttpMultiPart
  vtbl*: cQHttpMultiPartVTable
method metaObject*(self: VirtualQHttpMultiPart, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QHttpMultiPartmetaObject(self[])
proc miqt_exec_method_cQHttpMultiPart_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQHttpMultiPart, param1: cstring): pointer {.base.} =
  QHttpMultiPartmetacast(self[], param1)
proc miqt_exec_method_cQHttpMultiPart_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQHttpMultiPart, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QHttpMultiPartmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQHttpMultiPart_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHttpMultiPartevent(self[], event)
proc miqt_exec_method_cQHttpMultiPart_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQHttpMultiPart, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QHttpMultiParteventFilter(self[], watched, event)
proc miqt_exec_method_cQHttpMultiPart_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QHttpMultiParttimerEvent(self[], event)
proc miqt_exec_method_cQHttpMultiPart_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QHttpMultiPartchildEvent(self[], event)
proc miqt_exec_method_cQHttpMultiPart_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQHttpMultiPart, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QHttpMultiPartcustomEvent(self[], event)
proc miqt_exec_method_cQHttpMultiPart_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHttpMultiPartconnectNotify(self[], signal)
proc miqt_exec_method_cQHttpMultiPart_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QHttpMultiPartdisconnectNotify(self[], signal)
proc miqt_exec_method_cQHttpMultiPart_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQHttpMultiPart](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qhttpmultipart_types.QHttpMultiPart, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQHttpMultiPart_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qhttpmultipart_types.QHttpMultiPart, ): cint =
  fcQHttpMultiPart_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: cstring): cint =
  fcQHttpMultiPart_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qhttpmultipart_types.QHttpMultiPart, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQHttpMultiPart_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHttpMultiPart_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHttpMultiPart_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHttpMultiPart_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHttpMultiPart_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHttpMultiPart_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHttpMultiPart_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHttpMultiPart_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHttpMultiPart_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHttpMultiPart_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHttpMultiPart_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHttpMultiPart_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHttpMultiPart_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHttpMultiPart_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHttpMultiPart_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHttpMultiPart_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHttpMultiPart_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHttpMultiPart_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHttpMultiPart_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHttpMultiPart_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHttpMultiPart_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new2(addr(vtbl[].vtbl), cint(contentType)), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    parent: gen_qobject_types.QObject,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHttpMultiPart_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHttpMultiPart_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHttpMultiPart_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHttpMultiPart_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHttpMultiPart_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHttpMultiPart_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHttpMultiPart_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHttpMultiPart_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHttpMultiPart_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHttpMultiPart_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new3(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QHttpMultiPartVTable = nil): gen_qhttpmultipart_types.QHttpMultiPart =
  let vtbl = if vtbl == nil: new QHttpMultiPartVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ref QHttpMultiPartVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQHttpMultiPart_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQHttpMultiPart_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQHttpMultiPart_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQHttpMultiPart_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQHttpMultiPart_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQHttpMultiPart_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQHttpMultiPart_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQHttpMultiPart_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQHttpMultiPart_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQHttpMultiPart_disconnectNotify
  gen_qhttpmultipart_types.QHttpMultiPart(h: fcQHttpMultiPart_new4(addr(vtbl[].vtbl), cint(contentType), parent.h), owned: true)

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    vtbl: VirtualQHttpMultiPart) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQHttpMultiPart()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQHttpMultiPart_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQHttpMultiPart_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQHttpMultiPart_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQHttpMultiPart_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQHttpMultiPart_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQHttpMultiPart_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQHttpMultiPart_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQHttpMultiPart_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQHttpMultiPart_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQHttpMultiPart_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQHttpMultiPart_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint,
    vtbl: VirtualQHttpMultiPart) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQHttpMultiPart()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQHttpMultiPart_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQHttpMultiPart_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQHttpMultiPart_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQHttpMultiPart_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQHttpMultiPart_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQHttpMultiPart_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQHttpMultiPart_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQHttpMultiPart_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQHttpMultiPart_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQHttpMultiPart_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQHttpMultiPart_new2(addr(vtbl[].vtbl), cint(contentType))
  vtbl[].owned = true

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQHttpMultiPart) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQHttpMultiPart()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQHttpMultiPart_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQHttpMultiPart_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQHttpMultiPart_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQHttpMultiPart_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQHttpMultiPart_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQHttpMultiPart_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQHttpMultiPart_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQHttpMultiPart_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQHttpMultiPart_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQHttpMultiPart_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQHttpMultiPart_new3(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qhttpmultipart_types.QHttpMultiPart,
    contentType: cint, parent: gen_qobject_types.QObject,
    vtbl: VirtualQHttpMultiPart) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQHttpMultiPartVTable, _: ptr cQHttpMultiPart) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQHttpMultiPart()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQHttpMultiPart, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQHttpMultiPart_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQHttpMultiPart_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQHttpMultiPart_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQHttpMultiPart_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQHttpMultiPart_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQHttpMultiPart_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQHttpMultiPart_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQHttpMultiPart_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQHttpMultiPart_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQHttpMultiPart_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQHttpMultiPart_new4(addr(vtbl[].vtbl), cint(contentType), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qhttpmultipart_types.QHttpMultiPart): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpMultiPart_staticMetaObject())
