import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qtimer.cpp", cflags).}


import ./gen_qtimer_types
export gen_qtimer_types

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

type cQTimer*{.exportc: "QTimer", incompleteStruct.} = object

proc fcQTimer_metaObject(self: pointer): pointer {.importc: "QTimer_metaObject".}
proc fcQTimer_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimer_metacast".}
proc fcQTimer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimer_metacall".}
proc fcQTimer_tr(s: cstring): struct_miqt_string {.importc: "QTimer_tr".}
proc fcQTimer_isActive(self: pointer): bool {.importc: "QTimer_isActive".}
proc fcQTimer_timerId(self: pointer): cint {.importc: "QTimer_timerId".}
proc fcQTimer_setInterval(self: pointer, msec: cint): void {.importc: "QTimer_setInterval".}
proc fcQTimer_interval(self: pointer): cint {.importc: "QTimer_interval".}
proc fcQTimer_remainingTime(self: pointer): cint {.importc: "QTimer_remainingTime".}
proc fcQTimer_setTimerType(self: pointer, atype: cint): void {.importc: "QTimer_setTimerType".}
proc fcQTimer_timerType(self: pointer): cint {.importc: "QTimer_timerType".}
proc fcQTimer_setSingleShot(self: pointer, singleShot: bool): void {.importc: "QTimer_setSingleShot".}
proc fcQTimer_isSingleShot(self: pointer): bool {.importc: "QTimer_isSingleShot".}
proc fcQTimer_start(self: pointer, msec: cint): void {.importc: "QTimer_start".}
proc fcQTimer_start2(self: pointer): void {.importc: "QTimer_start2".}
proc fcQTimer_stop(self: pointer): void {.importc: "QTimer_stop".}
proc fcQTimer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimer_tr2".}
proc fcQTimer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimer_tr3".}
proc fcQTimer_vtbl(self: pointer): pointer {.importc: "QTimer_vtbl".}
proc fcQTimer_vdata(self: pointer): pointer {.importc: "QTimer_vdata".}
type cQTimerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTimer_virtualbase_metaObject(self: pointer): pointer {.importc: "QTimer_virtualbase_metaObject".}
proc fcQTimer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimer_virtualbase_metacast".}
proc fcQTimer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimer_virtualbase_metacall".}
proc fcQTimer_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QTimer_virtualbase_timerEvent".}
proc fcQTimer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTimer_virtualbase_event".}
proc fcQTimer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTimer_virtualbase_eventFilter".}
proc fcQTimer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTimer_virtualbase_childEvent".}
proc fcQTimer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTimer_virtualbase_customEvent".}
proc fcQTimer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTimer_virtualbase_connectNotify".}
proc fcQTimer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTimer_virtualbase_disconnectNotify".}
proc fcQTimer_protectedbase_sender(self: pointer): pointer {.importc: "QTimer_protectedbase_sender".}
proc fcQTimer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTimer_protectedbase_senderSignalIndex".}
proc fcQTimer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTimer_protectedbase_receivers".}
proc fcQTimer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTimer_protectedbase_isSignalConnected".}
proc fcQTimer_new(vtbl, vdata: pointer): ptr cQTimer {.importc: "QTimer_new".}
proc fcQTimer_new2(vtbl, vdata: pointer, parent: pointer): ptr cQTimer {.importc: "QTimer_new2".}
proc fcQTimer_staticMetaObject(): pointer {.importc: "QTimer_staticMetaObject".}

proc metaObject*(self: gen_qtimer_types.QTimer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtimer_types.QTimer, param1: cstring): pointer =
  fcQTimer_metacast(self.h, param1)

proc metacall*(self: gen_qtimer_types.QTimer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtimer_types.QTimer, s: cstring): string =
  let v_ms = fcQTimer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: gen_qtimer_types.QTimer): bool =
  fcQTimer_isActive(self.h)

proc timerId*(self: gen_qtimer_types.QTimer): cint =
  fcQTimer_timerId(self.h)

proc setInterval*(self: gen_qtimer_types.QTimer, msec: cint): void =
  fcQTimer_setInterval(self.h, msec)

proc interval*(self: gen_qtimer_types.QTimer): cint =
  fcQTimer_interval(self.h)

proc remainingTime*(self: gen_qtimer_types.QTimer): cint =
  fcQTimer_remainingTime(self.h)

proc setTimerType*(self: gen_qtimer_types.QTimer, atype: cint): void =
  fcQTimer_setTimerType(self.h, cint(atype))

proc timerType*(self: gen_qtimer_types.QTimer): cint =
  cint(fcQTimer_timerType(self.h))

proc setSingleShot*(self: gen_qtimer_types.QTimer, singleShot: bool): void =
  fcQTimer_setSingleShot(self.h, singleShot)

proc isSingleShot*(self: gen_qtimer_types.QTimer): bool =
  fcQTimer_isSingleShot(self.h)

proc start*(self: gen_qtimer_types.QTimer, msec: cint): void =
  fcQTimer_start(self.h, msec)

proc start*(self: gen_qtimer_types.QTimer): void =
  fcQTimer_start2(self.h)

proc stop*(self: gen_qtimer_types.QTimer): void =
  fcQTimer_stop(self.h)

