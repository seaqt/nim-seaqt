import ./Qt5WebKit_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKit")  & " -fPIC"
{.compile("gen_qwebhistoryinterface.cpp", cflags).}


import ./gen_qwebhistoryinterface_types
export gen_qwebhistoryinterface_types

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

type cQWebHistoryInterface*{.exportc: "QWebHistoryInterface", incompleteStruct.} = object

proc fcQWebHistoryInterface_new(): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new".}
proc fcQWebHistoryInterface_new2(parent: pointer): ptr cQWebHistoryInterface {.importc: "QWebHistoryInterface_new2".}
proc fcQWebHistoryInterface_metaObject(self: pointer, ): pointer {.importc: "QWebHistoryInterface_metaObject".}
proc fcQWebHistoryInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebHistoryInterface_metacast".}
proc fcQWebHistoryInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebHistoryInterface_metacall".}
proc fcQWebHistoryInterface_tr(s: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_tr".}
proc fcQWebHistoryInterface_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf8".}
proc fcQWebHistoryInterface_setDefaultInterface(defaultInterface: pointer): void {.importc: "QWebHistoryInterface_setDefaultInterface".}
proc fcQWebHistoryInterface_defaultInterface(): pointer {.importc: "QWebHistoryInterface_defaultInterface".}
proc fcQWebHistoryInterface_historyContains(self: pointer, url: struct_miqt_string): bool {.importc: "QWebHistoryInterface_historyContains".}
proc fcQWebHistoryInterface_addHistoryEntry(self: pointer, url: struct_miqt_string): void {.importc: "QWebHistoryInterface_addHistoryEntry".}
proc fcQWebHistoryInterface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_tr2".}
proc fcQWebHistoryInterface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHistoryInterface_tr3".}
proc fcQWebHistoryInterface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf82".}
proc fcQWebHistoryInterface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebHistoryInterface_trUtf83".}
proc fQWebHistoryInterface_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebHistoryInterface_virtualbase_metaObject".}
proc fcQWebHistoryInterface_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_metaObject".}
proc fQWebHistoryInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebHistoryInterface_virtualbase_metacast".}
proc fcQWebHistoryInterface_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_metacast".}
proc fQWebHistoryInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebHistoryInterface_virtualbase_metacall".}
proc fcQWebHistoryInterface_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_metacall".}
proc fcQWebHistoryInterface_override_virtual_historyContains(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_historyContains".}
proc fcQWebHistoryInterface_override_virtual_addHistoryEntry(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_addHistoryEntry".}
proc fQWebHistoryInterface_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebHistoryInterface_virtualbase_event".}
proc fcQWebHistoryInterface_override_virtual_event(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_event".}
proc fQWebHistoryInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebHistoryInterface_virtualbase_eventFilter".}
proc fcQWebHistoryInterface_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_eventFilter".}
proc fQWebHistoryInterface_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebHistoryInterface_virtualbase_timerEvent".}
proc fcQWebHistoryInterface_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_timerEvent".}
proc fQWebHistoryInterface_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebHistoryInterface_virtualbase_childEvent".}
proc fcQWebHistoryInterface_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_childEvent".}
proc fQWebHistoryInterface_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebHistoryInterface_virtualbase_customEvent".}
proc fcQWebHistoryInterface_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_customEvent".}
proc fQWebHistoryInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebHistoryInterface_virtualbase_connectNotify".}
proc fcQWebHistoryInterface_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_connectNotify".}
proc fQWebHistoryInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebHistoryInterface_virtualbase_disconnectNotify".}
proc fcQWebHistoryInterface_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebHistoryInterface_override_virtual_disconnectNotify".}
proc fcQWebHistoryInterface_staticMetaObject(): pointer {.importc: "QWebHistoryInterface_staticMetaObject".}
proc fcQWebHistoryInterface_delete(self: pointer) {.importc: "QWebHistoryInterface_delete".}


func init*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface, h: ptr cQWebHistoryInterface): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  T(h: h)
proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface, ): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  gen_qwebhistoryinterface_types.QWebHistoryInterface.init(fcQWebHistoryInterface_new())

proc create*(T: type gen_qwebhistoryinterface_types.QWebHistoryInterface, parent: gen_qobject_types.QObject): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  gen_qwebhistoryinterface_types.QWebHistoryInterface.init(fcQWebHistoryInterface_new2(parent.h))

proc metaObject*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_metaObject(self.h))

proc metacast*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cstring): pointer =
  fcQWebHistoryInterface_metacast(self.h, param1)

proc metacall*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebHistoryInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring): string =
  let v_ms = fcQWebHistoryInterface_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring): string =
  let v_ms = fcQWebHistoryInterface_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDefaultInterface*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, defaultInterface: gen_qwebhistoryinterface_types.QWebHistoryInterface): void =
  fcQWebHistoryInterface_setDefaultInterface(defaultInterface.h)

