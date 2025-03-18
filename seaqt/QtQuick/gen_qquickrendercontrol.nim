import ./qtquick_pkg

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


{.compile("gen_qquickrendercontrol.cpp", QtQuickCFlags).}


import ./gen_qquickrendercontrol_types
export gen_qquickrendercontrol_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qthread_types,
  ../QtGui/gen_qwindow_types,
  ./gen_qquickwindow_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qthread_types,
  gen_qwindow_types,
  gen_qquickwindow_types

type cQQuickRenderControl*{.exportc: "QQuickRenderControl", incompleteStruct.} = object

proc fcQQuickRenderControl_metaObject(self: pointer): pointer {.importc: "QQuickRenderControl_metaObject".}
proc fcQQuickRenderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickRenderControl_metacast".}
proc fcQQuickRenderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickRenderControl_metacall".}
proc fcQQuickRenderControl_tr(s: cstring): struct_miqt_string {.importc: "QQuickRenderControl_tr".}
proc fcQQuickRenderControl_prepareThread(self: pointer, targetThread: pointer): void {.importc: "QQuickRenderControl_prepareThread".}
proc fcQQuickRenderControl_setSamples(self: pointer, sampleCount: cint): void {.importc: "QQuickRenderControl_setSamples".}
proc fcQQuickRenderControl_samples(self: pointer): cint {.importc: "QQuickRenderControl_samples".}
proc fcQQuickRenderControl_initialize(self: pointer): bool {.importc: "QQuickRenderControl_initialize".}
proc fcQQuickRenderControl_invalidate(self: pointer): void {.importc: "QQuickRenderControl_invalidate".}
proc fcQQuickRenderControl_beginFrame(self: pointer): void {.importc: "QQuickRenderControl_beginFrame".}
proc fcQQuickRenderControl_endFrame(self: pointer): void {.importc: "QQuickRenderControl_endFrame".}
proc fcQQuickRenderControl_polishItems(self: pointer): void {.importc: "QQuickRenderControl_polishItems".}
proc fcQQuickRenderControl_sync(self: pointer): bool {.importc: "QQuickRenderControl_sync".}
proc fcQQuickRenderControl_render(self: pointer): void {.importc: "QQuickRenderControl_render".}
proc fcQQuickRenderControl_renderWindowFor(win: pointer): pointer {.importc: "QQuickRenderControl_renderWindowFor".}
proc fcQQuickRenderControl_renderWindow(self: pointer, offset: pointer): pointer {.importc: "QQuickRenderControl_renderWindow".}
proc fcQQuickRenderControl_window(self: pointer): pointer {.importc: "QQuickRenderControl_window".}
proc fcQQuickRenderControl_renderRequested(self: pointer): void {.importc: "QQuickRenderControl_renderRequested".}
proc fcQQuickRenderControl_connect_renderRequested(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRenderControl_connect_renderRequested".}
proc fcQQuickRenderControl_sceneChanged(self: pointer): void {.importc: "QQuickRenderControl_sceneChanged".}
proc fcQQuickRenderControl_connect_sceneChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQuickRenderControl_connect_sceneChanged".}
proc fcQQuickRenderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickRenderControl_tr2".}
proc fcQQuickRenderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickRenderControl_tr3".}
proc fcQQuickRenderControl_renderWindowFor2(win: pointer, offset: pointer): pointer {.importc: "QQuickRenderControl_renderWindowFor2".}
proc fcQQuickRenderControl_vtbl(self: pointer): pointer {.importc: "QQuickRenderControl_vtbl".}
proc fcQQuickRenderControl_vdata(self: pointer): pointer {.importc: "QQuickRenderControl_vdata".}

type cQQuickRenderControlVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  renderWindow*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickRenderControl_virtualbase_metaObject(self: pointer): pointer {.importc: "QQuickRenderControl_virtualbase_metaObject".}
proc fcQQuickRenderControl_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickRenderControl_virtualbase_metacast".}
proc fcQQuickRenderControl_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickRenderControl_virtualbase_metacall".}
proc fcQQuickRenderControl_virtualbase_renderWindow(self: pointer, offset: pointer): pointer {.importc: "QQuickRenderControl_virtualbase_renderWindow".}
proc fcQQuickRenderControl_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickRenderControl_virtualbase_event".}
proc fcQQuickRenderControl_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickRenderControl_virtualbase_eventFilter".}
proc fcQQuickRenderControl_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQuickRenderControl_virtualbase_timerEvent".}
proc fcQQuickRenderControl_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickRenderControl_virtualbase_childEvent".}
proc fcQQuickRenderControl_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickRenderControl_virtualbase_customEvent".}
proc fcQQuickRenderControl_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickRenderControl_virtualbase_connectNotify".}
proc fcQQuickRenderControl_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickRenderControl_virtualbase_disconnectNotify".}
proc fcQQuickRenderControl_protectedbase_sender(self: pointer): pointer {.importc: "QQuickRenderControl_protectedbase_sender".}
proc fcQQuickRenderControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQuickRenderControl_protectedbase_senderSignalIndex".}
proc fcQQuickRenderControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickRenderControl_protectedbase_receivers".}
proc fcQQuickRenderControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickRenderControl_protectedbase_isSignalConnected".}
proc fcQQuickRenderControl_new(vtbl, vdata: pointer): ptr cQQuickRenderControl {.importc: "QQuickRenderControl_new".}
proc fcQQuickRenderControl_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQuickRenderControl {.importc: "QQuickRenderControl_new2".}
proc fcQQuickRenderControl_staticMetaObject(): pointer {.importc: "QQuickRenderControl_staticMetaObject".}

proc metaObject*(self: gen_qquickrendercontrol_types.QQuickRenderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRenderControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cstring): pointer =
  fcQQuickRenderControl_metacast(self.h, param1)

proc metacall*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickRenderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring): string =
  let v_ms = fcQQuickRenderControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc prepareThread*(self: gen_qquickrendercontrol_types.QQuickRenderControl, targetThread: gen_qthread_types.QThread): void =
  fcQQuickRenderControl_prepareThread(self.h, targetThread.h)