proc tr*(_: type gen_qtimer_types.QTimer, s: cstring, c: cstring): string =
  let v_ms = fcQTimer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtimer_types.QTimer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTimer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTimermetaObjectProc* = proc(self: QTimer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTimermetacastProc* = proc(self: QTimer, param1: cstring): pointer {.raises: [], gcsafe.}
type QTimermetacallProc* = proc(self: QTimer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTimertimerEventProc* = proc(self: QTimer, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTimereventProc* = proc(self: QTimer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTimereventFilterProc* = proc(self: QTimer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTimerchildEventProc* = proc(self: QTimer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTimercustomEventProc* = proc(self: QTimer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTimerconnectNotifyProc* = proc(self: QTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTimerdisconnectNotifyProc* = proc(self: QTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTimerVTable* {.inheritable, pure.} = object
  vtbl: cQTimerVTable
  metaObject*: QTimermetaObjectProc
  metacast*: QTimermetacastProc
  metacall*: QTimermetacallProc
  timerEvent*: QTimertimerEventProc
  event*: QTimereventProc
  eventFilter*: QTimereventFilterProc
  childEvent*: QTimerchildEventProc
  customEvent*: QTimercustomEventProc
  connectNotify*: QTimerconnectNotifyProc
  disconnectNotify*: QTimerdisconnectNotifyProc
proc QTimermetaObject*(self: gen_qtimer_types.QTimer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimer_virtualbase_metaObject(self.h), owned: false)

proc cQTimer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTimermetacast*(self: gen_qtimer_types.QTimer, param1: cstring): pointer =
  fcQTimer_virtualbase_metacast(self.h, param1)

proc cQTimer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTimermetacall*(self: gen_qtimer_types.QTimer, param1: cint, param2: cint, param3: pointer): cint =
  fcQTimer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQTimer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTimertimerEvent*(self: gen_qtimer_types.QTimer, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQTimer_virtualbase_timerEvent(self.h, param1.h)

proc cQTimer_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTimerevent*(self: gen_qtimer_types.QTimer, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimer_virtualbase_event(self.h, event.h)

proc cQTimer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTimereventFilter*(self: gen_qtimer_types.QTimer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTimer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQTimer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTimerchildEvent*(self: gen_qtimer_types.QTimer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTimer_virtualbase_childEvent(self.h, event.h)

proc cQTimer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTimercustomEvent*(self: gen_qtimer_types.QTimer, event: gen_qcoreevent_types.QEvent): void =
  fcQTimer_virtualbase_customEvent(self.h, event.h)

proc cQTimer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTimerconnectNotify*(self: gen_qtimer_types.QTimer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimer_virtualbase_connectNotify(self.h, signal.h)

proc cQTimer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTimerdisconnectNotify*(self: gen_qtimer_types.QTimer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTimer_virtualbase_disconnectNotify(self.h, signal.h)

proc cQTimer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTimerVTable](fcQTimer_vdata(self))
  let self = QTimer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTimer* {.inheritable.} = ref object of QTimer
  vtbl*: cQTimerVTable
method metaObject*(self: VirtualQTimer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTimermetaObject(self[])
proc cQTimer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTimer, param1: cstring): pointer {.base.} =
  QTimermetacast(self[], param1)
proc cQTimer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTimer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTimermetacall(self[], param1, param2, param3)
proc cQTimer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method timerEvent*(self: VirtualQTimer, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTimertimerEvent(self[], param1)
proc cQTimer_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

method event*(self: VirtualQTimer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTimerevent(self[], event)
proc cQTimer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTimer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTimereventFilter(self[], watched, event)
proc cQTimer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQTimer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTimerchildEvent(self[], event)
proc cQTimer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQTimer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTimercustomEvent(self[], event)
proc cQTimer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTimerconnectNotify(self[], signal)
proc cQTimer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTimer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTimerdisconnectNotify(self[], signal)
proc cQTimer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTimer](fcQTimer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qtimer_types.QTimer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTimer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtimer_types.QTimer): cint =
  fcQTimer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtimer_types.QTimer, signal: cstring): cint =
  fcQTimer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtimer_types.QTimer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTimer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtimer_types.QTimer,
    vtbl: ref QTimerVTable = nil): gen_qtimer_types.QTimer =
  let vtbl = if vtbl == nil: new QTimerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimerVTable](fcQTimer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTimer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTimer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTimer_vtable_callback_metacall
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTimer_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTimer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTimer_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTimer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTimer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTimer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTimer_vtable_callback_disconnectNotify
  gen_qtimer_types.QTimer(h: fcQTimer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtimer_types.QTimer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTimerVTable = nil): gen_qtimer_types.QTimer =
  let vtbl = if vtbl == nil: new QTimerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTimerVTable](fcQTimer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTimer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTimer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTimer_vtable_callback_metacall
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTimer_vtable_callback_timerEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTimer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTimer_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTimer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTimer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTimer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTimer_vtable_callback_disconnectNotify
  gen_qtimer_types.QTimer(h: fcQTimer_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTimer_mvtbl = cQTimerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTimer()[])](self.fcQTimer_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQTimer_method_callback_metaObject,
  metacast: cQTimer_method_callback_metacast,
  metacall: cQTimer_method_callback_metacall,
  timerEvent: cQTimer_method_callback_timerEvent,
  event: cQTimer_method_callback_event,
  eventFilter: cQTimer_method_callback_eventFilter,
  childEvent: cQTimer_method_callback_childEvent,
  customEvent: cQTimer_method_callback_customEvent,
  connectNotify: cQTimer_method_callback_connectNotify,
  disconnectNotify: cQTimer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtimer_types.QTimer,
    inst: VirtualQTimer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimer_new(addr(cQTimer_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtimer_types.QTimer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTimer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTimer_new2(addr(cQTimer_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtimer_types.QTimer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTimer_staticMetaObject())
