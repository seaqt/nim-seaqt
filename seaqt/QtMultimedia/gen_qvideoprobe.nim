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

proc fcQVideoProbe_metaObject(self: pointer, ): pointer {.importc: "QVideoProbe_metaObject".}
proc fcQVideoProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoProbe_metacast".}
proc fcQVideoProbe_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoProbe_metacall".}
proc fcQVideoProbe_tr(s: cstring): struct_miqt_string {.importc: "QVideoProbe_tr".}
proc fcQVideoProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf8".}
proc fcQVideoProbe_setSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSource".}
proc fcQVideoProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QVideoProbe_setSourceWithSource".}
proc fcQVideoProbe_isActive(self: pointer, ): bool {.importc: "QVideoProbe_isActive".}
proc fcQVideoProbe_videoFrameProbed(self: pointer, frame: pointer): void {.importc: "QVideoProbe_videoFrameProbed".}
proc fcQVideoProbe_connect_videoFrameProbed(self: pointer, slot: int, callback: proc (slot: int, frame: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoProbe_connect_videoFrameProbed".}
proc fcQVideoProbe_flush(self: pointer, ): void {.importc: "QVideoProbe_flush".}
proc fcQVideoProbe_connect_flush(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoProbe_connect_flush".}
proc fcQVideoProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_tr2".}
proc fcQVideoProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_tr3".}
proc fcQVideoProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoProbe_trUtf82".}
proc fcQVideoProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoProbe_trUtf83".}
type cQVideoProbeVTable = object
  destructor*: proc(vtbl: ptr cQVideoProbeVTable, self: ptr cQVideoProbe) {.cdecl, raises:[], gcsafe.}
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
proc fcQVideoProbe_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QVideoProbe_virtualbase_metaObject".}
proc fcQVideoProbe_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoProbe_virtualbase_metacast".}
proc fcQVideoProbe_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoProbe_virtualbase_metacall".}
proc fcQVideoProbe_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoProbe_virtualbase_event".}
proc fcQVideoProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoProbe_virtualbase_eventFilter".}
proc fcQVideoProbe_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoProbe_virtualbase_timerEvent".}
proc fcQVideoProbe_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoProbe_virtualbase_childEvent".}
proc fcQVideoProbe_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoProbe_virtualbase_customEvent".}
proc fcQVideoProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoProbe_virtualbase_connectNotify".}
proc fcQVideoProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoProbe_virtualbase_disconnectNotify".}
proc fcQVideoProbe_protectedbase_sender(self: pointer, ): pointer {.importc: "QVideoProbe_protectedbase_sender".}
proc fcQVideoProbe_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QVideoProbe_protectedbase_senderSignalIndex".}
proc fcQVideoProbe_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoProbe_protectedbase_receivers".}
proc fcQVideoProbe_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoProbe_protectedbase_isSignalConnected".}
proc fcQVideoProbe_new(vtbl: pointer, ): ptr cQVideoProbe {.importc: "QVideoProbe_new".}
proc fcQVideoProbe_new2(vtbl: pointer, parent: pointer): ptr cQVideoProbe {.importc: "QVideoProbe_new2".}
proc fcQVideoProbe_staticMetaObject(): pointer {.importc: "QVideoProbe_staticMetaObject".}
proc fcQVideoProbe_delete(self: pointer) {.importc: "QVideoProbe_delete".}

proc metaObject*(self: gen_qvideoprobe_types.QVideoProbe, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoProbe_metaObject(self.h))

proc metacast*(self: gen_qvideoprobe_types.QVideoProbe, param1: cstring): pointer =
  fcQVideoProbe_metacast(self.h, param1)

proc metacall*(self: gen_qvideoprobe_types.QVideoProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =
  let v_ms = fcQVideoProbe_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring): string =
  let v_ms = fcQVideoProbe_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediaobject_types.QMediaObject): bool =
  fcQVideoProbe_setSource(self.h, source.h)

proc setSource*(self: gen_qvideoprobe_types.QVideoProbe, source: gen_qmediarecorder_types.QMediaRecorder): bool =
  fcQVideoProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: gen_qvideoprobe_types.QVideoProbe, ): bool =
  fcQVideoProbe_isActive(self.h)

proc videoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, frame: gen_qvideoframe_types.QVideoFrame): void =
  fcQVideoProbe_videoFrameProbed(self.h, frame.h)

