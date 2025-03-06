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
{.compile("gen_qaudiooutput.cpp", cflags).}


import ./gen_qaudiooutput_types
export gen_qaudiooutput_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiodeviceinfo_types,
  ./gen_qaudioformat_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiodeviceinfo_types,
  gen_qaudioformat_types

type cQAudioOutput*{.exportc: "QAudioOutput", incompleteStruct.} = object

proc fcQAudioOutput_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_metaObject".}
proc fcQAudioOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_metacast".}
proc fcQAudioOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_metacall".}
proc fcQAudioOutput_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutput_tr".}
proc fcQAudioOutput_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf8".}
proc fcQAudioOutput_format(self: pointer, ): pointer {.importc: "QAudioOutput_format".}
proc fcQAudioOutput_start(self: pointer, device: pointer): void {.importc: "QAudioOutput_start".}
proc fcQAudioOutput_start2(self: pointer, ): pointer {.importc: "QAudioOutput_start2".}
proc fcQAudioOutput_stop(self: pointer, ): void {.importc: "QAudioOutput_stop".}
proc fcQAudioOutput_reset(self: pointer, ): void {.importc: "QAudioOutput_reset".}
proc fcQAudioOutput_suspend(self: pointer, ): void {.importc: "QAudioOutput_suspend".}
proc fcQAudioOutput_resume(self: pointer, ): void {.importc: "QAudioOutput_resume".}
proc fcQAudioOutput_setBufferSize(self: pointer, bytes: cint): void {.importc: "QAudioOutput_setBufferSize".}
proc fcQAudioOutput_bufferSize(self: pointer, ): cint {.importc: "QAudioOutput_bufferSize".}
proc fcQAudioOutput_bytesFree(self: pointer, ): cint {.importc: "QAudioOutput_bytesFree".}
proc fcQAudioOutput_periodSize(self: pointer, ): cint {.importc: "QAudioOutput_periodSize".}
proc fcQAudioOutput_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QAudioOutput_setNotifyInterval".}
proc fcQAudioOutput_notifyInterval(self: pointer, ): cint {.importc: "QAudioOutput_notifyInterval".}
proc fcQAudioOutput_processedUSecs(self: pointer, ): clonglong {.importc: "QAudioOutput_processedUSecs".}
proc fcQAudioOutput_elapsedUSecs(self: pointer, ): clonglong {.importc: "QAudioOutput_elapsedUSecs".}
proc fcQAudioOutput_error(self: pointer, ): cint {.importc: "QAudioOutput_error".}
proc fcQAudioOutput_state(self: pointer, ): cint {.importc: "QAudioOutput_state".}
proc fcQAudioOutput_setVolume(self: pointer, volume: float64): void {.importc: "QAudioOutput_setVolume".}
proc fcQAudioOutput_volume(self: pointer, ): float64 {.importc: "QAudioOutput_volume".}
proc fcQAudioOutput_category(self: pointer, ): struct_miqt_string {.importc: "QAudioOutput_category".}
proc fcQAudioOutput_setCategory(self: pointer, category: struct_miqt_string): void {.importc: "QAudioOutput_setCategory".}
proc fcQAudioOutput_stateChanged(self: pointer, state: cint): void {.importc: "QAudioOutput_stateChanged".}
proc fcQAudioOutput_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_stateChanged".}
proc fcQAudioOutput_notify(self: pointer, ): void {.importc: "QAudioOutput_notify".}
proc fcQAudioOutput_connect_notify(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioOutput_connect_notify".}
proc fcQAudioOutput_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_tr2".}
proc fcQAudioOutput_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_tr3".}
proc fcQAudioOutput_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutput_trUtf82".}
proc fcQAudioOutput_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutput_trUtf83".}
type cQAudioOutputVTable = object
  destructor*: proc(vtbl: ptr cQAudioOutputVTable, self: ptr cQAudioOutput) {.cdecl, raises:[], gcsafe.}
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
proc fcQAudioOutput_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioOutput_virtualbase_metaObject".}
proc fcQAudioOutput_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutput_virtualbase_metacast".}
proc fcQAudioOutput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutput_virtualbase_metacall".}
proc fcQAudioOutput_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioOutput_virtualbase_event".}
proc fcQAudioOutput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioOutput_virtualbase_eventFilter".}
proc fcQAudioOutput_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_timerEvent".}
proc fcQAudioOutput_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_childEvent".}
proc fcQAudioOutput_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioOutput_virtualbase_customEvent".}
proc fcQAudioOutput_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioOutput_virtualbase_connectNotify".}
proc fcQAudioOutput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioOutput_virtualbase_disconnectNotify".}
proc fcQAudioOutput_new(vtbl: pointer, ): ptr cQAudioOutput {.importc: "QAudioOutput_new".}
proc fcQAudioOutput_new2(vtbl: pointer, audioDeviceInfo: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new2".}
proc fcQAudioOutput_new3(vtbl: pointer, format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new3".}
proc fcQAudioOutput_new4(vtbl: pointer, format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new4".}
proc fcQAudioOutput_new5(vtbl: pointer, audioDeviceInfo: pointer, format: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new5".}
proc fcQAudioOutput_new6(vtbl: pointer, audioDeviceInfo: pointer, format: pointer, parent: pointer): ptr cQAudioOutput {.importc: "QAudioOutput_new6".}
proc fcQAudioOutput_staticMetaObject(): pointer {.importc: "QAudioOutput_staticMetaObject".}
proc fcQAudioOutput_delete(self: pointer) {.importc: "QAudioOutput_delete".}

proc metaObject*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_metaObject(self.h))

proc metacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring): string =
  let v_ms = fcQAudioOutput_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring): string =
  let v_ms = fcQAudioOutput_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioOutput_format(self.h))

proc start*(self: gen_qaudiooutput_types.QAudioOutput, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioOutput_start(self.h, device.h)

proc start*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioOutput_start2(self.h))

proc stop*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_stop(self.h)

proc reset*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_reset(self.h)

proc suspend*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_suspend(self.h)

proc resume*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_resume(self.h)

proc setBufferSize*(self: gen_qaudiooutput_types.QAudioOutput, bytes: cint): void =
  fcQAudioOutput_setBufferSize(self.h, bytes)

proc bufferSize*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_bufferSize(self.h)

proc bytesFree*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_bytesFree(self.h)

proc periodSize*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_periodSize(self.h)

proc setNotifyInterval*(self: gen_qaudiooutput_types.QAudioOutput, milliSeconds: cint): void =
  fcQAudioOutput_setNotifyInterval(self.h, milliSeconds)

proc notifyInterval*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  fcQAudioOutput_notifyInterval(self.h)

proc processedUSecs*(self: gen_qaudiooutput_types.QAudioOutput, ): clonglong =
  fcQAudioOutput_processedUSecs(self.h)

proc elapsedUSecs*(self: gen_qaudiooutput_types.QAudioOutput, ): clonglong =
  fcQAudioOutput_elapsedUSecs(self.h)

proc error*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  cint(fcQAudioOutput_error(self.h))

proc state*(self: gen_qaudiooutput_types.QAudioOutput, ): cint =
  cint(fcQAudioOutput_state(self.h))

proc setVolume*(self: gen_qaudiooutput_types.QAudioOutput, volume: float64): void =
  fcQAudioOutput_setVolume(self.h, volume)

proc volume*(self: gen_qaudiooutput_types.QAudioOutput, ): float64 =
  fcQAudioOutput_volume(self.h)

proc category*(self: gen_qaudiooutput_types.QAudioOutput, ): string =
  let v_ms = fcQAudioOutput_category(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCategory*(self: gen_qaudiooutput_types.QAudioOutput, category: string): void =
  fcQAudioOutput_setCategory(self.h, struct_miqt_string(data: category, len: csize_t(len(category))))

proc stateChanged*(self: gen_qaudiooutput_types.QAudioOutput, state: cint): void =
  fcQAudioOutput_stateChanged(self.h, cint(state))

type QAudioOutputstateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQAudioOutput_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioOutput_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputstateChangedSlot) =
  var tmp = new QAudioOutputstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioOutput_stateChanged, miqt_exec_callback_cQAudioOutput_stateChanged_release)

