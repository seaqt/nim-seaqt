import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qaudioprobe.cpp", cflags).}


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

proc fcQAudioProbe_metaObject(self: pointer, ): pointer {.importc: "QAudioProbe_metaObject".}
proc fcQAudioProbe_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioProbe_metacast".}
proc fcQAudioProbe_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioProbe_metacall".}
proc fcQAudioProbe_tr(s: cstring): struct_miqt_string {.importc: "QAudioProbe_tr".}
proc fcQAudioProbe_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf8".}
proc fcQAudioProbe_setSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSource".}
proc fcQAudioProbe_setSourceWithSource(self: pointer, source: pointer): bool {.importc: "QAudioProbe_setSourceWithSource".}
proc fcQAudioProbe_isActive(self: pointer, ): bool {.importc: "QAudioProbe_isActive".}
proc fcQAudioProbe_audioBufferProbed(self: pointer, buffer: pointer): void {.importc: "QAudioProbe_audioBufferProbed".}
proc fcQAudioProbe_connect_audioBufferProbed(self: pointer, slot: int, callback: proc (slot: int, buffer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioProbe_connect_audioBufferProbed".}
proc fcQAudioProbe_flush(self: pointer, ): void {.importc: "QAudioProbe_flush".}
proc fcQAudioProbe_connect_flush(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioProbe_connect_flush".}
proc fcQAudioProbe_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_tr2".}
proc fcQAudioProbe_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_tr3".}
proc fcQAudioProbe_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioProbe_trUtf82".}
proc fcQAudioProbe_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioProbe_trUtf83".}
type cQAudioProbeVTable = object
  destructor*: proc(vtbl: ptr cQAudioProbeVTable, self: ptr cQAudioProbe) {.cdecl, raises:[], gcsafe.}
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
proc fcQAudioProbe_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioProbe_virtualbase_metaObject".}
proc fcQAudioProbe_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioProbe_virtualbase_metacast".}
proc fcQAudioProbe_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioProbe_virtualbase_metacall".}
proc fcQAudioProbe_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioProbe_virtualbase_event".}
proc fcQAudioProbe_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioProbe_virtualbase_eventFilter".}
proc fcQAudioProbe_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioProbe_virtualbase_timerEvent".}
proc fcQAudioProbe_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioProbe_virtualbase_childEvent".}
proc fcQAudioProbe_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioProbe_virtualbase_customEvent".}
proc fcQAudioProbe_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioProbe_virtualbase_connectNotify".}
proc fcQAudioProbe_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioProbe_virtualbase_disconnectNotify".}
proc fcQAudioProbe_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioProbe_protectedbase_sender".}
proc fcQAudioProbe_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioProbe_protectedbase_senderSignalIndex".}
proc fcQAudioProbe_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioProbe_protectedbase_receivers".}
proc fcQAudioProbe_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioProbe_protectedbase_isSignalConnected".}
proc fcQAudioProbe_new(vtbl: pointer, ): ptr cQAudioProbe {.importc: "QAudioProbe_new".}
proc fcQAudioProbe_new2(vtbl: pointer, parent: pointer): ptr cQAudioProbe {.importc: "QAudioProbe_new2".}
proc fcQAudioProbe_staticMetaObject(): pointer {.importc: "QAudioProbe_staticMetaObject".}
proc fcQAudioProbe_delete(self: pointer) {.importc: "QAudioProbe_delete".}

proc metaObject*(self: gen_qaudioprobe_types.QAudioProbe, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_metaObject(self.h))

proc metacast*(self: gen_qaudioprobe_types.QAudioProbe, param1: cstring): pointer =
  fcQAudioProbe_metacast(self.h, param1)

proc metacall*(self: gen_qaudioprobe_types.QAudioProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioProbe_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring): string =
  let v_ms = fcQAudioProbe_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring): string =
  let v_ms = fcQAudioProbe_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qaudioprobe_types.QAudioProbe, source: gen_qmediaobject_types.QMediaObject): bool =
  fcQAudioProbe_setSource(self.h, source.h)

proc setSource*(self: gen_qaudioprobe_types.QAudioProbe, source: gen_qmediarecorder_types.QMediaRecorder): bool =
  fcQAudioProbe_setSourceWithSource(self.h, source.h)

proc isActive*(self: gen_qaudioprobe_types.QAudioProbe, ): bool =
  fcQAudioProbe_isActive(self.h)

proc audioBufferProbed*(self: gen_qaudioprobe_types.QAudioProbe, buffer: gen_qaudiobuffer_types.QAudioBuffer): void =
  fcQAudioProbe_audioBufferProbed(self.h, buffer.h)

type QAudioProbeaudioBufferProbedSlot* = proc(buffer: gen_qaudiobuffer_types.QAudioBuffer)
proc miqt_exec_callback_cQAudioProbe_audioBufferProbed(slot: int, buffer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAudioProbeaudioBufferProbedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudiobuffer_types.QAudioBuffer(h: buffer)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioProbe_audioBufferProbed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioProbeaudioBufferProbedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioBufferProbed*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeaudioBufferProbedSlot) =
  var tmp = new QAudioProbeaudioBufferProbedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_connect_audioBufferProbed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioProbe_audioBufferProbed, miqt_exec_callback_cQAudioProbe_audioBufferProbed_release)