type QVideoProbevideoFrameProbedSlot* = proc(frame: gen_qvideoframe_types.QVideoFrame)
proc miqt_exec_callback_cQVideoProbe_videoFrameProbed(slot: int, frame: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QVideoProbevideoFrameProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoProbe_videoFrameProbed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoProbevideoFrameProbedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoFrameProbed*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbevideoFrameProbedSlot) =
  var tmp = new QVideoProbevideoFrameProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_connect_videoFrameProbed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVideoProbe_videoFrameProbed, miqt_exec_callback_cQVideoProbe_videoFrameProbed_release)

proc flush*(self: gen_qvideoprobe_types.QVideoProbe, ): void =
  fcQVideoProbe_flush(self.h)

type QVideoProbeflushSlot* = proc()
proc miqt_exec_callback_cQVideoProbe_flush(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QVideoProbeflushSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQVideoProbe_flush_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoProbeflushSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflush*(self: gen_qvideoprobe_types.QVideoProbe, slot: QVideoProbeflushSlot) =
  var tmp = new QVideoProbeflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoProbe_connect_flush(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQVideoProbe_flush, miqt_exec_callback_cQVideoProbe_flush_release)

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =
  let v_ms = fcQVideoProbe_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring): string =
  let v_ms = fcQVideoProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideoprobe_types.QVideoProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QVideoProbeVTable* = object
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
proc QVideoProbemetaObject*(self: gen_qvideoprobe_types.QVideoProbe, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoProbe_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQVideoProbe_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QVideoProbemetacast*(self: gen_qvideoprobe_types.QVideoProbe, param1: cstring): pointer =
  fcQVideoProbe_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQVideoProbe_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVideoProbemetacall*(self: gen_qvideoprobe_types.QVideoProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQVideoProbe_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoProbeevent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoProbe_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQVideoProbe_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVideoProbeeventFilter*(self: gen_qvideoprobe_types.QVideoProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQVideoProbe_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVideoProbetimerEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoProbe_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoProbe_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QVideoProbechildEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoProbe_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoProbe_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QVideoProbecustomEvent*(self: gen_qvideoprobe_types.QVideoProbe, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoProbe_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoProbe_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QVideoProbeconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoProbe_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoProbe_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QVideoProbedisconnectNotify*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoProbe_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoProbe_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoProbeVTable](vtbl)
  let self = QVideoProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qvideoprobe_types.QVideoProbe, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoProbe_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qvideoprobe_types.QVideoProbe, ): cint =
  fcQVideoProbe_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideoprobe_types.QVideoProbe, signal: cstring): cint =
  fcQVideoProbe_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideoprobe_types.QVideoProbe, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoProbe_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvideoprobe_types.QVideoProbe,
    vtbl: ref QVideoProbeVTable = nil): gen_qvideoprobe_types.QVideoProbe =
  let vtbl = if vtbl == nil: new QVideoProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVideoProbeVTable, _: ptr cQVideoProbe) {.cdecl.} =
    let vtbl = cast[ref QVideoProbeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoProbe_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoProbe_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoProbe_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoProbe_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoProbe_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoProbe_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoProbe_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoProbe_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoProbe_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoProbe_disconnectNotify
  gen_qvideoprobe_types.QVideoProbe(h: fcQVideoProbe_new(addr(vtbl[]), ))

proc create*(T: type gen_qvideoprobe_types.QVideoProbe,
    parent: gen_qobject_types.QObject,
    vtbl: ref QVideoProbeVTable = nil): gen_qvideoprobe_types.QVideoProbe =
  let vtbl = if vtbl == nil: new QVideoProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVideoProbeVTable, _: ptr cQVideoProbe) {.cdecl.} =
    let vtbl = cast[ref QVideoProbeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoProbe_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoProbe_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoProbe_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoProbe_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoProbe_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoProbe_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoProbe_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoProbe_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoProbe_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoProbe_disconnectNotify
  gen_qvideoprobe_types.QVideoProbe(h: fcQVideoProbe_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qvideoprobe_types.QVideoProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoProbe_staticMetaObject())
proc delete*(self: gen_qvideoprobe_types.QVideoProbe) =
  fcQVideoProbe_delete(self.h)
