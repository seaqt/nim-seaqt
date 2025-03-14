import ./qtmultimedia_pkg

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


{.compile("gen_qaudioprobe.cpp", QtMultimediaCFlags).}


import ./gen_qaudioprobe_types
export gen_qaudioprobe_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiobuffer_types,
  ./gen_qmediaobject_types,
  ./gen_qmediarecorder_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiobuffer_types,
  gen_qmediaobject_types,
  gen_qmediarecorder_types

type cQAudioProbe*{.exportc: "QAudioProbe", incompleteStruct.} = object

proc fcQAudioProbe_metaObject(self: pointer): pointer {.importc: "QAudioProbe_metaObject".}
proc fcQAudioProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioProbe_metacast".}
proc fcQAudioProbe_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioProbe_metacall".}
proc fcQAudioProbe_tr(s: cstring): struct_miqt_string {.importc: "QAudioProbe_tr".}
proc fcQAudioProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf8".}
proc fcQAudioProbe_setSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSource".}
proc fcQAudioProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSourceWithSource".}
proc fcQAudioProbe_isActive(self: pointer): bool {.importc: "QAudioProbe_isActive".}
proc fcQAudioProbe_audioBufferProbed(self: pointer, buffer: pointer): void {.importc: "QAudioProbe_audioBufferProbed".}
proc fcQAudioProbe_connect_audioBufferProbed(self: pointer, slot: int, callback: proc (slot: int, buffer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioProbe_connect_audioBufferProbed".}
proc fcQAudioProbe_flush(self: pointer): void {.importc: "QAudioProbe_flush".}
proc fcQAudioProbe_connect_flush(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioProbe_connect_flush".}
proc fcQAudioProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_tr2".}
proc fcQAudioProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_tr3".}
proc fcQAudioProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf82".}
proc fcQAudioProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_trUtf83".}
proc fcQAudioProbe_vtbl(self: pointer): pointer {.importc: "QAudioProbe_vtbl".}
proc fcQAudioProbe_vdata(self: pointer): pointer {.importc: "QAudioProbe_vdata".}
type cQAudioProbeVTable {.pure.} = object
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
proc fcQAudioProbe_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioProbe_virtualbase_metaObject".}
proc fcQAudioProbe_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioProbe_virtualbase_metacast".}
proc fcQAudioProbe_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioProbe_virtualbase_metacall".}
proc fcQAudioProbe_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioProbe_virtualbase_event".}
proc fcQAudioProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioProbe_virtualbase_eventFilter".}
proc fcQAudioProbe_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioProbe_virtualbase_timerEvent".}
proc fcQAudioProbe_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioProbe_virtualbase_childEvent".}
proc fcQAudioProbe_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioProbe_virtualbase_customEvent".}
proc fcQAudioProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioProbe_virtualbase_connectNotify".}
proc fcQAudioProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioProbe_virtualbase_disconnectNotify".}
proc fcQAudioProbe_protectedbase_sender(self: pointer): pointer {.importc: "QAudioProbe_protectedbase_sender".}
proc fcQAudioProbe_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioProbe_protectedbase_senderSignalIndex".}
proc fcQAudioProbe_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioProbe_protectedbase_receivers".}
proc fcQAudioProbe_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioProbe_protectedbase_isSignalConnected".}
proc fcQAudioProbe_new(vtbl, vdata: pointer): ptr cQAudioProbe {.importc: "QAudioProbe_new".}
proc fcQAudioProbe_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAudioProbe {.importc: "QAudioProbe_new2".}
proc fcQAudioProbe_staticMetaObject(): pointer {.importc: "QAudioProbe_staticMetaObject".}

proc metaObject*(self: gen_qaudioprobe_types.QAudioProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudioprobe_types.QAudioProbe, param1: cstring): pointer =
  fcQAudioProbe_metacast(self.h, param1)

proc metacall*(self: gen_qaudioprobe_types.QAudioProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring): string =
  let v_ms = fcQAudioProbe_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring): string =
  let v_ms = fcQAudioProbe_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qaudioprobe_types.QAudioProbe, source: gen_qmediaobject_types.QMediaObject): bool =
  fcQAudioProbe_setSource(self.h, source.h)

proc setSource*(self: gen_qaudioprobe_types.QAudioProbe, source: gen_qmediarecorder_types.QMediaRecorder): bool =
  fcQAudioProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: gen_qaudioprobe_types.QAudioProbe): bool =
  fcQAudioProbe_isActive(self.h)

