import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlfileselector.cpp", cflags).}


import ./gen_qqmlfileselector_types
export gen_qqmlfileselector_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qfileselector_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qqmlengine_types
export
  gen_qcoreevent_types,
  gen_qfileselector_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qqmlengine_types

type cQQmlFileSelector*{.exportc: "QQmlFileSelector", incompleteStruct.} = object

proc fcQQmlFileSelector_new(engine: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new".}
proc fcQQmlFileSelector_new2(engine: pointer, parent: pointer): ptr cQQmlFileSelector {.importc: "QQmlFileSelector_new2".}
proc fcQQmlFileSelector_metaObject(self: pointer, ): pointer {.importc: "QQmlFileSelector_metaObject".}
proc fcQQmlFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlFileSelector_metacast".}
proc fcQQmlFileSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlFileSelector_metacall".}
proc fcQQmlFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr".}
proc fcQQmlFileSelector_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlFileSelector_trUtf8".}
proc fcQQmlFileSelector_selector(self: pointer, ): pointer {.importc: "QQmlFileSelector_selector".}
proc fcQQmlFileSelector_setSelector(self: pointer, selector: pointer): void {.importc: "QQmlFileSelector_setSelector".}
proc fcQQmlFileSelector_setExtraSelectors(self: pointer, strings: struct_miqt_array): void {.importc: "QQmlFileSelector_setExtraSelectors".}
proc fcQQmlFileSelector_setExtraSelectorsWithStrings(self: pointer, strings: struct_miqt_array): void {.importc: "QQmlFileSelector_setExtraSelectorsWithStrings".}
proc fcQQmlFileSelector_get(param1: pointer): pointer {.importc: "QQmlFileSelector_get".}
proc fcQQmlFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlFileSelector_tr2".}
proc fcQQmlFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlFileSelector_tr3".}
proc fcQQmlFileSelector_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlFileSelector_trUtf82".}
proc fcQQmlFileSelector_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlFileSelector_trUtf83".}
proc fQQmlFileSelector_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlFileSelector_virtualbase_metaObject".}
proc fcQQmlFileSelector_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_metaObject".}
proc fQQmlFileSelector_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlFileSelector_virtualbase_metacast".}
proc fcQQmlFileSelector_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_metacast".}
proc fQQmlFileSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlFileSelector_virtualbase_metacall".}
proc fcQQmlFileSelector_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_metacall".}
proc fQQmlFileSelector_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlFileSelector_virtualbase_event".}
proc fcQQmlFileSelector_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_event".}
proc fQQmlFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlFileSelector_virtualbase_eventFilter".}
proc fcQQmlFileSelector_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_eventFilter".}
proc fQQmlFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlFileSelector_virtualbase_timerEvent".}
proc fcQQmlFileSelector_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_timerEvent".}
proc fQQmlFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlFileSelector_virtualbase_childEvent".}
proc fcQQmlFileSelector_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_childEvent".}
proc fQQmlFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlFileSelector_virtualbase_customEvent".}
proc fcQQmlFileSelector_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_customEvent".}
proc fQQmlFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlFileSelector_virtualbase_connectNotify".}
proc fcQQmlFileSelector_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_connectNotify".}
proc fQQmlFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlFileSelector_virtualbase_disconnectNotify".}
proc fcQQmlFileSelector_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlFileSelector_override_virtual_disconnectNotify".}
proc fcQQmlFileSelector_staticMetaObject(): pointer {.importc: "QQmlFileSelector_staticMetaObject".}
proc fcQQmlFileSelector_delete(self: pointer) {.importc: "QQmlFileSelector_delete".}


func init*(T: type gen_qqmlfileselector_types.QQmlFileSelector, h: ptr cQQmlFileSelector): gen_qqmlfileselector_types.QQmlFileSelector =
  T(h: h)
proc create*(T: type gen_qqmlfileselector_types.QQmlFileSelector, engine: gen_qqmlengine_types.QQmlEngine): gen_qqmlfileselector_types.QQmlFileSelector =
  gen_qqmlfileselector_types.QQmlFileSelector.init(fcQQmlFileSelector_new(engine.h))

proc create*(T: type gen_qqmlfileselector_types.QQmlFileSelector, engine: gen_qqmlengine_types.QQmlEngine, parent: gen_qobject_types.QObject): gen_qqmlfileselector_types.QQmlFileSelector =
  gen_qqmlfileselector_types.QQmlFileSelector.init(fcQQmlFileSelector_new2(engine.h, parent.h))

proc metaObject*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_metaObject(self.h))

proc metacast*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cstring): pointer =
  fcQQmlFileSelector_metacast(self.h, param1)

