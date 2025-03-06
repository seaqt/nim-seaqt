import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qwidgetaction.cpp", cflags).}


import ./gen_qwidgetaction_types
export gen_qwidgetaction_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaction,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qaction,
  gen_qwidget_types

type cQWidgetAction*{.exportc: "QWidgetAction", incompleteStruct.} = object

proc fcQWidgetAction_new(parent: pointer): ptr cQWidgetAction {.importc: "QWidgetAction_new".}
proc fcQWidgetAction_metaObject(self: pointer, ): pointer {.importc: "QWidgetAction_metaObject".}
proc fcQWidgetAction_metacast(self: pointer, param1: cstring): pointer {.importc: "QWidgetAction_metacast".}
proc fcQWidgetAction_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWidgetAction_metacall".}
proc fcQWidgetAction_tr(s: cstring): struct_miqt_string {.importc: "QWidgetAction_tr".}
proc fcQWidgetAction_trUtf8(s: cstring): struct_miqt_string {.importc: "QWidgetAction_trUtf8".}
proc fcQWidgetAction_setDefaultWidget(self: pointer, w: pointer): void {.importc: "QWidgetAction_setDefaultWidget".}
proc fcQWidgetAction_defaultWidget(self: pointer, ): pointer {.importc: "QWidgetAction_defaultWidget".}
proc fcQWidgetAction_requestWidget(self: pointer, parent: pointer): pointer {.importc: "QWidgetAction_requestWidget".}
proc fcQWidgetAction_releaseWidget(self: pointer, widget: pointer): void {.importc: "QWidgetAction_releaseWidget".}
proc fcQWidgetAction_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidgetAction_tr2".}
proc fcQWidgetAction_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidgetAction_tr3".}
proc fcQWidgetAction_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWidgetAction_trUtf82".}
proc fcQWidgetAction_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWidgetAction_trUtf83".}
proc fQWidgetAction_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWidgetAction_virtualbase_metaObject".}
proc fcQWidgetAction_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_metaObject".}
proc fQWidgetAction_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWidgetAction_virtualbase_metacast".}
proc fcQWidgetAction_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_metacast".}
proc fQWidgetAction_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWidgetAction_virtualbase_metacall".}
proc fcQWidgetAction_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_metacall".}
proc fQWidgetAction_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QWidgetAction_virtualbase_event".}
proc fcQWidgetAction_override_virtual_event(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_event".}
proc fQWidgetAction_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QWidgetAction_virtualbase_eventFilter".}
proc fcQWidgetAction_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_eventFilter".}
proc fQWidgetAction_virtualbase_createWidget(self: pointer, parent: pointer): pointer{.importc: "QWidgetAction_virtualbase_createWidget".}
proc fcQWidgetAction_override_virtual_createWidget(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_createWidget".}
proc fQWidgetAction_virtualbase_deleteWidget(self: pointer, widget: pointer): void{.importc: "QWidgetAction_virtualbase_deleteWidget".}
proc fcQWidgetAction_override_virtual_deleteWidget(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_deleteWidget".}
proc fQWidgetAction_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWidgetAction_virtualbase_timerEvent".}
proc fcQWidgetAction_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_timerEvent".}
proc fQWidgetAction_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWidgetAction_virtualbase_childEvent".}
proc fcQWidgetAction_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_childEvent".}
proc fQWidgetAction_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWidgetAction_virtualbase_customEvent".}
proc fcQWidgetAction_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_customEvent".}
proc fQWidgetAction_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWidgetAction_virtualbase_connectNotify".}
proc fcQWidgetAction_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_connectNotify".}
proc fQWidgetAction_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWidgetAction_virtualbase_disconnectNotify".}
proc fcQWidgetAction_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWidgetAction_override_virtual_disconnectNotify".}
proc fcQWidgetAction_staticMetaObject(): pointer {.importc: "QWidgetAction_staticMetaObject".}
proc fcQWidgetAction_delete(self: pointer) {.importc: "QWidgetAction_delete".}


func init*(T: type gen_qwidgetaction_types.QWidgetAction, h: ptr cQWidgetAction): gen_qwidgetaction_types.QWidgetAction =
  T(h: h)
proc create*(T: type gen_qwidgetaction_types.QWidgetAction, parent: gen_qobject_types.QObject): gen_qwidgetaction_types.QWidgetAction =
  gen_qwidgetaction_types.QWidgetAction.init(fcQWidgetAction_new(parent.h))

proc metaObject*(self: gen_qwidgetaction_types.QWidgetAction, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidgetAction_metaObject(self.h))

proc metacast*(self: gen_qwidgetaction_types.QWidgetAction, param1: cstring): pointer =
  fcQWidgetAction_metacast(self.h, param1)

proc metacall*(self: gen_qwidgetaction_types.QWidgetAction, param1: cint, param2: cint, param3: pointer): cint =
  fcQWidgetAction_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwidgetaction_types.QWidgetAction, s: cstring): string =
  let v_ms = fcQWidgetAction_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwidgetaction_types.QWidgetAction, s: cstring): string =
  let v_ms = fcQWidgetAction_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultWidget*(self: gen_qwidgetaction_types.QWidgetAction, w: gen_qwidget_types.QWidget): void =
  fcQWidgetAction_setDefaultWidget(self.h, w.h)

proc defaultWidget*(self: gen_qwidgetaction_types.QWidgetAction, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetAction_defaultWidget(self.h))

proc requestWidget*(self: gen_qwidgetaction_types.QWidgetAction, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetAction_requestWidget(self.h, parent.h))

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

proc trUtf8*(_: type gen_qwidgetaction_types.QWidgetAction, s: cstring, c: cstring): string =
  let v_ms = fcQWidgetAction_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwidgetaction_types.QWidgetAction, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWidgetAction_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWidgetActionmetaObject*(self: gen_qwidgetaction_types.QWidgetAction, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQWidgetAction_virtualbase_metaObject(self.h))

type QWidgetActionmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActionmetaObjectProc) =
  # TODO check subclass
  var tmp = new QWidgetActionmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_metaObject(self: ptr cQWidgetAction, slot: int): pointer {.exportc: "miqt_exec_callback_QWidgetAction_metaObject ".} =
  var nimfunc = cast[ptr QWidgetActionmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWidgetActionmetacast*(self: gen_qwidgetaction_types.QWidgetAction, param1: cstring): pointer =
  fQWidgetAction_virtualbase_metacast(self.h, param1)

type QWidgetActionmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActionmetacastProc) =
  # TODO check subclass
  var tmp = new QWidgetActionmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_metacast(self: ptr cQWidgetAction, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWidgetAction_metacast ".} =
  var nimfunc = cast[ptr QWidgetActionmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetActionmetacall*(self: gen_qwidgetaction_types.QWidgetAction, param1: cint, param2: cint, param3: pointer): cint =
  fQWidgetAction_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWidgetActionmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActionmetacallProc) =
  # TODO check subclass
  var tmp = new QWidgetActionmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_metacall(self: ptr cQWidgetAction, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWidgetAction_metacall ".} =
  var nimfunc = cast[ptr QWidgetActionmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWidgetActionevent*(self: gen_qwidgetaction_types.QWidgetAction, param1: gen_qcoreevent_types.QEvent): bool =
  fQWidgetAction_virtualbase_event(self.h, param1.h)

type QWidgetActioneventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActioneventProc) =
  # TODO check subclass
  var tmp = new QWidgetActioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_event(self: ptr cQWidgetAction, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QWidgetAction_event ".} =
  var nimfunc = cast[ptr QWidgetActioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWidgetActioneventFilter*(self: gen_qwidgetaction_types.QWidgetAction, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQWidgetAction_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QWidgetActioneventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActioneventFilterProc) =
  # TODO check subclass
  var tmp = new QWidgetActioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_eventFilter(self: ptr cQWidgetAction, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QWidgetAction_eventFilter ".} =
  var nimfunc = cast[ptr QWidgetActioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWidgetActioncreateWidget*(self: gen_qwidgetaction_types.QWidgetAction, parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQWidgetAction_virtualbase_createWidget(self.h, parent.h))

type QWidgetActioncreateWidgetProc* = proc(parent: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget
proc oncreateWidget*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActioncreateWidgetProc) =
  # TODO check subclass
  var tmp = new QWidgetActioncreateWidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_createWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_createWidget(self: ptr cQWidgetAction, slot: int, parent: pointer): pointer {.exportc: "miqt_exec_callback_QWidgetAction_createWidget ".} =
  var nimfunc = cast[ptr QWidgetActioncreateWidgetProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QWidgetActiondeleteWidget*(self: gen_qwidgetaction_types.QWidgetAction, widget: gen_qwidget_types.QWidget): void =
  fQWidgetAction_virtualbase_deleteWidget(self.h, widget.h)

type QWidgetActiondeleteWidgetProc* = proc(widget: gen_qwidget_types.QWidget): void
proc ondeleteWidget*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActiondeleteWidgetProc) =
  # TODO check subclass
  var tmp = new QWidgetActiondeleteWidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_deleteWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_deleteWidget(self: ptr cQWidgetAction, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_deleteWidget ".} =
  var nimfunc = cast[ptr QWidgetActiondeleteWidgetProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: widget)


  nimfunc[](slotval1)
proc QWidgetActiontimerEvent*(self: gen_qwidgetaction_types.QWidgetAction, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWidgetAction_virtualbase_timerEvent(self.h, event.h)

type QWidgetActiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActiontimerEventProc) =
  # TODO check subclass
  var tmp = new QWidgetActiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_timerEvent(self: ptr cQWidgetAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_timerEvent ".} =
  var nimfunc = cast[ptr QWidgetActiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetActionchildEvent*(self: gen_qwidgetaction_types.QWidgetAction, event: gen_qcoreevent_types.QChildEvent): void =
  fQWidgetAction_virtualbase_childEvent(self.h, event.h)

type QWidgetActionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActionchildEventProc) =
  # TODO check subclass
  var tmp = new QWidgetActionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_childEvent(self: ptr cQWidgetAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_childEvent ".} =
  var nimfunc = cast[ptr QWidgetActionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetActioncustomEvent*(self: gen_qwidgetaction_types.QWidgetAction, event: gen_qcoreevent_types.QEvent): void =
  fQWidgetAction_virtualbase_customEvent(self.h, event.h)

type QWidgetActioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActioncustomEventProc) =
  # TODO check subclass
  var tmp = new QWidgetActioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_customEvent(self: ptr cQWidgetAction, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_customEvent ".} =
  var nimfunc = cast[ptr QWidgetActioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWidgetActionconnectNotify*(self: gen_qwidgetaction_types.QWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWidgetAction_virtualbase_connectNotify(self.h, signal.h)

type QWidgetActionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWidgetActionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_connectNotify(self: ptr cQWidgetAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_connectNotify ".} =
  var nimfunc = cast[ptr QWidgetActionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWidgetActiondisconnectNotify*(self: gen_qwidgetaction_types.QWidgetAction, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWidgetAction_virtualbase_disconnectNotify(self.h, signal.h)

type QWidgetActiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwidgetaction_types.QWidgetAction, slot: QWidgetActiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWidgetActiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWidgetAction_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWidgetAction_disconnectNotify(self: ptr cQWidgetAction, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWidgetAction_disconnectNotify ".} =
  var nimfunc = cast[ptr QWidgetActiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwidgetaction_types.QWidgetAction): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWidgetAction_staticMetaObject())
proc delete*(self: gen_qwidgetaction_types.QWidgetAction) =
  fcQWidgetAction_delete(self.h)
