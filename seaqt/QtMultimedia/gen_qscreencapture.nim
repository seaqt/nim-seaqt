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


{.compile("gen_qscreencapture.cpp", QtMultimediaCFlags).}


type QScreenCaptureErrorEnum* = distinct cint
template NoError*(_: type QScreenCaptureErrorEnum): untyped = 0
template InternalError*(_: type QScreenCaptureErrorEnum): untyped = 1
template CapturingNotSupported*(_: type QScreenCaptureErrorEnum): untyped = 2
template CaptureFailed*(_: type QScreenCaptureErrorEnum): untyped = 4
template NotFound*(_: type QScreenCaptureErrorEnum): untyped = 5


import ./gen_qscreencapture_types
export gen_qscreencapture_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qscreen_types,
  ./gen_qmediacapturesession_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qscreen_types,
  gen_qmediacapturesession_types

type cQScreenCapture*{.exportc: "QScreenCapture", incompleteStruct.} = object

proc fcQScreenCapture_metaObject(self: pointer): pointer {.importc: "QScreenCapture_metaObject".}
proc fcQScreenCapture_metacast(self: pointer, param1: cstring): pointer {.importc: "QScreenCapture_metacast".}
proc fcQScreenCapture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScreenCapture_metacall".}
proc fcQScreenCapture_trS(s: cstring): struct_seaqt_string {.importc: "QScreenCapture_tr_s".}
proc fcQScreenCapture_captureSession(self: pointer): pointer {.importc: "QScreenCapture_captureSession".}
proc fcQScreenCapture_setScreen(self: pointer, screen: pointer): void {.importc: "QScreenCapture_setScreen".}
proc fcQScreenCapture_screen(self: pointer): pointer {.importc: "QScreenCapture_screen".}
proc fcQScreenCapture_isActive(self: pointer): bool {.importc: "QScreenCapture_isActive".}
proc fcQScreenCapture_error(self: pointer): cint {.importc: "QScreenCapture_error".}
proc fcQScreenCapture_errorString(self: pointer): struct_seaqt_string {.importc: "QScreenCapture_errorString".}
proc fcQScreenCapture_setActive(self: pointer, active: bool): void {.importc: "QScreenCapture_setActive".}
proc fcQScreenCapture_start(self: pointer): void {.importc: "QScreenCapture_start".}
proc fcQScreenCapture_stop(self: pointer): void {.importc: "QScreenCapture_stop".}
proc fcQScreenCapture_activeChanged(self: pointer, param1: bool): void {.importc: "QScreenCapture_activeChanged".}
proc fcQScreenCapture_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreenCapture_connect_activeChanged".}
proc fcQScreenCapture_errorChanged(self: pointer): void {.importc: "QScreenCapture_errorChanged".}
proc fcQScreenCapture_connect_errorChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreenCapture_connect_errorChanged".}
proc fcQScreenCapture_screenChanged(self: pointer, param1: pointer): void {.importc: "QScreenCapture_screenChanged".}
proc fcQScreenCapture_connect_screenChanged(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreenCapture_connect_screenChanged".}
proc fcQScreenCapture_errorOccurred(self: pointer, error: cint, errorString: struct_seaqt_string): void {.importc: "QScreenCapture_errorOccurred".}
proc fcQScreenCapture_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_seaqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QScreenCapture_connect_errorOccurred".}
proc fcQScreenCapture_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QScreenCapture_tr_s_c".}
proc fcQScreenCapture_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QScreenCapture_tr_s_c_n".}
proc fcQScreenCapture_vdata(self: pointer): ptr pointer {.importc: "QScreenCapture_vdata".}
proc fvdata_cQScreenCapture(self: pointer): pointer {.importc: "vdata_QScreenCapture".}

type cQScreenCaptureVTable {.pure.} = object
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
proc fcQScreenCapture_virtualbase_metaObject(self: pointer): pointer {.importc: "QScreenCapture_virtualbase_metaObject".}
proc fcQScreenCapture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QScreenCapture_virtualbase_metacast".}
proc fcQScreenCapture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScreenCapture_virtualbase_metacall".}
proc fcQScreenCapture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QScreenCapture_virtualbase_event".}
proc fcQScreenCapture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QScreenCapture_virtualbase_eventFilter".}
proc fcQScreenCapture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QScreenCapture_virtualbase_timerEvent".}
proc fcQScreenCapture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QScreenCapture_virtualbase_childEvent".}
proc fcQScreenCapture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QScreenCapture_virtualbase_customEvent".}
proc fcQScreenCapture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QScreenCapture_virtualbase_connectNotify".}
proc fcQScreenCapture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QScreenCapture_virtualbase_disconnectNotify".}
proc fcQScreenCapture_protectedbase_sender(self: pointer): pointer {.importc: "QScreenCapture_protectedbase_sender".}
proc fcQScreenCapture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QScreenCapture_protectedbase_senderSignalIndex".}
proc fcQScreenCapture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QScreenCapture_protectedbase_receivers".}
proc fcQScreenCapture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QScreenCapture_protectedbase_isSignalConnected".}
proc fcQScreenCapture_new(vtbl: pointer, vdata: csize_t): ptr cQScreenCapture {.importc: "QScreenCapture_new".}
proc fcQScreenCapture_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQScreenCapture {.importc: "QScreenCapture_new_parent".}
proc fcQScreenCapture_staticMetaObject(): pointer {.importc: "QScreenCapture_staticMetaObject".}

proc metaObject*(self: gen_qscreencapture_types.QScreenCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScreenCapture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qscreencapture_types.QScreenCapture, param1: cstring): pointer =
  fcQScreenCapture_metacast(self.h, param1)

proc metacall*(self: gen_qscreencapture_types.QScreenCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQScreenCapture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscreencapture_types.QScreenCapture, s: cstring): string =
  let v_ms = fcQScreenCapture_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc captureSession*(self: gen_qscreencapture_types.QScreenCapture): gen_qmediacapturesession_types.QMediaCaptureSession =
  gen_qmediacapturesession_types.QMediaCaptureSession(h: fcQScreenCapture_captureSession(self.h), owned: false)

proc setScreen*(self: gen_qscreencapture_types.QScreenCapture, screen: gen_qscreen_types.QScreen): void =
  fcQScreenCapture_setScreen(self.h, screen.h)

proc screen*(self: gen_qscreencapture_types.QScreenCapture): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQScreenCapture_screen(self.h), owned: false)

