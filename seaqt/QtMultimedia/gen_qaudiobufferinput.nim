import ./qtmultimedia_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qaudiobufferinput.cpp", QtMultimediaCFlags).}


import ./gen_qaudiobufferinput_types
export gen_qaudiobufferinput_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiobuffer_types,
  ./gen_qaudioformat_types,
  ./gen_qmediacapturesession_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiobuffer_types,
  gen_qaudioformat_types,
  gen_qmediacapturesession_types

type cQAudioBufferInput*{.exportc: "QAudioBufferInput", incompleteStruct.} = object

proc fcQAudioBufferInput_metaObject(self: pointer): pointer {.importc: "QAudioBufferInput_metaObject".}
proc fcQAudioBufferInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioBufferInput_metacast".}
proc fcQAudioBufferInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioBufferInput_metacall".}
proc fcQAudioBufferInput_trS(s: cstring): struct_seaqt_string {.importc: "QAudioBufferInput_tr_s".}
proc fcQAudioBufferInput_sendAudioBuffer(self: pointer, audioBuffer: pointer): bool {.importc: "QAudioBufferInput_sendAudioBuffer".}
proc fcQAudioBufferInput_format(self: pointer): pointer {.importc: "QAudioBufferInput_format".}
proc fcQAudioBufferInput_captureSession(self: pointer): pointer {.importc: "QAudioBufferInput_captureSession".}
proc fcQAudioBufferInput_readyToSendAudioBuffer(self: pointer): void {.importc: "QAudioBufferInput_readyToSendAudioBuffer".}
proc fcQAudioBufferInput_connect_readyToSendAudioBuffer(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioBufferInput_connect_readyToSendAudioBuffer".}
proc fcQAudioBufferInput_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QAudioBufferInput_tr_s_c".}
proc fcQAudioBufferInput_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QAudioBufferInput_tr_s_c_n".}
proc fcQAudioBufferInput_vdata(self: pointer): ptr pointer {.importc: "QAudioBufferInput_vdata".}
proc fvdata_cQAudioBufferInput(self: pointer): pointer {.importc: "vdata_QAudioBufferInput".}

type cQAudioBufferInputVTable {.pure.} = object
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
proc fcQAudioBufferInput_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioBufferInput_virtualbase_metaObject".}
proc fcQAudioBufferInput_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioBufferInput_virtualbase_metacast".}
proc fcQAudioBufferInput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioBufferInput_virtualbase_metacall".}
proc fcQAudioBufferInput_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioBufferInput_virtualbase_event".}
proc fcQAudioBufferInput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioBufferInput_virtualbase_eventFilter".}
proc fcQAudioBufferInput_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioBufferInput_virtualbase_timerEvent".}
proc fcQAudioBufferInput_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioBufferInput_virtualbase_childEvent".}
proc fcQAudioBufferInput_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioBufferInput_virtualbase_customEvent".}
proc fcQAudioBufferInput_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioBufferInput_virtualbase_connectNotify".}
proc fcQAudioBufferInput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioBufferInput_virtualbase_disconnectNotify".}
proc fcQAudioBufferInput_protectedbase_sender(self: pointer): pointer {.importc: "QAudioBufferInput_protectedbase_sender".}
proc fcQAudioBufferInput_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioBufferInput_protectedbase_senderSignalIndex".}
proc fcQAudioBufferInput_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioBufferInput_protectedbase_receivers".}
proc fcQAudioBufferInput_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioBufferInput_protectedbase_isSignalConnected".}
proc fcQAudioBufferInput_new(vtbl: pointer, vdata: csize_t): ptr cQAudioBufferInput {.importc: "QAudioBufferInput_new".}
proc fcQAudioBufferInput_new2(vtbl: pointer, vdata: csize_t, format: pointer): ptr cQAudioBufferInput {.importc: "QAudioBufferInput_new_format".}
proc fcQAudioBufferInput_new3(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQAudioBufferInput {.importc: "QAudioBufferInput_new_parent".}
proc fcQAudioBufferInput_new4(vtbl: pointer, vdata: csize_t, format: pointer, parent: pointer): ptr cQAudioBufferInput {.importc: "QAudioBufferInput_new_format_parent".}
proc fcQAudioBufferInput_staticMetaObject(): pointer {.importc: "QAudioBufferInput_staticMetaObject".}

proc metaObject*(self: gen_qaudiobufferinput_types.QAudioBufferInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioBufferInput_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiobufferinput_types.QAudioBufferInput, param1: cstring): pointer =
  fcQAudioBufferInput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiobufferinput_types.QAudioBufferInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioBufferInput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiobufferinput_types.QAudioBufferInput, s: cstring): string =
  let v_ms = fcQAudioBufferInput_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sendAudioBuffer*(self: gen_qaudiobufferinput_types.QAudioBufferInput, audioBuffer: gen_qaudiobuffer_types.QAudioBuffer): bool =
  fcQAudioBufferInput_sendAudioBuffer(self.h, audioBuffer.h)

proc format*(self: gen_qaudiobufferinput_types.QAudioBufferInput): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioBufferInput_format(self.h), owned: true)

