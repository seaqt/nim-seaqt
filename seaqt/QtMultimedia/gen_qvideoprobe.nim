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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qvideoprobe.cpp", cflags).}


import ./gen_qvideoprobe_types
export gen_qvideoprobe_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediaobject_types,
  ./gen_qmediarecorder_types,
  ./gen_qvideoframe_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qmediaobject_types,
  gen_qmediarecorder_types,
  gen_qvideoframe_types

type cQVideoProbe*{.exportc: "QVideoProbe", incompleteStruct.} = object

proc fcQVideoProbe_metaObject(self: pointer): pointer {.importc: "QVideoProbe_metaObject".}
proc fcQVideoProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoProbe_metacast".}
proc fcQVideoProbe_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoProbe_metacall".}
proc fcQVideoProbe_tr(s: cstring): struct_miqt_string {.importc: "QVideoProbe_tr".}
proc fcQVideoProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf8".}
proc fcQVideoProbe_setSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSource".}
proc fcQVideoProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSourceWithSource".}
proc fcQVideoProbe_isActive(self: pointer): bool {.importc: "QVideoProbe_isActive".}
proc fcQVideoProbe_videoFrameProbed(self: pointer, frame: pointer): void {.importc: "QVideoProbe_videoFrameProbed".}
proc fcQVideoProbe_connect_videoFrameProbed(self: pointer, slot: int, callback: proc (slot: int, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoProbe_connect_videoFrameProbed".}
proc fcQVideoProbe_flush(self: pointer): void {.importc: "QVideoProbe_flush".}
proc fcQVideoProbe_connect_flush(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoProbe_connect_flush".}
proc fcQVideoProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_tr2".}
proc fcQVideoProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_tr3".}
proc fcQVideoProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf82".}
proc fcQVideoProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_trUtf83".}
proc fcQVideoProbe_vtbl(self: pointer): pointer {.importc: "QVideoProbe_vtbl".}
proc fcQVideoProbe_vdata(self: pointer): pointer {.importc: "QVideoProbe_vdata".}
type cQVideoProbeVTable {.pure.} = object
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
proc fcQVideoProbe_virtualbase_metaObject(self: pointer): pointer {.importc: "QVideoProbe_virtualbase_metaObject".}
proc fcQVideoProbe_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoProbe_virtualbase_metacast".}
proc fcQVideoProbe_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoProbe_virtualbase_metacall".}
proc fcQVideoProbe_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoProbe_virtualbase_event".}
proc fcQVideoProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoProbe_virtualbase_eventFilter".}
proc fcQVideoProbe_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoProbe_virtualbase_timerEvent".}
proc fcQVideoProbe_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoProbe_virtualbase_childEvent".}
proc fcQVideoProbe_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoProbe_virtualbase_customEvent".}
proc fcQVideoProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoProbe_virtualbase_connectNotify".}
proc fcQVideoProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoProbe_virtualbase_disconnectNotify".}
proc fcQVideoProbe_protectedbase_sender(self: pointer): pointer {.importc: "QVideoProbe_protectedbase_sender".}
proc fcQVideoProbe_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVideoProbe_protectedbase_senderSignalIndex".}
proc fcQVideoProbe_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoProbe_protectedbase_receivers".}
proc fcQVideoProbe_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoProbe_protectedbase_isSignalConnected".}
proc fcQVideoProbe_new(vtbl, vdata: pointer): ptr cQVideoProbe {.importc: "QVideoProbe_new".}
proc fcQVideoProbe_new2(vtbl, vdata: pointer, parent: pointer): ptr cQVideoProbe {.importc: "QVideoProbe_new2".}
proc fcQVideoProbe_staticMetaObject(): pointer {.importc: "QVideoProbe_staticMetaObject".}

proc metaObject*(self: gen_qvideoprobe_types.QVideoProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoProbe_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideoprobe_types.QVideoProbe, param1: cstring): pointer =
  fcQVideoProbe_metacast(self.h, param1)

proc metacall*(self: gen_qvideoprobe_types.QVideoProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =
  let v_ms = fcQVideoProbe_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =
  let v_ms = fcQVideoProbe_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediaobject_types.QMediaObject): bool =
  fcQVideoProbe_setSource(self.h, source.h)

proc setSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediarecorder_types.QMediaRecorder): bool =
  fcQVideoProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: gen_qvideoprobe_types.QVideoProbe): bool =
  fcQVideoProbe_isActive(self.h)

proc videoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoProbe_videoFrameProbed(self.h, frame.h)

type QVideoProbevideoFrameProbedSlot* = proc(frame: gen_qvideoframe_types.QVideoFrame)
proc cQVideoProbe_slot_callback_videoFrameProbed(slot: int, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QVideoProbevideoFrameProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame, owned: false)

  nimfunc[](slotval1)

proc cQVideoProbe_slot_callback_videoFrameProbed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoProbevideoFrameProbedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbevideoFrameProbedSlot) =
  var tmp = new QVideoProbevideoFrameProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_connect_videoFrameProbed(self.h, cast[int](addr tmp[]), cQVideoProbe_slot_callback_videoFrameProbed, cQVideoProbe_slot_callback_videoFrameProbed_release)

