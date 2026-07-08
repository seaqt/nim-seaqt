import ./qtgui_pkg

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


{.compile("gen_qaccessibilityhints.cpp", QtGuiCFlags).}


import ./gen_qaccessibilityhints_types
export gen_qaccessibilityhints_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQAccessibilityHints*{.exportc: "QAccessibilityHints", incompleteStruct.} = object

proc fcQAccessibilityHints_metaObject(self: pointer): pointer {.importc: "QAccessibilityHints_metaObject".}
proc fcQAccessibilityHints_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessibilityHints_metacast".}
proc fcQAccessibilityHints_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessibilityHints_metacall".}
proc fcQAccessibilityHints_trS(s: cstring): struct_seaqt_string {.importc: "QAccessibilityHints_tr_s".}
proc fcQAccessibilityHints_contrastPreference(self: pointer): cint {.importc: "QAccessibilityHints_contrastPreference".}
proc fcQAccessibilityHints_contrastPreferenceChanged(self: pointer, contrastPreference: cint): void {.importc: "QAccessibilityHints_contrastPreferenceChanged".}
proc fcQAccessibilityHints_connect_contrastPreferenceChanged(self: pointer, slot: int, callback: proc (slot: int, contrastPreference: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAccessibilityHints_connect_contrastPreferenceChanged".}
proc fcQAccessibilityHints_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QAccessibilityHints_tr_s_c".}
proc fcQAccessibilityHints_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QAccessibilityHints_tr_s_c_n".}
proc fcQAccessibilityHints_vdata(self: pointer): ptr pointer {.importc: "QAccessibilityHints_vdata".}
proc fvdata_cQAccessibilityHints(self: pointer): pointer {.importc: "vdata_QAccessibilityHints".}

type cQAccessibilityHintsVTable {.pure.} = object
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
proc fcQAccessibilityHints_virtualbase_metaObject(self: pointer): pointer {.importc: "QAccessibilityHints_virtualbase_metaObject".}
proc fcQAccessibilityHints_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAccessibilityHints_virtualbase_metacast".}
proc fcQAccessibilityHints_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAccessibilityHints_virtualbase_metacall".}
proc fcQAccessibilityHints_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAccessibilityHints_virtualbase_event".}
proc fcQAccessibilityHints_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAccessibilityHints_virtualbase_eventFilter".}
proc fcQAccessibilityHints_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAccessibilityHints_virtualbase_timerEvent".}
proc fcQAccessibilityHints_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAccessibilityHints_virtualbase_childEvent".}
proc fcQAccessibilityHints_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAccessibilityHints_virtualbase_customEvent".}
proc fcQAccessibilityHints_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAccessibilityHints_virtualbase_connectNotify".}
proc fcQAccessibilityHints_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAccessibilityHints_virtualbase_disconnectNotify".}
proc fcQAccessibilityHints_protectedbase_sender(self: pointer): pointer {.importc: "QAccessibilityHints_protectedbase_sender".}
proc fcQAccessibilityHints_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAccessibilityHints_protectedbase_senderSignalIndex".}
proc fcQAccessibilityHints_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAccessibilityHints_protectedbase_receivers".}
proc fcQAccessibilityHints_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAccessibilityHints_protectedbase_isSignalConnected".}
proc fcQAccessibilityHints_new(vtbl: pointer, vdata: csize_t): ptr cQAccessibilityHints {.importc: "QAccessibilityHints_new".}
proc fcQAccessibilityHints_new2(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQAccessibilityHints {.importc: "QAccessibilityHints_new_parent".}
proc fcQAccessibilityHints_staticMetaObject(): pointer {.importc: "QAccessibilityHints_staticMetaObject".}

proc metaObject*(self: gen_qaccessibilityhints_types.QAccessibilityHints): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibilityHints_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaccessibilityhints_types.QAccessibilityHints, param1: cstring): pointer =
  fcQAccessibilityHints_metacast(self.h, param1)

proc metacall*(self: gen_qaccessibilityhints_types.QAccessibilityHints, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessibilityHints_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaccessibilityhints_types.QAccessibilityHints, s: cstring): string =
  let v_ms = fcQAccessibilityHints_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc contrastPreference*(self: gen_qaccessibilityhints_types.QAccessibilityHints): cint =
  cint(fcQAccessibilityHints_contrastPreference(self.h))

proc contrastPreferenceChanged*(self: gen_qaccessibilityhints_types.QAccessibilityHints, contrastPreference: cint): void =
  fcQAccessibilityHints_contrastPreferenceChanged(self.h, cint(contrastPreference))

type QAccessibilityHintscontrastPreferenceChangedSlot* = proc(contrastPreference: cint)
proc fcQAccessibilityHints_slot_callback_contrastPreferenceChanged(slot: int, contrastPreference: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAccessibilityHintscontrastPreferenceChangedSlot](cast[pointer](slot))
  let slotval1 = cint(contrastPreference)

  nimfunc[](slotval1)

proc fcQAccessibilityHints_slot_callback_contrastPreferenceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAccessibilityHintscontrastPreferenceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onContrastPreferenceChanged*(self: gen_qaccessibilityhints_types.QAccessibilityHints, slot: QAccessibilityHintscontrastPreferenceChangedSlot) =
  var tmp = new QAccessibilityHintscontrastPreferenceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibilityHints_connect_contrastPreferenceChanged(self.h, cast[int](addr tmp[]), fcQAccessibilityHints_slot_callback_contrastPreferenceChanged, fcQAccessibilityHints_slot_callback_contrastPreferenceChanged_release)

proc tr*(_: type gen_qaccessibilityhints_types.QAccessibilityHints, s: cstring, c: cstring): string =
  let v_ms = fcQAccessibilityHints_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaccessibilityhints_types.QAccessibilityHints, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAccessibilityHints_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAccessibilityHintsmetaObjectProc* = proc(self: QAccessibilityHints): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAccessibilityHintsmetacastProc* = proc(self: QAccessibilityHints, param1: cstring): pointer {.raises: [], gcsafe.}
type QAccessibilityHintsmetacallProc* = proc(self: QAccessibilityHints, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAccessibilityHintseventProc* = proc(self: QAccessibilityHints, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessibilityHintseventFilterProc* = proc(self: QAccessibilityHints, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAccessibilityHintstimerEventProc* = proc(self: QAccessibilityHints, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAccessibilityHintschildEventProc* = proc(self: QAccessibilityHints, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAccessibilityHintscustomEventProc* = proc(self: QAccessibilityHints, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAccessibilityHintsconnectNotifyProc* = proc(self: QAccessibilityHints, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAccessibilityHintsdisconnectNotifyProc* = proc(self: QAccessibilityHints, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAccessibilityHintsVTable* {.inheritable, pure.} = object
  vtbl: cQAccessibilityHintsVTable
  metaObject*: QAccessibilityHintsmetaObjectProc
  metacast*: QAccessibilityHintsmetacastProc
  metacall*: QAccessibilityHintsmetacallProc
  event*: QAccessibilityHintseventProc
  eventFilter*: QAccessibilityHintseventFilterProc
  timerEvent*: QAccessibilityHintstimerEventProc
  childEvent*: QAccessibilityHintschildEventProc
  customEvent*: QAccessibilityHintscustomEventProc
  connectNotify*: QAccessibilityHintsconnectNotifyProc
  disconnectNotify*: QAccessibilityHintsdisconnectNotifyProc

proc QAccessibilityHintsmetaObject*(self: gen_qaccessibilityhints_types.QAccessibilityHints): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibilityHints_virtualbase_metaObject(self.h), owned: false)

proc QAccessibilityHintsmetacast*(self: gen_qaccessibilityhints_types.QAccessibilityHints, param1: cstring): pointer =
  fcQAccessibilityHints_virtualbase_metacast(self.h, param1)

proc QAccessibilityHintsmetacall*(self: gen_qaccessibilityhints_types.QAccessibilityHints, param1: cint, param2: cint, param3: pointer): cint =
  fcQAccessibilityHints_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAccessibilityHintsevent*(self: gen_qaccessibilityhints_types.QAccessibilityHints, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessibilityHints_virtualbase_event(self.h, event.h)

proc QAccessibilityHintseventFilter*(self: gen_qaccessibilityhints_types.QAccessibilityHints, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAccessibilityHints_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAccessibilityHintstimerEvent*(self: gen_qaccessibilityhints_types.QAccessibilityHints, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAccessibilityHints_virtualbase_timerEvent(self.h, event.h)

proc QAccessibilityHintschildEvent*(self: gen_qaccessibilityhints_types.QAccessibilityHints, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAccessibilityHints_virtualbase_childEvent(self.h, event.h)

proc QAccessibilityHintscustomEvent*(self: gen_qaccessibilityhints_types.QAccessibilityHints, event: gen_qcoreevent_types.QEvent): void =
  fcQAccessibilityHints_virtualbase_customEvent(self.h, event.h)

proc QAccessibilityHintsconnectNotify*(self: gen_qaccessibilityhints_types.QAccessibilityHints, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessibilityHints_virtualbase_connectNotify(self.h, signal.h)

proc QAccessibilityHintsdisconnectNotify*(self: gen_qaccessibilityhints_types.QAccessibilityHints, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAccessibilityHints_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAccessibilityHints_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAccessibilityHints_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAccessibilityHints_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAccessibilityHints_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAccessibilityHints_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAccessibilityHints_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAccessibilityHints_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAccessibilityHints_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAccessibilityHints_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAccessibilityHints_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
  let self = QAccessibilityHints(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAccessibilityHints* {.inheritable.} = ref object of QAccessibilityHints
  vtbl*: cQAccessibilityHintsVTable

method metaObject*(self: VirtualQAccessibilityHints): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAccessibilityHintsmetaObject(self[])
method metacast*(self: VirtualQAccessibilityHints, param1: cstring): pointer {.base.} =
  QAccessibilityHintsmetacast(self[], param1)
method metacall*(self: VirtualQAccessibilityHints, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAccessibilityHintsmetacall(self[], param1, param2, param3)
method event*(self: VirtualQAccessibilityHints, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessibilityHintsevent(self[], event)
method eventFilter*(self: VirtualQAccessibilityHints, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAccessibilityHintseventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAccessibilityHints, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAccessibilityHintstimerEvent(self[], event)
method childEvent*(self: VirtualQAccessibilityHints, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAccessibilityHintschildEvent(self[], event)
method customEvent*(self: VirtualQAccessibilityHints, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAccessibilityHintscustomEvent(self[], event)
method connectNotify*(self: VirtualQAccessibilityHints, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessibilityHintsconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAccessibilityHints, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAccessibilityHintsdisconnectNotify(self[], signal)

proc fcQAccessibilityHints_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAccessibilityHints_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAccessibilityHints_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAccessibilityHints_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAccessibilityHints_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAccessibilityHints_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAccessibilityHints_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAccessibilityHints_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAccessibilityHints_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAccessibilityHints_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAccessibilityHints](fcQAccessibilityHints_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qaccessibilityhints_types.QAccessibilityHints): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAccessibilityHints_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaccessibilityhints_types.QAccessibilityHints): cint =
  fcQAccessibilityHints_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaccessibilityhints_types.QAccessibilityHints, signal: cstring): cint =
  fcQAccessibilityHints_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaccessibilityhints_types.QAccessibilityHints, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAccessibilityHints_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qaccessibilityhints_types.QAccessibilityHints,
    vtbl: ref QAccessibilityHintsVTable = nil): gen_qaccessibilityhints_types.QAccessibilityHints =
  let vtbl = if vtbl == nil: new QAccessibilityHintsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAccessibilityHints_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAccessibilityHints_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAccessibilityHints_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAccessibilityHints_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAccessibilityHints_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAccessibilityHints_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAccessibilityHints_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAccessibilityHints_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAccessibilityHints_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAccessibilityHints_vtable_callback_disconnectNotify
  let tmp = gen_qaccessibilityhints_types.QAccessibilityHints(h: fcQAccessibilityHints_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQAccessibilityHints_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qaccessibilityhints_types.QAccessibilityHints,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAccessibilityHintsVTable = nil): gen_qaccessibilityhints_types.QAccessibilityHints =
  let vtbl = if vtbl == nil: new QAccessibilityHintsVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAccessibilityHintsVTable](fcQAccessibilityHints_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAccessibilityHints_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAccessibilityHints_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAccessibilityHints_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAccessibilityHints_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAccessibilityHints_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAccessibilityHints_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAccessibilityHints_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAccessibilityHints_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAccessibilityHints_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAccessibilityHints_vtable_callback_disconnectNotify
  let tmp = gen_qaccessibilityhints_types.QAccessibilityHints(h: fcQAccessibilityHints_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQAccessibilityHints_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQAccessibilityHints_mvtbl = cQAccessibilityHintsVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAccessibilityHints()[])](self.fcQAccessibilityHints_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAccessibilityHints_method_callback_metaObject,
  metacast: fcQAccessibilityHints_method_callback_metacast,
  metacall: fcQAccessibilityHints_method_callback_metacall,
  event: fcQAccessibilityHints_method_callback_event,
  eventFilter: fcQAccessibilityHints_method_callback_eventFilter,
  timerEvent: fcQAccessibilityHints_method_callback_timerEvent,
  childEvent: fcQAccessibilityHints_method_callback_childEvent,
  customEvent: fcQAccessibilityHints_method_callback_customEvent,
  connectNotify: fcQAccessibilityHints_method_callback_connectNotify,
  disconnectNotify: fcQAccessibilityHints_method_callback_disconnectNotify,
)
proc create*(T: type gen_qaccessibilityhints_types.QAccessibilityHints,
    inst: VirtualQAccessibilityHints) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAccessibilityHints_new(addr(cQAccessibilityHints_mvtbl), csize_t(sizeof(pointer)))
  fcQAccessibilityHints_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qaccessibilityhints_types.QAccessibilityHints,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAccessibilityHints) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAccessibilityHints_new2(addr(cQAccessibilityHints_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQAccessibilityHints_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qaccessibilityhints_types.QAccessibilityHints): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAccessibilityHints_staticMetaObject())
