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

proc fcQAudioRecorder_metaObject(self: pointer, ): pointer {.importc: "QAudioRecorder_metaObject".}
proc fcQAudioRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRecorder_metacast".}
proc fcQAudioRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRecorder_metacall".}
proc fcQAudioRecorder_tr(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr".}
proc fcQAudioRecorder_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf8".}
proc fcQAudioRecorder_audioInputs(self: pointer, ): struct_miqt_array {.importc: "QAudioRecorder_audioInputs".}
proc fcQAudioRecorder_defaultAudioInput(self: pointer, ): struct_miqt_string {.importc: "QAudioRecorder_defaultAudioInput".}
proc fcQAudioRecorder_audioInputDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAudioRecorder_audioInputDescription".}
proc fcQAudioRecorder_audioInput(self: pointer, ): struct_miqt_string {.importc: "QAudioRecorder_audioInput".}
proc fcQAudioRecorder_setAudioInput(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_setAudioInput".}
proc fcQAudioRecorder_audioInputChanged(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_audioInputChanged".}
proc fcQAudioRecorder_connect_audioInputChanged(self: pointer, slot: int, callback: proc (slot: int, name: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRecorder_connect_audioInputChanged".}
proc fcQAudioRecorder_availableAudioInputsChanged(self: pointer, ): void {.importc: "QAudioRecorder_availableAudioInputsChanged".}
proc fcQAudioRecorder_connect_availableAudioInputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioRecorder_connect_availableAudioInputsChanged".}
proc fcQAudioRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr2".}
proc fcQAudioRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_tr3".}
proc fcQAudioRecorder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf82".}
proc fcQAudioRecorder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_trUtf83".}
type cQAudioRecorderVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQAudioRecorderVTable, self: ptr cQAudioRecorder) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(vtbl, self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAudioRecorder_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioRecorder_virtualbase_metaObject".}
proc fcQAudioRecorder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRecorder_virtualbase_metacast".}
proc fcQAudioRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRecorder_virtualbase_metacall".}
proc fcQAudioRecorder_virtualbase_mediaObject(self: pointer, ): pointer {.importc: "QAudioRecorder_virtualbase_mediaObject".}
proc fcQAudioRecorder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QAudioRecorder_virtualbase_setMediaObject".}
proc fcQAudioRecorder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioRecorder_virtualbase_event".}
proc fcQAudioRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioRecorder_virtualbase_eventFilter".}
proc fcQAudioRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioRecorder_virtualbase_timerEvent".}
proc fcQAudioRecorder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioRecorder_virtualbase_childEvent".}
proc fcQAudioRecorder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioRecorder_virtualbase_customEvent".}
proc fcQAudioRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRecorder_virtualbase_connectNotify".}
proc fcQAudioRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioRecorder_virtualbase_disconnectNotify".}
proc fcQAudioRecorder_protectedbase_sender(self: pointer, ): pointer {.importc: "QAudioRecorder_protectedbase_sender".}
proc fcQAudioRecorder_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAudioRecorder_protectedbase_senderSignalIndex".}
proc fcQAudioRecorder_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioRecorder_protectedbase_receivers".}
proc fcQAudioRecorder_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioRecorder_protectedbase_isSignalConnected".}
proc fcQAudioRecorder_new(vtbl: pointer, ): ptr cQAudioRecorder {.importc: "QAudioRecorder_new".}
proc fcQAudioRecorder_new2(vtbl: pointer, parent: pointer): ptr cQAudioRecorder {.importc: "QAudioRecorder_new2".}
proc fcQAudioRecorder_staticMetaObject(): pointer {.importc: "QAudioRecorder_staticMetaObject".}

proc metaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRecorder_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cstring): pointer =
  fcQAudioRecorder_metacast(self.h, param1)

proc metacall*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRecorder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring): string =
  let v_ms = fcQAudioRecorder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring): string =
  let v_ms = fcQAudioRecorder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputs*(self: gen_qaudiorecorder_types.QAudioRecorder, ): seq[string] =
  var v_ma = fcQAudioRecorder_audioInputs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc defaultAudioInput*(self: gen_qaudiorecorder_types.QAudioRecorder, ): string =
  let v_ms = fcQAudioRecorder_defaultAudioInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputDescription*(self: gen_qaudiorecorder_types.QAudioRecorder, name: string): string =
  let v_ms = fcQAudioRecorder_audioInputDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInput*(self: gen_qaudiorecorder_types.QAudioRecorder, ): string =
  let v_ms = fcQAudioRecorder_audioInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAudioInput*(self: gen_qaudiorecorder_types.QAudioRecorder, name: string): void =
  fcQAudioRecorder_setAudioInput(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc audioInputChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, name: string): void =
  fcQAudioRecorder_audioInputChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

type QAudioRecorderaudioInputChangedSlot* = proc(name: string)
proc miqt_exec_callback_cQAudioRecorder_audioInputChanged(slot: int, name: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRecorderaudioInputChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioRecorder_audioInputChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRecorderaudioInputChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioInputChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderaudioInputChangedSlot) =
  var tmp = new QAudioRecorderaudioInputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_connect_audioInputChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRecorder_audioInputChanged, miqt_exec_callback_cQAudioRecorder_audioInputChanged_release)

proc availableAudioInputsChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, ): void =
  fcQAudioRecorder_availableAudioInputsChanged(self.h)