proc metacall*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlFileSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring): string =
  let v_ms = fcQQmlFileSelector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring): string =
  let v_ms = fcQQmlFileSelector_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selector*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): gen_qfileselector_types.QFileSelector =
  gen_qfileselector_types.QFileSelector(h: fcQQmlFileSelector_selector(self.h))

proc setSelector*(self: gen_qqmlfileselector_types.QQmlFileSelector, selector: gen_qfileselector_types.QFileSelector): void =
  fcQQmlFileSelector_setSelector(self.h, selector.h)

proc setExtraSelectors*(self: gen_qqmlfileselector_types.QQmlFileSelector, strings: seq[string]): void =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQQmlFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc setExtraSelectors2*(self: gen_qqmlfileselector_types.QQmlFileSelector, strings: seq[string]): void =
  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQQmlFileSelector_setExtraSelectorsWithStrings(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc get*(_: type gen_qqmlfileselector_types.QQmlFileSelector, param1: gen_qqmlengine_types.QQmlEngine): gen_qqmlfileselector_types.QQmlFileSelector =
  gen_qqmlfileselector_types.QQmlFileSelector(h: fcQQmlFileSelector_get(param1.h))

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring): string =
  let v_ms = fcQQmlFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring): string =
  let v_ms = fcQQmlFileSelector_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlfileselector_types.QQmlFileSelector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlFileSelector_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQmlFileSelectormetaObject*(self: gen_qqmlfileselector_types.QQmlFileSelector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlFileSelector_virtualbase_metaObject(self.h))

type QQmlFileSelectormetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectormetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectormetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_metaObject(self: ptr cQQmlFileSelector, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlFileSelector_metaObject ".} =
  var nimfunc = cast[ptr QQmlFileSelectormetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlFileSelectormetacast*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cstring): pointer =
  fQQmlFileSelector_virtualbase_metacast(self.h, param1)

type QQmlFileSelectormetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectormetacastProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectormetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_metacast(self: ptr cQQmlFileSelector, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlFileSelector_metacast ".} =
  var nimfunc = cast[ptr QQmlFileSelectormetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlFileSelectormetacall*(self: gen_qqmlfileselector_types.QQmlFileSelector, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlFileSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlFileSelectormetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectormetacallProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectormetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_metacall(self: ptr cQQmlFileSelector, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlFileSelector_metacall ".} =
  var nimfunc = cast[ptr QQmlFileSelectormetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlFileSelectorevent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlFileSelector_virtualbase_event(self.h, event.h)

type QQmlFileSelectoreventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectoreventProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_event(self: ptr cQQmlFileSelector, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlFileSelector_event ".} =
  var nimfunc = cast[ptr QQmlFileSelectoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlFileSelectoreventFilter*(self: gen_qqmlfileselector_types.QQmlFileSelector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlFileSelectoreventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectoreventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_eventFilter(self: ptr cQQmlFileSelector, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlFileSelector_eventFilter ".} =
  var nimfunc = cast[ptr QQmlFileSelectoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlFileSelectortimerEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlFileSelector_virtualbase_timerEvent(self.h, event.h)

type QQmlFileSelectortimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectortimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_timerEvent(self: ptr cQQmlFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_timerEvent ".} =
  var nimfunc = cast[ptr QQmlFileSelectortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlFileSelectorchildEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlFileSelector_virtualbase_childEvent(self.h, event.h)

type QQmlFileSelectorchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectorchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_childEvent(self: ptr cQQmlFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_childEvent ".} =
  var nimfunc = cast[ptr QQmlFileSelectorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlFileSelectorcustomEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, event: gen_qcoreevent_types.QEvent): void =
  fQQmlFileSelector_virtualbase_customEvent(self.h, event.h)

type QQmlFileSelectorcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectorcustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_customEvent(self: ptr cQQmlFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_customEvent ".} =
  var nimfunc = cast[ptr QQmlFileSelectorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlFileSelectorconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlFileSelector_virtualbase_connectNotify(self.h, signal.h)

type QQmlFileSelectorconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_connectNotify(self: ptr cQQmlFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_connectNotify ".} =
  var nimfunc = cast[ptr QQmlFileSelectorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlFileSelectordisconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlFileSelector_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlFileSelectordisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlfileselector_types.QQmlFileSelector, slot: QQmlFileSelectordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlFileSelectordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlFileSelector_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlFileSelector_disconnectNotify(self: ptr cQQmlFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlFileSelector_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlFileSelectordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlfileselector_types.QQmlFileSelector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlFileSelector_staticMetaObject())
proc delete*(self: gen_qqmlfileselector_types.QQmlFileSelector) =
  fcQQmlFileSelector_delete(self.h)
