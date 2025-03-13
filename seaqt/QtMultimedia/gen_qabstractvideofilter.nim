import ./Qt5Multimedia_libs

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


type QVideoFilterRunnableRunFlagEnum* = distinct cint
template LastInChain*(_: type QVideoFilterRunnableRunFlagEnum): untyped = 1


import ./gen_qabstractvideofilter_types
export gen_qabstractvideofilter_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qvideoframe_types,
  ./gen_qvideosurfaceformat_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvideoframe_types,
  gen_qvideosurfaceformat_types

type cQVideoFilterRunnable*{.exportc: "QVideoFilterRunnable", incompleteStruct.} = object
type cQAbstractVideoFilter*{.exportc: "QAbstractVideoFilter", incompleteStruct.} = object

proc fcQVideoFilterRunnable_run(self: pointer, input: pointer, surfaceFormat: pointer, flags: cint): pointer {.importc: "QVideoFilterRunnable_run".}
proc fcQVideoFilterRunnable_operatorAssign(self: pointer, param1: pointer): void {.importc: "QVideoFilterRunnable_operatorAssign".}
proc fcQAbstractVideoFilter_metaObject(self: pointer): pointer {.importc: "QAbstractVideoFilter_metaObject".}
proc fcQAbstractVideoFilter_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoFilter_metacast".}
proc fcQAbstractVideoFilter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoFilter_metacall".}
proc fcQAbstractVideoFilter_tr(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr".}
proc fcQAbstractVideoFilter_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf8".}
proc fcQAbstractVideoFilter_isActive(self: pointer): bool {.importc: "QAbstractVideoFilter_isActive".}
proc fcQAbstractVideoFilter_setActive(self: pointer, v: bool): void {.importc: "QAbstractVideoFilter_setActive".}
proc fcQAbstractVideoFilter_createFilterRunnable(self: pointer): pointer {.importc: "QAbstractVideoFilter_createFilterRunnable".}
proc fcQAbstractVideoFilter_activeChanged(self: pointer): void {.importc: "QAbstractVideoFilter_activeChanged".}
proc fcQAbstractVideoFilter_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractVideoFilter_connect_activeChanged".}
proc fcQAbstractVideoFilter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr2".}
proc fcQAbstractVideoFilter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_tr3".}
proc fcQAbstractVideoFilter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf82".}
proc fcQAbstractVideoFilter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf83".}
proc fcQAbstractVideoFilter_vtbl(self: pointer): pointer {.importc: "QAbstractVideoFilter_vtbl".}
proc fcQAbstractVideoFilter_vdata(self: pointer): pointer {.importc: "QAbstractVideoFilter_vdata".}
type cQAbstractVideoFilterVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createFilterRunnable*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractVideoFilter_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractVideoFilter_virtualbase_metaObject".}
proc fcQAbstractVideoFilter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoFilter_virtualbase_metacast".}
proc fcQAbstractVideoFilter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoFilter_virtualbase_metacall".}
proc fcQAbstractVideoFilter_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractVideoFilter_virtualbase_event".}
proc fcQAbstractVideoFilter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractVideoFilter_virtualbase_eventFilter".}
proc fcQAbstractVideoFilter_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_timerEvent".}
proc fcQAbstractVideoFilter_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_childEvent".}
proc fcQAbstractVideoFilter_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_customEvent".}
proc fcQAbstractVideoFilter_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_connectNotify".}
proc fcQAbstractVideoFilter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_disconnectNotify".}
proc fcQAbstractVideoFilter_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractVideoFilter_protectedbase_sender".}
proc fcQAbstractVideoFilter_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractVideoFilter_protectedbase_senderSignalIndex".}
proc fcQAbstractVideoFilter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractVideoFilter_protectedbase_receivers".}
proc fcQAbstractVideoFilter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractVideoFilter_protectedbase_isSignalConnected".}
proc fcQAbstractVideoFilter_new(vtbl, vdata: pointer): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new".}
proc fcQAbstractVideoFilter_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new2".}
proc fcQAbstractVideoFilter_staticMetaObject(): pointer {.importc: "QAbstractVideoFilter_staticMetaObject".}

proc run*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable, input: gen_qvideoframe_types.QVideoFrame, surfaceFormat: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, flags: cint): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFilterRunnable_run(self.h, input.h, surfaceFormat.h, cint(flags)), owned: true)

proc operatorAssign*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable, param1: gen_qabstractvideofilter_types.QVideoFilterRunnable): void =
  fcQVideoFilterRunnable_operatorAssign(self.h, param1.h)

