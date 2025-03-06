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
{.compile("gen_qshortcut.cpp", cflags).}


import ./gen_qshortcut_types
export gen_qshortcut_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtGui/gen_qkeysequence_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qkeysequence_types,
  gen_qwidget_types

type cQShortcut*{.exportc: "QShortcut", incompleteStruct.} = object

proc fcQShortcut_new(parent: pointer): ptr cQShortcut {.importc: "QShortcut_new".}
proc fcQShortcut_new2(key: pointer, parent: pointer): ptr cQShortcut {.importc: "QShortcut_new2".}
proc fcQShortcut_new3(key: pointer, parent: pointer, member: cstring): ptr cQShortcut {.importc: "QShortcut_new3".}
proc fcQShortcut_new4(key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring): ptr cQShortcut {.importc: "QShortcut_new4".}
proc fcQShortcut_new5(key: pointer, parent: pointer, member: cstring, ambiguousMember: cstring, shortcutContext: cint): ptr cQShortcut {.importc: "QShortcut_new5".}
proc fcQShortcut_metaObject(self: pointer, ): pointer {.importc: "QShortcut_metaObject".}
proc fcQShortcut_metacast(self: pointer, param1: cstring): pointer {.importc: "QShortcut_metacast".}
proc fcQShortcut_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QShortcut_metacall".}
proc fcQShortcut_tr(s: cstring): struct_miqt_string {.importc: "QShortcut_tr".}
proc fcQShortcut_trUtf8(s: cstring): struct_miqt_string {.importc: "QShortcut_trUtf8".}
proc fcQShortcut_setKey(self: pointer, key: pointer): void {.importc: "QShortcut_setKey".}
proc fcQShortcut_key(self: pointer, ): pointer {.importc: "QShortcut_key".}
proc fcQShortcut_setEnabled(self: pointer, enable: bool): void {.importc: "QShortcut_setEnabled".}
proc fcQShortcut_isEnabled(self: pointer, ): bool {.importc: "QShortcut_isEnabled".}
proc fcQShortcut_setContext(self: pointer, context: cint): void {.importc: "QShortcut_setContext".}
proc fcQShortcut_context(self: pointer, ): cint {.importc: "QShortcut_context".}
proc fcQShortcut_setWhatsThis(self: pointer, text: struct_miqt_string): void {.importc: "QShortcut_setWhatsThis".}
proc fcQShortcut_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QShortcut_whatsThis".}
proc fcQShortcut_setAutoRepeat(self: pointer, on: bool): void {.importc: "QShortcut_setAutoRepeat".}
proc fcQShortcut_autoRepeat(self: pointer, ): bool {.importc: "QShortcut_autoRepeat".}
proc fcQShortcut_id(self: pointer, ): cint {.importc: "QShortcut_id".}
proc fcQShortcut_parentWidget(self: pointer, ): pointer {.importc: "QShortcut_parentWidget".}
proc fcQShortcut_activated(self: pointer, ): void {.importc: "QShortcut_activated".}
proc fcQShortcut_connect_activated(self: pointer, slot: int) {.importc: "QShortcut_connect_activated".}
proc fcQShortcut_activatedAmbiguously(self: pointer, ): void {.importc: "QShortcut_activatedAmbiguously".}
proc fcQShortcut_connect_activatedAmbiguously(self: pointer, slot: int) {.importc: "QShortcut_connect_activatedAmbiguously".}
proc fcQShortcut_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QShortcut_tr2".}
proc fcQShortcut_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QShortcut_tr3".}
proc fcQShortcut_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QShortcut_trUtf82".}
proc fcQShortcut_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QShortcut_trUtf83".}
proc fQShortcut_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QShortcut_virtualbase_metaObject".}
proc fcQShortcut_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_metaObject".}
proc fQShortcut_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QShortcut_virtualbase_metacast".}
proc fcQShortcut_override_virtual_metacast(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_metacast".}
proc fQShortcut_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QShortcut_virtualbase_metacall".}
proc fcQShortcut_override_virtual_metacall(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_metacall".}
proc fQShortcut_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QShortcut_virtualbase_event".}
proc fcQShortcut_override_virtual_event(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_event".}
proc fQShortcut_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QShortcut_virtualbase_eventFilter".}
proc fcQShortcut_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_eventFilter".}
proc fQShortcut_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QShortcut_virtualbase_timerEvent".}
proc fcQShortcut_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_timerEvent".}
proc fQShortcut_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QShortcut_virtualbase_childEvent".}
proc fcQShortcut_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_childEvent".}
proc fQShortcut_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QShortcut_virtualbase_customEvent".}
proc fcQShortcut_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_customEvent".}
proc fQShortcut_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QShortcut_virtualbase_connectNotify".}
proc fcQShortcut_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_connectNotify".}
proc fQShortcut_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QShortcut_virtualbase_disconnectNotify".}
proc fcQShortcut_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QShortcut_override_virtual_disconnectNotify".}
proc fcQShortcut_staticMetaObject(): pointer {.importc: "QShortcut_staticMetaObject".}
proc fcQShortcut_delete(self: pointer) {.importc: "QShortcut_delete".}


func init*(T: type gen_qshortcut_types.QShortcut, h: ptr cQShortcut): gen_qshortcut_types.QShortcut =
  T(h: h)
proc create*(T: type gen_qshortcut_types.QShortcut, parent: gen_qwidget_types.QWidget): gen_qshortcut_types.QShortcut =
  gen_qshortcut_types.QShortcut.init(fcQShortcut_new(parent.h))

proc create*(T: type gen_qshortcut_types.QShortcut, key: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget): gen_qshortcut_types.QShortcut =
  gen_qshortcut_types.QShortcut.init(fcQShortcut_new2(key.h, parent.h))

proc create*(T: type gen_qshortcut_types.QShortcut, key: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget, member: cstring): gen_qshortcut_types.QShortcut =
  gen_qshortcut_types.QShortcut.init(fcQShortcut_new3(key.h, parent.h, member))

proc create*(T: type gen_qshortcut_types.QShortcut, key: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget, member: cstring, ambiguousMember: cstring): gen_qshortcut_types.QShortcut =
  gen_qshortcut_types.QShortcut.init(fcQShortcut_new4(key.h, parent.h, member, ambiguousMember))

proc create*(T: type gen_qshortcut_types.QShortcut, key: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget, member: cstring, ambiguousMember: cstring, shortcutContext: cint): gen_qshortcut_types.QShortcut =
  gen_qshortcut_types.QShortcut.init(fcQShortcut_new5(key.h, parent.h, member, ambiguousMember, cint(shortcutContext)))

proc metaObject*(self: gen_qshortcut_types.QShortcut, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_metaObject(self.h))

proc metacast*(self: gen_qshortcut_types.QShortcut, param1: cstring): pointer =
  fcQShortcut_metacast(self.h, param1)

proc metacall*(self: gen_qshortcut_types.QShortcut, param1: cint, param2: cint, param3: pointer): cint =
  fcQShortcut_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring): string =
  let v_ms = fcQShortcut_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qshortcut_types.QShortcut, s: cstring): string =
  let v_ms = fcQShortcut_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: gen_qshortcut_types.QShortcut, key: gen_qkeysequence_types.QKeySequence): void =
  fcQShortcut_setKey(self.h, key.h)