proc setSamples*(self: gen_qquickrendercontrol_types.QQuickRenderControl, sampleCount: cint): void =
  fcQQuickRenderControl_setSamples(self.h, sampleCount)

proc samples*(self: gen_qquickrendercontrol_types.QQuickRenderControl): cint =
  fcQQuickRenderControl_samples(self.h)

proc initialize*(self: gen_qquickrendercontrol_types.QQuickRenderControl): bool =
  fcQQuickRenderControl_initialize(self.h)

proc invalidate*(self: gen_qquickrendercontrol_types.QQuickRenderControl): void =
  fcQQuickRenderControl_invalidate(self.h)

proc beginFrame*(self: gen_qquickrendercontrol_types.QQuickRenderControl): void =
  fcQQuickRenderControl_beginFrame(self.h)

proc endFrame*(self: gen_qquickrendercontrol_types.QQuickRenderControl): void =
  fcQQuickRenderControl_endFrame(self.h)

proc polishItems*(self: gen_qquickrendercontrol_types.QQuickRenderControl): void =
  fcQQuickRenderControl_polishItems(self.h)

proc sync*(self: gen_qquickrendercontrol_types.QQuickRenderControl): bool =
  fcQQuickRenderControl_sync(self.h)

proc render*(self: gen_qquickrendercontrol_types.QQuickRenderControl): void =
  fcQQuickRenderControl_render(self.h)

proc renderWindowFor*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, win: gen_qquickwindow_types.QQuickWindow): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_renderWindowFor(win.h), owned: false)

proc renderWindow*(self: gen_qquickrendercontrol_types.QQuickRenderControl, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_renderWindow(self.h, offset.h), owned: false)

proc window*(self: gen_qquickrendercontrol_types.QQuickRenderControl): gen_qquickwindow_types.QQuickWindow =
  gen_qquickwindow_types.QQuickWindow(h: fcQQuickRenderControl_window(self.h), owned: false)

proc renderRequested*(self: gen_qquickrendercontrol_types.QQuickRenderControl): void =
  fcQQuickRenderControl_renderRequested(self.h)

type QQuickRenderControlrenderRequestedSlot* = proc()
proc fcQQuickRenderControl_slot_callback_renderRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRenderControlrenderRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRenderControl_slot_callback_renderRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRenderControlrenderRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRenderRequested*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlrenderRequestedSlot) =
  var tmp = new QQuickRenderControlrenderRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_connect_renderRequested(self.h, cast[int](addr tmp[]), fcQQuickRenderControl_slot_callback_renderRequested, fcQQuickRenderControl_slot_callback_renderRequested_release)

