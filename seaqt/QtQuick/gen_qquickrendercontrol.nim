import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qquickrendercontrol.cpp", cflags).}


import ./gen_qquickrendercontrol_types
export gen_qquickrendercontrol_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qthread_types,
  ../QtGui/gen_qimage_types,
  ../QtGui/gen_qwindow_types,
  ./gen_qquickwindow_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qthread_types,
  gen_qimage_types,
  gen_qwindow_types,
  gen_qquickwindow_types

type cQQuickRenderControl*{.exportc: "QQuickRenderControl", incompleteStruct.} = object

proc fcQQuickRenderControl_metaObject(self: pointer, ): pointer {.importc: "QQuickRenderControl_metaObject".}
proc fcQQuickRenderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickRenderControl_metacast".}
proc fcQQuickRenderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickRenderControl_metacall".}
proc fcQQuickRenderControl_tr(s: cstring): struct_miqt_string {.importc: "QQuickRenderControl_tr".}
proc fcQQuickRenderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickRenderControl_trUtf8".}
proc fcQQuickRenderControl_prepareThread(self: pointer, targetThread: pointer): void {.importc: "QQuickRenderControl_prepareThread".}
proc fcQQuickRenderControl_invalidate(self: pointer, ): void {.importc: "QQuickRenderControl_invalidate".}
proc fcQQuickRenderControl_polishItems(self: pointer, ): void {.importc: "QQuickRenderControl_polishItems".}
proc fcQQuickRenderControl_render(self: pointer, ): void {.importc: "QQuickRenderControl_render".}
proc fcQQuickRenderControl_sync(self: pointer, ): bool {.importc: "QQuickRenderControl_sync".}
proc fcQQuickRenderControl_grab(self: pointer, ): pointer {.importc: "QQuickRenderControl_grab".}
proc fcQQuickRenderControl_renderWindowFor(win: pointer): pointer {.importc: "QQuickRenderControl_renderWindowFor".}
proc fcQQuickRenderControl_renderWindow(self: pointer, offset: pointer): pointer {.importc: "QQuickRenderControl_renderWindow".}
proc fcQQuickRenderControl_renderRequested(self: pointer, ): void {.importc: "QQuickRenderControl_renderRequested".}
proc fcQQuickRenderControl_connect_renderRequested(self: pointer, slot: int) {.importc: "QQuickRenderControl_connect_renderRequested".}
proc fcQQuickRenderControl_sceneChanged(self: pointer, ): void {.importc: "QQuickRenderControl_sceneChanged".}
proc fcQQuickRenderControl_connect_sceneChanged(self: pointer, slot: int) {.importc: "QQuickRenderControl_connect_sceneChanged".}
proc fcQQuickRenderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickRenderControl_tr2".}
proc fcQQuickRenderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickRenderControl_tr3".}
proc fcQQuickRenderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickRenderControl_trUtf82".}
proc fcQQuickRenderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickRenderControl_trUtf83".}
proc fcQQuickRenderControl_renderWindowFor2(win: pointer, offset: pointer): pointer {.importc: "QQuickRenderControl_renderWindowFor2".}
type cQQuickRenderControlVTable = object
  destructor*: proc(vtbl: ptr cQQuickRenderControlVTable, self: ptr cQQuickRenderControl) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  renderWindow*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickRenderControl_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickRenderControl_virtualbase_metaObject".}
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
proc fcQQuickRenderControl_new(vtbl: pointer, ): ptr cQQuickRenderControl {.importc: "QQuickRenderControl_new".}
proc fcQQuickRenderControl_new2(vtbl: pointer, parent: pointer): ptr cQQuickRenderControl {.importc: "QQuickRenderControl_new2".}
proc fcQQuickRenderControl_staticMetaObject(): pointer {.importc: "QQuickRenderControl_staticMetaObject".}
proc fcQQuickRenderControl_delete(self: pointer) {.importc: "QQuickRenderControl_delete".}

proc metaObject*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRenderControl_metaObject(self.h))

proc metacast*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cstring): pointer =
  fcQQuickRenderControl_metacast(self.h, param1)

proc metacall*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickRenderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring): string =
  let v_ms = fcQQuickRenderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring): string =
  let v_ms = fcQQuickRenderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc prepareThread*(self: gen_qquickrendercontrol_types.QQuickRenderControl, targetThread: gen_qthread_types.QThread): void =
  fcQQuickRenderControl_prepareThread(self.h, targetThread.h)

proc invalidate*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =
  fcQQuickRenderControl_invalidate(self.h)

proc polishItems*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =
  fcQQuickRenderControl_polishItems(self.h)

proc render*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =
  fcQQuickRenderControl_render(self.h)

proc sync*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): bool =
  fcQQuickRenderControl_sync(self.h)

proc grab*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQQuickRenderControl_grab(self.h))

proc renderWindowFor*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, win: gen_qquickwindow_types.QQuickWindow): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_renderWindowFor(win.h))