type QAudioRecorderavailableAudioInputsChangedSlot* = proc()
proc miqt_exec_callback_cQAudioRecorder_availableAudioInputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioRecorderavailableAudioInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioRecorder_availableAudioInputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioRecorderavailableAudioInputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailableAudioInputsChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderavailableAudioInputsChangedSlot) =
  var tmp = new QAudioRecorderavailableAudioInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_connect_availableAudioInputsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioRecorder_availableAudioInputsChanged, miqt_exec_callback_cQAudioRecorder_availableAudioInputsChanged_release)

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRecorder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRecorder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
proc QAudioRecordermetaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRecorder_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQAudioRecorder_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAudioRecordermetacast*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cstring): pointer =
  fcQAudioRecorder_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioRecorder_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioRecordermetacall*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioRecorder_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioRecordermediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQAudioRecorder_virtualbase_mediaObject(self.h), owned: false)

proc miqt_exec_callback_cQAudioRecorder_mediaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAudioRecordersetMediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQAudioRecorder_virtualbase_setMediaObject(self.h, objectVal.h)

proc miqt_exec_callback_cQAudioRecorder_setMediaObject(vtbl: pointer, self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QAudioRecorderevent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRecorder_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioRecorder_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioRecordereventFilter*(self: gen_qaudiorecorder_types.QAudioRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioRecorder_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioRecordertimerEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioRecorder_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioRecorder_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAudioRecorderchildEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioRecorder_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioRecorder_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAudioRecordercustomEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioRecorder_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioRecorder_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAudioRecorderconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRecorder_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioRecorder_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAudioRecorderdisconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioRecorder_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioRecorder_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioRecorderVTable](vtbl)
  let self = QAudioRecorder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioRecorder* {.inheritable.} = ref object of QAudioRecorder
  vtbl*: cQAudioRecorderVTable
method metaObject*(self: VirtualQAudioRecorder, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioRecordermetaObject(self[])
proc miqt_exec_method_cQAudioRecorder_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAudioRecorder, param1: cstring): pointer {.base.} =
  QAudioRecordermetacast(self[], param1)
proc miqt_exec_method_cQAudioRecorder_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAudioRecorder, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioRecordermetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQAudioRecorder_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method mediaObject*(self: VirtualQAudioRecorder, ): gen_qmediaobject_types.QMediaObject {.base.} =
  QAudioRecordermediaObject(self[])
proc miqt_exec_method_cQAudioRecorder_mediaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  var virtualReturn = vtbl.mediaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setMediaObject*(self: VirtualQAudioRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool {.base.} =
  QAudioRecordersetMediaObject(self[], objectVal)
proc miqt_exec_method_cQAudioRecorder_setMediaObject(vtbl: pointer, inst: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = vtbl.setMediaObject(slotval1)
  virtualReturn

method event*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioRecorderevent(self[], event)
proc miqt_exec_method_cQAudioRecorder_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAudioRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioRecordereventFilter(self[], watched, event)
proc miqt_exec_method_cQAudioRecorder_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioRecordertimerEvent(self[], event)
proc miqt_exec_method_cQAudioRecorder_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioRecorderchildEvent(self[], event)
proc miqt_exec_method_cQAudioRecorder_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQAudioRecorder, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioRecordercustomEvent(self[], event)
proc miqt_exec_method_cQAudioRecorder_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioRecorderconnectNotify(self[], signal)
proc miqt_exec_method_cQAudioRecorder_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioRecorderdisconnectNotify(self[], signal)
proc miqt_exec_method_cQAudioRecorder_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQAudioRecorder](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qaudiorecorder_types.QAudioRecorder, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioRecorder_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiorecorder_types.QAudioRecorder, ): cint =
  fcQAudioRecorder_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: cstring): cint =
  fcQAudioRecorder_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioRecorder_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    vtbl: ref QAudioRecorderVTable = nil): gen_qaudiorecorder_types.QAudioRecorder =
  let vtbl = if vtbl == nil: new QAudioRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioRecorderVTable, _: ptr cQAudioRecorder) {.cdecl.} =
    let vtbl = cast[ref QAudioRecorderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioRecorder_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioRecorder_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioRecorder_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQAudioRecorder_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQAudioRecorder_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioRecorder_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioRecorder_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioRecorder_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioRecorder_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioRecorder_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioRecorder_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioRecorder_disconnectNotify
  gen_qaudiorecorder_types.QAudioRecorder(h: fcQAudioRecorder_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioRecorderVTable = nil): gen_qaudiorecorder_types.QAudioRecorder =
  let vtbl = if vtbl == nil: new QAudioRecorderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioRecorderVTable, _: ptr cQAudioRecorder) {.cdecl.} =
    let vtbl = cast[ref QAudioRecorderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioRecorder_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioRecorder_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioRecorder_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQAudioRecorder_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQAudioRecorder_setMediaObject
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioRecorder_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioRecorder_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioRecorder_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioRecorder_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioRecorder_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioRecorder_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioRecorder_disconnectNotify
  gen_qaudiorecorder_types.QAudioRecorder(h: fcQAudioRecorder_new2(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    vtbl: VirtualQAudioRecorder) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioRecorderVTable, _: ptr cQAudioRecorder) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioRecorder()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioRecorder_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioRecorder_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioRecorder_metacall
  vtbl[].vtbl.mediaObject = miqt_exec_method_cQAudioRecorder_mediaObject
  vtbl[].vtbl.setMediaObject = miqt_exec_method_cQAudioRecorder_setMediaObject
  vtbl[].vtbl.event = miqt_exec_method_cQAudioRecorder_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioRecorder_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioRecorder_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioRecorder_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioRecorder_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioRecorder_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioRecorder_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioRecorder_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQAudioRecorder) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQAudioRecorderVTable, _: ptr cQAudioRecorder) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQAudioRecorder()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQAudioRecorder, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQAudioRecorder_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQAudioRecorder_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQAudioRecorder_metacall
  vtbl[].vtbl.mediaObject = miqt_exec_method_cQAudioRecorder_mediaObject
  vtbl[].vtbl.setMediaObject = miqt_exec_method_cQAudioRecorder_setMediaObject
  vtbl[].vtbl.event = miqt_exec_method_cQAudioRecorder_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQAudioRecorder_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQAudioRecorder_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQAudioRecorder_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQAudioRecorder_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQAudioRecorder_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQAudioRecorder_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQAudioRecorder_new2(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qaudiorecorder_types.QAudioRecorder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRecorder_staticMetaObject())