proc sceneChanged*(self: gen_qquickrendercontrol_types.QQuickRenderControl): void =
  fcQQuickRenderControl_sceneChanged(self.h)

type QQuickRenderControlsceneChangedSlot* = proc()
proc fcQQuickRenderControl_slot_callback_sceneChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQuickRenderControlsceneChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQQuickRenderControl_slot_callback_sceneChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQuickRenderControlsceneChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSceneChanged*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlsceneChangedSlot) =
  var tmp = new QQuickRenderControlsceneChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_connect_sceneChanged(self.h, cast[int](addr tmp[]), fcQQuickRenderControl_slot_callback_sceneChanged, fcQQuickRenderControl_slot_callback_sceneChanged_release)

proc tr*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring): string =
  let v_ms = fcQQuickRenderControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickRenderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc renderWindowFor*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, win: gen_qquickwindow_types.QQuickWindow, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_renderWindowFor2(win.h, offset.h), owned: false)

type QQuickRenderControlmetaObjectProc* = proc(self: QQuickRenderControl): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickRenderControlmetacastProc* = proc(self: QQuickRenderControl, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickRenderControlmetacallProc* = proc(self: QQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickRenderControlrenderWindowProc* = proc(self: QQuickRenderControl, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow {.raises: [], gcsafe.}
type QQuickRenderControleventProc* = proc(self: QQuickRenderControl, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickRenderControleventFilterProc* = proc(self: QQuickRenderControl, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickRenderControltimerEventProc* = proc(self: QQuickRenderControl, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickRenderControlchildEventProc* = proc(self: QQuickRenderControl, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickRenderControlcustomEventProc* = proc(self: QQuickRenderControl, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickRenderControlconnectNotifyProc* = proc(self: QQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickRenderControldisconnectNotifyProc* = proc(self: QQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQuickRenderControlVTable* {.inheritable, pure.} = object
  vtbl: cQQuickRenderControlVTable
  metaObject*: QQuickRenderControlmetaObjectProc
  metacast*: QQuickRenderControlmetacastProc
  metacall*: QQuickRenderControlmetacallProc
  renderWindow*: QQuickRenderControlrenderWindowProc
  event*: QQuickRenderControleventProc
  eventFilter*: QQuickRenderControleventFilterProc
  timerEvent*: QQuickRenderControltimerEventProc
  childEvent*: QQuickRenderControlchildEventProc
  customEvent*: QQuickRenderControlcustomEventProc
  connectNotify*: QQuickRenderControlconnectNotifyProc
  disconnectNotify*: QQuickRenderControldisconnectNotifyProc

proc QQuickRenderControlmetaObject*(self: gen_qquickrendercontrol_types.QQuickRenderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRenderControl_virtualbase_metaObject(self.h), owned: false)

proc QQuickRenderControlmetacast*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cstring): pointer =
  fcQQuickRenderControl_virtualbase_metacast(self.h, param1)

proc QQuickRenderControlmetacall*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickRenderControl_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQuickRenderControlrenderWindow*(self: gen_qquickrendercontrol_types.QQuickRenderControl, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_virtualbase_renderWindow(self.h, offset.h), owned: false)

proc QQuickRenderControlevent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickRenderControl_virtualbase_event(self.h, event.h)

proc QQuickRenderControleventFilter*(self: gen_qquickrendercontrol_types.QQuickRenderControl, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickRenderControl_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQuickRenderControltimerEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickRenderControl_virtualbase_timerEvent(self.h, event.h)

proc QQuickRenderControlchildEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickRenderControl_virtualbase_childEvent(self.h, event.h)

proc QQuickRenderControlcustomEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickRenderControl_virtualbase_customEvent(self.h, event.h)

proc QQuickRenderControlconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickRenderControl_virtualbase_connectNotify(self.h, signal.h)

proc QQuickRenderControldisconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickRenderControl_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQuickRenderControl_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRenderControl_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQuickRenderControl_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickRenderControl_vtable_callback_renderWindow(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].renderWindow(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRenderControl_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQuickRenderControl_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQuickRenderControl_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQuickRenderControl_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQuickRenderControl_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQuickRenderControl_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQuickRenderControl_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQuickRenderControl* {.inheritable.} = ref object of QQuickRenderControl
  vtbl*: cQQuickRenderControlVTable

method metaObject*(self: VirtualQQuickRenderControl): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQuickRenderControlmetaObject(self[])
method metacast*(self: VirtualQQuickRenderControl, param1: cstring): pointer {.base.} =
  QQuickRenderControlmetacast(self[], param1)
method metacall*(self: VirtualQQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQuickRenderControlmetacall(self[], param1, param2, param3)
method renderWindow*(self: VirtualQQuickRenderControl, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow {.base.} =
  QQuickRenderControlrenderWindow(self[], offset)
method event*(self: VirtualQQuickRenderControl, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickRenderControlevent(self[], event)
method eventFilter*(self: VirtualQQuickRenderControl, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQuickRenderControleventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQuickRenderControl, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQuickRenderControltimerEvent(self[], event)
method childEvent*(self: VirtualQQuickRenderControl, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQuickRenderControlchildEvent(self[], event)
method customEvent*(self: VirtualQQuickRenderControl, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQuickRenderControlcustomEvent(self[], event)
method connectNotify*(self: VirtualQQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickRenderControlconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQuickRenderControldisconnectNotify(self[], signal)

proc fcQQuickRenderControl_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRenderControl_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQuickRenderControl_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQuickRenderControl_method_callback_renderWindow(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.renderWindow(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQuickRenderControl_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQuickRenderControl_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQuickRenderControl_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQuickRenderControl_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQuickRenderControl_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQuickRenderControl_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQuickRenderControl_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQuickRenderControl](fcQQuickRenderControl_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qquickrendercontrol_types.QQuickRenderControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickRenderControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qquickrendercontrol_types.QQuickRenderControl): cint =
  fcQQuickRenderControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: cstring): cint =
  fcQQuickRenderControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickRenderControl_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl,
    vtbl: ref QQuickRenderControlVTable = nil): gen_qquickrendercontrol_types.QQuickRenderControl =
  let vtbl = if vtbl == nil: new QQuickRenderControlVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickRenderControl_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickRenderControl_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickRenderControl_vtable_callback_metacall
  if not isNil(vtbl[].renderWindow):
    vtbl[].vtbl.renderWindow = fcQQuickRenderControl_vtable_callback_renderWindow
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickRenderControl_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickRenderControl_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickRenderControl_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickRenderControl_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickRenderControl_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickRenderControl_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickRenderControl_vtable_callback_disconnectNotify
  gen_qquickrendercontrol_types.QQuickRenderControl(h: fcQQuickRenderControl_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQuickRenderControlVTable = nil): gen_qquickrendercontrol_types.QQuickRenderControl =
  let vtbl = if vtbl == nil: new QQuickRenderControlVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQuickRenderControlVTable](fcQQuickRenderControl_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQuickRenderControl_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQuickRenderControl_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQuickRenderControl_vtable_callback_metacall
  if not isNil(vtbl[].renderWindow):
    vtbl[].vtbl.renderWindow = fcQQuickRenderControl_vtable_callback_renderWindow
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQuickRenderControl_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQuickRenderControl_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQuickRenderControl_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQuickRenderControl_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQuickRenderControl_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQuickRenderControl_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQuickRenderControl_vtable_callback_disconnectNotify
  gen_qquickrendercontrol_types.QQuickRenderControl(h: fcQQuickRenderControl_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQuickRenderControl_mvtbl = cQQuickRenderControlVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQuickRenderControl()[])](self.fcQQuickRenderControl_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQuickRenderControl_method_callback_metaObject,
  metacast: fcQQuickRenderControl_method_callback_metacast,
  metacall: fcQQuickRenderControl_method_callback_metacall,
  renderWindow: fcQQuickRenderControl_method_callback_renderWindow,
  event: fcQQuickRenderControl_method_callback_event,
  eventFilter: fcQQuickRenderControl_method_callback_eventFilter,
  timerEvent: fcQQuickRenderControl_method_callback_timerEvent,
  childEvent: fcQQuickRenderControl_method_callback_childEvent,
  customEvent: fcQQuickRenderControl_method_callback_customEvent,
  connectNotify: fcQQuickRenderControl_method_callback_connectNotify,
  disconnectNotify: fcQQuickRenderControl_method_callback_disconnectNotify,
)
proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl,
    inst: VirtualQQuickRenderControl) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickRenderControl_new(addr(cQQuickRenderControl_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQuickRenderControl) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQuickRenderControl_new2(addr(cQQuickRenderControl_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qquickrendercontrol_types.QQuickRenderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRenderControl_staticMetaObject())