proc renderWindow*(self: gen_qquickrendercontrol_types.QQuickRenderControl, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_renderWindow(self.h, offset.h))

proc renderRequested*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =
  fcQQuickRenderControl_renderRequested(self.h)

type QQuickRenderControlrenderRequestedSlot* = proc()
proc miqt_exec_callback_cQQuickRenderControl_renderRequested(slot: int) {.exportc: "miqt_exec_callback_QQuickRenderControl_renderRequested".} =
  let nimfunc = cast[ptr QQuickRenderControlrenderRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrenderRequested*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlrenderRequestedSlot) =
  var tmp = new QQuickRenderControlrenderRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_connect_renderRequested(self.h, cast[int](addr tmp[]))

proc sceneChanged*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =
  fcQQuickRenderControl_sceneChanged(self.h)

type QQuickRenderControlsceneChangedSlot* = proc()
proc miqt_exec_callback_cQQuickRenderControl_sceneChanged(slot: int) {.exportc: "miqt_exec_callback_QQuickRenderControl_sceneChanged".} =
  let nimfunc = cast[ptr QQuickRenderControlsceneChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsceneChanged*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlsceneChangedSlot) =
  var tmp = new QQuickRenderControlsceneChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_connect_sceneChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring): string =
  let v_ms = fcQQuickRenderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickRenderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring): string =
  let v_ms = fcQQuickRenderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickRenderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc renderWindowFor*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, win: gen_qquickwindow_types.QQuickWindow, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_renderWindowFor2(win.h, offset.h))

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
type QQuickRenderControlVTable* = object
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
proc QQuickRenderControlmetaObject*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRenderControl_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickRenderControl_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickRenderControlmetacast*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cstring): pointer =
  fcQQuickRenderControl_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickRenderControl_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickRenderControlmetacall*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickRenderControl_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickRenderControl_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickRenderControlrenderWindow*(self: gen_qquickrendercontrol_types.QQuickRenderControl, offset: gen_qpoint_types.QPoint): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQQuickRenderControl_virtualbase_renderWindow(self.h, offset.h))

proc miqt_exec_callback_cQQuickRenderControl_renderWindow(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].renderWindow(self, slotval1)
  virtualReturn.h

proc QQuickRenderControlevent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickRenderControl_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickRenderControl_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickRenderControleventFilter*(self: gen_qquickrendercontrol_types.QQuickRenderControl, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickRenderControl_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickRenderControl_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickRenderControltimerEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickRenderControl_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickRenderControl_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQuickRenderControlchildEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickRenderControl_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickRenderControl_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickRenderControlcustomEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickRenderControl_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickRenderControl_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickRenderControlconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickRenderControl_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickRenderControl_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickRenderControldisconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickRenderControl_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickRenderControl_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickRenderControlVTable](vtbl)
  let self = QQuickRenderControl(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl,
    vtbl: ref QQuickRenderControlVTable = nil): gen_qquickrendercontrol_types.QQuickRenderControl =
  let vtbl = if vtbl == nil: new QQuickRenderControlVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickRenderControlVTable, _: ptr cQQuickRenderControl) {.cdecl.} =
    let vtbl = cast[ref QQuickRenderControlVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickRenderControl_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickRenderControl_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickRenderControl_metacall
  if not isNil(vtbl.renderWindow):
    vtbl[].vtbl.renderWindow = miqt_exec_callback_cQQuickRenderControl_renderWindow
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickRenderControl_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickRenderControl_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickRenderControl_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickRenderControl_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickRenderControl_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickRenderControl_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickRenderControl_disconnectNotify
  gen_qquickrendercontrol_types.QQuickRenderControl(h: fcQQuickRenderControl_new(addr(vtbl[]), ))

proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQuickRenderControlVTable = nil): gen_qquickrendercontrol_types.QQuickRenderControl =
  let vtbl = if vtbl == nil: new QQuickRenderControlVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickRenderControlVTable, _: ptr cQQuickRenderControl) {.cdecl.} =
    let vtbl = cast[ref QQuickRenderControlVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickRenderControl_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickRenderControl_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickRenderControl_metacall
  if not isNil(vtbl.renderWindow):
    vtbl[].vtbl.renderWindow = miqt_exec_callback_cQQuickRenderControl_renderWindow
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickRenderControl_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickRenderControl_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickRenderControl_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickRenderControl_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickRenderControl_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickRenderControl_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickRenderControl_disconnectNotify
  gen_qquickrendercontrol_types.QQuickRenderControl(h: fcQQuickRenderControl_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qquickrendercontrol_types.QQuickRenderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickRenderControl_staticMetaObject())
proc delete*(self: gen_qquickrendercontrol_types.QQuickRenderControl) =
  fcQQuickRenderControl_delete(self.h)
