import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qwidgetaction.cpp", cflags).}


import ./gen_qwidgetaction_types
export gen_qwidgetaction_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qaction,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qaction,
  gen_qwidget_types

type cQWidgetAction*{.exportc: "QWidgetAction", incompleteStruct.} = object

proc fcQWidgetAction_metaObject(self: pointer): pointer {.importc: "QWidgetAction_metaObject".}
proc fcQWidgetAction_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidgetAction_metacast".}
proc fcQWidgetAction_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWidgetAction_metacall".}
proc fcQWidgetAction_tr(s: cstring): struct_miqt_string {.importc: "QWidgetAction_tr".}
proc fcQWidgetAction_setDefaultWidget(self: pointer, w: pointer): void {.importc: "QWidgetAction_setDefaultWidget".}
proc fcQWidgetAction_defaultWidget(self: pointer): pointer {.importc: "QWidgetAction_defaultWidget".}
proc fcQWidgetAction_requestWidget(self: pointer, parent: pointer): pointer {.importc: "QWidgetAction_requestWidget".}
proc fcQWidgetAction_releaseWidget(self: pointer, widget: pointer): void {.importc: "QWidgetAction_releaseWidget".}
proc fcQWidgetAction_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidgetAction_tr2".}
proc fcQWidgetAction_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidgetAction_tr3".}
proc fcQWidgetAction_vtbl(self: pointer): pointer {.importc: "QWidgetAction_vtbl".}
proc fcQWidgetAction_vdata(self: pointer): pointer {.importc: "QWidgetAction_vdata".}
type cQWidgetActionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  createWidget*: proc(self: pointer, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  deleteWidget*: proc(self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWidgetAction_virtualbase_metaObject(self: pointer): pointer {.importc: "QWidgetAction_virtualbase_metaObject".}
proc fcQWidgetAction_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidgetAction_virtualbase_metacast".}
proc fcQWidgetAction_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWidgetAction_virtualbase_metacall".}
proc fcQWidgetAction_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QWidgetAction_virtualbase_event".}
proc fcQWidgetAction_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QWidgetAction_virtualbase_eventFilter".}
proc fcQWidgetAction_virtualbase_createWidget(self: pointer, parent: pointer): pointer {.importc: "QWidgetAction_virtualbase_createWidget".}
proc fcQWidgetAction_virtualbase_deleteWidget(self: pointer, widget: pointer): void {.importc: "QWidgetAction_virtualbase_deleteWidget".}
proc fcQWidgetAction_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWidgetAction_virtualbase_timerEvent".}
proc fcQWidgetAction_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWidgetAction_virtualbase_childEvent".}
proc fcQWidgetAction_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWidgetAction_virtualbase_customEvent".}
proc fcQWidgetAction_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWidgetAction_virtualbase_connectNotify".}
proc fcQWidgetAction_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWidgetAction_virtualbase_disconnectNotify".}
proc fcQWidgetAction_protectedbase_createdWidgets(self: pointer): struct_miqt_array {.importc: "QWidgetAction_protectedbase_createdWidgets".}
proc fcQWidgetAction_protectedbase_sender(self: pointer): pointer {.importc: "QWidgetAction_protectedbase_sender".}
proc fcQWidgetAction_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWidgetAction_protectedbase_senderSignalIndex".}
proc fcQWidgetAction_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWidgetAction_protectedbase_receivers".}
proc fcQWidgetAction_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWidgetAction_protectedbase_isSignalConnected".}
proc fcQWidgetAction_new(vtbl, vdata: pointer, parent: pointer): ptr cQWidgetAction {.importc: "QWidgetAction_new".}
proc fcQWidgetAction_staticMetaObject(): pointer {.importc: "QWidgetAction_staticMetaObject".}

proc metaObject*(self: gen_qwidgetaction_types.QWidgetAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidgetAction_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwidgetaction_types.QWidgetAction, param1: cstring): pointer =
  fcQWidgetAction_metacast(self.h, param1)

proc metacall*(self: gen_qwidgetaction_types.QWidgetAction, param1: cint, param2: cint, param3: pointer): cint =
  fcQWidgetAction_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwidgetaction_types.QWidgetAction, s: cstring): string =
  let v_ms = fcQWidgetAction_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultWidget*(self: gen_qwidgetaction_types.QWidgetAction, w: gen_qwidget_types.QWidget): void =
  fcQWidgetAction_setDefaultWidget(self.h, w.h)

proc defaultWidget*(self: gen_qwidgetaction_types.QWidgetAction): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetAction_defaultWidget(self.h), owned: false)