proc flush*(self: gen_qvideoprobe_types.QVideoProbe): void =
  fcQVideoProbe_flush(self.h)

type QVideoProbeflushSlot* = proc()
proc cQVideoProbe_slot_callback_flush(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QVideoProbeflushSlot](cast[pointer](slot))
  nimfunc[]()

proc cQVideoProbe_slot_callback_flush_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoProbeflushSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflush*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeflushSlot) =
  var tmp = new QVideoProbeflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_connect_flush(self.h, cast[int](addr tmp[]), cQVideoProbe_slot_callback_flush, cQVideoProbe_slot_callback_flush_release)

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =
  let v_ms = fcQVideoProbe_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =
  let v_ms = fcQVideoProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QVideoProbemetaObjectProc* = proc(self: QVideoProbe): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVideoProbemetacastProc* = proc(self: QVideoProbe, param1: cstring): pointer {.raises: [], gcsafe.}
type QVideoProbemetacallProc* = proc(self: QVideoProbe, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVideoProbeeventProc* = proc(self: QVideoProbe, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoProbeeventFilterProc* = proc(self: QVideoProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoProbetimerEventProc* = proc(self: QVideoProbe, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVideoProbechildEventProc* = proc(self: QVideoProbe, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVideoProbecustomEventProc* = proc(self: QVideoProbe, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoProbeconnectNotifyProc* = proc(self: QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoProbedisconnectNotifyProc* = proc(self: QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoProbeVTable* {.inheritable, pure.} = object
  vtbl: cQVideoProbeVTable
  metaObject*: QVideoProbemetaObjectProc
  metacast*: QVideoProbemetacastProc
  metacall*: QVideoProbemetacallProc
  event*: QVideoProbeeventProc
  eventFilter*: QVideoProbeeventFilterProc
  timerEvent*: QVideoProbetimerEventProc
  childEvent*: QVideoProbechildEventProc
  customEvent*: QVideoProbecustomEventProc
  connectNotify*: QVideoProbeconnectNotifyProc
  disconnectNotify*: QVideoProbedisconnectNotifyProc
proc QVideoProbemetaObject*(self: gen_qvideoprobe_types.QVideoProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoProbe_virtualbase_metaObject(self.h), owned: false)

proc cQVideoProbe_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoProbemetacast*(self: gen_qvideoprobe_types.QVideoProbe, param1: cstring): pointer =
  fcQVideoProbe_virtualbase_metacast(self.h, param1)

proc cQVideoProbe_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVideoProbemetacall*(self: gen_qvideoprobe_types.QVideoProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQVideoProbe_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoProbeevent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoProbe_virtualbase_event(self.h, event.h)

proc cQVideoProbe_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVideoProbeeventFilter*(self: gen_qvideoprobe_types.QVideoProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQVideoProbe_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVideoProbetimerEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoProbe_virtualbase_timerEvent(self.h, event.h)

proc cQVideoProbe_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QVideoProbechildEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoProbe_virtualbase_childEvent(self.h, event.h)

proc cQVideoProbe_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QVideoProbecustomEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoProbe_virtualbase_customEvent(self.h, event.h)

proc cQVideoProbe_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QVideoProbeconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoProbe_virtualbase_connectNotify(self.h, signal.h)

proc cQVideoProbe_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QVideoProbedisconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoProbe_virtualbase_disconnectNotify(self.h, signal.h)

proc cQVideoProbe_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](fcQVideoProbe_vdata(self))
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQVideoProbe* {.inheritable.} = ref object of QVideoProbe
  vtbl*: cQVideoProbeVTable
method metaObject*(self: VirtualQVideoProbe): gen_qobjectdefs_types.QMetaObject {.base.} =
  QVideoProbemetaObject(self[])
proc cQVideoProbe_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQVideoProbe, param1: cstring): pointer {.base.} =
  QVideoProbemetacast(self[], param1)
proc cQVideoProbe_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQVideoProbe, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QVideoProbemetacall(self[], param1, param2, param3)
proc cQVideoProbe_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQVideoProbe, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoProbeevent(self[], event)
proc cQVideoProbe_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQVideoProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoProbeeventFilter(self[], watched, event)
proc cQVideoProbe_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQVideoProbe, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QVideoProbetimerEvent(self[], event)
proc cQVideoProbe_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQVideoProbe, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QVideoProbechildEvent(self[], event)
proc cQVideoProbe_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQVideoProbe, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoProbecustomEvent(self[], event)
proc cQVideoProbe_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoProbeconnectNotify(self[], signal)
proc cQVideoProbe_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoProbedisconnectNotify(self[], signal)
proc cQVideoProbe_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoProbe](fcQVideoProbe_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qvideoprobe_types.QVideoProbe): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoProbe_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideoprobe_types.QVideoProbe): cint =
  fcQVideoProbe_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideoprobe_types.QVideoProbe, signal: cstring): cint =
  fcQVideoProbe_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoProbe_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvideoprobe_types.QVideoProbe,
    vtbl: ref QVideoProbeVTable = nil): gen_qvideoprobe_types.QVideoProbe =
  let vtbl = if vtbl == nil: new QVideoProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoProbeVTable](fcQVideoProbe_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQVideoProbe_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQVideoProbe_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQVideoProbe_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQVideoProbe_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQVideoProbe_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQVideoProbe_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQVideoProbe_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQVideoProbe_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQVideoProbe_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQVideoProbe_vtable_callback_disconnectNotify
  gen_qvideoprobe_types.QVideoProbe(h: fcQVideoProbe_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qvideoprobe_types.QVideoProbe,
    parent: gen_qobject_types.QObject,
    vtbl: ref QVideoProbeVTable = nil): gen_qvideoprobe_types.QVideoProbe =
  let vtbl = if vtbl == nil: new QVideoProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoProbeVTable](fcQVideoProbe_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQVideoProbe_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQVideoProbe_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQVideoProbe_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQVideoProbe_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQVideoProbe_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQVideoProbe_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQVideoProbe_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQVideoProbe_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQVideoProbe_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQVideoProbe_vtable_callback_disconnectNotify
  gen_qvideoprobe_types.QVideoProbe(h: fcQVideoProbe_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQVideoProbe_mvtbl = cQVideoProbeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQVideoProbe()[])](self.fcQVideoProbe_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQVideoProbe_method_callback_metaObject,
  metacast: cQVideoProbe_method_callback_metacast,
  metacall: cQVideoProbe_method_callback_metacall,
  event: cQVideoProbe_method_callback_event,
  eventFilter: cQVideoProbe_method_callback_eventFilter,
  timerEvent: cQVideoProbe_method_callback_timerEvent,
  childEvent: cQVideoProbe_method_callback_childEvent,
  customEvent: cQVideoProbe_method_callback_customEvent,
  connectNotify: cQVideoProbe_method_callback_connectNotify,
  disconnectNotify: cQVideoProbe_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvideoprobe_types.QVideoProbe,
    inst: VirtualQVideoProbe) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoProbe_new(addr(cQVideoProbe_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qvideoprobe_types.QVideoProbe,
    parent: gen_qobject_types.QObject,
    inst: VirtualQVideoProbe) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoProbe_new2(addr(cQVideoProbe_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvideoprobe_types.QVideoProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoProbe_staticMetaObject())
