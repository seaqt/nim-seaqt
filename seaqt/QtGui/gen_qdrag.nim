import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
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

proc fcQDrag_new(dragSource: pointer): ptr cQDrag {.importc: "QDrag_new".}
proc fcQDrag_metaObject(self: pointer, ): pointer {.importc: "QDrag_metaObject".}
proc fcQDrag_metacast(self: pointer, param1: cstring): pointer {.importc: "QDrag_metacast".}
proc fcQDrag_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDrag_metacall".}
proc fcQDrag_tr(s: cstring): struct_miqt_string {.importc: "QDrag_tr".}
proc fcQDrag_trUtf8(s: cstring): struct_miqt_string {.importc: "QDrag_trUtf8".}
proc fcQDrag_setMimeData(self: pointer, data: pointer): void {.importc: "QDrag_setMimeData".}
proc fcQDrag_mimeData(self: pointer, ): pointer {.importc: "QDrag_mimeData".}
proc fcQDrag_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QDrag_setPixmap".}
proc fcQDrag_pixmap(self: pointer, ): pointer {.importc: "QDrag_pixmap".}
proc fcQDrag_setHotSpot(self: pointer, hotspot: pointer): void {.importc: "QDrag_setHotSpot".}
proc fcQDrag_hotSpot(self: pointer, ): pointer {.importc: "QDrag_hotSpot".}
proc fcQDrag_source(self: pointer, ): pointer {.importc: "QDrag_source".}
proc fcQDrag_target(self: pointer, ): pointer {.importc: "QDrag_target".}
proc fcQDrag_start(self: pointer, ): cint {.importc: "QDrag_start".}
proc fcQDrag_exec(self: pointer, ): cint {.importc: "QDrag_exec".}
proc fcQDrag_exec2(self: pointer, supportedActions: cint, defaultAction: cint): cint {.importc: "QDrag_exec2".}
proc fcQDrag_setDragCursor(self: pointer, cursor: pointer, action: cint): void {.importc: "QDrag_setDragCursor".}
proc fcQDrag_dragCursor(self: pointer, action: cint): pointer {.importc: "QDrag_dragCursor".}
proc fcQDrag_supportedActions(self: pointer, ): cint {.importc: "QDrag_supportedActions".}
proc fcQDrag_defaultAction(self: pointer, ): cint {.importc: "QDrag_defaultAction".}
proc fcQDrag_cancel(): void {.importc: "QDrag_cancel".}
proc fcQDrag_actionChanged(self: pointer, action: cint): void {.importc: "QDrag_actionChanged".}
proc fcQDrag_connect_actionChanged(self: pointer, slot: int) {.importc: "QDrag_connect_actionChanged".}
proc fcQDrag_targetChanged(self: pointer, newTarget: pointer): void {.importc: "QDrag_targetChanged".}
proc fcQDrag_connect_targetChanged(self: pointer, slot: int) {.importc: "QDrag_connect_targetChanged".}
proc fcQDrag_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDrag_tr2".}
proc fcQDrag_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDrag_tr3".}
proc fcQDrag_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDrag_trUtf82".}
proc fcQDrag_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDrag_trUtf83".}
proc fcQDrag_start1(self: pointer, supportedActions: cint): cint {.importc: "QDrag_start1".}
proc fcQDrag_exec1(self: pointer, supportedActions: cint): cint {.importc: "QDrag_exec1".}
proc fQDrag_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDrag_virtualbase_metaObject".}
proc fcQDrag_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDrag_override_virtual_metaObject".}
proc fQDrag_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDrag_virtualbase_metacast".}
proc fcQDrag_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDrag_override_virtual_metacast".}
proc fQDrag_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDrag_virtualbase_metacall".}
proc fcQDrag_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDrag_override_virtual_metacall".}
proc fQDrag_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDrag_virtualbase_event".}
proc fcQDrag_override_virtual_event(self: pointer, slot: int) {.importc: "QDrag_override_virtual_event".}
proc fQDrag_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDrag_virtualbase_eventFilter".}
proc fcQDrag_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDrag_override_virtual_eventFilter".}
proc fQDrag_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDrag_virtualbase_timerEvent".}
proc fcQDrag_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDrag_override_virtual_timerEvent".}
proc fQDrag_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDrag_virtualbase_childEvent".}
proc fcQDrag_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDrag_override_virtual_childEvent".}
proc fQDrag_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDrag_virtualbase_customEvent".}
proc fcQDrag_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDrag_override_virtual_customEvent".}
proc fQDrag_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDrag_virtualbase_connectNotify".}
proc fcQDrag_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDrag_override_virtual_connectNotify".}
proc fQDrag_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDrag_virtualbase_disconnectNotify".}
proc fcQDrag_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDrag_override_virtual_disconnectNotify".}
proc fcQDrag_staticMetaObject(): pointer {.importc: "QDrag_staticMetaObject".}
proc fcQDrag_delete(self: pointer) {.importc: "QDrag_delete".}