proc metaObject*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cstring): pointer =
  fcQAbstractVideoFilter_metacast(self.h, param1)

proc metacall*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractVideoFilter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring): string =
  let v_ms = fcQAbstractVideoFilter_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring): string =
  let v_ms = fcQAbstractVideoFilter_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter): bool =
  fcQAbstractVideoFilter_isActive(self.h)

proc setActive*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, v: bool): void =
  fcQAbstractVideoFilter_setActive(self.h, v)

proc createFilterRunnable*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter): gen_qabstractvideofilter_types.QVideoFilterRunnable =
  gen_qabstractvideofilter_types.QVideoFilterRunnable(h: fcQAbstractVideoFilter_createFilterRunnable(self.h), owned: false)

proc activeChanged*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter): void =
  fcQAbstractVideoFilter_activeChanged(self.h)

type QAbstractVideoFilteractiveChangedSlot* = proc()
proc cQAbstractVideoFilter_slot_callback_activeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractVideoFilteractiveChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractVideoFilter_slot_callback_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractVideoFilteractiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveChanged*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFilteractiveChangedSlot) =
  var tmp = new QAbstractVideoFilteractiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_connect_activeChanged(self.h, cast[int](addr tmp[]), cQAbstractVideoFilter_slot_callback_activeChanged, cQAbstractVideoFilter_slot_callback_activeChanged_release)

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoFilter_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoFilter_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoFilter_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoFilter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAbstractVideoFiltermetaObjectProc* = proc(self: QAbstractVideoFilter): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractVideoFiltermetacastProc* = proc(self: QAbstractVideoFilter, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractVideoFiltermetacallProc* = proc(self: QAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractVideoFiltercreateFilterRunnableProc* = proc(self: QAbstractVideoFilter): gen_qabstractvideofilter_types.QVideoFilterRunnable {.raises: [], gcsafe.}
type QAbstractVideoFiltereventProc* = proc(self: QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractVideoFiltereventFilterProc* = proc(self: QAbstractVideoFilter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractVideoFiltertimerEventProc* = proc(self: QAbstractVideoFilter, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractVideoFilterchildEventProc* = proc(self: QAbstractVideoFilter, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractVideoFiltercustomEventProc* = proc(self: QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractVideoFilterconnectNotifyProc* = proc(self: QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractVideoFilterdisconnectNotifyProc* = proc(self: QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractVideoFilterVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractVideoFilterVTable
  metaObject*: QAbstractVideoFiltermetaObjectProc
  metacast*: QAbstractVideoFiltermetacastProc
  metacall*: QAbstractVideoFiltermetacallProc
  createFilterRunnable*: QAbstractVideoFiltercreateFilterRunnableProc
  event*: QAbstractVideoFiltereventProc
  eventFilter*: QAbstractVideoFiltereventFilterProc
  timerEvent*: QAbstractVideoFiltertimerEventProc
  childEvent*: QAbstractVideoFilterchildEventProc
  customEvent*: QAbstractVideoFiltercustomEventProc
  connectNotify*: QAbstractVideoFilterconnectNotifyProc
  disconnectNotify*: QAbstractVideoFilterdisconnectNotifyProc
proc QAbstractVideoFiltermetaObject*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractVideoFilter_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractVideoFiltermetacast*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cstring): pointer =
  fcQAbstractVideoFilter_virtualbase_metacast(self.h, param1)

proc cQAbstractVideoFilter_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractVideoFiltermetacall*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractVideoFilter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractVideoFilter_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQAbstractVideoFilter_vtable_callback_createFilterRunnable(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  var virtualReturn = vtbl[].createFilterRunnable(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractVideoFilterevent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractVideoFilter_virtualbase_event(self.h, event.h)

proc cQAbstractVideoFilter_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractVideoFiltereventFilter*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractVideoFilter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractVideoFilter_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractVideoFiltertimerEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractVideoFilter_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractVideoFilter_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractVideoFilterchildEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractVideoFilter_virtualbase_childEvent(self.h, event.h)

proc cQAbstractVideoFilter_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractVideoFiltercustomEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractVideoFilter_virtualbase_customEvent(self.h, event.h)

proc cQAbstractVideoFilter_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractVideoFilterconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractVideoFilter_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractVideoFilter_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractVideoFilterdisconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractVideoFilter_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractVideoFilter_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractVideoFilter* {.inheritable.} = ref object of QAbstractVideoFilter
  vtbl*: cQAbstractVideoFilterVTable
method metaObject*(self: VirtualQAbstractVideoFilter): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractVideoFiltermetaObject(self[])
proc cQAbstractVideoFilter_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractVideoFilter, param1: cstring): pointer {.base.} =
  QAbstractVideoFiltermetacast(self[], param1)
proc cQAbstractVideoFilter_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractVideoFiltermetacall(self[], param1, param2, param3)
proc cQAbstractVideoFilter_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method createFilterRunnable*(self: VirtualQAbstractVideoFilter): gen_qabstractvideofilter_types.QVideoFilterRunnable {.base.} =
  raiseAssert("missing implementation of QAbstractVideoFilter_virtualbase_createFilterRunnable")
proc cQAbstractVideoFilter_method_callback_createFilterRunnable(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  var virtualReturn = inst.createFilterRunnable()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractVideoFilterevent(self[], event)
proc cQAbstractVideoFilter_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractVideoFilter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractVideoFiltereventFilter(self[], watched, event)
proc cQAbstractVideoFilter_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractVideoFilter, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractVideoFiltertimerEvent(self[], event)
proc cQAbstractVideoFilter_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractVideoFilter, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractVideoFilterchildEvent(self[], event)
proc cQAbstractVideoFilter_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractVideoFiltercustomEvent(self[], event)
proc cQAbstractVideoFilter_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractVideoFilterconnectNotify(self[], signal)
proc cQAbstractVideoFilter_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractVideoFilterdisconnectNotify(self[], signal)
proc cQAbstractVideoFilter_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoFilter](fcQAbstractVideoFilter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractVideoFilter_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter): cint =
  fcQAbstractVideoFilter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: cstring): cint =
  fcQAbstractVideoFilter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractVideoFilter_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter,
    vtbl: ref QAbstractVideoFilterVTable = nil): gen_qabstractvideofilter_types.QAbstractVideoFilter =
  let vtbl = if vtbl == nil: new QAbstractVideoFilterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractVideoFilter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractVideoFilter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractVideoFilter_vtable_callback_metacall
  if not isNil(vtbl[].createFilterRunnable):
    vtbl[].vtbl.createFilterRunnable = cQAbstractVideoFilter_vtable_callback_createFilterRunnable
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractVideoFilter_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractVideoFilter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractVideoFilter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractVideoFilter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractVideoFilter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractVideoFilter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractVideoFilter_vtable_callback_disconnectNotify
  gen_qabstractvideofilter_types.QAbstractVideoFilter(h: fcQAbstractVideoFilter_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractVideoFilterVTable = nil): gen_qabstractvideofilter_types.QAbstractVideoFilter =
  let vtbl = if vtbl == nil: new QAbstractVideoFilterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoFilterVTable](fcQAbstractVideoFilter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractVideoFilter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractVideoFilter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractVideoFilter_vtable_callback_metacall
  if not isNil(vtbl[].createFilterRunnable):
    vtbl[].vtbl.createFilterRunnable = cQAbstractVideoFilter_vtable_callback_createFilterRunnable
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractVideoFilter_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractVideoFilter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractVideoFilter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractVideoFilter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractVideoFilter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractVideoFilter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractVideoFilter_vtable_callback_disconnectNotify
  gen_qabstractvideofilter_types.QAbstractVideoFilter(h: fcQAbstractVideoFilter_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractVideoFilter_mvtbl = cQAbstractVideoFilterVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractVideoFilter()[])](self.fcQAbstractVideoFilter_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractVideoFilter_method_callback_metaObject,
  metacast: cQAbstractVideoFilter_method_callback_metacast,
  metacall: cQAbstractVideoFilter_method_callback_metacall,
  createFilterRunnable: cQAbstractVideoFilter_method_callback_createFilterRunnable,
  event: cQAbstractVideoFilter_method_callback_event,
  eventFilter: cQAbstractVideoFilter_method_callback_eventFilter,
  timerEvent: cQAbstractVideoFilter_method_callback_timerEvent,
  childEvent: cQAbstractVideoFilter_method_callback_childEvent,
  customEvent: cQAbstractVideoFilter_method_callback_customEvent,
  connectNotify: cQAbstractVideoFilter_method_callback_connectNotify,
  disconnectNotify: cQAbstractVideoFilter_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter,
    inst: VirtualQAbstractVideoFilter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractVideoFilter_new(addr(cQAbstractVideoFilter_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractVideoFilter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractVideoFilter_new2(addr(cQAbstractVideoFilter_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_staticMetaObject())
