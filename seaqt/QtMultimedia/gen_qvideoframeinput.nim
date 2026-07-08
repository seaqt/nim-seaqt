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


{.compile("gen_qvideoframeinput.cpp", QtMultimediaCFlags).}


import ./gen_qvideoframeinput_types
export gen_qvideoframeinput_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacapturesession_types,
  ./gen_qvideoframe_types,
  ./gen_qvideoframeformat_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qmediacapturesession_types,
  gen_qvideoframe_types,
  gen_qvideoframeformat_types

type cQVideoFrameInput*{.exportc: "QVideoFrameInput", incompleteStruct.} = object

proc fcQVideoFrameInput_metaObject(self: pointer): pointer {.importc: "QVideoFrameInput_metaObject".}
proc fcQVideoFrameInput_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoFrameInput_metacast".}
proc fcQVideoFrameInput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoFrameInput_metacall".}
proc fcQVideoFrameInput_trS(s: cstring): struct_seaqt_string {.importc: "QVideoFrameInput_tr_s".}
proc fcQVideoFrameInput_sendVideoFrame(self: pointer, frame: pointer): bool {.importc: "QVideoFrameInput_sendVideoFrame".}
proc fcQVideoFrameInput_format(self: pointer): pointer {.importc: "QVideoFrameInput_format".}
proc fcQVideoFrameInput_captureSession(self: pointer): pointer {.importc: "QVideoFrameInput_captureSession".}
proc fcQVideoFrameInput_readyToSendVideoFrame(self: pointer): void {.importc: "QVideoFrameInput_readyToSendVideoFrame".}
proc fcQVideoFrameInput_connect_readyToSendVideoFrame(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoFrameInput_connect_readyToSendVideoFrame".}
proc fcQVideoFrameInput_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QVideoFrameInput_tr_s_c".}
proc fcQVideoFrameInput_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QVideoFrameInput_tr_s_c_n".}
proc fcQVideoFrameInput_vdata(self: pointer): ptr pointer {.importc: "QVideoFrameInput_vdata".}
proc fvdata_cQVideoFrameInput(self: pointer): pointer {.importc: "vdata_QVideoFrameInput".}

type cQVideoFrameInputVTable {.pure.} = object
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
proc fcQVideoFrameInput_virtualbase_metaObject(self: pointer): pointer {.importc: "QVideoFrameInput_virtualbase_metaObject".}
proc fcQVideoFrameInput_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoFrameInput_virtualbase_metacast".}
proc fcQVideoFrameInput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoFrameInput_virtualbase_metacall".}
proc fcQVideoFrameInput_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoFrameInput_virtualbase_event".}
proc fcQVideoFrameInput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoFrameInput_virtualbase_eventFilter".}
proc fcQVideoFrameInput_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoFrameInput_virtualbase_timerEvent".}
proc fcQVideoFrameInput_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoFrameInput_virtualbase_childEvent".}
proc fcQVideoFrameInput_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoFrameInput_virtualbase_customEvent".}
proc fcQVideoFrameInput_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoFrameInput_virtualbase_connectNotify".}
proc fcQVideoFrameInput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoFrameInput_virtualbase_disconnectNotify".}
proc fcQVideoFrameInput_protectedbase_sender(self: pointer): pointer {.importc: "QVideoFrameInput_protectedbase_sender".}
proc fcQVideoFrameInput_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVideoFrameInput_protectedbase_senderSignalIndex".}
proc fcQVideoFrameInput_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoFrameInput_protectedbase_receivers".}
proc fcQVideoFrameInput_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoFrameInput_protectedbase_isSignalConnected".}
proc fcQVideoFrameInput_new(vtbl: pointer, vdata: csize_t): ptr cQVideoFrameInput {.importc: "QVideoFrameInput_new".}
proc fcQVideoFrameInput_new2(vtbl: pointer, vdata: csize_t, format: pointer): ptr cQVideoFrameInput {.importc: "QVideoFrameInput_new_format".}
proc fcQVideoFrameInput_new3(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQVideoFrameInput {.importc: "QVideoFrameInput_new_parent".}
proc fcQVideoFrameInput_new4(vtbl: pointer, vdata: csize_t, format: pointer, parent: pointer): ptr cQVideoFrameInput {.importc: "QVideoFrameInput_new_format_parent".}
proc fcQVideoFrameInput_staticMetaObject(): pointer {.importc: "QVideoFrameInput_staticMetaObject".}

proc metaObject*(self: gen_qvideoframeinput_types.QVideoFrameInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoFrameInput_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideoframeinput_types.QVideoFrameInput, param1: cstring): pointer =
  fcQVideoFrameInput_metacast(self.h, param1)

proc metacall*(self: gen_qvideoframeinput_types.QVideoFrameInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoFrameInput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideoframeinput_types.QVideoFrameInput, s: cstring): string =
  let v_ms = fcQVideoFrameInput_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sendVideoFrame*(self: gen_qvideoframeinput_types.QVideoFrameInput, frame: gen_qvideoframe_types.QVideoFrame): bool =
  fcQVideoFrameInput_sendVideoFrame(self.h, frame.h)

proc format*(self: gen_qvideoframeinput_types.QVideoFrameInput): gen_qvideoframeformat_types.QVideoFrameFormat =
  gen_qvideoframeformat_types.QVideoFrameFormat(h: fcQVideoFrameInput_format(self.h), owned: true)

proc captureSession*(self: gen_qvideoframeinput_types.QVideoFrameInput): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQVideoFrameInput_captureSession(self.h), owned: false)

proc readyToSendVideoFrame*(self: gen_qvideoframeinput_types.QVideoFrameInput): void =
  fcQVideoFrameInput_readyToSendVideoFrame(self.h)

type QVideoFrameInputreadyToSendVideoFrameSlot* = proc()
proc fcQVideoFrameInput_slot_callback_readyToSendVideoFrame(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QVideoFrameInputreadyToSendVideoFrameSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQVideoFrameInput_slot_callback_readyToSendVideoFrame_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoFrameInputreadyToSendVideoFrameSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReadyToSendVideoFrame*(self: gen_qvideoframeinput_types.QVideoFrameInput, slot: QVideoFrameInputreadyToSendVideoFrameSlot) =
  var tmp = new QVideoFrameInputreadyToSendVideoFrameSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoFrameInput_connect_readyToSendVideoFrame(self.h, cast[int](addr tmp[]), fcQVideoFrameInput_slot_callback_readyToSendVideoFrame, fcQVideoFrameInput_slot_callback_readyToSendVideoFrame_release)

proc tr*(_: type gen_qvideoframeinput_types.QVideoFrameInput, s: cstring, c: cstring): string =
  let v_ms = fcQVideoFrameInput_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideoframeinput_types.QVideoFrameInput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoFrameInput_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QVideoFrameInputmetaObjectProc* = proc(self: QVideoFrameInput): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVideoFrameInputmetacastProc* = proc(self: QVideoFrameInput, param1: cstring): pointer {.raises: [], gcsafe.}
type QVideoFrameInputmetacallProc* = proc(self: QVideoFrameInput, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVideoFrameInputeventProc* = proc(self: QVideoFrameInput, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoFrameInputeventFilterProc* = proc(self: QVideoFrameInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoFrameInputtimerEventProc* = proc(self: QVideoFrameInput, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVideoFrameInputchildEventProc* = proc(self: QVideoFrameInput, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVideoFrameInputcustomEventProc* = proc(self: QVideoFrameInput, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoFrameInputconnectNotifyProc* = proc(self: QVideoFrameInput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoFrameInputdisconnectNotifyProc* = proc(self: QVideoFrameInput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QVideoFrameInputVTable* {.inheritable, pure.} = object
  vtbl: cQVideoFrameInputVTable
  metaObject*: QVideoFrameInputmetaObjectProc
  metacast*: QVideoFrameInputmetacastProc
  metacall*: QVideoFrameInputmetacallProc
  event*: QVideoFrameInputeventProc
  eventFilter*: QVideoFrameInputeventFilterProc
  timerEvent*: QVideoFrameInputtimerEventProc
  childEvent*: QVideoFrameInputchildEventProc
  customEvent*: QVideoFrameInputcustomEventProc
  connectNotify*: QVideoFrameInputconnectNotifyProc
  disconnectNotify*: QVideoFrameInputdisconnectNotifyProc

proc QVideoFrameInputmetaObject*(self: gen_qvideoframeinput_types.QVideoFrameInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoFrameInput_virtualbase_metaObject(self.h), owned: false)

proc QVideoFrameInputmetacast*(self: gen_qvideoframeinput_types.QVideoFrameInput, param1: cstring): pointer =
  fcQVideoFrameInput_virtualbase_metacast(self.h, param1)

proc QVideoFrameInputmetacall*(self: gen_qvideoframeinput_types.QVideoFrameInput, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoFrameInput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QVideoFrameInputevent*(self: gen_qvideoframeinput_types.QVideoFrameInput, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoFrameInput_virtualbase_event(self.h, event.h)

proc QVideoFrameInputeventFilter*(self: gen_qvideoframeinput_types.QVideoFrameInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoFrameInput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QVideoFrameInputtimerEvent*(self: gen_qvideoframeinput_types.QVideoFrameInput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoFrameInput_virtualbase_timerEvent(self.h, event.h)

proc QVideoFrameInputchildEvent*(self: gen_qvideoframeinput_types.QVideoFrameInput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoFrameInput_virtualbase_childEvent(self.h, event.h)

proc QVideoFrameInputcustomEvent*(self: gen_qvideoframeinput_types.QVideoFrameInput, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoFrameInput_virtualbase_customEvent(self.h, event.h)

proc QVideoFrameInputconnectNotify*(self: gen_qvideoframeinput_types.QVideoFrameInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoFrameInput_virtualbase_connectNotify(self.h, signal.h)

proc QVideoFrameInputdisconnectNotify*(self: gen_qvideoframeinput_types.QVideoFrameInput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoFrameInput_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQVideoFrameInput_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVideoFrameInput_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQVideoFrameInput_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQVideoFrameInput_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQVideoFrameInput_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQVideoFrameInput_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQVideoFrameInput_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQVideoFrameInput_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQVideoFrameInput_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQVideoFrameInput_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
  let self = QVideoFrameInput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQVideoFrameInput* {.inheritable.} = ref object of QVideoFrameInput
  vtbl*: cQVideoFrameInputVTable

method metaObject*(self: VirtualQVideoFrameInput): gen_qobjectdefs_types.QMetaObject {.base.} =
  QVideoFrameInputmetaObject(self[])
method metacast*(self: VirtualQVideoFrameInput, param1: cstring): pointer {.base.} =
  QVideoFrameInputmetacast(self[], param1)
method metacall*(self: VirtualQVideoFrameInput, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QVideoFrameInputmetacall(self[], param1, param2, param3)
method event*(self: VirtualQVideoFrameInput, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoFrameInputevent(self[], event)
method eventFilter*(self: VirtualQVideoFrameInput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QVideoFrameInputeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQVideoFrameInput, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QVideoFrameInputtimerEvent(self[], event)
method childEvent*(self: VirtualQVideoFrameInput, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QVideoFrameInputchildEvent(self[], event)
method customEvent*(self: VirtualQVideoFrameInput, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QVideoFrameInputcustomEvent(self[], event)
method connectNotify*(self: VirtualQVideoFrameInput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoFrameInputconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQVideoFrameInput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QVideoFrameInputdisconnectNotify(self[], signal)

proc fcQVideoFrameInput_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQVideoFrameInput_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQVideoFrameInput_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQVideoFrameInput_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQVideoFrameInput_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQVideoFrameInput_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQVideoFrameInput_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQVideoFrameInput_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQVideoFrameInput_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQVideoFrameInput_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQVideoFrameInput](fcQVideoFrameInput_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qvideoframeinput_types.QVideoFrameInput): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoFrameInput_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideoframeinput_types.QVideoFrameInput): cint =
  fcQVideoFrameInput_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideoframeinput_types.QVideoFrameInput, signal: cstring): cint =
  fcQVideoFrameInput_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideoframeinput_types.QVideoFrameInput, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoFrameInput_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    vtbl: ref QVideoFrameInputVTable = nil): gen_qvideoframeinput_types.QVideoFrameInput =
  let vtbl = if vtbl == nil: new QVideoFrameInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQVideoFrameInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQVideoFrameInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQVideoFrameInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQVideoFrameInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQVideoFrameInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQVideoFrameInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQVideoFrameInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQVideoFrameInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQVideoFrameInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQVideoFrameInput_vtable_callback_disconnectNotify
  let tmp = gen_qvideoframeinput_types.QVideoFrameInput(h: fcQVideoFrameInput_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQVideoFrameInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    format: gen_qvideoframeformat_types.QVideoFrameFormat,
    vtbl: ref QVideoFrameInputVTable = nil): gen_qvideoframeinput_types.QVideoFrameInput =
  let vtbl = if vtbl == nil: new QVideoFrameInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQVideoFrameInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQVideoFrameInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQVideoFrameInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQVideoFrameInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQVideoFrameInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQVideoFrameInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQVideoFrameInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQVideoFrameInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQVideoFrameInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQVideoFrameInput_vtable_callback_disconnectNotify
  let tmp = gen_qvideoframeinput_types.QVideoFrameInput(h: fcQVideoFrameInput_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), format.h), owned: true)
  fcQVideoFrameInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    parent: gen_qobject_types.QObject,
    vtbl: ref QVideoFrameInputVTable = nil): gen_qvideoframeinput_types.QVideoFrameInput =
  let vtbl = if vtbl == nil: new QVideoFrameInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQVideoFrameInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQVideoFrameInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQVideoFrameInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQVideoFrameInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQVideoFrameInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQVideoFrameInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQVideoFrameInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQVideoFrameInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQVideoFrameInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQVideoFrameInput_vtable_callback_disconnectNotify
  let tmp = gen_qvideoframeinput_types.QVideoFrameInput(h: fcQVideoFrameInput_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQVideoFrameInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    format: gen_qvideoframeformat_types.QVideoFrameFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QVideoFrameInputVTable = nil): gen_qvideoframeinput_types.QVideoFrameInput =
  let vtbl = if vtbl == nil: new QVideoFrameInputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QVideoFrameInputVTable](fcQVideoFrameInput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQVideoFrameInput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQVideoFrameInput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQVideoFrameInput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQVideoFrameInput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQVideoFrameInput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQVideoFrameInput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQVideoFrameInput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQVideoFrameInput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQVideoFrameInput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQVideoFrameInput_vtable_callback_disconnectNotify
  let tmp = gen_qvideoframeinput_types.QVideoFrameInput(h: fcQVideoFrameInput_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), format.h, parent.h), owned: true)
  fcQVideoFrameInput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQVideoFrameInput_mvtbl = cQVideoFrameInputVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQVideoFrameInput()[])](self.fcQVideoFrameInput_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQVideoFrameInput_method_callback_metaObject,
  metacast: fcQVideoFrameInput_method_callback_metacast,
  metacall: fcQVideoFrameInput_method_callback_metacall,
  event: fcQVideoFrameInput_method_callback_event,
  eventFilter: fcQVideoFrameInput_method_callback_eventFilter,
  timerEvent: fcQVideoFrameInput_method_callback_timerEvent,
  childEvent: fcQVideoFrameInput_method_callback_childEvent,
  customEvent: fcQVideoFrameInput_method_callback_customEvent,
  connectNotify: fcQVideoFrameInput_method_callback_connectNotify,
  disconnectNotify: fcQVideoFrameInput_method_callback_disconnectNotify,
)
proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    inst: VirtualQVideoFrameInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoFrameInput_new(addr(cQVideoFrameInput_mvtbl), csize_t(sizeof(pointer)))
  fcQVideoFrameInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    format: gen_qvideoframeformat_types.QVideoFrameFormat,
    inst: VirtualQVideoFrameInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoFrameInput_new2(addr(cQVideoFrameInput_mvtbl), csize_t(sizeof(pointer)), format.h)
  fcQVideoFrameInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    parent: gen_qobject_types.QObject,
    inst: VirtualQVideoFrameInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoFrameInput_new3(addr(cQVideoFrameInput_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQVideoFrameInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qvideoframeinput_types.QVideoFrameInput,
    format: gen_qvideoframeformat_types.QVideoFrameFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQVideoFrameInput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQVideoFrameInput_new4(addr(cQVideoFrameInput_mvtbl), csize_t(sizeof(pointer)), format.h, parent.h)
  fcQVideoFrameInput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qvideoframeinput_types.QVideoFrameInput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoFrameInput_staticMetaObject())
