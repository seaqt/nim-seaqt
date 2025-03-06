import ./Qt5WebChannel_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebChannel")  & " -fPIC"
{.compile("gen_qqmlwebchannel.cpp", cflags).}


import ./gen_qqmlwebchannel_types
export gen_qqmlwebchannel_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qwebchannel,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qwebchannel

type cQQmlWebChannel*{.exportc: "QQmlWebChannel", incompleteStruct.} = object

proc fcQQmlWebChannel_new(): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new".}
proc fcQQmlWebChannel_new2(parent: pointer): ptr cQQmlWebChannel {.importc: "QQmlWebChannel_new2".}
proc fcQQmlWebChannel_metaObject(self: pointer, ): pointer {.importc: "QQmlWebChannel_metaObject".}
proc fcQQmlWebChannel_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlWebChannel_metacast".}
proc fcQQmlWebChannel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlWebChannel_metacall".}
proc fcQQmlWebChannel_tr(s: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr".}
proc fcQQmlWebChannel_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlWebChannel_trUtf8".}
proc fcQQmlWebChannel_registerObjects(self: pointer, objects: struct_miqt_map): void {.importc: "QQmlWebChannel_registerObjects".}
proc fcQQmlWebChannel_connectTo(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_connectTo".}
proc fcQQmlWebChannel_disconnectFrom(self: pointer, transport: pointer): void {.importc: "QQmlWebChannel_disconnectFrom".}
proc fcQQmlWebChannel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlWebChannel_tr2".}
proc fcQQmlWebChannel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlWebChannel_tr3".}
proc fcQQmlWebChannel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlWebChannel_trUtf82".}
proc fcQQmlWebChannel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlWebChannel_trUtf83".}
proc fQQmlWebChannel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlWebChannel_virtualbase_metaObject".}
proc fcQQmlWebChannel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_metaObject".}
proc fQQmlWebChannel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlWebChannel_virtualbase_metacast".}
proc fcQQmlWebChannel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_metacast".}
proc fQQmlWebChannel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlWebChannel_virtualbase_metacall".}
proc fcQQmlWebChannel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_metacall".}
proc fQQmlWebChannel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlWebChannel_virtualbase_event".}
proc fcQQmlWebChannel_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_event".}
proc fQQmlWebChannel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlWebChannel_virtualbase_eventFilter".}
proc fcQQmlWebChannel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_eventFilter".}
proc fQQmlWebChannel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlWebChannel_virtualbase_timerEvent".}
proc fcQQmlWebChannel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_timerEvent".}
proc fQQmlWebChannel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlWebChannel_virtualbase_childEvent".}
proc fcQQmlWebChannel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_childEvent".}
proc fQQmlWebChannel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlWebChannel_virtualbase_customEvent".}
proc fcQQmlWebChannel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_customEvent".}
proc fQQmlWebChannel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlWebChannel_virtualbase_connectNotify".}
proc fcQQmlWebChannel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_connectNotify".}
proc fQQmlWebChannel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlWebChannel_virtualbase_disconnectNotify".}
proc fcQQmlWebChannel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlWebChannel_override_virtual_disconnectNotify".}
proc fcQQmlWebChannel_staticMetaObject(): pointer {.importc: "QQmlWebChannel_staticMetaObject".}
proc fcQQmlWebChannel_delete(self: pointer) {.importc: "QQmlWebChannel_delete".}


func init*(T: type gen_qqmlwebchannel_types.QQmlWebChannel, h: ptr cQQmlWebChannel): gen_qqmlwebchannel_types.QQmlWebChannel =
  T(h: h)
proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel, ): gen_qqmlwebchannel_types.QQmlWebChannel =
  gen_qqmlwebchannel_types.QQmlWebChannel.init(fcQQmlWebChannel_new())

proc create*(T: type gen_qqmlwebchannel_types.QQmlWebChannel, parent: gen_qobject_types.QObject): gen_qqmlwebchannel_types.QQmlWebChannel =
  gen_qqmlwebchannel_types.QQmlWebChannel.init(fcQQmlWebChannel_new2(parent.h))

proc metaObject*(self: gen_qqmlwebchannel_types.QQmlWebChannel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_metaObject(self.h))

proc metacast*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cstring): pointer =
  fcQQmlWebChannel_metacast(self.h, param1)