proc defaultInterface*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, ): gen_qwebhistoryinterface_types.QWebHistoryInterface =
  gen_qwebhistoryinterface_types.QWebHistoryInterface(h: fcQWebHistoryInterface_defaultInterface())

proc historyContains*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, url: string): bool =
  fcQWebHistoryInterface_historyContains(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc addHistoryEntry*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, url: string): void =
  fcQWebHistoryInterface_addHistoryEntry(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring): string =
  let v_ms = fcQWebHistoryInterface_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHistoryInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring): string =
  let v_ms = fcQWebHistoryInterface_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebHistoryInterface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWebHistoryInterfacemetaObject*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQWebHistoryInterface_virtualbase_metaObject(self.h))

type QWebHistoryInterfacemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacemetaObjectProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_metaObject(self: ptr cQWebHistoryInterface, slot: int): pointer {.exportc: "miqt_exec_callback_QWebHistoryInterface_metaObject ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebHistoryInterfacemetacast*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cstring): pointer =
  fQWebHistoryInterface_virtualbase_metacast(self.h, param1)

type QWebHistoryInterfacemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacemetacastProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_metacast(self: ptr cQWebHistoryInterface, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebHistoryInterface_metacast ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebHistoryInterfacemetacall*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, param1: cint, param2: cint, param3: pointer): cint =
  fQWebHistoryInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebHistoryInterfacemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacemetacallProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_metacall(self: ptr cQWebHistoryInterface, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebHistoryInterface_metacall ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QWebHistoryInterfacehistoryContainsProc* = proc(url: string): bool
proc onhistoryContains*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacehistoryContainsProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacehistoryContainsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_historyContains(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_historyContains(self: ptr cQWebHistoryInterface, slot: int, url: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QWebHistoryInterface_historyContains ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacehistoryContainsProc](cast[pointer](slot))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QWebHistoryInterfaceaddHistoryEntryProc* = proc(url: string): void
proc onaddHistoryEntry*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfaceaddHistoryEntryProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfaceaddHistoryEntryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_addHistoryEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_addHistoryEntry(self: ptr cQWebHistoryInterface, slot: int, url: struct_miqt_string): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_addHistoryEntry ".} =
  var nimfunc = cast[ptr QWebHistoryInterfaceaddHistoryEntryProc](cast[pointer](slot))
  let vurl_ms = url
  let vurlx_ret = string.fromBytes(toOpenArrayByte(vurl_ms.data, 0, int(vurl_ms.len)-1))
  c_free(vurl_ms.data)
  let slotval1 = vurlx_ret


  nimfunc[](slotval1)
proc QWebHistoryInterfaceevent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): bool =
  fQWebHistoryInterface_virtualbase_event(self.h, event.h)

type QWebHistoryInterfaceeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfaceeventProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfaceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_event(self: ptr cQWebHistoryInterface, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebHistoryInterface_event ".} =
  var nimfunc = cast[ptr QWebHistoryInterfaceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebHistoryInterfaceeventFilter*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWebHistoryInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebHistoryInterfaceeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfaceeventFilterProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfaceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_eventFilter(self: ptr cQWebHistoryInterface, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebHistoryInterface_eventFilter ".} =
  var nimfunc = cast[ptr QWebHistoryInterfaceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebHistoryInterfacetimerEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWebHistoryInterface_virtualbase_timerEvent(self.h, event.h)

type QWebHistoryInterfacetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacetimerEventProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_timerEvent(self: ptr cQWebHistoryInterface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_timerEvent ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebHistoryInterfacechildEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fQWebHistoryInterface_virtualbase_childEvent(self.h, event.h)

type QWebHistoryInterfacechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacechildEventProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_childEvent(self: ptr cQWebHistoryInterface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_childEvent ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebHistoryInterfacecustomEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, event: gen_qcoreevent_types.QEvent): void =
  fQWebHistoryInterface_virtualbase_customEvent(self.h, event.h)

type QWebHistoryInterfacecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacecustomEventProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_customEvent(self: ptr cQWebHistoryInterface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_customEvent ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebHistoryInterfaceconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebHistoryInterface_virtualbase_connectNotify(self.h, signal.h)

type QWebHistoryInterfaceconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfaceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfaceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_connectNotify(self: ptr cQWebHistoryInterface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_connectNotify ".} =
  var nimfunc = cast[ptr QWebHistoryInterfaceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebHistoryInterfacedisconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWebHistoryInterface_virtualbase_disconnectNotify(self.h, signal.h)

type QWebHistoryInterfacedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface, slot: QWebHistoryInterfacedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebHistoryInterfacedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebHistoryInterface_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebHistoryInterface_disconnectNotify(self: ptr cQWebHistoryInterface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebHistoryInterface_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebHistoryInterfacedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwebhistoryinterface_types.QWebHistoryInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebHistoryInterface_staticMetaObject())
proc delete*(self: gen_qwebhistoryinterface_types.QWebHistoryInterface) =
  fcQWebHistoryInterface_delete(self.h)