func init*(T: type gen_qdrag_types.QDrag, h: ptr cQDrag): gen_qdrag_types.QDrag =
  T(h: h)
proc create*(T: type gen_qdrag_types.QDrag, dragSource: gen_qobject_types.QObject): gen_qdrag_types.QDrag =
  gen_qdrag_types.QDrag.init(fcQDrag_new(dragSource.h))

proc metaObject*(self: gen_qdrag_types.QDrag, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDrag_metaObject(self.h))

proc metacast*(self: gen_qdrag_types.QDrag, param1: cstring): pointer =
  fcQDrag_metacast(self.h, param1)

proc metacall*(self: gen_qdrag_types.QDrag, param1: cint, param2: cint, param3: pointer): cint =
  fcQDrag_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdrag_types.QDrag, s: cstring): string =
  let v_ms = fcQDrag_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdrag_types.QDrag, s: cstring): string =
  let v_ms = fcQDrag_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMimeData*(self: gen_qdrag_types.QDrag, data: gen_qmimedata_types.QMimeData): void =
  fcQDrag_setMimeData(self.h, data.h)

proc mimeData*(self: gen_qdrag_types.QDrag, ): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQDrag_mimeData(self.h))

proc setPixmap*(self: gen_qdrag_types.QDrag, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQDrag_setPixmap(self.h, pixmap.h)

proc pixmap*(self: gen_qdrag_types.QDrag, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQDrag_pixmap(self.h))

proc setHotSpot*(self: gen_qdrag_types.QDrag, hotspot: gen_qpoint_types.QPoint): void =
  fcQDrag_setHotSpot(self.h, hotspot.h)

proc hotSpot*(self: gen_qdrag_types.QDrag, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQDrag_hotSpot(self.h))

proc source*(self: gen_qdrag_types.QDrag, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDrag_source(self.h))

proc target*(self: gen_qdrag_types.QDrag, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDrag_target(self.h))

proc start*(self: gen_qdrag_types.QDrag, ): cint =
  cint(fcQDrag_start(self.h))

proc exec*(self: gen_qdrag_types.QDrag, ): cint =
  cint(fcQDrag_exec(self.h))

proc exec*(self: gen_qdrag_types.QDrag, supportedActions: cint, defaultAction: cint): cint =
  cint(fcQDrag_exec2(self.h, cint(supportedActions), cint(defaultAction)))

proc setDragCursor*(self: gen_qdrag_types.QDrag, cursor: gen_qpixmap_types.QPixmap, action: cint): void =
  fcQDrag_setDragCursor(self.h, cursor.h, cint(action))

proc dragCursor*(self: gen_qdrag_types.QDrag, action: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQDrag_dragCursor(self.h, cint(action)))

proc supportedActions*(self: gen_qdrag_types.QDrag, ): cint =
  cint(fcQDrag_supportedActions(self.h))

proc defaultAction*(self: gen_qdrag_types.QDrag, ): cint =
  cint(fcQDrag_defaultAction(self.h))

proc cancel*(_: type gen_qdrag_types.QDrag, ): void =
  fcQDrag_cancel()

proc actionChanged*(self: gen_qdrag_types.QDrag, action: cint): void =
  fcQDrag_actionChanged(self.h, cint(action))

type QDragactionChangedSlot* = proc(action: cint)
proc miqt_exec_callback_QDrag_actionChanged(slot: int, action: cint) {.exportc.} =
  let nimfunc = cast[ptr QDragactionChangedSlot](cast[pointer](slot))
  let slotval1 = cint(action)

  nimfunc[](slotval1)

proc onactionChanged*(self: gen_qdrag_types.QDrag, slot: QDragactionChangedSlot) =
  var tmp = new QDragactionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_connect_actionChanged(self.h, cast[int](addr tmp[]))

proc targetChanged*(self: gen_qdrag_types.QDrag, newTarget: gen_qobject_types.QObject): void =
  fcQDrag_targetChanged(self.h, newTarget.h)

type QDragtargetChangedSlot* = proc(newTarget: gen_qobject_types.QObject)
proc miqt_exec_callback_QDrag_targetChanged(slot: int, newTarget: pointer) {.exportc.} =
  let nimfunc = cast[ptr QDragtargetChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: newTarget)

  nimfunc[](slotval1)

proc ontargetChanged*(self: gen_qdrag_types.QDrag, slot: QDragtargetChangedSlot) =
  var tmp = new QDragtargetChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_connect_targetChanged(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qdrag_types.QDrag, s: cstring, c: cstring): string =
  let v_ms = fcQDrag_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdrag_types.QDrag, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDrag_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qdrag_types.QDrag, supportedActions: cint): cint =
  cint(fcQDrag_start1(self.h, cint(supportedActions)))