proc captureSession*(self: gen_qaudiobufferinput_types.QAudioBufferInput): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQAudioBufferInput_captureSession(self.h), owned: false)

proc readyToSendAudioBuffer*(self: gen_qaudiobufferinput_types.QAudioBufferInput): void =
  fcQAudioBufferInput_readyToSendAudioBuffer(self.h)

type QAudioBufferInputreadyToSendAudioBufferSlot* = proc()
proc fcQAudioBufferInput_slot_callback_readyToSendAudioBuffer(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioBufferInputreadyToSendAudioBufferSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAudioBufferInput_slot_callback_readyToSendAudioBuffer_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioBufferInputreadyToSendAudioBufferSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReadyToSendAudioBuffer*(self: gen_qaudiobufferinput_types.QAudioBufferInput, slot: QAudioBufferInputreadyToSendAudioBufferSlot) =
  var tmp = new QAudioBufferInputreadyToSendAudioBufferSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioBufferInput_connect_readyToSendAudioBuffer(self.h, cast[int](addr tmp[]), fcQAudioBufferInput_slot_callback_readyToSendAudioBuffer, fcQAudioBufferInput_slot_callback_readyToSendAudioBuffer_release)

proc tr*(_: type gen_qaudiobufferinput_types.QAudioBufferInput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioBufferInput_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiobufferinput_types.QAudioBufferInput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioBufferInput_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioBufferInputmetaObjectProc* = proc(self: QAudioBufferInput): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioBufferInputmetacastProc* = proc(self: QAudioBufferInput, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioBufferInputmetacallProc* = proc(self: QAudioBufferInput, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioBufferInputeventProc* = proc(self: QAudioBufferInput, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioBufferInputeventFilterProc* = proc(self: QAudioBufferInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioBufferInputtimerEventProc* = proc(self: QAudioBufferInput, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioBufferInputchildEventProc* = proc(self: QAudioBufferInput, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioBufferInputcustomEventProc* = proc(self: QAudioBufferInput, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioBufferInputconnectNotifyProc* = proc(self: QAudioBufferInput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioBufferInputdisconnectNotifyProc* = proc(self: QAudioBufferInput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioBufferInputVTable* {.inheritable, pure.} = object
  vtbl: cQAudioBufferInputVTable
  metaObject*: QAudioBufferInputmetaObjectProc
  metacast*: QAudioBufferInputmetacastProc
  metacall*: QAudioBufferInputmetacallProc
  event*: QAudioBufferInputeventProc
  eventFilter*: QAudioBufferInputeventFilterProc
  timerEvent*: QAudioBufferInputtimerEventProc
  childEvent*: QAudioBufferInputchildEventProc
  customEvent*: QAudioBufferInputcustomEventProc
  connectNotify*: QAudioBufferInputconnectNotifyProc
  disconnectNotify*: QAudioBufferInputdisconnectNotifyProc

proc QAudioBufferInputmetaObject*(self: gen_qaudiobufferinput_types.QAudioBufferInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioBufferInput_virtualbase_metaObject(self.h), owned: false)

proc QAudioBufferInputmetacast*(self: gen_qaudiobufferinput_types.QAudioBufferInput, param1: cstring): pointer =
  fcQAudioBufferInput_virtualbase_metacast(self.h, param1)

proc QAudioBufferInputmetacall*(self: gen_qaudiobufferinput_types.QAudioBufferInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioBufferInput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioBufferInputevent*(self: gen_qaudiobufferinput_types.QAudioBufferInput, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioBufferInput_virtualbase_event(self.h, event.h)

proc QAudioBufferInputeventFilter*(self: gen_qaudiobufferinput_types.QAudioBufferInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioBufferInput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioBufferInputtimerEvent*(self: gen_qaudiobufferinput_types.QAudioBufferInput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioBufferInput_virtualbase_timerEvent(self.h, event.h)

proc QAudioBufferInputchildEvent*(self: gen_qaudiobufferinput_types.QAudioBufferInput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioBufferInput_virtualbase_childEvent(self.h, event.h)

proc QAudioBufferInputcustomEvent*(self: gen_qaudiobufferinput_types.QAudioBufferInput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioBufferInput_virtualbase_customEvent(self.h, event.h)

proc QAudioBufferInputconnectNotify*(self: gen_qaudiobufferinput_types.QAudioBufferInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioBufferInput_virtualbase_connectNotify(self.h, signal.h)

proc QAudioBufferInputdisconnectNotify*(self: gen_qaudiobufferinput_types.QAudioBufferInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioBufferInput_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioBufferInput_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioBufferInput_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioBufferInput_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioBufferInput_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioBufferInput_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioBufferInput_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioBufferInput_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioBufferInput_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioBufferInput_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioBufferInput_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
  let self = QAudioBufferInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioBufferInput* {.inheritable.} = ref object of QAudioBufferInput
  vtbl*: cQAudioBufferInputVTable

method metaObject*(self: VirtualQAudioBufferInput): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioBufferInputmetaObject(self[])
method metacast*(self: VirtualQAudioBufferInput, param1: cstring): pointer {.base.} =
  QAudioBufferInputmetacast(self[], param1)
method metacall*(self: VirtualQAudioBufferInput, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioBufferInputmetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioBufferInput, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioBufferInputevent(self[], event)
method eventFilter*(self: VirtualQAudioBufferInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioBufferInputeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioBufferInput, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioBufferInputtimerEvent(self[], event)
method childEvent*(self: VirtualQAudioBufferInput, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioBufferInputchildEvent(self[], event)
method customEvent*(self: VirtualQAudioBufferInput, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioBufferInputcustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioBufferInput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioBufferInputconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioBufferInput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioBufferInputdisconnectNotify(self[], signal)

proc fcQAudioBufferInput_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioBufferInput_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioBufferInput_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioBufferInput_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioBufferInput_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioBufferInput_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioBufferInput_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioBufferInput_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioBufferInput_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioBufferInput_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferInput](fcQAudioBufferInput_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudiobufferinput_types.QAudioBufferInput): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioBufferInput_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiobufferinput_types.QAudioBufferInput): cint =
  fcQAudioBufferInput_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiobufferinput_types.QAudioBufferInput, signal: cstring): cint =
  fcQAudioBufferInput_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiobufferinput_types.QAudioBufferInput, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioBufferInput_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    vtbl: ref QAudioBufferInputVTable = nil): gen_qaudiobufferinput_types.QAudioBufferInput =
  let vtbl = if vtbl == nil: new QAudioBufferInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferInput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferinput_types.QAudioBufferInput(h: fcQAudioBufferInput_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQAudioBufferInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioBufferInputVTable = nil): gen_qaudiobufferinput_types.QAudioBufferInput =
  let vtbl = if vtbl == nil: new QAudioBufferInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferInput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferinput_types.QAudioBufferInput(h: fcQAudioBufferInput_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), format.h), owned: true)
  fcQAudioBufferInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioBufferInputVTable = nil): gen_qaudiobufferinput_types.QAudioBufferInput =
  let vtbl = if vtbl == nil: new QAudioBufferInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferInput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferinput_types.QAudioBufferInput(h: fcQAudioBufferInput_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQAudioBufferInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioBufferInputVTable = nil): gen_qaudiobufferinput_types.QAudioBufferInput =
  let vtbl = if vtbl == nil: new QAudioBufferInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferInputVTable](fcQAudioBufferInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferInput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferinput_types.QAudioBufferInput(h: fcQAudioBufferInput_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), format.h, parent.h), owned: true)
  fcQAudioBufferInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQAudioBufferInput_mvtbl = cQAudioBufferInputVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioBufferInput()[])](self.fcQAudioBufferInput_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioBufferInput_method_callback_metaObject,
  metacast: fcQAudioBufferInput_method_callback_metacast,
  metacall: fcQAudioBufferInput_method_callback_metacall,
  event: fcQAudioBufferInput_method_callback_event,
  eventFilter: fcQAudioBufferInput_method_callback_eventFilter,
  timerEvent: fcQAudioBufferInput_method_callback_timerEvent,
  childEvent: fcQAudioBufferInput_method_callback_childEvent,
  customEvent: fcQAudioBufferInput_method_callback_customEvent,
  connectNotify: fcQAudioBufferInput_method_callback_connectNotify,
  disconnectNotify: fcQAudioBufferInput_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    inst: VirtualQAudioBufferInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferInput_new(addr(cQAudioBufferInput_mvtbl), csize_t(sizeof(pointer)))
  fcQAudioBufferInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioBufferInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferInput_new2(addr(cQAudioBufferInput_mvtbl), csize_t(sizeof(pointer)), format.h)
  fcQAudioBufferInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAudioBufferInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferInput_new3(addr(cQAudioBufferInput_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQAudioBufferInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qaudiobufferinput_types.QAudioBufferInput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioBufferInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferInput_new4(addr(cQAudioBufferInput_mvtbl), csize_t(sizeof(pointer)), format.h, parent.h)
  fcQAudioBufferInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiobufferinput_types.QAudioBufferInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioBufferInput_staticMetaObject())