proc isActive*(self: gen_qscreencapture_types.QScreenCapture): bool =
  fcQScreenCapture_isActive(self.h)

proc error*(self: gen_qscreencapture_types.QScreenCapture): cint =
  cint(fcQScreenCapture_error(self.h))

proc errorString*(self: gen_qscreencapture_types.QScreenCapture): string =
  let v_ms = fcQScreenCapture_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setActive*(self: gen_qscreencapture_types.QScreenCapture, active: bool): void =
  fcQScreenCapture_setActive(self.h, active)

proc start*(self: gen_qscreencapture_types.QScreenCapture): void =
  fcQScreenCapture_start(self.h)

proc stop*(self: gen_qscreencapture_types.QScreenCapture): void =
  fcQScreenCapture_stop(self.h)

proc activeChanged*(self: gen_qscreencapture_types.QScreenCapture, param1: bool): void =
  fcQScreenCapture_activeChanged(self.h, param1)

type QScreenCaptureactiveChangedSlot* = proc(param1: bool)
proc fcQScreenCapture_slot_callback_activeChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QScreenCaptureactiveChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQScreenCapture_slot_callback_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenCaptureactiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActiveChanged*(self: gen_qscreencapture_types.QScreenCapture, slot: QScreenCaptureactiveChangedSlot) =
  var tmp = new QScreenCaptureactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenCapture_connect_activeChanged(self.h, cast[int](addr tmp[]), fcQScreenCapture_slot_callback_activeChanged, fcQScreenCapture_slot_callback_activeChanged_release)

proc errorChanged*(self: gen_qscreencapture_types.QScreenCapture): void =
  fcQScreenCapture_errorChanged(self.h)

type QScreenCaptureerrorChangedSlot* = proc()
proc fcQScreenCapture_slot_callback_errorChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QScreenCaptureerrorChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQScreenCapture_slot_callback_errorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenCaptureerrorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorChanged*(self: gen_qscreencapture_types.QScreenCapture, slot: QScreenCaptureerrorChangedSlot) =
  var tmp = new QScreenCaptureerrorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenCapture_connect_errorChanged(self.h, cast[int](addr tmp[]), fcQScreenCapture_slot_callback_errorChanged, fcQScreenCapture_slot_callback_errorChanged_release)

proc screenChanged*(self: gen_qscreencapture_types.QScreenCapture, param1: gen_qscreen_types.QScreen): void =
  fcQScreenCapture_screenChanged(self.h, param1.h)