proc key*(self: gen_qshortcut_types.QShortcut, ): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQShortcut_key(self.h))

proc setEnabled*(self: gen_qshortcut_types.QShortcut, enable: bool): void =
  fcQShortcut_setEnabled(self.h, enable)

proc isEnabled*(self: gen_qshortcut_types.QShortcut, ): bool =
  fcQShortcut_isEnabled(self.h)

proc setContext*(self: gen_qshortcut_types.QShortcut, context: cint): void =
  fcQShortcut_setContext(self.h, cint(context))

proc context*(self: gen_qshortcut_types.QShortcut, ): cint =
  cint(fcQShortcut_context(self.h))

proc setWhatsThis*(self: gen_qshortcut_types.QShortcut, text: string): void =
  fcQShortcut_setWhatsThis(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc whatsThis*(self: gen_qshortcut_types.QShortcut, ): string =
  let v_ms = fcQShortcut_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAutoRepeat*(self: gen_qshortcut_types.QShortcut, on: bool): void =
  fcQShortcut_setAutoRepeat(self.h, on)

proc autoRepeat*(self: gen_qshortcut_types.QShortcut, ): bool =
  fcQShortcut_autoRepeat(self.h)

proc id*(self: gen_qshortcut_types.QShortcut, ): cint =
  fcQShortcut_id(self.h)

proc parentWidget*(self: gen_qshortcut_types.QShortcut, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQShortcut_parentWidget(self.h))

proc activated*(self: gen_qshortcut_types.QShortcut, ): void =
  fcQShortcut_activated(self.h)

type QShortcutactivatedSlot* = proc()
proc miqt_exec_callback_QShortcut_activated(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QShortcutactivatedSlot](cast[pointer](slot))
  nimfunc[]()

proc onactivated*(self: gen_qshortcut_types.QShortcut, slot: QShortcutactivatedSlot) =
  var tmp = new QShortcutactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_connect_activated(self.h, cast[int](addr tmp[]))

proc activatedAmbiguously*(self: gen_qshortcut_types.QShortcut, ): void =
  fcQShortcut_activatedAmbiguously(self.h)

type QShortcutactivatedAmbiguouslySlot* = proc()
proc miqt_exec_callback_QShortcut_activatedAmbiguously(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QShortcutactivatedAmbiguouslySlot](cast[pointer](slot))
  nimfunc[]()

proc onactivatedAmbiguously*(self: gen_qshortcut_types.QShortcut, slot: QShortcutactivatedAmbiguouslySlot) =
  var tmp = new QShortcutactivatedAmbiguouslySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_connect_activatedAmbiguously(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring): string =
  let v_ms = fcQShortcut_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQShortcut_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring): string =
  let v_ms = fcQShortcut_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qshortcut_types.QShortcut, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQShortcut_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QShortcutmetaObject*(self: gen_qshortcut_types.QShortcut, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQShortcut_virtualbase_metaObject(self.h))

type QShortcutmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qshortcut_types.QShortcut, slot: QShortcutmetaObjectProc) =
  # TODO check subclass
  var tmp = new QShortcutmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_metaObject(self: ptr cQShortcut, slot: int): pointer {.exportc: "miqt_exec_callback_QShortcut_metaObject ".} =
  var nimfunc = cast[ptr QShortcutmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QShortcutmetacast*(self: gen_qshortcut_types.QShortcut, param1: cstring): pointer =
  fQShortcut_virtualbase_metacast(self.h, param1)

type QShortcutmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qshortcut_types.QShortcut, slot: QShortcutmetacastProc) =
  # TODO check subclass
  var tmp = new QShortcutmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_metacast(self: ptr cQShortcut, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QShortcut_metacast ".} =
  var nimfunc = cast[ptr QShortcutmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QShortcutmetacall*(self: gen_qshortcut_types.QShortcut, param1: cint, param2: cint, param3: pointer): cint =
  fQShortcut_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QShortcutmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qshortcut_types.QShortcut, slot: QShortcutmetacallProc) =
  # TODO check subclass
  var tmp = new QShortcutmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_metacall(self: ptr cQShortcut, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QShortcut_metacall ".} =
  var nimfunc = cast[ptr QShortcutmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QShortcutevent*(self: gen_qshortcut_types.QShortcut, e: gen_qcoreevent_types.QEvent): bool =
  fQShortcut_virtualbase_event(self.h, e.h)

type QShortcuteventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qshortcut_types.QShortcut, slot: QShortcuteventProc) =
  # TODO check subclass
  var tmp = new QShortcuteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_event(self: ptr cQShortcut, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QShortcut_event ".} =
  var nimfunc = cast[ptr QShortcuteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QShortcuteventFilter*(self: gen_qshortcut_types.QShortcut, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQShortcut_virtualbase_eventFilter(self.h, watched.h, event.h)

type QShortcuteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qshortcut_types.QShortcut, slot: QShortcuteventFilterProc) =
  # TODO check subclass
  var tmp = new QShortcuteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_eventFilter(self: ptr cQShortcut, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QShortcut_eventFilter ".} =
  var nimfunc = cast[ptr QShortcuteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QShortcuttimerEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QTimerEvent): void =
  fQShortcut_virtualbase_timerEvent(self.h, event.h)

type QShortcuttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qshortcut_types.QShortcut, slot: QShortcuttimerEventProc) =
  # TODO check subclass
  var tmp = new QShortcuttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_timerEvent(self: ptr cQShortcut, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QShortcut_timerEvent ".} =
  var nimfunc = cast[ptr QShortcuttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QShortcutchildEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QChildEvent): void =
  fQShortcut_virtualbase_childEvent(self.h, event.h)

type QShortcutchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qshortcut_types.QShortcut, slot: QShortcutchildEventProc) =
  # TODO check subclass
  var tmp = new QShortcutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_childEvent(self: ptr cQShortcut, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QShortcut_childEvent ".} =
  var nimfunc = cast[ptr QShortcutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QShortcutcustomEvent*(self: gen_qshortcut_types.QShortcut, event: gen_qcoreevent_types.QEvent): void =
  fQShortcut_virtualbase_customEvent(self.h, event.h)

type QShortcutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qshortcut_types.QShortcut, slot: QShortcutcustomEventProc) =
  # TODO check subclass
  var tmp = new QShortcutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_customEvent(self: ptr cQShortcut, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QShortcut_customEvent ".} =
  var nimfunc = cast[ptr QShortcutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QShortcutconnectNotify*(self: gen_qshortcut_types.QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQShortcut_virtualbase_connectNotify(self.h, signal.h)

type QShortcutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qshortcut_types.QShortcut, slot: QShortcutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QShortcutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_connectNotify(self: ptr cQShortcut, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QShortcut_connectNotify ".} =
  var nimfunc = cast[ptr QShortcutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QShortcutdisconnectNotify*(self: gen_qshortcut_types.QShortcut, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQShortcut_virtualbase_disconnectNotify(self.h, signal.h)

type QShortcutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qshortcut_types.QShortcut, slot: QShortcutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QShortcutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQShortcut_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QShortcut_disconnectNotify(self: ptr cQShortcut, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QShortcut_disconnectNotify ".} =
  var nimfunc = cast[ptr QShortcutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qshortcut_types.QShortcut): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQShortcut_staticMetaObject())
proc delete*(self: gen_qshortcut_types.QShortcut) =
  fcQShortcut_delete(self.h)
