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
{.compile("gen_qaudiorecorder.cpp", cflags).}


import ./gen_qaudiorecorder_types
export gen_qaudiorecorder_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediaobject_types,
  ./gen_qmediarecorder
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediaobject_types,
  gen_qmediarecorder

type cQAudioRecorder*{.exportc: "QAudioRecorder", incompleteStruct.} = object

proc fcQAudioRecorder_metaObject(self: pointer): pointer {.importc: "QAudioRecorder_metaObject".}
proc fcQAudioRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRecorder_metacast".}
proc fcQAudioRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRecorder_metacall".}
proc fcQAudioRecorder_tr(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr".}
proc fcQAudioRecorder_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf8".}
proc fcQAudioRecorder_audioInputs(self: pointer): struct_miqt_array {.importc: "QAudioRecorder_audioInputs".}
proc fcQAudioRecorder_defaultAudioInput(self: pointer): struct_miqt_string {.importc: "QAudioRecorder_defaultAudioInput".}
proc fcQAudioRecorder_audioInputDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAudioRecorder_audioInputDescription".}
proc fcQAudioRecorder_audioInput(self: pointer): struct_miqt_string {.importc: "QAudioRecorder_audioInput".}
proc fcQAudioRecorder_setAudioInput(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_setAudioInput".}
proc fcQAudioRecorder_audioInputChanged(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_audioInputChanged".}
proc fcQAudioRecorder_connect_audioInputChanged(self: pointer, slot: int, callback: proc (slot: int, name: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRecorder_connect_audioInputChanged".}
proc fcQAudioRecorder_availableAudioInputsChanged(self: pointer): void {.importc: "QAudioRecorder_availableAudioInputsChanged".}
proc fcQAudioRecorder_connect_availableAudioInputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRecorder_connect_availableAudioInputsChanged".}
proc fcQAudioRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr2".}
proc fcQAudioRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_tr3".}
proc fcQAudioRecorder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf82".}
proc fcQAudioRecorder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_trUtf83".}
proc fcQAudioRecorder_vtbl(self: pointer): pointer {.importc: "QAudioRecorder_vtbl".}
proc fcQAudioRecorder_vdata(self: pointer): pointer {.importc: "QAudioRecorder_vdata".}
type cQAudioRecorderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioRecorder_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioRecorder_virtualbase_metaObject".}
proc fcQAudioRecorder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRecorder_virtualbase_metacast".}
proc fcQAudioRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRecorder_virtualbase_metacall".}
proc fcQAudioRecorder_virtualbase_mediaObject(self: pointer): pointer {.importc: "QAudioRecorder_virtualbase_mediaObject".}
proc fcQAudioRecorder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QAudioRecorder_virtualbase_setMediaObject".}
proc fcQAudioRecorder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioRecorder_virtualbase_event".}
proc fcQAudioRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioRecorder_virtualbase_eventFilter".}
proc fcQAudioRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioRecorder_virtualbase_timerEvent".}
proc fcQAudioRecorder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioRecorder_virtualbase_childEvent".}
proc fcQAudioRecorder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioRecorder_virtualbase_customEvent".}
proc fcQAudioRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRecorder_virtualbase_connectNotify".}
proc fcQAudioRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRecorder_virtualbase_disconnectNotify".}
proc fcQAudioRecorder_protectedbase_sender(self: pointer): pointer {.importc: "QAudioRecorder_protectedbase_sender".}
proc fcQAudioRecorder_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioRecorder_protectedbase_senderSignalIndex".}
proc fcQAudioRecorder_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioRecorder_protectedbase_receivers".}
proc fcQAudioRecorder_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioRecorder_protectedbase_isSignalConnected".}
proc fcQAudioRecorder_new(vtbl, vdata: pointer): ptr cQAudioRecorder {.importc: "QAudioRecorder_new".}
proc fcQAudioRecorder_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAudioRecorder {.importc: "QAudioRecorder_new2".}
proc fcQAudioRecorder_staticMetaObject(): pointer {.importc: "QAudioRecorder_staticMetaObject".}

proc metaObject*(self: gen_qaudiorecorder_types.QAudioRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRecorder_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cstring): pointer =
  fcQAudioRecorder_metacast(self.h, param1)

proc metacall*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRecorder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring): string =
  let v_ms = fcQAudioRecorder_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring): string =
  let v_ms = fcQAudioRecorder_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc audioInputs*(self: gen_qaudiorecorder_types.QAudioRecorder): seq[string] =
  var v_ma = fcQAudioRecorder_audioInputs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc defaultAudioInput*(self: gen_qaudiorecorder_types.QAudioRecorder): string =
  let v_ms = fcQAudioRecorder_defaultAudioInput(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc audioInputDescription*(self: gen_qaudiorecorder_types.QAudioRecorder, name: openArray[char]): string =
  let v_ms = fcQAudioRecorder_audioInputDescription(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc audioInput*(self: gen_qaudiorecorder_types.QAudioRecorder): string =
  let v_ms = fcQAudioRecorder_audioInput(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAudioInput*(self: gen_qaudiorecorder_types.QAudioRecorder, name: openArray[char]): void =
  fcQAudioRecorder_setAudioInput(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc audioInputChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, name: openArray[char]): void =
  fcQAudioRecorder_audioInputChanged(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

type QAudioRecorderaudioInputChangedSlot* = proc(name: openArray[char])
proc cQAudioRecorder_slot_callback_audioInputChanged(slot: int, name: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRecorderaudioInputChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc cQAudioRecorder_slot_callback_audioInputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRecorderaudioInputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioInputChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderaudioInputChangedSlot) =
  var tmp = new QAudioRecorderaudioInputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_connect_audioInputChanged(self.h, cast[int](addr tmp[]), cQAudioRecorder_slot_callback_audioInputChanged, cQAudioRecorder_slot_callback_audioInputChanged_release)

proc availableAudioInputsChanged*(self: gen_qaudiorecorder_types.QAudioRecorder): void =
  fcQAudioRecorder_availableAudioInputsChanged(self.h)

type QAudioRecorderavailableAudioInputsChangedSlot* = proc()
proc cQAudioRecorder_slot_callback_availableAudioInputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRecorderavailableAudioInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAudioRecorder_slot_callback_availableAudioInputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRecorderavailableAudioInputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailableAudioInputsChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderavailableAudioInputsChangedSlot) =
  var tmp = new QAudioRecorderavailableAudioInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_connect_availableAudioInputsChanged(self.h, cast[int](addr tmp[]), cQAudioRecorder_slot_callback_availableAudioInputsChanged, cQAudioRecorder_slot_callback_availableAudioInputsChanged_release)

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRecorder_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRecorder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioRecordermetaObjectProc* = proc(self: QAudioRecorder): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioRecordermetacastProc* = proc(self: QAudioRecorder, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioRecordermetacallProc* = proc(self: QAudioRecorder, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioRecordermediaObjectProc* = proc(self: QAudioRecorder): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QAudioRecordersetMediaObjectProc* = proc(self: QAudioRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QAudioRecordereventProc* = proc(self: QAudioRecorder, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioRecordereventFilterProc* = proc(self: QAudioRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioRecordertimerEventProc* = proc(self: QAudioRecorder, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioRecorderchildEventProc* = proc(self: QAudioRecorder, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioRecordercustomEventProc* = proc(self: QAudioRecorder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioRecorderconnectNotifyProc* = proc(self: QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioRecorderdisconnectNotifyProc* = proc(self: QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioRecorderVTable* {.inheritable, pure.} = object
  vtbl: cQAudioRecorderVTable
  metaObject*: QAudioRecordermetaObjectProc
  metacast*: QAudioRecordermetacastProc
  metacall*: QAudioRecordermetacallProc
  mediaObject*: QAudioRecordermediaObjectProc
  setMediaObject*: QAudioRecordersetMediaObjectProc
  event*: QAudioRecordereventProc
  eventFilter*: QAudioRecordereventFilterProc
  timerEvent*: QAudioRecordertimerEventProc
  childEvent*: QAudioRecorderchildEventProc
  customEvent*: QAudioRecordercustomEventProc
  connectNotify*: QAudioRecorderconnectNotifyProc
  disconnectNotify*: QAudioRecorderdisconnectNotifyProc
proc QAudioRecordermetaObject*(self: gen_qaudiorecorder_types.QAudioRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRecorder_virtualbase_metaObject(self.h), owned: false)

proc cQAudioRecorder_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAudioRecordermetacast*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cstring): pointer =
  fcQAudioRecorder_virtualbase_metacast(self.h, param1)

proc cQAudioRecorder_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioRecordermetacall*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAudioRecorder_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioRecordermediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQAudioRecorder_virtualbase_mediaObject(self.h), owned: false)

proc cQAudioRecorder_vtable_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAudioRecordersetMediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQAudioRecorder_virtualbase_setMediaObject(self.h, objectVal.h)

proc cQAudioRecorder_vtable_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QAudioRecorderevent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRecorder_virtualbase_event(self.h, event.h)

proc cQAudioRecorder_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioRecordereventFilter*(self: gen_qaudiorecorder_types.QAudioRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAudioRecorder_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioRecordertimerEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioRecorder_virtualbase_timerEvent(self.h, event.h)

proc cQAudioRecorder_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAudioRecorderchildEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioRecorder_virtualbase_childEvent(self.h, event.h)

proc cQAudioRecorder_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAudioRecordercustomEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioRecorder_virtualbase_customEvent(self.h, event.h)

proc cQAudioRecorder_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAudioRecorderconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRecorder_virtualbase_connectNotify(self.h, signal.h)

proc cQAudioRecorder_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAudioRecorderdisconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRecorder_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAudioRecorder_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioRecorder* {.inheritable.} = ref object of QAudioRecorder
  vtbl*: cQAudioRecorderVTable
method metaObject*(self: VirtualQAudioRecorder): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioRecordermetaObject(self[])
proc cQAudioRecorder_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAudioRecorder, param1: cstring): pointer {.base.} =
  QAudioRecordermetacast(self[], param1)
proc cQAudioRecorder_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAudioRecorder, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioRecordermetacall(self[], param1, param2, param3)
proc cQAudioRecorder_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method mediaObject*(self: VirtualQAudioRecorder): gen_qmediaobject_types.QMediaObject {.base.} =
  QAudioRecordermediaObject(self[])
proc cQAudioRecorder_method_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  var virtualReturn = inst.mediaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setMediaObject*(self: VirtualQAudioRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool {.base.} =
  QAudioRecordersetMediaObject(self[], objectVal)
proc cQAudioRecorder_method_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = inst.setMediaObject(slotval1)
  virtualReturn

method event*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioRecorderevent(self[], event)
proc cQAudioRecorder_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAudioRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioRecordereventFilter(self[], watched, event)
proc cQAudioRecorder_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioRecordertimerEvent(self[], event)
proc cQAudioRecorder_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioRecorderchildEvent(self[], event)
proc cQAudioRecorder_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioRecordercustomEvent(self[], event)
proc cQAudioRecorder_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioRecorderconnectNotify(self[], signal)
proc cQAudioRecorder_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioRecorderdisconnectNotify(self[], signal)
proc cQAudioRecorder_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioRecorder](fcQAudioRecorder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qaudiorecorder_types.QAudioRecorder): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioRecorder_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiorecorder_types.QAudioRecorder): cint =
  fcQAudioRecorder_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: cstring): cint =
  fcQAudioRecorder_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioRecorder_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    vtbl: ref QAudioRecorderVTable = nil): gen_qaudiorecorder_types.QAudioRecorder =
  let vtbl = if vtbl == nil: new QAudioRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAudioRecorder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioRecorder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioRecorder_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = cQAudioRecorder_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = cQAudioRecorder_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioRecorder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioRecorder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioRecorder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioRecorder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioRecorder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioRecorder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioRecorder_vtable_callback_disconnectNotify
  gen_qaudiorecorder_types.QAudioRecorder(h: fcQAudioRecorder_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioRecorderVTable = nil): gen_qaudiorecorder_types.QAudioRecorder =
  let vtbl = if vtbl == nil: new QAudioRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioRecorderVTable](fcQAudioRecorder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAudioRecorder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAudioRecorder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAudioRecorder_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = cQAudioRecorder_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = cQAudioRecorder_vtable_callback_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAudioRecorder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAudioRecorder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAudioRecorder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAudioRecorder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAudioRecorder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAudioRecorder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAudioRecorder_vtable_callback_disconnectNotify
  gen_qaudiorecorder_types.QAudioRecorder(h: fcQAudioRecorder_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAudioRecorder_mvtbl = cQAudioRecorderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioRecorder()[])](self.fcQAudioRecorder_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAudioRecorder_method_callback_metaObject,
  metacast: cQAudioRecorder_method_callback_metacast,
  metacall: cQAudioRecorder_method_callback_metacall,
  mediaObject: cQAudioRecorder_method_callback_mediaObject,
  setMediaObject: cQAudioRecorder_method_callback_setMediaObject,
  event: cQAudioRecorder_method_callback_event,
  eventFilter: cQAudioRecorder_method_callback_eventFilter,
  timerEvent: cQAudioRecorder_method_callback_timerEvent,
  childEvent: cQAudioRecorder_method_callback_childEvent,
  customEvent: cQAudioRecorder_method_callback_customEvent,
  connectNotify: cQAudioRecorder_method_callback_connectNotify,
  disconnectNotify: cQAudioRecorder_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    inst: VirtualQAudioRecorder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioRecorder_new(addr(cQAudioRecorder_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAudioRecorder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioRecorder_new2(addr(cQAudioRecorder_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiorecorder_types.QAudioRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRecorder_staticMetaObject())