proc notify*(self: gen_qaudiooutput_types.QAudioOutput, ): void =
  fcQAudioOutput_notify(self.h)

type QAudioOutputnotifySlot* = proc()
proc miqt_exec_callback_cQAudioOutput_notify(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioOutputnotifySlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioOutput_notify_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioOutputnotifySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnotify*(self: gen_qaudiooutput_types.QAudioOutput, slot: QAudioOutputnotifySlot) =
  var tmp = new QAudioOutputnotifySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioOutput_connect_notify(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioOutput_notify, miqt_exec_callback_cQAudioOutput_notify_release)

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutput_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutput_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioOutput_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiooutput_types.QAudioOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioOutput_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAudioOutputmetaObjectProc* = proc(self: QAudioOutput): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioOutputmetacastProc* = proc(self: QAudioOutput, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioOutputmetacallProc* = proc(self: QAudioOutput, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioOutputeventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioOutputeventFilterProc* = proc(self: QAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioOutputtimerEventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioOutputchildEventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioOutputcustomEventProc* = proc(self: QAudioOutput, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioOutputconnectNotifyProc* = proc(self: QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioOutputdisconnectNotifyProc* = proc(self: QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioOutputVTable* = object
  vtbl: cQAudioOutputVTable
  metaObject*: QAudioOutputmetaObjectProc
  metacast*: QAudioOutputmetacastProc
  metacall*: QAudioOutputmetacallProc
  event*: QAudioOutputeventProc
  eventFilter*: QAudioOutputeventFilterProc
  timerEvent*: QAudioOutputtimerEventProc
  childEvent*: QAudioOutputchildEventProc
  customEvent*: QAudioOutputcustomEventProc
  connectNotify*: QAudioOutputconnectNotifyProc
  disconnectNotify*: QAudioOutputdisconnectNotifyProc
proc QAudioOutputmetaObject*(self: gen_qaudiooutput_types.QAudioOutput, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioOutput_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioOutputmetacast*(self: gen_qaudiooutput_types.QAudioOutput, param1: cstring): pointer =
  fcQAudioOutput_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioOutput_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioOutputmetacall*(self: gen_qaudiooutput_types.QAudioOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioOutput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioOutput_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioOutputevent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioOutputeventFilter*(self: gen_qaudiooutput_types.QAudioOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioOutput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioOutput_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioOutputtimerEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioOutput_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioOutputchildEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioOutput_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioOutputcustomEvent*(self: gen_qaudiooutput_types.QAudioOutput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioOutput_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioOutput_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioOutputconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioOutput_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioOutputdisconnectNotify*(self: gen_qaudiooutput_types.QAudioOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioOutput_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioOutput_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioOutputVTable](vtbl)
  let self = QAudioOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new(addr(vtbl[]), ))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new2(addr(vtbl[]), audioDeviceInfo.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new3(addr(vtbl[]), format.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new4(addr(vtbl[]), format.h, parent.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new5(addr(vtbl[]), audioDeviceInfo.h, format.h))

proc create*(T: type gen_qaudiooutput_types.QAudioOutput,
    audioDeviceInfo: gen_qaudiodeviceinfo_types.QAudioDeviceInfo, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioOutputVTable = nil): gen_qaudiooutput_types.QAudioOutput =
  let vtbl = if vtbl == nil: new QAudioOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioOutputVTable, _: ptr cQAudioOutput) {.cdecl.} =
    let vtbl = cast[ref QAudioOutputVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioOutput_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioOutput_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioOutput_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioOutput_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioOutput_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioOutput_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioOutput_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioOutput_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioOutput_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioOutput_disconnectNotify
  gen_qaudiooutput_types.QAudioOutput(h: fcQAudioOutput_new6(addr(vtbl[]), audioDeviceInfo.h, format.h, parent.h))

proc staticMetaObject*(_: type gen_qaudiooutput_types.QAudioOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioOutput_staticMetaObject())
proc delete*(self: gen_qaudiooutput_types.QAudioOutput) =
  fcQAudioOutput_delete(self.h)
