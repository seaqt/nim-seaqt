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


{.compile("gen_qwindowcapture.cpp", QtMultimediaCFlags).}


type QWindowCaptureErrorEnum* = distinct cint
template NoError*(_: type QWindowCaptureErrorEnum): untyped = 0
template InternalError*(_: type QWindowCaptureErrorEnum): untyped = 1
template CapturingNotSupported*(_: type QWindowCaptureErrorEnum): untyped = 2
template CaptureFailed*(_: type QWindowCaptureErrorEnum): untyped = 4
template NotFound*(_: type QWindowCaptureErrorEnum): untyped = 5


import ./gen_qwindowcapture_types
export gen_qwindowcapture_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qcapturablewindow_types,
  ./gen_qmediacapturesession_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qcapturablewindow_types,
  gen_qmediacapturesession_types

type cQWindowCapture*{.exportc: "QWindowCapture", incompleteStruct.} = object

proc fcQWindowCapture_metaObject(self: pointer): pointer {.importc: "QWindowCapture_metaObject".}
proc fcQWindowCapture_metacast(self: pointer, param1: cstring): pointer {.importc: "QWindowCapture_metacast".}
proc fcQWindowCapture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWindowCapture_metacall".}
proc fcQWindowCapture_trS(s: cstring): struct_seaqt_string {.importc: "QWindowCapture_tr_s".}
proc fcQWindowCapture_capturableWindows(): struct_seaqt_array {.importc: "QWindowCapture_capturableWindows".}
proc fcQWindowCapture_captureSession(self: pointer): pointer {.importc: "QWindowCapture_captureSession".}
proc fcQWindowCapture_setWindow(self: pointer, window: pointer): void {.importc: "QWindowCapture_setWindow".}
proc fcQWindowCapture_window(self: pointer): pointer {.importc: "QWindowCapture_window".}
proc fcQWindowCapture_isActive(self: pointer): bool {.importc: "QWindowCapture_isActive".}
proc fcQWindowCapture_error(self: pointer): cint {.importc: "QWindowCapture_error".}
proc fcQWindowCapture_errorString(self: pointer): struct_seaqt_string {.importc: "QWindowCapture_errorString".}
proc fcQWindowCapture_setActive(self: pointer, active: bool): void {.importc: "QWindowCapture_setActive".}
proc fcQWindowCapture_start(self: pointer): void {.importc: "QWindowCapture_start".}
proc fcQWindowCapture_stop(self: pointer): void {.importc: "QWindowCapture_stop".}
proc fcQWindowCapture_activeChanged(self: pointer, param1: bool): void {.importc: "QWindowCapture_activeChanged".}
proc fcQWindowCapture_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindowCapture_connect_activeChanged".}
proc fcQWindowCapture_windowChanged(self: pointer, window: pointer): void {.importc: "QWindowCapture_windowChanged".}
proc fcQWindowCapture_connect_windowChanged(self: pointer, slot: int, callback: proc (slot: int, window: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindowCapture_connect_windowChanged".}
proc fcQWindowCapture_errorChanged(self: pointer): void {.importc: "QWindowCapture_errorChanged".}
proc fcQWindowCapture_connect_errorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindowCapture_connect_errorChanged".}
proc fcQWindowCapture_errorOccurred(self: pointer, error: cint, errorString: struct_seaqt_string): void {.importc: "QWindowCapture_errorOccurred".}
proc fcQWindowCapture_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWindowCapture_connect_errorOccurred".}
proc fcQWindowCapture_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWindowCapture_tr_s_c".}
proc fcQWindowCapture_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWindowCapture_tr_s_c_n".}
proc fcQWindowCapture_vdata(self: pointer): ptr pointer {.importc: "QWindowCapture_vdata".}
proc fvdata_cQWindowCapture(self: pointer): pointer {.importc: "vdata_QWindowCapture".}

type cQWindowCaptureVTable {.pure.} = object
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
proc fcQWindowCapture_virtualbase_metaObject(self: pointer): pointer {.importc: "QWindowCapture_virtualbase_metaObject".}
proc fcQWindowCapture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWindowCapture_virtualbase_metacast".}
proc fcQWindowCapture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWindowCapture_virtualbase_metacall".}
proc fcQWindowCapture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWindowCapture_virtualbase_event".}
proc fcQWindowCapture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWindowCapture_virtualbase_eventFilter".}
proc fcQWindowCapture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWindowCapture_virtualbase_timerEvent".}
proc fcQWindowCapture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWindowCapture_virtualbase_childEvent".}
proc fcQWindowCapture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWindowCapture_virtualbase_customEvent".}
proc fcQWindowCapture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWindowCapture_virtualbase_connectNotify".}
proc fcQWindowCapture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWindowCapture_virtualbase_disconnectNotify".}
proc fcQWindowCapture_protectedbase_sender(self: pointer): pointer {.importc: "QWindowCapture_protectedbase_sender".}
proc fcQWindowCapture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWindowCapture_protectedbase_senderSignalIndex".}
proc fcQWindowCapture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWindowCapture_protectedbase_receivers".}
proc fcQWindowCapture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWindowCapture_protectedbase_isSignalConnected".}
proc fcQWindowCapture_new(vtbl: pointer, vdata: csize_t): ptr cQWindowCapture {.importc: "QWindowCapture_new".}
proc fcQWindowCapture_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQWindowCapture {.importc: "QWindowCapture_new_parent".}
proc fcQWindowCapture_staticMetaObject(): pointer {.importc: "QWindowCapture_staticMetaObject".}

proc metaObject*(self: gen_qwindowcapture_types.QWindowCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWindowCapture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwindowcapture_types.QWindowCapture, param1: cstring): pointer =
  fcQWindowCapture_metacast(self.h, param1)

proc metacall*(self: gen_qwindowcapture_types.QWindowCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQWindowCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwindowcapture_types.QWindowCapture, s: cstring): string =
  let v_ms = fcQWindowCapture_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc capturableWindows*(_: type gen_qwindowcapture_types.QWindowCapture): seq[gen_qcapturablewindow_types.QCapturableWindow] =
  var v_ma = fcQWindowCapture_capturableWindows()
  var vx_ret = newSeq[gen_qcapturablewindow_types.QCapturableWindow](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcapturablewindow_types.QCapturableWindow(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc captureSession*(self: gen_qwindowcapture_types.QWindowCapture): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQWindowCapture_captureSession(self.h), owned: false)

proc setWindow*(self: gen_qwindowcapture_types.QWindowCapture, window: gen_qcapturablewindow_types.QCapturableWindow): void =
  fcQWindowCapture_setWindow(self.h, window.h)

proc window*(self: gen_qwindowcapture_types.QWindowCapture): gen_qcapturablewindow_types.QCapturableWindow =
  gen_qcapturablewindow_types.QCapturableWindow(h: fcQWindowCapture_window(self.h), owned: true)

proc isActive*(self: gen_qwindowcapture_types.QWindowCapture): bool =
  fcQWindowCapture_isActive(self.h)

proc error*(self: gen_qwindowcapture_types.QWindowCapture): cint =
  cint(fcQWindowCapture_error(self.h))

proc errorString*(self: gen_qwindowcapture_types.QWindowCapture): string =
  let v_ms = fcQWindowCapture_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setActive*(self: gen_qwindowcapture_types.QWindowCapture, active: bool): void =
  fcQWindowCapture_setActive(self.h, active)

proc start*(self: gen_qwindowcapture_types.QWindowCapture): void =
  fcQWindowCapture_start(self.h)

proc stop*(self: gen_qwindowcapture_types.QWindowCapture): void =
  fcQWindowCapture_stop(self.h)

proc activeChanged*(self: gen_qwindowcapture_types.QWindowCapture, param1: bool): void =
  fcQWindowCapture_activeChanged(self.h, param1)

type QWindowCaptureactiveChangedSlot* = proc(param1: bool)
proc fcQWindowCapture_slot_callback_activeChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QWindowCaptureactiveChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQWindowCapture_slot_callback_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowCaptureactiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActiveChanged*(self: gen_qwindowcapture_types.QWindowCapture, slot: QWindowCaptureactiveChangedSlot) =
  var tmp = new QWindowCaptureactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowCapture_connect_activeChanged(self.h, cast[int](addr tmp[]), fcQWindowCapture_slot_callback_activeChanged, fcQWindowCapture_slot_callback_activeChanged_release)

proc windowChanged*(self: gen_qwindowcapture_types.QWindowCapture, window: gen_qcapturablewindow_types.QCapturableWindow): void =
  fcQWindowCapture_windowChanged(self.h, window.h)

type QWindowCapturewindowChangedSlot* = proc(window: gen_qcapturablewindow_types.QCapturableWindow)
proc fcQWindowCapture_slot_callback_windowChanged(slot: int, window: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QWindowCapturewindowChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcapturablewindow_types.QCapturableWindow(h: window, owned: true)

  nimfunc[](slotval1)

proc fcQWindowCapture_slot_callback_windowChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowCapturewindowChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onWindowChanged*(self: gen_qwindowcapture_types.QWindowCapture, slot: QWindowCapturewindowChangedSlot) =
  var tmp = new QWindowCapturewindowChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowCapture_connect_windowChanged(self.h, cast[int](addr tmp[]), fcQWindowCapture_slot_callback_windowChanged, fcQWindowCapture_slot_callback_windowChanged_release)

proc errorChanged*(self: gen_qwindowcapture_types.QWindowCapture): void =
  fcQWindowCapture_errorChanged(self.h)

type QWindowCaptureerrorChangedSlot* = proc()
proc fcQWindowCapture_slot_callback_errorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWindowCaptureerrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQWindowCapture_slot_callback_errorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowCaptureerrorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorChanged*(self: gen_qwindowcapture_types.QWindowCapture, slot: QWindowCaptureerrorChangedSlot) =
  var tmp = new QWindowCaptureerrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowCapture_connect_errorChanged(self.h, cast[int](addr tmp[]), fcQWindowCapture_slot_callback_errorChanged, fcQWindowCapture_slot_callback_errorChanged_release)

proc errorOccurred*(self: gen_qwindowcapture_types.QWindowCapture, error: cint, errorString: openArray[char]): void =
  fcQWindowCapture_errorOccurred(self.h, cint(error), struct_seaqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

type QWindowCaptureerrorOccurredSlot* = proc(error: cint, errorString: openArray[char])
proc fcQWindowCapture_slot_callback_errorOccurred(slot: int, error: cint, errorString: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QWindowCaptureerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(verrorString_ms)
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc fcQWindowCapture_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWindowCaptureerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorOccurred*(self: gen_qwindowcapture_types.QWindowCapture, slot: QWindowCaptureerrorOccurredSlot) =
  var tmp = new QWindowCaptureerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWindowCapture_connect_errorOccurred(self.h, cast[int](addr tmp[]), fcQWindowCapture_slot_callback_errorOccurred, fcQWindowCapture_slot_callback_errorOccurred_release)

proc tr*(_: type gen_qwindowcapture_types.QWindowCapture, s: cstring, c: cstring): string =
  let v_ms = fcQWindowCapture_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwindowcapture_types.QWindowCapture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWindowCapture_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QWindowCapturemetaObjectProc* = proc(self: QWindowCapture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWindowCapturemetacastProc* = proc(self: QWindowCapture, param1: cstring): pointer {.raises: [], gcsafe.}
type QWindowCapturemetacallProc* = proc(self: QWindowCapture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWindowCaptureeventProc* = proc(self: QWindowCapture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWindowCaptureeventFilterProc* = proc(self: QWindowCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWindowCapturetimerEventProc* = proc(self: QWindowCapture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWindowCapturechildEventProc* = proc(self: QWindowCapture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWindowCapturecustomEventProc* = proc(self: QWindowCapture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWindowCaptureconnectNotifyProc* = proc(self: QWindowCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWindowCapturedisconnectNotifyProc* = proc(self: QWindowCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QWindowCaptureVTable* {.inheritable, pure.} = object
  vtbl: cQWindowCaptureVTable
  metaObject*: QWindowCapturemetaObjectProc
  metacast*: QWindowCapturemetacastProc
  metacall*: QWindowCapturemetacallProc
  event*: QWindowCaptureeventProc
  eventFilter*: QWindowCaptureeventFilterProc
  timerEvent*: QWindowCapturetimerEventProc
  childEvent*: QWindowCapturechildEventProc
  customEvent*: QWindowCapturecustomEventProc
  connectNotify*: QWindowCaptureconnectNotifyProc
  disconnectNotify*: QWindowCapturedisconnectNotifyProc

proc QWindowCapturemetaObject*(self: gen_qwindowcapture_types.QWindowCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWindowCapture_virtualbase_metaObject(self.h), owned: false)

proc QWindowCapturemetacast*(self: gen_qwindowcapture_types.QWindowCapture, param1: cstring): pointer =
  fcQWindowCapture_virtualbase_metacast(self.h, param1)

proc QWindowCapturemetacall*(self: gen_qwindowcapture_types.QWindowCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQWindowCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QWindowCaptureevent*(self: gen_qwindowcapture_types.QWindowCapture, event: gen_qcoreevent_types.QEvent): bool =
  fcQWindowCapture_virtualbase_event(self.h, event.h)

proc QWindowCaptureeventFilter*(self: gen_qwindowcapture_types.QWindowCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWindowCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QWindowCapturetimerEvent*(self: gen_qwindowcapture_types.QWindowCapture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWindowCapture_virtualbase_timerEvent(self.h, event.h)

proc QWindowCapturechildEvent*(self: gen_qwindowcapture_types.QWindowCapture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWindowCapture_virtualbase_childEvent(self.h, event.h)

proc QWindowCapturecustomEvent*(self: gen_qwindowcapture_types.QWindowCapture, event: gen_qcoreevent_types.QEvent): void =
  fcQWindowCapture_virtualbase_customEvent(self.h, event.h)

proc QWindowCaptureconnectNotify*(self: gen_qwindowcapture_types.QWindowCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWindowCapture_virtualbase_connectNotify(self.h, signal.h)

proc QWindowCapturedisconnectNotify*(self: gen_qwindowcapture_types.QWindowCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWindowCapture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQWindowCapture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWindowCapture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQWindowCapture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWindowCapture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQWindowCapture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQWindowCapture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQWindowCapture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQWindowCapture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQWindowCapture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQWindowCapture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
  let self = QWindowCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWindowCapture* {.inheritable.} = ref object of QWindowCapture
  vtbl*: cQWindowCaptureVTable

method metaObject*(self: VirtualQWindowCapture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWindowCapturemetaObject(self[])
method metacast*(self: VirtualQWindowCapture, param1: cstring): pointer {.base.} =
  QWindowCapturemetacast(self[], param1)
method metacall*(self: VirtualQWindowCapture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWindowCapturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQWindowCapture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWindowCaptureevent(self[], event)
method eventFilter*(self: VirtualQWindowCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWindowCaptureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQWindowCapture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWindowCapturetimerEvent(self[], event)
method childEvent*(self: VirtualQWindowCapture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWindowCapturechildEvent(self[], event)
method customEvent*(self: VirtualQWindowCapture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWindowCapturecustomEvent(self[], event)
method connectNotify*(self: VirtualQWindowCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWindowCaptureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQWindowCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWindowCapturedisconnectNotify(self[], signal)

proc fcQWindowCapture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWindowCapture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQWindowCapture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQWindowCapture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQWindowCapture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQWindowCapture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQWindowCapture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQWindowCapture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQWindowCapture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQWindowCapture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWindowCapture](fcQWindowCapture_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qwindowcapture_types.QWindowCapture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWindowCapture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwindowcapture_types.QWindowCapture): cint =
  fcQWindowCapture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwindowcapture_types.QWindowCapture, signal: cstring): cint =
  fcQWindowCapture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwindowcapture_types.QWindowCapture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWindowCapture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwindowcapture_types.QWindowCapture,
    vtbl: ref QWindowCaptureVTable = nil): gen_qwindowcapture_types.QWindowCapture =
  let vtbl = if vtbl == nil: new QWindowCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWindowCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWindowCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWindowCapture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWindowCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWindowCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWindowCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWindowCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWindowCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWindowCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWindowCapture_vtable_callback_disconnectNotify
  let tmp = gen_qwindowcapture_types.QWindowCapture(h: fcQWindowCapture_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQWindowCapture_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qwindowcapture_types.QWindowCapture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWindowCaptureVTable = nil): gen_qwindowcapture_types.QWindowCapture =
  let vtbl = if vtbl == nil: new QWindowCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWindowCaptureVTable](fcQWindowCapture_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQWindowCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQWindowCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQWindowCapture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQWindowCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQWindowCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQWindowCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQWindowCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQWindowCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQWindowCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQWindowCapture_vtable_callback_disconnectNotify
  let tmp = gen_qwindowcapture_types.QWindowCapture(h: fcQWindowCapture_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQWindowCapture_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQWindowCapture_mvtbl = cQWindowCaptureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWindowCapture()[])](self.fcQWindowCapture_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQWindowCapture_method_callback_metaObject,
  metacast: fcQWindowCapture_method_callback_metacast,
  metacall: fcQWindowCapture_method_callback_metacall,
  event: fcQWindowCapture_method_callback_event,
  eventFilter: fcQWindowCapture_method_callback_eventFilter,
  timerEvent: fcQWindowCapture_method_callback_timerEvent,
  childEvent: fcQWindowCapture_method_callback_childEvent,
  customEvent: fcQWindowCapture_method_callback_customEvent,
  connectNotify: fcQWindowCapture_method_callback_connectNotify,
  disconnectNotify: fcQWindowCapture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwindowcapture_types.QWindowCapture,
    inst: VirtualQWindowCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWindowCapture_new(addr(cQWindowCapture_mvtbl), csize_t(sizeof(pointer)))
  fcQWindowCapture_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qwindowcapture_types.QWindowCapture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWindowCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWindowCapture_new2(addr(cQWindowCapture_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQWindowCapture_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwindowcapture_types.QWindowCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWindowCapture_staticMetaObject())