proc audioBufferProbed*(self: gen_qaudioprobe_types.QAudioProbe, buffer: gen_qaudiobuffer_types.QAudioBuffer): void =
  fcQAudioProbe_audioBufferProbed(self.h, buffer.h)

type QAudioProbeaudioBufferProbedSlot* = proc(buffer: gen_qaudiobuffer_types.QAudioBuffer)
proc cQAudioProbe_slot_callback_audioBufferProbed(slot: int, buffer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAudioProbeaudioBufferProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudiobuffer_types.QAudioBuffer(h: buffer, owned: false)

  nimfunc[](slotval1)

proc cQAudioProbe_slot_callback_audioBufferProbed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioProbeaudioBufferProbedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioBufferProbed*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeaudioBufferProbedSlot) =
  var tmp = new QAudioProbeaudioBufferProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_connect_audioBufferProbed(self.h, cast[int](addr tmp[]), cQAudioProbe_slot_callback_audioBufferProbed, cQAudioProbe_slot_callback_audioBufferProbed_release)

proc flush*(self: gen_qaudioprobe_types.QAudioProbe): void =
  fcQAudioProbe_flush(self.h)

type QAudioProbeflushSlot* = proc()
proc cQAudioProbe_slot_callback_flush(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioProbeflushSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAudioProbe_slot_callback_flush_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioProbeflushSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflush*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeflushSlot) =
  var tmp = new QAudioProbeflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_connect_flush(self.h, cast[int](addr tmp[]), cQAudioProbe_slot_callback_flush, cQAudioProbe_slot_callback_flush_release)

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring): string =
  let v_ms = fcQAudioProbe_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring): string =
  let v_ms = fcQAudioProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioProbemetaObjectProc* = proc(self: QAudioProbe): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioProbemetacastProc* = proc(self: QAudioProbe, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioProbemetacallProc* = proc(self: QAudioProbe, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioProbeeventProc* = proc(self: QAudioProbe, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioProbeeventFilterProc* = proc(self: QAudioProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioProbetimerEventProc* = proc(self: QAudioProbe, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioProbechildEventProc* = proc(self: QAudioProbe, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioProbecustomEventProc* = proc(self: QAudioProbe, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioProbeconnectNotifyProc* = proc(self: QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioProbedisconnectNotifyProc* = proc(self: QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioProbeVTable* {.inheritable, pure.} = object
  vtbl: cQAudioProbeVTable
  metaObject*: QAudioProbemetaObjectProc
  metacast*: QAudioProbemetacastProc
  metacall*: QAudioProbemetacallProc
  event*: QAudioProbeeventProc
  eventFilter*: QAudioProbeeventFilterProc
  timerEvent*: QAudioProbetimerEventProc
  childEvent*: QAudioProbechildEventProc
  customEvent*: QAudioProbecustomEventProc
  connectNotify*: QAudioProbeconnectNotifyProc
  disconnectNotify*: QAudioProbedisconnectNotifyProc
proc QAudioProbemetaObject*(self: gen_qaudioprobe_types.QAudioProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_virtualbase_metaObject(self.h), owned: false)

proc cQAudioProbe_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAudioProbemetacast*(self: gen_qaudioprobe_types.QAudioProbe, param1: cstring): pointer =
  fcQAudioProbe_virtualbase_metacast(self.h, param1)

proc cQAudioProbe_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioProbemetacall*(self: gen_qaudioprobe_types.QAudioProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAudioProbe_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioProbeevent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioProbe_virtualbase_event(self.h, event.h)

proc cQAudioProbe_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioProbeeventFilter*(self: gen_qaudioprobe_types.QAudioProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAudioProbe_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioProbetimerEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioProbe_virtualbase_timerEvent(self.h, event.h)

proc cQAudioProbe_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAudioProbechildEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioProbe_virtualbase_childEvent(self.h, event.h)

proc cQAudioProbe_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAudioProbecustomEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioProbe_virtualbase_customEvent(self.h, event.h)

proc cQAudioProbe_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAudioProbeconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioProbe_virtualbase_connectNotify(self.h, signal.h)

proc cQAudioProbe_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAudioProbedisconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioProbe_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAudioProbe_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](fcQAudioProbe_vdata(self))
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioProbe* {.inheritable.} = ref object of QAudioProbe
  vtbl*: cQAudioProbeVTable
method metaObject*(self: VirtualQAudioProbe): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioProbemetaObject(self[])
proc cQAudioProbe_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAudioProbe, param1: cstring): pointer {.base.} =
  QAudioProbemetacast(self[], param1)
proc cQAudioProbe_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAudioProbe, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioProbemetacall(self[], param1, param2, param3)
proc cQAudioProbe_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQAudioProbe, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioProbeevent(self[], event)
proc cQAudioProbe_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAudioProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioProbeeventFilter(self[], watched, event)
proc cQAudioProbe_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAudioProbe, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioProbetimerEvent(self[], event)
proc cQAudioProbe_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAudioProbe, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioProbechildEvent(self[], event)
proc cQAudioProbe_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAudioProbe, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioProbecustomEvent(self[], event)
proc cQAudioProbe_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioProbeconnectNotify(self[], signal)
proc cQAudioProbe_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioProbedisconnectNotify(self[], signal)
proc cQAudioProbe_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioProbe](fcQAudioProbe_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qaudioprobe_types.QAudioProbe): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioProbe_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudioprobe_types.QAudioProbe): cint =
  fcQAudioProbe_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudioprobe_types.QAudioProbe, signal: cstring): cint =
  fcQAudioProbe_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioProbe_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudioprobe_types.QAudioProbe,
    vtbl: ref QAudioProbeVTable = nil): gen_qaudioprobe_types.QAudioProbe =
  let vtbl = if vtbl == nil: new QAudioProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioProbeVTable](fcQAudioProbe_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAudioProbe_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioProbe_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioProbe_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioProbe_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioProbe_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioProbe_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioProbe_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioProbe_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioProbe_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioProbe_vtable_callback_disconnectNotify
  gen_qaudioprobe_types.QAudioProbe(h: fcQAudioProbe_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudioprobe_types.QAudioProbe,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioProbeVTable = nil): gen_qaudioprobe_types.QAudioProbe =
  let vtbl = if vtbl == nil: new QAudioProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioProbeVTable](fcQAudioProbe_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAudioProbe_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioProbe_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioProbe_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioProbe_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioProbe_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioProbe_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioProbe_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioProbe_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioProbe_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioProbe_vtable_callback_disconnectNotify
  gen_qaudioprobe_types.QAudioProbe(h: fcQAudioProbe_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAudioProbe_mvtbl = cQAudioProbeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioProbe()[])](self.fcQAudioProbe_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAudioProbe_method_callback_metaObject,
  metacast: cQAudioProbe_method_callback_metacast,
  metacall: cQAudioProbe_method_callback_metacall,
  event: cQAudioProbe_method_callback_event,
  eventFilter: cQAudioProbe_method_callback_eventFilter,
  timerEvent: cQAudioProbe_method_callback_timerEvent,
  childEvent: cQAudioProbe_method_callback_childEvent,
  customEvent: cQAudioProbe_method_callback_customEvent,
  connectNotify: cQAudioProbe_method_callback_connectNotify,
  disconnectNotify: cQAudioProbe_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudioprobe_types.QAudioProbe,
    inst: VirtualQAudioProbe) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioProbe_new(addr(cQAudioProbe_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudioprobe_types.QAudioProbe,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAudioProbe) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioProbe_new2(addr(cQAudioProbe_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudioprobe_types.QAudioProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_staticMetaObject())
