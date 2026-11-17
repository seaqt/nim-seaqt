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


{.compile("gen_qaudiobufferoutput.cpp", QtMultimediaCFlags).}


import ./gen_qaudiobufferoutput_types
export gen_qaudiobufferoutput_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiobuffer_types,
  ./gen_qaudioformat_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiobuffer_types,
  gen_qaudioformat_types

type cQAudioBufferOutput*{.exportc: "QAudioBufferOutput", incompleteStruct.} = object

proc fcQAudioBufferOutput_metaObject(self: pointer): pointer {.importc: "QAudioBufferOutput_metaObject".}
proc fcQAudioBufferOutput_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioBufferOutput_metacast".}
proc fcQAudioBufferOutput_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioBufferOutput_metacall".}
proc fcQAudioBufferOutput_trS(s: cstring): struct_seaqt_string {.importc: "QAudioBufferOutput_tr_s".}
proc fcQAudioBufferOutput_format(self: pointer): pointer {.importc: "QAudioBufferOutput_format".}
proc fcQAudioBufferOutput_audioBufferReceived(self: pointer, buffer: pointer): void {.importc: "QAudioBufferOutput_audioBufferReceived".}
proc fcQAudioBufferOutput_connect_audioBufferReceived(self: pointer, slot: int, callback: proc (slot: int, buffer: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioBufferOutput_connect_audioBufferReceived".}
proc fcQAudioBufferOutput_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QAudioBufferOutput_tr_s_c".}
proc fcQAudioBufferOutput_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QAudioBufferOutput_tr_s_c_n".}
proc fcQAudioBufferOutput_vdata(self: pointer): ptr pointer {.importc: "QAudioBufferOutput_vdata".}
proc fvdata_cQAudioBufferOutput(self: pointer): pointer {.importc: "vdata_QAudioBufferOutput".}

type cQAudioBufferOutputVTable {.pure.} = object
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
proc fcQAudioBufferOutput_virtualbase_metaObject(self: pointer): pointer {.importc: "QAudioBufferOutput_virtualbase_metaObject".}
proc fcQAudioBufferOutput_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioBufferOutput_virtualbase_metacast".}
proc fcQAudioBufferOutput_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioBufferOutput_virtualbase_metacall".}
proc fcQAudioBufferOutput_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioBufferOutput_virtualbase_event".}
proc fcQAudioBufferOutput_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioBufferOutput_virtualbase_eventFilter".}
proc fcQAudioBufferOutput_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioBufferOutput_virtualbase_timerEvent".}
proc fcQAudioBufferOutput_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioBufferOutput_virtualbase_childEvent".}
proc fcQAudioBufferOutput_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioBufferOutput_virtualbase_customEvent".}
proc fcQAudioBufferOutput_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioBufferOutput_virtualbase_connectNotify".}
proc fcQAudioBufferOutput_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioBufferOutput_virtualbase_disconnectNotify".}
proc fcQAudioBufferOutput_protectedbase_sender(self: pointer): pointer {.importc: "QAudioBufferOutput_protectedbase_sender".}
proc fcQAudioBufferOutput_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioBufferOutput_protectedbase_senderSignalIndex".}
proc fcQAudioBufferOutput_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioBufferOutput_protectedbase_receivers".}
proc fcQAudioBufferOutput_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioBufferOutput_protectedbase_isSignalConnected".}
proc fcQAudioBufferOutput_new(vtbl: pointer, vdata: csize_t): ptr cQAudioBufferOutput {.importc: "QAudioBufferOutput_new".}
proc fcQAudioBufferOutput_new2(vtbl: pointer, vdata: csize_t, format: pointer): ptr cQAudioBufferOutput {.importc: "QAudioBufferOutput_new_format".}
proc fcQAudioBufferOutput_new3(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQAudioBufferOutput {.importc: "QAudioBufferOutput_new_parent".}
proc fcQAudioBufferOutput_new4(vtbl: pointer, vdata: csize_t, format: pointer, parent: pointer): ptr cQAudioBufferOutput {.importc: "QAudioBufferOutput_new_format_parent".}
proc fcQAudioBufferOutput_staticMetaObject(): pointer {.importc: "QAudioBufferOutput_staticMetaObject".}

proc metaObject*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioBufferOutput_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, param1: cstring): pointer =
  fcQAudioBufferOutput_metacast(self.h, param1)

proc metacall*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioBufferOutput_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiobufferoutput_types.QAudioBufferOutput, s: cstring): string =
  let v_ms = fcQAudioBufferOutput_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc format*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioBufferOutput_format(self.h), owned: true)

proc audioBufferReceived*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, buffer: gen_qaudiobuffer_types.QAudioBuffer): void =
  fcQAudioBufferOutput_audioBufferReceived(self.h, buffer.h)

