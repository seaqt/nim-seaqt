import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qsignalmapper.cpp", cflags).}


import ./gen_qsignalmapper_types
export gen_qsignalmapper_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQSignalMapper*{.exportc: "QSignalMapper", incompleteStruct.} = object

proc fcQSignalMapper_new(): ptr cQSignalMapper {.importc: "QSignalMapper_new".}
proc fcQSignalMapper_new2(parent: pointer): ptr cQSignalMapper {.importc: "QSignalMapper_new2".}
proc fcQSignalMapper_metaObject(self: pointer, ): pointer {.importc: "QSignalMapper_metaObject".}
proc fcQSignalMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalMapper_metacast".}
proc fcQSignalMapper_tr(s: cstring): struct_miqt_string {.importc: "QSignalMapper_tr".}
proc fcQSignalMapper_setMapping(self: pointer, sender: pointer, id: cint): void {.importc: "QSignalMapper_setMapping".}
proc fcQSignalMapper_setMapping2(self: pointer, sender: pointer, text: struct_miqt_string): void {.importc: "QSignalMapper_setMapping2".}
proc fcQSignalMapper_setMapping3(self: pointer, sender: pointer, objectVal: pointer): void {.importc: "QSignalMapper_setMapping3".}
proc fcQSignalMapper_removeMappings(self: pointer, sender: pointer): void {.importc: "QSignalMapper_removeMappings".}
proc fcQSignalMapper_mapping(self: pointer, id: cint): pointer {.importc: "QSignalMapper_mapping".}
proc fcQSignalMapper_mappingWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QSignalMapper_mappingWithText".}
proc fcQSignalMapper_mappingWithObject(self: pointer, objectVal: pointer): pointer {.importc: "QSignalMapper_mappingWithObject".}
proc fcQSignalMapper_mappedInt(self: pointer, param1: cint): void {.importc: "QSignalMapper_mappedInt".}
proc fcQSignalMapper_connect_mappedInt(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedInt".}
proc fcQSignalMapper_mappedString(self: pointer, param1: struct_miqt_string): void {.importc: "QSignalMapper_mappedString".}
proc fcQSignalMapper_connect_mappedString(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedString".}
proc fcQSignalMapper_mappedObject(self: pointer, param1: pointer): void {.importc: "QSignalMapper_mappedObject".}
proc fcQSignalMapper_connect_mappedObject(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedObject".}
proc fcQSignalMapper_map(self: pointer, ): void {.importc: "QSignalMapper_map".}
proc fcQSignalMapper_mapWithSender(self: pointer, sender: pointer): void {.importc: "QSignalMapper_mapWithSender".}
proc fcQSignalMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalMapper_tr2".}
proc fcQSignalMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalMapper_tr3".}
proc fQSignalMapper_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSignalMapper_virtualbase_event".}
proc fcQSignalMapper_override_virtual_event(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_event".}
proc fQSignalMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSignalMapper_virtualbase_eventFilter".}
proc fcQSignalMapper_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_eventFilter".}
proc fQSignalMapper_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_timerEvent".}
proc fcQSignalMapper_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_timerEvent".}
proc fQSignalMapper_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_childEvent".}
proc fcQSignalMapper_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_childEvent".}
proc fQSignalMapper_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_customEvent".}
proc fcQSignalMapper_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_customEvent".}
proc fQSignalMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSignalMapper_virtualbase_connectNotify".}
proc fcQSignalMapper_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_connectNotify".}
proc fQSignalMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSignalMapper_virtualbase_disconnectNotify".}
proc fcQSignalMapper_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_disconnectNotify".}
proc fcQSignalMapper_delete(self: pointer) {.importc: "QSignalMapper_delete".}


func init*(T: type gen_qsignalmapper_types.QSignalMapper, h: ptr cQSignalMapper): gen_qsignalmapper_types.QSignalMapper =
  T(h: h)
proc create*(T: type gen_qsignalmapper_types.QSignalMapper, ): gen_qsignalmapper_types.QSignalMapper =
  gen_qsignalmapper_types.QSignalMapper.init(fcQSignalMapper_new())

proc create*(T: type gen_qsignalmapper_types.QSignalMapper, parent: gen_qobject_types.QObject): gen_qsignalmapper_types.QSignalMapper =
  gen_qsignalmapper_types.QSignalMapper.init(fcQSignalMapper_new2(parent.h))

proc metaObject*(self: gen_qsignalmapper_types.QSignalMapper, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_metaObject(self.h))

proc metacast*(self: gen_qsignalmapper_types.QSignalMapper, param1: cstring): pointer =
  fcQSignalMapper_metacast(self.h, param1)

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring): string =
  let v_ms = fcQSignalMapper_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, id: cint): void =
  fcQSignalMapper_setMapping(self.h, sender.h, id)

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, text: string): void =
  fcQSignalMapper_setMapping2(self.h, sender.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, objectVal: gen_qobject_types.QObject): void =
  fcQSignalMapper_setMapping3(self.h, sender.h, objectVal.h)

proc removeMappings*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject): void =
  fcQSignalMapper_removeMappings(self.h, sender.h)

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, id: cint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mapping(self.h, id))

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, text: string): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mappingWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, objectVal: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mappingWithObject(self.h, objectVal.h))