proc metacall*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlWebChannel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring): string =
  let v_ms = fcQQmlWebChannel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring): string =
  let v_ms = fcQQmlWebChannel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc registerObjects*(self: gen_qqmlwebchannel_types.QQmlWebChannel, objects: Table[string,gen_qvariant_types.QVariant]): void =
  var objects_Keys_CArray = newSeq[struct_miqt_string](len(objects))
  var objects_Values_CArray = newSeq[pointer](len(objects))
  var objects_ctr = 0
  for objectsk, objectsv in objects:
    objects_Keys_CArray[objects_ctr] = struct_miqt_string(data: objects_k, len: csize_t(len(objects_k)))
    objects_Values_CArray[objects_ctr] = objects_v.h
    objects_ctr += 1

  fcQQmlWebChannel_registerObjects(self.h, struct_miqt_map(len: csize_t(len(objects)),keys: if len(objects) == 0: nil else: addr(objects_Keys_CArray[0]), values: if len(objects) == 0: nil else: addr(objects_Values_CArray[0]),))

proc connectTo*(self: gen_qqmlwebchannel_types.QQmlWebChannel, transport: gen_qobject_types.QObject): void =
  fcQQmlWebChannel_connectTo(self.h, transport.h)

proc disconnectFrom*(self: gen_qqmlwebchannel_types.QQmlWebChannel, transport: gen_qobject_types.QObject): void =
  fcQQmlWebChannel_disconnectFrom(self.h, transport.h)

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQQmlWebChannel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlWebChannel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring): string =
  let v_ms = fcQQmlWebChannel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlwebchannel_types.QQmlWebChannel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlWebChannel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQmlWebChannelmetaObject*(self: gen_qqmlwebchannel_types.QQmlWebChannel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlWebChannel_virtualbase_metaObject(self.h))

type QQmlWebChannelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChannelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlWebChannelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_metaObject(self: ptr cQQmlWebChannel, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlWebChannel_metaObject ".} =
  var nimfunc = cast[ptr QQmlWebChannelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlWebChannelmetacast*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cstring): pointer =
  fQQmlWebChannel_virtualbase_metacast(self.h, param1)

type QQmlWebChannelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChannelmetacastProc) =
  # TODO check subclass
  var tmp = new QQmlWebChannelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_metacast(self: ptr cQQmlWebChannel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlWebChannel_metacast ".} =
  var nimfunc = cast[ptr QQmlWebChannelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlWebChannelmetacall*(self: gen_qqmlwebchannel_types.QQmlWebChannel, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlWebChannel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlWebChannelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChannelmetacallProc) =
  # TODO check subclass
  var tmp = new QQmlWebChannelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_metacall(self: ptr cQQmlWebChannel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlWebChannel_metacall ".} =
  var nimfunc = cast[ptr QQmlWebChannelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlWebChannelevent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlWebChannel_virtualbase_event(self.h, event.h)

type QQmlWebChanneleventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChanneleventProc) =
  # TODO check subclass
  var tmp = new QQmlWebChanneleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_event(self: ptr cQQmlWebChannel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlWebChannel_event ".} =
  var nimfunc = cast[ptr QQmlWebChanneleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlWebChanneleventFilter*(self: gen_qqmlwebchannel_types.QQmlWebChannel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlWebChannel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlWebChanneleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChanneleventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlWebChanneleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_eventFilter(self: ptr cQQmlWebChannel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlWebChannel_eventFilter ".} =
  var nimfunc = cast[ptr QQmlWebChanneleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlWebChanneltimerEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlWebChannel_virtualbase_timerEvent(self.h, event.h)

type QQmlWebChanneltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChanneltimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlWebChanneltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_timerEvent(self: ptr cQQmlWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_timerEvent ".} =
  var nimfunc = cast[ptr QQmlWebChanneltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlWebChannelchildEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlWebChannel_virtualbase_childEvent(self.h, event.h)

type QQmlWebChannelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChannelchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlWebChannelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_childEvent(self: ptr cQQmlWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_childEvent ".} =
  var nimfunc = cast[ptr QQmlWebChannelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlWebChannelcustomEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, event: gen_qcoreevent_types.QEvent): void =
  fQQmlWebChannel_virtualbase_customEvent(self.h, event.h)

type QQmlWebChannelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChannelcustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlWebChannelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_customEvent(self: ptr cQQmlWebChannel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_customEvent ".} =
  var nimfunc = cast[ptr QQmlWebChannelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlWebChannelconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlWebChannel_virtualbase_connectNotify(self.h, signal.h)

type QQmlWebChannelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChannelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlWebChannelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_connectNotify(self: ptr cQQmlWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_connectNotify ".} =
  var nimfunc = cast[ptr QQmlWebChannelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlWebChanneldisconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlWebChannel_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlWebChanneldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlwebchannel_types.QQmlWebChannel, slot: QQmlWebChanneldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlWebChanneldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlWebChannel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlWebChannel_disconnectNotify(self: ptr cQQmlWebChannel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlWebChannel_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlWebChanneldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlwebchannel_types.QQmlWebChannel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlWebChannel_staticMetaObject())
proc delete*(self: gen_qqmlwebchannel_types.QQmlWebChannel) =
  fcQQmlWebChannel_delete(self.h)
