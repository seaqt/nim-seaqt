import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qabstractvideofilter.cpp", cflags).}


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
proc fcQVideoFilterRunnable_delete(self: pointer) {.importc: "QVideoFilterRunnable_delete".}
proc fcQAbstractVideoFilter_metaObject(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_metaObject".}
proc fcQAbstractVideoFilter_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoFilter_metacast".}
proc fcQAbstractVideoFilter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoFilter_metacall".}
proc fcQAbstractVideoFilter_tr(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr".}
proc fcQAbstractVideoFilter_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf8".}
proc fcQAbstractVideoFilter_isActive(self: pointer, ): bool {.importc: "QAbstractVideoFilter_isActive".}
proc fcQAbstractVideoFilter_setActive(self: pointer, v: bool): void {.importc: "QAbstractVideoFilter_setActive".}
proc fcQAbstractVideoFilter_createFilterRunnable(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_createFilterRunnable".}
proc fcQAbstractVideoFilter_activeChanged(self: pointer, ): void {.importc: "QAbstractVideoFilter_activeChanged".}
proc fcQAbstractVideoFilter_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractVideoFilter_connect_activeChanged".}
proc fcQAbstractVideoFilter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr2".}
proc fcQAbstractVideoFilter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_tr3".}
proc fcQAbstractVideoFilter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf82".}
proc fcQAbstractVideoFilter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf83".}
type cQAbstractVideoFilterVTable = object
  destructor*: proc(vtbl: ptr cQAbstractVideoFilterVTable, self: ptr cQAbstractVideoFilter) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  createFilterRunnable*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractVideoFilter_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_virtualbase_metaObject".}
proc fcQAbstractVideoFilter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoFilter_virtualbase_metacast".}
proc fcQAbstractVideoFilter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoFilter_virtualbase_metacall".}
proc fcQAbstractVideoFilter_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractVideoFilter_virtualbase_event".}
proc fcQAbstractVideoFilter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractVideoFilter_virtualbase_eventFilter".}
proc fcQAbstractVideoFilter_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_timerEvent".}
proc fcQAbstractVideoFilter_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_childEvent".}
proc fcQAbstractVideoFilter_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_customEvent".}
proc fcQAbstractVideoFilter_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_connectNotify".}
proc fcQAbstractVideoFilter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractVideoFilter_virtualbase_disconnectNotify".}
proc fcQAbstractVideoFilter_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_protectedbase_sender".}
proc fcQAbstractVideoFilter_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractVideoFilter_protectedbase_senderSignalIndex".}
proc fcQAbstractVideoFilter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractVideoFilter_protectedbase_receivers".}
proc fcQAbstractVideoFilter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractVideoFilter_protectedbase_isSignalConnected".}
proc fcQAbstractVideoFilter_new(vtbl: pointer, ): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new".}
proc fcQAbstractVideoFilter_new2(vtbl: pointer, parent: pointer): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new2".}
proc fcQAbstractVideoFilter_staticMetaObject(): pointer {.importc: "QAbstractVideoFilter_staticMetaObject".}
proc fcQAbstractVideoFilter_delete(self: pointer) {.importc: "QAbstractVideoFilter_delete".}

proc run*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable, input: gen_qvideoframe_types.QVideoFrame, surfaceFormat: gen_qvideosurfaceformat_types.QVideoSurfaceFormat, flags: cint): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoFilterRunnable_run(self.h, input.h, surfaceFormat.h, cint(flags)))

proc operatorAssign*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable, param1: gen_qabstractvideofilter_types.QVideoFilterRunnable): void =
  fcQVideoFilterRunnable_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qabstractvideofilter_types.QVideoFilterRunnable) =
  fcQVideoFilterRunnable_delete(self.h)
proc metaObject*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_metaObject(self.h))

proc metacast*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cstring): pointer =
  fcQAbstractVideoFilter_metacast(self.h, param1)

proc metacall*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractVideoFilter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring): string =
  let v_ms = fcQAbstractVideoFilter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring): string =
  let v_ms = fcQAbstractVideoFilter_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): bool =
  fcQAbstractVideoFilter_isActive(self.h)

proc setActive*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, v: bool): void =
  fcQAbstractVideoFilter_setActive(self.h, v)