type QScreenCapturescreenChangedSlot* = proc(param1: gen_qscreen_types.QScreen)
proc fcQScreenCapture_slot_callback_screenChanged(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QScreenCapturescreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQScreenCapture_slot_callback_screenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenCapturescreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onScreenChanged*(self: gen_qscreencapture_types.QScreenCapture, slot: QScreenCapturescreenChangedSlot) =
  var tmp = new QScreenCapturescreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenCapture_connect_screenChanged(self.h, cast[int](addr tmp[]), fcQScreenCapture_slot_callback_screenChanged, fcQScreenCapture_slot_callback_screenChanged_release)

proc errorOccurred*(self: gen_qscreencapture_types.QScreenCapture, error: cint, errorString: openArray[char]): void =
  fcQScreenCapture_errorOccurred(self.h, cint(error), struct_seaqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

type QScreenCaptureerrorOccurredSlot* = proc(error: cint, errorString: openArray[char])
proc fcQScreenCapture_slot_callback_errorOccurred(slot: int, error: cint, errorString: struct_seaqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QScreenCaptureerrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(verrorString_ms)
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc fcQScreenCapture_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QScreenCaptureerrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorOccurred*(self: gen_qscreencapture_types.QScreenCapture, slot: QScreenCaptureerrorOccurredSlot) =
  var tmp = new QScreenCaptureerrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScreenCapture_connect_errorOccurred(self.h, cast[int](addr tmp[]), fcQScreenCapture_slot_callback_errorOccurred, fcQScreenCapture_slot_callback_errorOccurred_release)

proc tr*(_: type gen_qscreencapture_types.QScreenCapture, s: cstring, c: cstring): string =
  let v_ms = fcQScreenCapture_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscreencapture_types.QScreenCapture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScreenCapture_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QScreenCapturemetaObjectProc* = proc(self: QScreenCapture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QScreenCapturemetacastProc* = proc(self: QScreenCapture, param1: cstring): pointer {.raises: [], gcsafe.}
type QScreenCapturemetacallProc* = proc(self: QScreenCapture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QScreenCaptureeventProc* = proc(self: QScreenCapture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScreenCaptureeventFilterProc* = proc(self: QScreenCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QScreenCapturetimerEventProc* = proc(self: QScreenCapture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QScreenCapturechildEventProc* = proc(self: QScreenCapture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QScreenCapturecustomEventProc* = proc(self: QScreenCapture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QScreenCaptureconnectNotifyProc* = proc(self: QScreenCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QScreenCapturedisconnectNotifyProc* = proc(self: QScreenCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QScreenCaptureVTable* {.inheritable, pure.} = object
  vtbl: cQScreenCaptureVTable
  metaObject*: QScreenCapturemetaObjectProc
  metacast*: QScreenCapturemetacastProc
  metacall*: QScreenCapturemetacallProc
  event*: QScreenCaptureeventProc
  eventFilter*: QScreenCaptureeventFilterProc
  timerEvent*: QScreenCapturetimerEventProc
  childEvent*: QScreenCapturechildEventProc
  customEvent*: QScreenCapturecustomEventProc
  connectNotify*: QScreenCaptureconnectNotifyProc
  disconnectNotify*: QScreenCapturedisconnectNotifyProc

proc QScreenCapturemetaObject*(self: gen_qscreencapture_types.QScreenCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScreenCapture_virtualbase_metaObject(self.h), owned: false)

proc QScreenCapturemetacast*(self: gen_qscreencapture_types.QScreenCapture, param1: cstring): pointer =
  fcQScreenCapture_virtualbase_metacast(self.h, param1)

proc QScreenCapturemetacall*(self: gen_qscreencapture_types.QScreenCapture, param1: cint, param2: cint, param3: pointer): cint =
  fcQScreenCapture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QScreenCaptureevent*(self: gen_qscreencapture_types.QScreenCapture, event: gen_qcoreevent_types.QEvent): bool =
  fcQScreenCapture_virtualbase_event(self.h, event.h)

proc QScreenCaptureeventFilter*(self: gen_qscreencapture_types.QScreenCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQScreenCapture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QScreenCapturetimerEvent*(self: gen_qscreencapture_types.QScreenCapture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQScreenCapture_virtualbase_timerEvent(self.h, event.h)

proc QScreenCapturechildEvent*(self: gen_qscreencapture_types.QScreenCapture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQScreenCapture_virtualbase_childEvent(self.h, event.h)

proc QScreenCapturecustomEvent*(self: gen_qscreencapture_types.QScreenCapture, event: gen_qcoreevent_types.QEvent): void =
  fcQScreenCapture_virtualbase_customEvent(self.h, event.h)

proc QScreenCaptureconnectNotify*(self: gen_qscreencapture_types.QScreenCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScreenCapture_virtualbase_connectNotify(self.h, signal.h)

proc QScreenCapturedisconnectNotify*(self: gen_qscreencapture_types.QScreenCapture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQScreenCapture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQScreenCapture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScreenCapture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQScreenCapture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQScreenCapture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQScreenCapture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQScreenCapture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQScreenCapture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQScreenCapture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQScreenCapture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQScreenCapture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
  let self = QScreenCapture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQScreenCapture* {.inheritable.} = ref object of QScreenCapture
  vtbl*: cQScreenCaptureVTable

method metaObject*(self: VirtualQScreenCapture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QScreenCapturemetaObject(self[])
method metacast*(self: VirtualQScreenCapture, param1: cstring): pointer {.base.} =
  QScreenCapturemetacast(self[], param1)
method metacall*(self: VirtualQScreenCapture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QScreenCapturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQScreenCapture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScreenCaptureevent(self[], event)
method eventFilter*(self: VirtualQScreenCapture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QScreenCaptureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQScreenCapture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QScreenCapturetimerEvent(self[], event)
method childEvent*(self: VirtualQScreenCapture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QScreenCapturechildEvent(self[], event)
method customEvent*(self: VirtualQScreenCapture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QScreenCapturecustomEvent(self[], event)
method connectNotify*(self: VirtualQScreenCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScreenCaptureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQScreenCapture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QScreenCapturedisconnectNotify(self[], signal)

proc fcQScreenCapture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQScreenCapture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQScreenCapture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQScreenCapture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQScreenCapture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQScreenCapture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQScreenCapture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQScreenCapture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQScreenCapture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQScreenCapture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScreenCapture](fcQScreenCapture_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qscreencapture_types.QScreenCapture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQScreenCapture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qscreencapture_types.QScreenCapture): cint =
  fcQScreenCapture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qscreencapture_types.QScreenCapture, signal: cstring): cint =
  fcQScreenCapture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qscreencapture_types.QScreenCapture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQScreenCapture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qscreencapture_types.QScreenCapture,
    vtbl: ref QScreenCaptureVTable = nil): gen_qscreencapture_types.QScreenCapture =
  let vtbl = if vtbl == nil: new QScreenCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQScreenCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQScreenCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQScreenCapture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQScreenCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQScreenCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQScreenCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQScreenCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQScreenCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQScreenCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQScreenCapture_vtable_callback_disconnectNotify
  let tmp = gen_qscreencapture_types.QScreenCapture(h: fcQScreenCapture_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQScreenCapture_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qscreencapture_types.QScreenCapture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QScreenCaptureVTable = nil): gen_qscreencapture_types.QScreenCapture =
  let vtbl = if vtbl == nil: new QScreenCaptureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScreenCaptureVTable](fcQScreenCapture_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQScreenCapture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQScreenCapture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQScreenCapture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQScreenCapture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQScreenCapture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQScreenCapture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQScreenCapture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQScreenCapture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQScreenCapture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQScreenCapture_vtable_callback_disconnectNotify
  let tmp = gen_qscreencapture_types.QScreenCapture(h: fcQScreenCapture_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQScreenCapture_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQScreenCapture_mvtbl = cQScreenCaptureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScreenCapture()[])](self.fcQScreenCapture_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQScreenCapture_method_callback_metaObject,
  metacast: fcQScreenCapture_method_callback_metacast,
  metacall: fcQScreenCapture_method_callback_metacall,
  event: fcQScreenCapture_method_callback_event,
  eventFilter: fcQScreenCapture_method_callback_eventFilter,
  timerEvent: fcQScreenCapture_method_callback_timerEvent,
  childEvent: fcQScreenCapture_method_callback_childEvent,
  customEvent: fcQScreenCapture_method_callback_customEvent,
  connectNotify: fcQScreenCapture_method_callback_connectNotify,
  disconnectNotify: fcQScreenCapture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qscreencapture_types.QScreenCapture,
    inst: VirtualQScreenCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScreenCapture_new(addr(cQScreenCapture_mvtbl), csize_t(sizeof(pointer)))
  fcQScreenCapture_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qscreencapture_types.QScreenCapture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQScreenCapture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScreenCapture_new2(addr(cQScreenCapture_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQScreenCapture_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qscreencapture_types.QScreenCapture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScreenCapture_staticMetaObject())
