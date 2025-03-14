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


{.compile("gen_qvideosink.cpp", QtMultimediaCFlags).}


import ./gen_qvideosink_types
export gen_qvideosink_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ./gen_qvideoframe_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvideoframe_types

type cQVideoSink*{.exportc: "QVideoSink", incompleteStruct.} = object

proc fcQVideoSink_metaObject(self: pointer): pointer {.importc: "QVideoSink_metaObject".}
proc fcQVideoSink_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoSink_metacast".}
proc fcQVideoSink_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoSink_metacall".}
proc fcQVideoSink_tr(s: cstring): struct_miqt_string {.importc: "QVideoSink_tr".}
proc fcQVideoSink_videoSize(self: pointer): pointer {.importc: "QVideoSink_videoSize".}
proc fcQVideoSink_subtitleText(self: pointer): struct_miqt_string {.importc: "QVideoSink_subtitleText".}
proc fcQVideoSink_setSubtitleText(self: pointer, subtitle: struct_miqt_string): void {.importc: "QVideoSink_setSubtitleText".}
proc fcQVideoSink_setVideoFrame(self: pointer, frame: pointer): void {.importc: "QVideoSink_setVideoFrame".}
proc fcQVideoSink_videoFrame(self: pointer): pointer {.importc: "QVideoSink_videoFrame".}
proc fcQVideoSink_videoFrameChanged(self: pointer, frame: pointer): void {.importc: "QVideoSink_videoFrameChanged".}
proc fcQVideoSink_connect_videoFrameChanged(self: pointer, slot: int, callback: proc (slot: int, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoSink_connect_videoFrameChanged".}
proc fcQVideoSink_subtitleTextChanged(self: pointer, subtitleText: struct_miqt_string): void {.importc: "QVideoSink_subtitleTextChanged".}
proc fcQVideoSink_connect_subtitleTextChanged(self: pointer, slot: int, callback: proc (slot: int, subtitleText: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoSink_connect_subtitleTextChanged".}
proc fcQVideoSink_videoSizeChanged(self: pointer): void {.importc: "QVideoSink_videoSizeChanged".}
proc fcQVideoSink_connect_videoSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoSink_connect_videoSizeChanged".}
proc fcQVideoSink_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoSink_tr2".}
proc fcQVideoSink_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoSink_tr3".}
proc fcQVideoSink_vtbl(self: pointer): pointer {.importc: "QVideoSink_vtbl".}
proc fcQVideoSink_vdata(self: pointer): pointer {.importc: "QVideoSink_vdata".}
type cQVideoSinkVTable {.pure.} = object
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
proc fcQVideoSink_virtualbase_metaObject(self: pointer): pointer {.importc: "QVideoSink_virtualbase_metaObject".}
proc fcQVideoSink_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoSink_virtualbase_metacast".}
proc fcQVideoSink_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoSink_virtualbase_metacall".}
proc fcQVideoSink_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoSink_virtualbase_event".}
proc fcQVideoSink_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoSink_virtualbase_eventFilter".}
proc fcQVideoSink_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoSink_virtualbase_timerEvent".}
proc fcQVideoSink_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoSink_virtualbase_childEvent".}
proc fcQVideoSink_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoSink_virtualbase_customEvent".}
proc fcQVideoSink_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoSink_virtualbase_connectNotify".}
proc fcQVideoSink_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoSink_virtualbase_disconnectNotify".}
proc fcQVideoSink_protectedbase_sender(self: pointer): pointer {.importc: "QVideoSink_protectedbase_sender".}
proc fcQVideoSink_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVideoSink_protectedbase_senderSignalIndex".}
proc fcQVideoSink_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoSink_protectedbase_receivers".}
proc fcQVideoSink_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoSink_protectedbase_isSignalConnected".}
proc fcQVideoSink_new(vtbl, vdata: pointer): ptr cQVideoSink {.importc: "QVideoSink_new".}
proc fcQVideoSink_new2(vtbl, vdata: pointer, parent: pointer): ptr cQVideoSink {.importc: "QVideoSink_new2".}
proc fcQVideoSink_staticMetaObject(): pointer {.importc: "QVideoSink_staticMetaObject".}

proc metaObject*(self: gen_qvideosink_types.QVideoSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoSink_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideosink_types.QVideoSink, param1: cstring): pointer =
  fcQVideoSink_metacast(self.h, param1)

proc metacall*(self: gen_qvideosink_types.QVideoSink, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoSink_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideosink_types.QVideoSink, s: cstring): string =
  let v_ms = fcQVideoSink_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc videoSize*(self: gen_qvideosink_types.QVideoSink): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoSink_videoSize(self.h), owned: true)

proc subtitleText*(self: gen_qvideosink_types.QVideoSink): string =
  let v_ms = fcQVideoSink_subtitleText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSubtitleText*(self: gen_qvideosink_types.QVideoSink, subtitle: openArray[char]): void =
  fcQVideoSink_setSubtitleText(self.h, struct_miqt_string(data: if len(subtitle) > 0: addr subtitle[0] else: nil, len: csize_t(len(subtitle))))

proc setVideoFrame*(self: gen_qvideosink_types.QVideoSink, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoSink_setVideoFrame(self.h, frame.h)

proc videoFrame*(self: gen_qvideosink_types.QVideoSink): gen_qvideoframe_types.QVideoFrame =
  gen_qvideoframe_types.QVideoFrame(h: fcQVideoSink_videoFrame(self.h), owned: true)

proc videoFrameChanged*(self: gen_qvideosink_types.QVideoSink, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoSink_videoFrameChanged(self.h, frame.h)

type QVideoSinkvideoFrameChangedSlot* = proc(frame: gen_qvideoframe_types.QVideoFrame)
proc cQVideoSink_slot_callback_videoFrameChanged(slot: int, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QVideoSinkvideoFrameChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame, owned: false)

  nimfunc[](slotval1)

proc cQVideoSink_slot_callback_videoFrameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoSinkvideoFrameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoFrameChanged*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkvideoFrameChangedSlot) =
  var tmp = new QVideoSinkvideoFrameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_connect_videoFrameChanged(self.h, cast[int](addr tmp[]), cQVideoSink_slot_callback_videoFrameChanged, cQVideoSink_slot_callback_videoFrameChanged_release)

proc subtitleTextChanged*(self: gen_qvideosink_types.QVideoSink, subtitleText: openArray[char]): void =
  fcQVideoSink_subtitleTextChanged(self.h, struct_miqt_string(data: if len(subtitleText) > 0: addr subtitleText[0] else: nil, len: csize_t(len(subtitleText))))

type QVideoSinksubtitleTextChangedSlot* = proc(subtitleText: openArray[char])
proc cQVideoSink_slot_callback_subtitleTextChanged(slot: int, subtitleText: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QVideoSinksubtitleTextChangedSlot](cast[pointer](slot))
  let vsubtitleText_ms = subtitleText
  let vsubtitleTextx_ret = string.fromBytes(vsubtitleText_ms)
  c_free(vsubtitleText_ms.data)
  let slotval1 = vsubtitleTextx_ret

  nimfunc[](slotval1)

proc cQVideoSink_slot_callback_subtitleTextChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoSinksubtitleTextChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsubtitleTextChanged*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinksubtitleTextChangedSlot) =
  var tmp = new QVideoSinksubtitleTextChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_connect_subtitleTextChanged(self.h, cast[int](addr tmp[]), cQVideoSink_slot_callback_subtitleTextChanged, cQVideoSink_slot_callback_subtitleTextChanged_release)

proc videoSizeChanged*(self: gen_qvideosink_types.QVideoSink): void =
  fcQVideoSink_videoSizeChanged(self.h)

type QVideoSinkvideoSizeChangedSlot* = proc()
proc cQVideoSink_slot_callback_videoSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QVideoSinkvideoSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQVideoSink_slot_callback_videoSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoSinkvideoSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoSizeChanged*(self: gen_qvideosink_types.QVideoSink, slot: QVideoSinkvideoSizeChangedSlot) =
  var tmp = new QVideoSinkvideoSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoSink_connect_videoSizeChanged(self.h, cast[int](addr tmp[]), cQVideoSink_slot_callback_videoSizeChanged, cQVideoSink_slot_callback_videoSizeChanged_release)

proc tr*(_: type gen_qvideosink_types.QVideoSink, s: cstring, c: cstring): string =
  let v_ms = fcQVideoSink_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideosink_types.QVideoSink, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoSink_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QVideoSinkmetaObjectProc* = proc(self: QVideoSink): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVideoSinkmetacastProc* = proc(self: QVideoSink, param1: cstring): pointer {.raises: [], gcsafe.}
type QVideoSinkmetacallProc* = proc(self: QVideoSink, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVideoSinkeventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoSinkeventFilterProc* = proc(self: QVideoSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoSinktimerEventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVideoSinkchildEventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVideoSinkcustomEventProc* = proc(self: QVideoSink, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoSinkconnectNotifyProc* = proc(self: QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoSinkdisconnectNotifyProc* = proc(self: QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoSinkVTable* {.inheritable, pure.} = object
  vtbl: cQVideoSinkVTable
  metaObject*: QVideoSinkmetaObjectProc
  metacast*: QVideoSinkmetacastProc
  metacall*: QVideoSinkmetacallProc
  event*: QVideoSinkeventProc
  eventFilter*: QVideoSinkeventFilterProc
  timerEvent*: QVideoSinktimerEventProc
  childEvent*: QVideoSinkchildEventProc
  customEvent*: QVideoSinkcustomEventProc
  connectNotify*: QVideoSinkconnectNotifyProc
  disconnectNotify*: QVideoSinkdisconnectNotifyProc
proc QVideoSinkmetaObject*(self: gen_qvideosink_types.QVideoSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoSink_virtualbase_metaObject(self.h), owned: false)

proc cQVideoSink_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QVideoSinkmetacast*(self: gen_qvideosink_types.QVideoSink, param1: cstring): pointer =
  fcQVideoSink_virtualbase_metacast(self.h, param1)

proc cQVideoSink_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVideoSinkmetacall*(self: gen_qvideosink_types.QVideoSink, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoSink_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQVideoSink_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoSinkevent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoSink_virtualbase_event(self.h, event.h)

proc cQVideoSink_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVideoSinkeventFilter*(self: gen_qvideosink_types.QVideoSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoSink_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQVideoSink_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVideoSinktimerEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoSink_virtualbase_timerEvent(self.h, event.h)

proc cQVideoSink_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QVideoSinkchildEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoSink_virtualbase_childEvent(self.h, event.h)

proc cQVideoSink_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QVideoSinkcustomEvent*(self: gen_qvideosink_types.QVideoSink, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoSink_virtualbase_customEvent(self.h, event.h)

proc cQVideoSink_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QVideoSinkconnectNotify*(self: gen_qvideosink_types.QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoSink_virtualbase_connectNotify(self.h, signal.h)

proc cQVideoSink_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QVideoSinkdisconnectNotify*(self: gen_qvideosink_types.QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoSink_virtualbase_disconnectNotify(self.h, signal.h)

proc cQVideoSink_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoSinkVTable](fcQVideoSink_vdata(self))
  let self = QVideoSink(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQVideoSink* {.inheritable.} = ref object of QVideoSink
  vtbl*: cQVideoSinkVTable
method metaObject*(self: VirtualQVideoSink): gen_qobjectdefs_types.QMetaObject {.base.} =
  QVideoSinkmetaObject(self[])
proc cQVideoSink_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQVideoSink, param1: cstring): pointer {.base.} =
  QVideoSinkmetacast(self[], param1)
proc cQVideoSink_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQVideoSink, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QVideoSinkmetacall(self[], param1, param2, param3)
proc cQVideoSink_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQVideoSink, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoSinkevent(self[], event)
proc cQVideoSink_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQVideoSink, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoSinkeventFilter(self[], watched, event)
proc cQVideoSink_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQVideoSink, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QVideoSinktimerEvent(self[], event)
proc cQVideoSink_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQVideoSink, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QVideoSinkchildEvent(self[], event)
proc cQVideoSink_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQVideoSink, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoSinkcustomEvent(self[], event)
proc cQVideoSink_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoSinkconnectNotify(self[], signal)
proc cQVideoSink_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQVideoSink, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoSinkdisconnectNotify(self[], signal)
proc cQVideoSink_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoSink](fcQVideoSink_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qvideosink_types.QVideoSink): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoSink_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideosink_types.QVideoSink): cint =
  fcQVideoSink_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideosink_types.QVideoSink, signal: cstring): cint =
  fcQVideoSink_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideosink_types.QVideoSink, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoSink_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvideosink_types.QVideoSink,
    vtbl: ref QVideoSinkVTable = nil): gen_qvideosink_types.QVideoSink =
  let vtbl = if vtbl == nil: new QVideoSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoSinkVTable](fcQVideoSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQVideoSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQVideoSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQVideoSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQVideoSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQVideoSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQVideoSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQVideoSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQVideoSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQVideoSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQVideoSink_vtable_callback_disconnectNotify
  gen_qvideosink_types.QVideoSink(h: fcQVideoSink_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qvideosink_types.QVideoSink,
    parent: gen_qobject_types.QObject,
    vtbl: ref QVideoSinkVTable = nil): gen_qvideosink_types.QVideoSink =
  let vtbl = if vtbl == nil: new QVideoSinkVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoSinkVTable](fcQVideoSink_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQVideoSink_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQVideoSink_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQVideoSink_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQVideoSink_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQVideoSink_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQVideoSink_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQVideoSink_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQVideoSink_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQVideoSink_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQVideoSink_vtable_callback_disconnectNotify
  gen_qvideosink_types.QVideoSink(h: fcQVideoSink_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQVideoSink_mvtbl = cQVideoSinkVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQVideoSink()[])](self.fcQVideoSink_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQVideoSink_method_callback_metaObject,
  metacast: cQVideoSink_method_callback_metacast,
  metacall: cQVideoSink_method_callback_metacall,
  event: cQVideoSink_method_callback_event,
  eventFilter: cQVideoSink_method_callback_eventFilter,
  timerEvent: cQVideoSink_method_callback_timerEvent,
  childEvent: cQVideoSink_method_callback_childEvent,
  customEvent: cQVideoSink_method_callback_customEvent,
  connectNotify: cQVideoSink_method_callback_connectNotify,
  disconnectNotify: cQVideoSink_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvideosink_types.QVideoSink,
    inst: VirtualQVideoSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoSink_new(addr(cQVideoSink_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qvideosink_types.QVideoSink,
    parent: gen_qobject_types.QObject,
    inst: VirtualQVideoSink) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoSink_new2(addr(cQVideoSink_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvideosink_types.QVideoSink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoSink_staticMetaObject())