proc mappedInt*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint): void =
  fcQSignalMapper_mappedInt(self.h, param1)

type QSignalMappermappedIntSlot* = proc(param1: cint)
proc miqt_exec_callback_QSignalMapper_mappedInt(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedIntSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmappedInt*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedIntSlot) =
  var tmp = new QSignalMappermappedIntSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedInt(self.h, cast[int](addr tmp[]))

proc mappedString*(self: gen_qsignalmapper_types.QSignalMapper, param1: string): void =
  fcQSignalMapper_mappedString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QSignalMappermappedStringSlot* = proc(param1: string)
proc miqt_exec_callback_QSignalMapper_mappedString(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onmappedString*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedStringSlot) =
  var tmp = new QSignalMappermappedStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedString(self.h, cast[int](addr tmp[]))

proc mappedObject*(self: gen_qsignalmapper_types.QSignalMapper, param1: gen_qobject_types.QObject): void =
  fcQSignalMapper_mappedObject(self.h, param1.h)

type QSignalMappermappedObjectSlot* = proc(param1: gen_qobject_types.QObject)
proc miqt_exec_callback_QSignalMapper_mappedObject(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedObjectSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  nimfunc[](slotval1)

proc onmappedObject*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedObjectSlot) =
  var tmp = new QSignalMappermappedObjectSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedObject(self.h, cast[int](addr tmp[]))

proc map*(self: gen_qsignalmapper_types.QSignalMapper, ): void =
  fcQSignalMapper_map(self.h)

proc map*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject): void =
  fcQSignalMapper_mapWithSender(self.h, sender.h)

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring): string =
  let v_ms = fcQSignalMapper_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalMapper_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSignalMapperevent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): bool =
  fQSignalMapper_virtualbase_event(self.h, event.h)

type QSignalMappereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappereventProc) =
  # TODO check subclass
  var tmp = new QSignalMappereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_event(self: ptr cQSignalMapper, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalMapper_event ".} =
  var nimfunc = cast[ptr QSignalMappereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSignalMappereventFilter*(self: gen_qsignalmapper_types.QSignalMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSignalMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSignalMappereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappereventFilterProc) =
  # TODO check subclass
  var tmp = new QSignalMappereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_eventFilter(self: ptr cQSignalMapper, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalMapper_eventFilter ".} =
  var nimfunc = cast[ptr QSignalMappereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSignalMappertimerEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSignalMapper_virtualbase_timerEvent(self.h, event.h)

type QSignalMappertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappertimerEventProc) =
  # TODO check subclass
  var tmp = new QSignalMappertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_timerEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_timerEvent ".} =
  var nimfunc = cast[ptr QSignalMappertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSignalMapperchildEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QChildEvent): void =
  fQSignalMapper_virtualbase_childEvent(self.h, event.h)

type QSignalMapperchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMapperchildEventProc) =
  # TODO check subclass
  var tmp = new QSignalMapperchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_childEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_childEvent ".} =
  var nimfunc = cast[ptr QSignalMapperchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSignalMappercustomEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): void =
  fQSignalMapper_virtualbase_customEvent(self.h, event.h)

type QSignalMappercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappercustomEventProc) =
  # TODO check subclass
  var tmp = new QSignalMappercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_customEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_customEvent ".} =
  var nimfunc = cast[ptr QSignalMappercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSignalMapperconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSignalMapper_virtualbase_connectNotify(self.h, signal.h)

type QSignalMapperconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMapperconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSignalMapperconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_connectNotify(self: ptr cQSignalMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_connectNotify ".} =
  var nimfunc = cast[ptr QSignalMapperconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSignalMapperdisconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSignalMapper_virtualbase_disconnectNotify(self.h, signal.h)

type QSignalMapperdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMapperdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSignalMapperdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_disconnectNotify(self: ptr cQSignalMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_disconnectNotify ".} =
  var nimfunc = cast[ptr QSignalMapperdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qsignalmapper_types.QSignalMapper) =
  fcQSignalMapper_delete(self.h)