proc createFilterRunnable*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qabstractvideofilter_types.QVideoFilterRunnable =
  gen_qabstractvideofilter_types.QVideoFilterRunnable(h: fcQAbstractVideoFilter_createFilterRunnable(self.h))

proc activeChanged*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): void =
  fcQAbstractVideoFilter_activeChanged(self.h)

type QAbstractVideoFilteractiveChangedSlot* = proc()
proc miqt_exec_callback_cQAbstractVideoFilter_activeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractVideoFilteractiveChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractVideoFilter_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractVideoFilteractiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveChanged*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, slot: QAbstractVideoFilteractiveChangedSlot) =
  var tmp = new QAbstractVideoFilteractiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_connect_activeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractVideoFilter_activeChanged, miqt_exec_callback_cQAbstractVideoFilter_activeChanged_release)

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoFilter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoFilter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoFilter_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoFilter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QAbstractVideoFilterVTable* = object
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
proc QAbstractVideoFiltermetaObject*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractVideoFilter_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractVideoFiltermetacast*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cstring): pointer =
  fcQAbstractVideoFilter_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractVideoFilter_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractVideoFiltermetacall*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractVideoFilter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractVideoFilter_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQAbstractVideoFilter_createFilterRunnable(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  var virtualReturn = vtbl[].createFilterRunnable(self)
  virtualReturn.h

proc QAbstractVideoFilterevent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractVideoFilter_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractVideoFilter_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractVideoFiltereventFilter*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractVideoFilter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractVideoFilter_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractVideoFiltertimerEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractVideoFilter_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractVideoFilter_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractVideoFilterchildEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractVideoFilter_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractVideoFilter_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractVideoFiltercustomEvent*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractVideoFilter_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractVideoFilter_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractVideoFilterconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractVideoFilter_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractVideoFilter_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractVideoFilterdisconnectNotify*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractVideoFilter_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractVideoFilter_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoFilterVTable](vtbl)
  let self = QAbstractVideoFilter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractVideoFilter_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, ): cint =
  fcQAbstractVideoFilter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: cstring): cint =
  fcQAbstractVideoFilter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractVideoFilter_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter,
    vtbl: ref QAbstractVideoFilterVTable = nil): gen_qabstractvideofilter_types.QAbstractVideoFilter =
  let vtbl = if vtbl == nil: new QAbstractVideoFilterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractVideoFilterVTable, _: ptr cQAbstractVideoFilter) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoFilterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractVideoFilter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractVideoFilter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractVideoFilter_metacall
  if not isNil(vtbl.createFilterRunnable):
    vtbl[].vtbl.createFilterRunnable = miqt_exec_callback_cQAbstractVideoFilter_createFilterRunnable
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractVideoFilter_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractVideoFilter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractVideoFilter_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractVideoFilter_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractVideoFilter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractVideoFilter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractVideoFilter_disconnectNotify
  gen_qabstractvideofilter_types.QAbstractVideoFilter(h: fcQAbstractVideoFilter_new(addr(vtbl[]), ))

proc create*(T: type gen_qabstractvideofilter_types.QAbstractVideoFilter,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractVideoFilterVTable = nil): gen_qabstractvideofilter_types.QAbstractVideoFilter =
  let vtbl = if vtbl == nil: new QAbstractVideoFilterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractVideoFilterVTable, _: ptr cQAbstractVideoFilter) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoFilterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractVideoFilter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractVideoFilter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractVideoFilter_metacall
  if not isNil(vtbl.createFilterRunnable):
    vtbl[].vtbl.createFilterRunnable = miqt_exec_callback_cQAbstractVideoFilter_createFilterRunnable
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractVideoFilter_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractVideoFilter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractVideoFilter_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractVideoFilter_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractVideoFilter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractVideoFilter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractVideoFilter_disconnectNotify
  gen_qabstractvideofilter_types.QAbstractVideoFilter(h: fcQAbstractVideoFilter_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qabstractvideofilter_types.QAbstractVideoFilter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoFilter_staticMetaObject())
proc delete*(self: gen_qabstractvideofilter_types.QAbstractVideoFilter) =
  fcQAbstractVideoFilter_delete(self.h)
