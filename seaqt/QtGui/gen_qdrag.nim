import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qdrag.cpp", cflags).}


import ./gen_qdrag_types
export gen_qdrag_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qpixmap_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qpixmap_types

type cQDrag*{.exportc: "QDrag", incompleteStruct.} = object

proc fcQDrag_metaObject(self: pointer, ): pointer {.importc: "QDrag_metaObject".}
proc fcQDrag_metacast(self: pointer, param1: cstring): pointer {.importc: "QDrag_metacast".}
proc fcQDrag_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDrag_metacall".}
proc fcQDrag_tr(s: cstring): struct_miqt_string {.importc: "QDrag_tr".}
proc fcQDrag_setMimeData(self: pointer, data: pointer): void {.importc: "QDrag_setMimeData".}
proc fcQDrag_mimeData(self: pointer, ): pointer {.importc: "QDrag_mimeData".}
proc fcQDrag_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QDrag_setPixmap".}
proc fcQDrag_pixmap(self: pointer, ): pointer {.importc: "QDrag_pixmap".}
proc fcQDrag_setHotSpot(self: pointer, hotspot: pointer): void {.importc: "QDrag_setHotSpot".}
proc fcQDrag_hotSpot(self: pointer, ): pointer {.importc: "QDrag_hotSpot".}
proc fcQDrag_source(self: pointer, ): pointer {.importc: "QDrag_source".}
proc fcQDrag_target(self: pointer, ): pointer {.importc: "QDrag_target".}
proc fcQDrag_exec(self: pointer, ): cint {.importc: "QDrag_exec".}
proc fcQDrag_exec2(self: pointer, supportedActions: cint, defaultAction: cint): cint {.importc: "QDrag_exec2".}
proc fcQDrag_setDragCursor(self: pointer, cursor: pointer, action: cint): void {.importc: "QDrag_setDragCursor".}
proc fcQDrag_dragCursor(self: pointer, action: cint): pointer {.importc: "QDrag_dragCursor".}
proc fcQDrag_supportedActions(self: pointer, ): cint {.importc: "QDrag_supportedActions".}
proc fcQDrag_defaultAction(self: pointer, ): cint {.importc: "QDrag_defaultAction".}
proc fcQDrag_cancel(): void {.importc: "QDrag_cancel".}
proc fcQDrag_actionChanged(self: pointer, action: cint): void {.importc: "QDrag_actionChanged".}
proc fcQDrag_connect_actionChanged(self: pointer, slot: int, callback: proc (slot: int, action: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDrag_connect_actionChanged".}
proc fcQDrag_targetChanged(self: pointer, newTarget: pointer): void {.importc: "QDrag_targetChanged".}
proc fcQDrag_connect_targetChanged(self: pointer, slot: int, callback: proc (slot: int, newTarget: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDrag_connect_targetChanged".}
proc fcQDrag_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDrag_tr2".}
proc fcQDrag_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDrag_tr3".}
proc fcQDrag_exec1(self: pointer, supportedActions: cint): cint {.importc: "QDrag_exec1".}
type cQDragVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQDragVTable, self: ptr cQDrag) {.cdecl, raises:[], gcsafe.}
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
proc fcQDrag_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDrag_virtualbase_metaObject".}
proc fcQDrag_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDrag_virtualbase_metacast".}
proc fcQDrag_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDrag_virtualbase_metacall".}
proc fcQDrag_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDrag_virtualbase_event".}
proc fcQDrag_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDrag_virtualbase_eventFilter".}
proc fcQDrag_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDrag_virtualbase_timerEvent".}
proc fcQDrag_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDrag_virtualbase_childEvent".}
proc fcQDrag_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDrag_virtualbase_customEvent".}
proc fcQDrag_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDrag_virtualbase_connectNotify".}
proc fcQDrag_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDrag_virtualbase_disconnectNotify".}
proc fcQDrag_protectedbase_sender(self: pointer, ): pointer {.importc: "QDrag_protectedbase_sender".}
proc fcQDrag_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QDrag_protectedbase_senderSignalIndex".}
proc fcQDrag_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDrag_protectedbase_receivers".}
proc fcQDrag_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDrag_protectedbase_isSignalConnected".}
proc fcQDrag_new(vtbl: pointer, dragSource: pointer): ptr cQDrag {.importc: "QDrag_new".}
proc fcQDrag_staticMetaObject(): pointer {.importc: "QDrag_staticMetaObject".}

proc metaObject*(self: gen_qdrag_types.QDrag, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDrag_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdrag_types.QDrag, param1: cstring): pointer =
  fcQDrag_metacast(self.h, param1)

proc metacall*(self: gen_qdrag_types.QDrag, param1: cint, param2: cint, param3: pointer): cint =
  fcQDrag_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdrag_types.QDrag, s: cstring): string =
  let v_ms = fcQDrag_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMimeData*(self: gen_qdrag_types.QDrag, data: gen_qmimedata_types.QMimeData): void =
  fcQDrag_setMimeData(self.h, data.h)

proc mimeData*(self: gen_qdrag_types.QDrag, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQDrag_mimeData(self.h), owned: false)

proc setPixmap*(self: gen_qdrag_types.QDrag, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQDrag_setPixmap(self.h, pixmap.h)

proc pixmap*(self: gen_qdrag_types.QDrag, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQDrag_pixmap(self.h), owned: true)

proc setHotSpot*(self: gen_qdrag_types.QDrag, hotspot: gen_qpoint_types.QPoint): void =
  fcQDrag_setHotSpot(self.h, hotspot.h)

proc hotSpot*(self: gen_qdrag_types.QDrag, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQDrag_hotSpot(self.h), owned: true)

proc source*(self: gen_qdrag_types.QDrag, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDrag_source(self.h), owned: false)

proc target*(self: gen_qdrag_types.QDrag, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDrag_target(self.h), owned: false)

proc exec*(self: gen_qdrag_types.QDrag, ): cint =
  cint(fcQDrag_exec(self.h))

proc exec*(self: gen_qdrag_types.QDrag, supportedActions: cint, defaultAction: cint): cint =
  cint(fcQDrag_exec2(self.h, cint(supportedActions), cint(defaultAction)))

proc setDragCursor*(self: gen_qdrag_types.QDrag, cursor: gen_qpixmap_types.QPixmap, action: cint): void =
  fcQDrag_setDragCursor(self.h, cursor.h, cint(action))

proc dragCursor*(self: gen_qdrag_types.QDrag, action: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQDrag_dragCursor(self.h, cint(action)), owned: true)

proc supportedActions*(self: gen_qdrag_types.QDrag, ): cint =
  cint(fcQDrag_supportedActions(self.h))

proc defaultAction*(self: gen_qdrag_types.QDrag, ): cint =
  cint(fcQDrag_defaultAction(self.h))

proc cancel*(_: type gen_qdrag_types.QDrag, ): void =
  fcQDrag_cancel()

proc actionChanged*(self: gen_qdrag_types.QDrag, action: cint): void =
  fcQDrag_actionChanged(self.h, cint(action))

type QDragactionChangedSlot* = proc(action: cint)
proc miqt_exec_callback_cQDrag_actionChanged(slot: int, action: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDragactionChangedSlot](cast[pointer](slot))
  let slotval1 = cint(action)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDrag_actionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDragactionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactionChanged*(self: gen_qdrag_types.QDrag, slot: QDragactionChangedSlot) =
  var tmp = new QDragactionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_connect_actionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDrag_actionChanged, miqt_exec_callback_cQDrag_actionChanged_release)

proc targetChanged*(self: gen_qdrag_types.QDrag, newTarget: gen_qobject_types.QObject): void =
  fcQDrag_targetChanged(self.h, newTarget.h)

type QDragtargetChangedSlot* = proc(newTarget: gen_qobject_types.QObject)
proc miqt_exec_callback_cQDrag_targetChanged(slot: int, newTarget: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDragtargetChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: newTarget, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDrag_targetChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDragtargetChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontargetChanged*(self: gen_qdrag_types.QDrag, slot: QDragtargetChangedSlot) =
  var tmp = new QDragtargetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_connect_targetChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDrag_targetChanged, miqt_exec_callback_cQDrag_targetChanged_release)

proc tr*(_: type gen_qdrag_types.QDrag, s: cstring, c: cstring): string =
  let v_ms = fcQDrag_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdrag_types.QDrag, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDrag_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec*(self: gen_qdrag_types.QDrag, supportedActions: cint): cint =
  cint(fcQDrag_exec1(self.h, cint(supportedActions)))

type QDragmetaObjectProc* = proc(self: QDrag): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDragmetacastProc* = proc(self: QDrag, param1: cstring): pointer {.raises: [], gcsafe.}
type QDragmetacallProc* = proc(self: QDrag, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDrageventProc* = proc(self: QDrag, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDrageventFilterProc* = proc(self: QDrag, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDragtimerEventProc* = proc(self: QDrag, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDragchildEventProc* = proc(self: QDrag, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDragcustomEventProc* = proc(self: QDrag, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDragconnectNotifyProc* = proc(self: QDrag, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDragdisconnectNotifyProc* = proc(self: QDrag, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDragVTable* {.inheritable, pure.} = object
  vtbl: cQDragVTable
  metaObject*: QDragmetaObjectProc
  metacast*: QDragmetacastProc
  metacall*: QDragmetacallProc
  event*: QDrageventProc
  eventFilter*: QDrageventFilterProc
  timerEvent*: QDragtimerEventProc
  childEvent*: QDragchildEventProc
  customEvent*: QDragcustomEventProc
  connectNotify*: QDragconnectNotifyProc
  disconnectNotify*: QDragdisconnectNotifyProc
proc QDragmetaObject*(self: gen_qdrag_types.QDrag, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDrag_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQDrag_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDragmetacast*(self: gen_qdrag_types.QDrag, param1: cstring): pointer =
  fcQDrag_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDrag_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDragmetacall*(self: gen_qdrag_types.QDrag, param1: cint, param2: cint, param3: pointer): cint =
  fcQDrag_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDrag_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDragevent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QEvent): bool =
  fcQDrag_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDrag_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDrageventFilter*(self: gen_qdrag_types.QDrag, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDrag_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDrag_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDragtimerEvent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDrag_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDrag_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDragchildEvent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDrag_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDrag_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDragcustomEvent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QEvent): void =
  fcQDrag_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDrag_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDragconnectNotify*(self: gen_qdrag_types.QDrag, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDrag_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDrag_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDragdisconnectNotify*(self: gen_qdrag_types.QDrag, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDrag_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDrag_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDragVTable](vtbl)
  let self = QDrag(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDrag* {.inheritable.} = ref object of QDrag
  vtbl*: cQDragVTable
method metaObject*(self: VirtualQDrag, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDragmetaObject(self[])
proc miqt_exec_method_cQDrag_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDrag, param1: cstring): pointer {.base.} =
  QDragmetacast(self[], param1)
proc miqt_exec_method_cQDrag_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDrag, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDragmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQDrag_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQDrag, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDragevent(self[], event)
proc miqt_exec_method_cQDrag_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQDrag, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDrageventFilter(self[], watched, event)
proc miqt_exec_method_cQDrag_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQDrag, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDragtimerEvent(self[], event)
proc miqt_exec_method_cQDrag_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQDrag, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDragchildEvent(self[], event)
proc miqt_exec_method_cQDrag_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQDrag, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDragcustomEvent(self[], event)
proc miqt_exec_method_cQDrag_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQDrag, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDragconnectNotify(self[], signal)
proc miqt_exec_method_cQDrag_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDrag, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDragdisconnectNotify(self[], signal)
proc miqt_exec_method_cQDrag_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQDrag](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qdrag_types.QDrag, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDrag_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdrag_types.QDrag, ): cint =
  fcQDrag_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdrag_types.QDrag, signal: cstring): cint =
  fcQDrag_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdrag_types.QDrag, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDrag_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdrag_types.QDrag,
    dragSource: gen_qobject_types.QObject,
    vtbl: ref QDragVTable = nil): gen_qdrag_types.QDrag =
  let vtbl = if vtbl == nil: new QDragVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQDragVTable, _: ptr cQDrag) {.cdecl.} =
    let vtbl = cast[ref QDragVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDrag_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDrag_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDrag_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDrag_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDrag_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDrag_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDrag_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDrag_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDrag_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDrag_disconnectNotify
  gen_qdrag_types.QDrag(h: fcQDrag_new(addr(vtbl[].vtbl), dragSource.h), owned: true)

proc create*(T: type gen_qdrag_types.QDrag,
    dragSource: gen_qobject_types.QObject,
    vtbl: VirtualQDrag) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQDragVTable, _: ptr cQDrag) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQDrag()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQDrag, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQDrag_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQDrag_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQDrag_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQDrag_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQDrag_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQDrag_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQDrag_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQDrag_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQDrag_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQDrag_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQDrag_new(addr(vtbl[].vtbl), dragSource.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qdrag_types.QDrag): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDrag_staticMetaObject())