type QAudioBufferOutputaudioBufferReceivedSlot* = proc(buffer: gen_qaudiobuffer_types.QAudioBuffer)
proc fcQAudioBufferOutput_slot_callback_audioBufferReceived(slot: int, buffer: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAudioBufferOutputaudioBufferReceivedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudiobuffer_types.QAudioBuffer(h: buffer, owned: false)

  nimfunc[](slotval1)

proc fcQAudioBufferOutput_slot_callback_audioBufferReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioBufferOutputaudioBufferReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAudioBufferReceived*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, slot: QAudioBufferOutputaudioBufferReceivedSlot) =
  var tmp = new QAudioBufferOutputaudioBufferReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioBufferOutput_connect_audioBufferReceived(self.h, cast[int](addr tmp[]), fcQAudioBufferOutput_slot_callback_audioBufferReceived, fcQAudioBufferOutput_slot_callback_audioBufferReceived_release)

proc tr*(_: type gen_qaudiobufferoutput_types.QAudioBufferOutput, s: cstring, c: cstring): string =
  let v_ms = fcQAudioBufferOutput_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiobufferoutput_types.QAudioBufferOutput, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioBufferOutput_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAudioBufferOutputmetaObjectProc* = proc(self: QAudioBufferOutput): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioBufferOutputmetacastProc* = proc(self: QAudioBufferOutput, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioBufferOutputmetacallProc* = proc(self: QAudioBufferOutput, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioBufferOutputeventProc* = proc(self: QAudioBufferOutput, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioBufferOutputeventFilterProc* = proc(self: QAudioBufferOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioBufferOutputtimerEventProc* = proc(self: QAudioBufferOutput, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioBufferOutputchildEventProc* = proc(self: QAudioBufferOutput, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioBufferOutputcustomEventProc* = proc(self: QAudioBufferOutput, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioBufferOutputconnectNotifyProc* = proc(self: QAudioBufferOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioBufferOutputdisconnectNotifyProc* = proc(self: QAudioBufferOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAudioBufferOutputVTable* {.inheritable, pure.} = object
  vtbl: cQAudioBufferOutputVTable
  metaObject*: QAudioBufferOutputmetaObjectProc
  metacast*: QAudioBufferOutputmetacastProc
  metacall*: QAudioBufferOutputmetacallProc
  event*: QAudioBufferOutputeventProc
  eventFilter*: QAudioBufferOutputeventFilterProc
  timerEvent*: QAudioBufferOutputtimerEventProc
  childEvent*: QAudioBufferOutputchildEventProc
  customEvent*: QAudioBufferOutputcustomEventProc
  connectNotify*: QAudioBufferOutputconnectNotifyProc
  disconnectNotify*: QAudioBufferOutputdisconnectNotifyProc

proc QAudioBufferOutputmetaObject*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioBufferOutput_virtualbase_metaObject(self.h), owned: false)

proc QAudioBufferOutputmetacast*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, param1: cstring): pointer =
  fcQAudioBufferOutput_virtualbase_metacast(self.h, param1)

proc QAudioBufferOutputmetacall*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioBufferOutput_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAudioBufferOutputevent*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioBufferOutput_virtualbase_event(self.h, event.h)

proc QAudioBufferOutputeventFilter*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioBufferOutput_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAudioBufferOutputtimerEvent*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioBufferOutput_virtualbase_timerEvent(self.h, event.h)

proc QAudioBufferOutputchildEvent*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioBufferOutput_virtualbase_childEvent(self.h, event.h)

proc QAudioBufferOutputcustomEvent*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioBufferOutput_virtualbase_customEvent(self.h, event.h)

proc QAudioBufferOutputconnectNotify*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioBufferOutput_virtualbase_connectNotify(self.h, signal.h)

proc QAudioBufferOutputdisconnectNotify*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioBufferOutput_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAudioBufferOutput_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioBufferOutput_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAudioBufferOutput_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioBufferOutput_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAudioBufferOutput_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAudioBufferOutput_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAudioBufferOutput_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAudioBufferOutput_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAudioBufferOutput_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAudioBufferOutput_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
  let self = QAudioBufferOutput(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAudioBufferOutput* {.inheritable.} = ref object of QAudioBufferOutput
  vtbl*: cQAudioBufferOutputVTable

method metaObject*(self: VirtualQAudioBufferOutput): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAudioBufferOutputmetaObject(self[])
method metacast*(self: VirtualQAudioBufferOutput, param1: cstring): pointer {.base.} =
  QAudioBufferOutputmetacast(self[], param1)
method metacall*(self: VirtualQAudioBufferOutput, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAudioBufferOutputmetacall(self[], param1, param2, param3)
method event*(self: VirtualQAudioBufferOutput, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioBufferOutputevent(self[], event)
method eventFilter*(self: VirtualQAudioBufferOutput, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAudioBufferOutputeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAudioBufferOutput, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAudioBufferOutputtimerEvent(self[], event)
method childEvent*(self: VirtualQAudioBufferOutput, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAudioBufferOutputchildEvent(self[], event)
method customEvent*(self: VirtualQAudioBufferOutput, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAudioBufferOutputcustomEvent(self[], event)
method connectNotify*(self: VirtualQAudioBufferOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioBufferOutputconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAudioBufferOutput, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAudioBufferOutputdisconnectNotify(self[], signal)

proc fcQAudioBufferOutput_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAudioBufferOutput_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAudioBufferOutput_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAudioBufferOutput_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAudioBufferOutput_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAudioBufferOutput_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAudioBufferOutput_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAudioBufferOutput_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAudioBufferOutput_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAudioBufferOutput_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAudioBufferOutput](fcQAudioBufferOutput_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioBufferOutput_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput): cint =
  fcQAudioBufferOutput_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, signal: cstring): cint =
  fcQAudioBufferOutput_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiobufferoutput_types.QAudioBufferOutput, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioBufferOutput_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    vtbl: ref QAudioBufferOutputVTable = nil): gen_qaudiobufferoutput_types.QAudioBufferOutput =
  let vtbl = if vtbl == nil: new QAudioBufferOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferOutput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferoutput_types.QAudioBufferOutput(h: fcQAudioBufferOutput_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQAudioBufferOutput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QAudioBufferOutputVTable = nil): gen_qaudiobufferoutput_types.QAudioBufferOutput =
  let vtbl = if vtbl == nil: new QAudioBufferOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferOutput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferoutput_types.QAudioBufferOutput(h: fcQAudioBufferOutput_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), format.h), owned: true)
  fcQAudioBufferOutput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioBufferOutputVTable = nil): gen_qaudiobufferoutput_types.QAudioBufferOutput =
  let vtbl = if vtbl == nil: new QAudioBufferOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferOutput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferoutput_types.QAudioBufferOutput(h: fcQAudioBufferOutput_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQAudioBufferOutput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QAudioBufferOutputVTable = nil): gen_qaudiobufferoutput_types.QAudioBufferOutput =
  let vtbl = if vtbl == nil: new QAudioBufferOutputVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAudioBufferOutputVTable](fcQAudioBufferOutput_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAudioBufferOutput_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAudioBufferOutput_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAudioBufferOutput_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAudioBufferOutput_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAudioBufferOutput_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAudioBufferOutput_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAudioBufferOutput_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAudioBufferOutput_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAudioBufferOutput_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAudioBufferOutput_vtable_callback_disconnectNotify
  let tmp = gen_qaudiobufferoutput_types.QAudioBufferOutput(h: fcQAudioBufferOutput_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), format.h, parent.h), owned: true)
  fcQAudioBufferOutput_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQAudioBufferOutput_mvtbl = cQAudioBufferOutputVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAudioBufferOutput()[])](self.fcQAudioBufferOutput_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAudioBufferOutput_method_callback_metaObject,
  metacast: fcQAudioBufferOutput_method_callback_metacast,
  metacall: fcQAudioBufferOutput_method_callback_metacall,
  event: fcQAudioBufferOutput_method_callback_event,
  eventFilter: fcQAudioBufferOutput_method_callback_eventFilter,
  timerEvent: fcQAudioBufferOutput_method_callback_timerEvent,
  childEvent: fcQAudioBufferOutput_method_callback_childEvent,
  customEvent: fcQAudioBufferOutput_method_callback_customEvent,
  connectNotify: fcQAudioBufferOutput_method_callback_connectNotify,
  disconnectNotify: fcQAudioBufferOutput_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    inst: VirtualQAudioBufferOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferOutput_new(addr(cQAudioBufferOutput_mvtbl), csize_t(sizeof(pointer)))
  fcQAudioBufferOutput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQAudioBufferOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferOutput_new2(addr(cQAudioBufferOutput_mvtbl), csize_t(sizeof(pointer)), format.h)
  fcQAudioBufferOutput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAudioBufferOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferOutput_new3(addr(cQAudioBufferOutput_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQAudioBufferOutput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qaudiobufferoutput_types.QAudioBufferOutput,
    format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQAudioBufferOutput) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAudioBufferOutput_new4(addr(cQAudioBufferOutput_mvtbl), csize_t(sizeof(pointer)), format.h, parent.h)
  fcQAudioBufferOutput_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaudiobufferoutput_types.QAudioBufferOutput): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioBufferOutput_staticMetaObject())