proc flush*(self: gen_qaudioprobe_types.QAudioProbe, ): void =
  fcQAudioProbe_flush(self.h)

type QAudioProbeflushSlot* = proc()
proc miqt_exec_callback_cQAudioProbe_flush(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioProbeflushSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioProbe_flush_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioProbeflushSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onflush*(self: gen_qaudioprobe_types.QAudioProbe, slot: QAudioProbeflushSlot) =
  var tmp = new QAudioProbeflushSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioProbe_connect_flush(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioProbe_flush, miqt_exec_callback_cQAudioProbe_flush_release)

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring): string =
  let v_ms = fcQAudioProbe_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioProbe_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring): string =
  let v_ms = fcQAudioProbe_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudioprobe_types.QAudioProbe, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioProbe_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QAudioProbeVTable* = object
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
proc QAudioProbemetaObject*(self: gen_qaudioprobe_types.QAudioProbe, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioProbe_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioProbemetacast*(self: gen_qaudioprobe_types.QAudioProbe, param1: cstring): pointer =
  fcQAudioProbe_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioProbe_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioProbemetacall*(self: gen_qaudioprobe_types.QAudioProbe, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioProbe_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioProbe_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioProbeevent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioProbe_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioProbe_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioProbeeventFilter*(self: gen_qaudioprobe_types.QAudioProbe, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioProbe_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioProbe_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioProbetimerEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioProbe_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioProbe_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioProbechildEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioProbe_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioProbe_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioProbecustomEvent*(self: gen_qaudioprobe_types.QAudioProbe, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioProbe_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioProbe_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioProbeconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioProbe_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioProbe_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioProbedisconnectNotify*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioProbe_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioProbe_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioProbeVTable](vtbl)
  let self = QAudioProbe(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qaudioprobe_types.QAudioProbe, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioProbe_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qaudioprobe_types.QAudioProbe, ): cint =
  fcQAudioProbe_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudioprobe_types.QAudioProbe, signal: cstring): cint =
  fcQAudioProbe_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudioprobe_types.QAudioProbe, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioProbe_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudioprobe_types.QAudioProbe,
    vtbl: ref QAudioProbeVTable = nil): gen_qaudioprobe_types.QAudioProbe =
  let vtbl = if vtbl == nil: new QAudioProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioProbeVTable, _: ptr cQAudioProbe) {.cdecl.} =
    let vtbl = cast[ref QAudioProbeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioProbe_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioProbe_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioProbe_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioProbe_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioProbe_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioProbe_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioProbe_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioProbe_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioProbe_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioProbe_disconnectNotify
  gen_qaudioprobe_types.QAudioProbe(h: fcQAudioProbe_new(addr(vtbl[]), ))

proc create*(T: type gen_qaudioprobe_types.QAudioProbe,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioProbeVTable = nil): gen_qaudioprobe_types.QAudioProbe =
  let vtbl = if vtbl == nil: new QAudioProbeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioProbeVTable, _: ptr cQAudioProbe) {.cdecl.} =
    let vtbl = cast[ref QAudioProbeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioProbe_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioProbe_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioProbe_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioProbe_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioProbe_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioProbe_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioProbe_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioProbe_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioProbe_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioProbe_disconnectNotify
  gen_qaudioprobe_types.QAudioProbe(h: fcQAudioProbe_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qaudioprobe_types.QAudioProbe): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioProbe_staticMetaObject())
proc delete*(self: gen_qaudioprobe_types.QAudioProbe) =
  fcQAudioProbe_delete(self.h)