proc exec*(self: gen_qdrag_types.QDrag, supportedActions: cint): cint =
  cint(fcQDrag_exec1(self.h, cint(supportedActions)))

proc QDragmetaObject*(self: gen_qdrag_types.QDrag, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQDrag_virtualbase_metaObject(self.h))

type QDragmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qdrag_types.QDrag, slot: QDragmetaObjectProc) =
  # TODO check subclass
  var tmp = new QDragmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_metaObject(self: ptr cQDrag, slot: int): pointer {.exportc: "miqt_exec_callback_QDrag_metaObject ".} =
  var nimfunc = cast[ptr QDragmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDragmetacast*(self: gen_qdrag_types.QDrag, param1: cstring): pointer =
  fQDrag_virtualbase_metacast(self.h, param1)

type QDragmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdrag_types.QDrag, slot: QDragmetacastProc) =
  # TODO check subclass
  var tmp = new QDragmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_metacast(self: ptr cQDrag, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDrag_metacast ".} =
  var nimfunc = cast[ptr QDragmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDragmetacall*(self: gen_qdrag_types.QDrag, param1: cint, param2: cint, param3: pointer): cint =
  fQDrag_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDragmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdrag_types.QDrag, slot: QDragmetacallProc) =
  # TODO check subclass
  var tmp = new QDragmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_metacall(self: ptr cQDrag, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDrag_metacall ".} =
  var nimfunc = cast[ptr QDragmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDragevent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QEvent): bool =
  fQDrag_virtualbase_event(self.h, event.h)

type QDrageventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdrag_types.QDrag, slot: QDrageventProc) =
  # TODO check subclass
  var tmp = new QDrageventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_event(self: ptr cQDrag, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDrag_event ".} =
  var nimfunc = cast[ptr QDrageventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDrageventFilter*(self: gen_qdrag_types.QDrag, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDrag_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDrageventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdrag_types.QDrag, slot: QDrageventFilterProc) =
  # TODO check subclass
  var tmp = new QDrageventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_eventFilter(self: ptr cQDrag, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDrag_eventFilter ".} =
  var nimfunc = cast[ptr QDrageventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDragtimerEvent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDrag_virtualbase_timerEvent(self.h, event.h)

type QDragtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdrag_types.QDrag, slot: QDragtimerEventProc) =
  # TODO check subclass
  var tmp = new QDragtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_timerEvent(self: ptr cQDrag, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDrag_timerEvent ".} =
  var nimfunc = cast[ptr QDragtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDragchildEvent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QChildEvent): void =
  fQDrag_virtualbase_childEvent(self.h, event.h)

type QDragchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdrag_types.QDrag, slot: QDragchildEventProc) =
  # TODO check subclass
  var tmp = new QDragchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_childEvent(self: ptr cQDrag, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDrag_childEvent ".} =
  var nimfunc = cast[ptr QDragchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDragcustomEvent*(self: gen_qdrag_types.QDrag, event: gen_qcoreevent_types.QEvent): void =
  fQDrag_virtualbase_customEvent(self.h, event.h)

type QDragcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdrag_types.QDrag, slot: QDragcustomEventProc) =
  # TODO check subclass
  var tmp = new QDragcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_customEvent(self: ptr cQDrag, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDrag_customEvent ".} =
  var nimfunc = cast[ptr QDragcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDragconnectNotify*(self: gen_qdrag_types.QDrag, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDrag_virtualbase_connectNotify(self.h, signal.h)

type QDragconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdrag_types.QDrag, slot: QDragconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDragconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_connectNotify(self: ptr cQDrag, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDrag_connectNotify ".} =
  var nimfunc = cast[ptr QDragconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDragdisconnectNotify*(self: gen_qdrag_types.QDrag, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDrag_virtualbase_disconnectNotify(self.h, signal.h)

type QDragdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdrag_types.QDrag, slot: QDragdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDragdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDrag_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDrag_disconnectNotify(self: ptr cQDrag, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDrag_disconnectNotify ".} =
  var nimfunc = cast[ptr QDragdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdrag_types.QDrag): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDrag_staticMetaObject())
proc delete*(self: gen_qdrag_types.QDrag) =
  fcQDrag_delete(self.h)