proc requestWidget*(self: gen_qwidgetaction_types.QWidgetAction, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetAction_requestWidget(self.h, parent.h), owned: false)

proc releaseWidget*(self: gen_qwidgetaction_types.QWidgetAction, widget: gen_qwidget_types.QWidget): void =
  fcQWidgetAction_releaseWidget(self.h, widget.h)

proc tr*(_: type gen_qwidgetaction_types.QWidgetAction, s: cstring, c: cstring): string =
  let v_ms = fcQWidgetAction_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwidgetaction_types.QWidgetAction, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWidgetAction_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWidgetActionmetaObjectProc* = proc(self: QWidgetAction): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWidgetActionmetacastProc* = proc(self: QWidgetAction, param1: cstring): pointer {.raises: [], gcsafe.}
type QWidgetActionmetacallProc* = proc(self: QWidgetAction, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWidgetActioneventProc* = proc(self: QWidgetAction, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWidgetActioneventFilterProc* = proc(self: QWidgetAction, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWidgetActioncreateWidgetProc* = proc(self: QWidgetAction, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QWidgetActiondeleteWidgetProc* = proc(self: QWidgetAction, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QWidgetActiontimerEventProc* = proc(self: QWidgetAction, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWidgetActionchildEventProc* = proc(self: QWidgetAction, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWidgetActioncustomEventProc* = proc(self: QWidgetAction, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWidgetActionconnectNotifyProc* = proc(self: QWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWidgetActiondisconnectNotifyProc* = proc(self: QWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWidgetActionVTable* {.inheritable, pure.} = object
  vtbl: cQWidgetActionVTable
  metaObject*: QWidgetActionmetaObjectProc
  metacast*: QWidgetActionmetacastProc
  metacall*: QWidgetActionmetacallProc
  event*: QWidgetActioneventProc
  eventFilter*: QWidgetActioneventFilterProc
  createWidget*: QWidgetActioncreateWidgetProc
  deleteWidget*: QWidgetActiondeleteWidgetProc
  timerEvent*: QWidgetActiontimerEventProc
  childEvent*: QWidgetActionchildEventProc
  customEvent*: QWidgetActioncustomEventProc
  connectNotify*: QWidgetActionconnectNotifyProc
  disconnectNotify*: QWidgetActiondisconnectNotifyProc
proc QWidgetActionmetaObject*(self: gen_qwidgetaction_types.QWidgetAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidgetAction_virtualbase_metaObject(self.h), owned: false)

proc cQWidgetAction_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetActionmetacast*(self: gen_qwidgetaction_types.QWidgetAction, param1: cstring): pointer =
  fcQWidgetAction_virtualbase_metacast(self.h, param1)

proc cQWidgetAction_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWidgetActionmetacall*(self: gen_qwidgetaction_types.QWidgetAction, param1: cint, param2: cint, param3: pointer): cint =
  fcQWidgetAction_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWidgetAction_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWidgetActionevent*(self: gen_qwidgetaction_types.QWidgetAction, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWidgetAction_virtualbase_event(self.h, param1.h)

proc cQWidgetAction_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWidgetActioneventFilter*(self: gen_qwidgetaction_types.QWidgetAction, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQWidgetAction_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQWidgetAction_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWidgetActioncreateWidget*(self: gen_qwidgetaction_types.QWidgetAction, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetAction_virtualbase_createWidget(self.h, parent.h), owned: false)

proc cQWidgetAction_vtable_callback_createWidget(self: pointer, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  var virtualReturn = vtbl[].createWidget(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWidgetActiondeleteWidget*(self: gen_qwidgetaction_types.QWidgetAction, widget: gen_qwidget_types.QWidget): void =
  fcQWidgetAction_virtualbase_deleteWidget(self.h, widget.h)

proc cQWidgetAction_vtable_callback_deleteWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].deleteWidget(self, slotval1)

proc QWidgetActiontimerEvent*(self: gen_qwidgetaction_types.QWidgetAction, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWidgetAction_virtualbase_timerEvent(self.h, event.h)

proc cQWidgetAction_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWidgetActionchildEvent*(self: gen_qwidgetaction_types.QWidgetAction, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWidgetAction_virtualbase_childEvent(self.h, event.h)

proc cQWidgetAction_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWidgetActioncustomEvent*(self: gen_qwidgetaction_types.QWidgetAction, event: gen_qcoreevent_types.QEvent): void =
  fcQWidgetAction_virtualbase_customEvent(self.h, event.h)

proc cQWidgetAction_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWidgetActionconnectNotify*(self: gen_qwidgetaction_types.QWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWidgetAction_virtualbase_connectNotify(self.h, signal.h)

proc cQWidgetAction_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWidgetActiondisconnectNotify*(self: gen_qwidgetaction_types.QWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWidgetAction_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWidgetAction_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetActionVTable](fcQWidgetAction_vdata(self))
  let self = QWidgetAction(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWidgetAction* {.inheritable.} = ref object of QWidgetAction
  vtbl*: cQWidgetActionVTable
method metaObject*(self: VirtualQWidgetAction): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWidgetActionmetaObject(self[])
proc cQWidgetAction_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWidgetAction, param1: cstring): pointer {.base.} =
  QWidgetActionmetacast(self[], param1)
proc cQWidgetAction_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWidgetAction, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWidgetActionmetacall(self[], param1, param2, param3)
proc cQWidgetAction_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQWidgetAction, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWidgetActionevent(self[], param1)
proc cQWidgetAction_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWidgetAction, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWidgetActioneventFilter(self[], param1, param2)
proc cQWidgetAction_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method createWidget*(self: VirtualQWidgetAction, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget {.base.} =
  QWidgetActioncreateWidget(self[], parent)
proc cQWidgetAction_method_callback_createWidget(self: pointer, parent: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: parent, owned: false)
  var virtualReturn = inst.createWidget(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method deleteWidget*(self: VirtualQWidgetAction, widget: gen_qwidget_types.QWidget): void {.base.} =
  QWidgetActiondeleteWidget(self[], widget)
proc cQWidgetAction_method_callback_deleteWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.deleteWidget(slotval1)

method timerEvent*(self: VirtualQWidgetAction, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWidgetActiontimerEvent(self[], event)
proc cQWidgetAction_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWidgetAction, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWidgetActionchildEvent(self[], event)
proc cQWidgetAction_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWidgetAction, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWidgetActioncustomEvent(self[], event)
proc cQWidgetAction_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWidgetActionconnectNotify(self[], signal)
proc cQWidgetAction_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWidgetActiondisconnectNotify(self[], signal)
proc cQWidgetAction_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetAction](fcQWidgetAction_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc createdWidgets*(self: gen_qwidgetaction_types.QWidgetAction): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQWidgetAction_protectedbase_createdWidgets(self.h)
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc sender*(self: gen_qwidgetaction_types.QWidgetAction): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWidgetAction_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwidgetaction_types.QWidgetAction): cint =
  fcQWidgetAction_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwidgetaction_types.QWidgetAction, signal: cstring): cint =
  fcQWidgetAction_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwidgetaction_types.QWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWidgetAction_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwidgetaction_types.QWidgetAction,
    parent: gen_qobject_types.QObject,
    vtbl: ref QWidgetActionVTable = nil): gen_qwidgetaction_types.QWidgetAction =
  let vtbl = if vtbl == nil: new QWidgetActionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWidgetActionVTable](fcQWidgetAction_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWidgetAction_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWidgetAction_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWidgetAction_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWidgetAction_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWidgetAction_vtable_callback_eventFilter
  if not isNil(vtbl[].createWidget):
    vtbl[].vtbl.createWidget = cQWidgetAction_vtable_callback_createWidget
  if not isNil(vtbl[].deleteWidget):
    vtbl[].vtbl.deleteWidget = cQWidgetAction_vtable_callback_deleteWidget
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWidgetAction_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWidgetAction_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWidgetAction_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWidgetAction_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWidgetAction_vtable_callback_disconnectNotify
  gen_qwidgetaction_types.QWidgetAction(h: fcQWidgetAction_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQWidgetAction_mvtbl = cQWidgetActionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWidgetAction()[])](self.fcQWidgetAction_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWidgetAction_method_callback_metaObject,
  metacast: cQWidgetAction_method_callback_metacast,
  metacall: cQWidgetAction_method_callback_metacall,
  event: cQWidgetAction_method_callback_event,
  eventFilter: cQWidgetAction_method_callback_eventFilter,
  createWidget: cQWidgetAction_method_callback_createWidget,
  deleteWidget: cQWidgetAction_method_callback_deleteWidget,
  timerEvent: cQWidgetAction_method_callback_timerEvent,
  childEvent: cQWidgetAction_method_callback_childEvent,
  customEvent: cQWidgetAction_method_callback_customEvent,
  connectNotify: cQWidgetAction_method_callback_connectNotify,
  disconnectNotify: cQWidgetAction_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwidgetaction_types.QWidgetAction,
    parent: gen_qobject_types.QObject,
    inst: VirtualQWidgetAction) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWidgetAction_new(addr(cQWidgetAction_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwidgetaction_types.QWidgetAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidgetAction_staticMetaObject())
