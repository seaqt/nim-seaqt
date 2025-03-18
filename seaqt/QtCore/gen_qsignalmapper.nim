import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qsignalmapper.cpp", QtCoreCFlags).}


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

proc fcQSignalMapper_metaObject(self: pointer): pointer {.importc: "QSignalMapper_metaObject".}
proc fcQSignalMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalMapper_metacast".}
proc fcQSignalMapper_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalMapper_metacall".}
proc fcQSignalMapper_tr(s: cstring): struct_miqt_string {.importc: "QSignalMapper_tr".}
proc fcQSignalMapper_trUtf8(s: cstring): struct_miqt_string {.importc: "QSignalMapper_trUtf8".}
proc fcQSignalMapper_setMapping(self: pointer, sender: pointer, id: cint): void {.importc: "QSignalMapper_setMapping".}
proc fcQSignalMapper_setMapping2(self: pointer, sender: pointer, text: struct_miqt_string): void {.importc: "QSignalMapper_setMapping2".}
proc fcQSignalMapper_setMapping3(self: pointer, sender: pointer, objectVal: pointer): void {.importc: "QSignalMapper_setMapping3".}
proc fcQSignalMapper_removeMappings(self: pointer, sender: pointer): void {.importc: "QSignalMapper_removeMappings".}
proc fcQSignalMapper_mapping(self: pointer, id: cint): pointer {.importc: "QSignalMapper_mapping".}
proc fcQSignalMapper_mappingWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QSignalMapper_mappingWithText".}
proc fcQSignalMapper_mappingWithObject(self: pointer, objectVal: pointer): pointer {.importc: "QSignalMapper_mappingWithObject".}
proc fcQSignalMapper_mapped(self: pointer, param1: cint): void {.importc: "QSignalMapper_mapped".}
proc fcQSignalMapper_connect_mapped(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mapped".}
proc fcQSignalMapper_mappedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QSignalMapper_mappedWithQString".}
proc fcQSignalMapper_connect_mappedWithQString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedWithQString".}
proc fcQSignalMapper_mappedWithQObject(self: pointer, param1: pointer): void {.importc: "QSignalMapper_mappedWithQObject".}
proc fcQSignalMapper_connect_mappedWithQObject(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedWithQObject".}
proc fcQSignalMapper_mappedInt(self: pointer, param1: cint): void {.importc: "QSignalMapper_mappedInt".}
proc fcQSignalMapper_connect_mappedInt(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedInt".}
proc fcQSignalMapper_mappedString(self: pointer, param1: struct_miqt_string): void {.importc: "QSignalMapper_mappedString".}
proc fcQSignalMapper_connect_mappedString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedString".}
proc fcQSignalMapper_mappedObject(self: pointer, param1: pointer): void {.importc: "QSignalMapper_mappedObject".}
proc fcQSignalMapper_connect_mappedObject(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedObject".}
proc fcQSignalMapper_map(self: pointer): void {.importc: "QSignalMapper_map".}
proc fcQSignalMapper_mapWithSender(self: pointer, sender: pointer): void {.importc: "QSignalMapper_mapWithSender".}
proc fcQSignalMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalMapper_tr2".}
proc fcQSignalMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalMapper_tr3".}
proc fcQSignalMapper_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalMapper_trUtf82".}
proc fcQSignalMapper_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalMapper_trUtf83".}
proc fcQSignalMapper_vtbl(self: pointer): pointer {.importc: "QSignalMapper_vtbl".}
proc fcQSignalMapper_vdata(self: pointer): pointer {.importc: "QSignalMapper_vdata".}

type cQSignalMapperVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSignalMapper_virtualbase_metaObject(self: pointer): pointer {.importc: "QSignalMapper_virtualbase_metaObject".}
proc fcQSignalMapper_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalMapper_virtualbase_metacast".}
proc fcQSignalMapper_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalMapper_virtualbase_metacall".}
proc fcQSignalMapper_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSignalMapper_virtualbase_event".}
proc fcQSignalMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSignalMapper_virtualbase_eventFilter".}
proc fcQSignalMapper_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSignalMapper_virtualbase_timerEvent".}
proc fcQSignalMapper_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSignalMapper_virtualbase_childEvent".}
proc fcQSignalMapper_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSignalMapper_virtualbase_customEvent".}
proc fcQSignalMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSignalMapper_virtualbase_connectNotify".}
proc fcQSignalMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSignalMapper_virtualbase_disconnectNotify".}
proc fcQSignalMapper_protectedbase_sender(self: pointer): pointer {.importc: "QSignalMapper_protectedbase_sender".}
proc fcQSignalMapper_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSignalMapper_protectedbase_senderSignalIndex".}
proc fcQSignalMapper_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSignalMapper_protectedbase_receivers".}
proc fcQSignalMapper_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSignalMapper_protectedbase_isSignalConnected".}
proc fcQSignalMapper_new(vtbl, vdata: pointer): ptr cQSignalMapper {.importc: "QSignalMapper_new".}
proc fcQSignalMapper_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSignalMapper {.importc: "QSignalMapper_new2".}
proc fcQSignalMapper_staticMetaObject(): pointer {.importc: "QSignalMapper_staticMetaObject".}

proc metaObject*(self: gen_qsignalmapper_types.QSignalMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsignalmapper_types.QSignalMapper, param1: cstring): pointer =
  fcQSignalMapper_metacast(self.h, param1)

proc metacall*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQSignalMapper_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring): string =
  let v_ms = fcQSignalMapper_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring): string =
  let v_ms = fcQSignalMapper_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, id: cint): void =
  fcQSignalMapper_setMapping(self.h, sender.h, id)

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, text: openArray[char]): void =
  fcQSignalMapper_setMapping2(self.h, sender.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, objectVal: gen_qobject_types.QObject): void =
  fcQSignalMapper_setMapping3(self.h, sender.h, objectVal.h)

proc removeMappings*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject): void =
  fcQSignalMapper_removeMappings(self.h, sender.h)

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, id: cint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mapping(self.h, id), owned: false)

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, text: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mappingWithText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: false)

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, objectVal: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mappingWithObject(self.h, objectVal.h), owned: false)

proc mapped*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint): void =
  fcQSignalMapper_mapped(self.h, param1)

type QSignalMappermappedSlot* = proc(param1: cint)
proc fcQSignalMapper_slot_callback_mapped(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQSignalMapper_slot_callback_mapped_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMapped*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedSlot) =
  var tmp = new QSignalMappermappedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mapped(self.h, cast[int](addr tmp[]), fcQSignalMapper_slot_callback_mapped, fcQSignalMapper_slot_callback_mapped_release)

proc mapped*(self: gen_qsignalmapper_types.QSignalMapper, param1: openArray[char]): void =
  fcQSignalMapper_mappedWithQString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QSignalMappermappedWithQStringSlot* = proc(param1: openArray[char])
proc fcQSignalMapper_slot_callback_mappedWithQString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQSignalMapper_slot_callback_mappedWithQString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedWithQStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMapped*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedWithQStringSlot) =
  var tmp = new QSignalMappermappedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedWithQString(self.h, cast[int](addr tmp[]), fcQSignalMapper_slot_callback_mappedWithQString, fcQSignalMapper_slot_callback_mappedWithQString_release)

proc mapped*(self: gen_qsignalmapper_types.QSignalMapper, param1: gen_qobject_types.QObject): void =
  fcQSignalMapper_mappedWithQObject(self.h, param1.h)

type QSignalMappermappedWithQObjectSlot* = proc(param1: gen_qobject_types.QObject)
proc fcQSignalMapper_slot_callback_mappedWithQObject(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedWithQObjectSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQSignalMapper_slot_callback_mappedWithQObject_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedWithQObjectSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMapped*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedWithQObjectSlot) =
  var tmp = new QSignalMappermappedWithQObjectSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedWithQObject(self.h, cast[int](addr tmp[]), fcQSignalMapper_slot_callback_mappedWithQObject, fcQSignalMapper_slot_callback_mappedWithQObject_release)

proc mappedInt*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint): void =
  fcQSignalMapper_mappedInt(self.h, param1)

type QSignalMappermappedIntSlot* = proc(param1: cint)
proc fcQSignalMapper_slot_callback_mappedInt(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedIntSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQSignalMapper_slot_callback_mappedInt_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedIntSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMappedInt*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedIntSlot) =
  var tmp = new QSignalMappermappedIntSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedInt(self.h, cast[int](addr tmp[]), fcQSignalMapper_slot_callback_mappedInt, fcQSignalMapper_slot_callback_mappedInt_release)

proc mappedString*(self: gen_qsignalmapper_types.QSignalMapper, param1: openArray[char]): void =
  fcQSignalMapper_mappedString(self.h, struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

type QSignalMappermappedStringSlot* = proc(param1: openArray[char])
proc fcQSignalMapper_slot_callback_mappedString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(vparam1_ms)
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc fcQSignalMapper_slot_callback_mappedString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMappedString*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedStringSlot) =
  var tmp = new QSignalMappermappedStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedString(self.h, cast[int](addr tmp[]), fcQSignalMapper_slot_callback_mappedString, fcQSignalMapper_slot_callback_mappedString_release)

proc mappedObject*(self: gen_qsignalmapper_types.QSignalMapper, param1: gen_qobject_types.QObject): void =
  fcQSignalMapper_mappedObject(self.h, param1.h)

type QSignalMappermappedObjectSlot* = proc(param1: gen_qobject_types.QObject)
proc fcQSignalMapper_slot_callback_mappedObject(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedObjectSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)

  nimfunc[](slotval1)

proc fcQSignalMapper_slot_callback_mappedObject_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedObjectSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMappedObject*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedObjectSlot) =
  var tmp = new QSignalMappermappedObjectSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedObject(self.h, cast[int](addr tmp[]), fcQSignalMapper_slot_callback_mappedObject, fcQSignalMapper_slot_callback_mappedObject_release)

proc map*(self: gen_qsignalmapper_types.QSignalMapper): void =
  fcQSignalMapper_map(self.h)

proc map*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject): void =
  fcQSignalMapper_mapWithSender(self.h, sender.h)

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring): string =
  let v_ms = fcQSignalMapper_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalMapper_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring): string =
  let v_ms = fcQSignalMapper_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalMapper_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSignalMappermetaObjectProc* = proc(self: QSignalMapper): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSignalMappermetacastProc* = proc(self: QSignalMapper, param1: cstring): pointer {.raises: [], gcsafe.}
type QSignalMappermetacallProc* = proc(self: QSignalMapper, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSignalMappereventProc* = proc(self: QSignalMapper, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSignalMappereventFilterProc* = proc(self: QSignalMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSignalMappertimerEventProc* = proc(self: QSignalMapper, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSignalMapperchildEventProc* = proc(self: QSignalMapper, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSignalMappercustomEventProc* = proc(self: QSignalMapper, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSignalMapperconnectNotifyProc* = proc(self: QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSignalMapperdisconnectNotifyProc* = proc(self: QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSignalMapperVTable* {.inheritable, pure.} = object
  vtbl: cQSignalMapperVTable
  metaObject*: QSignalMappermetaObjectProc
  metacast*: QSignalMappermetacastProc
  metacall*: QSignalMappermetacallProc
  event*: QSignalMappereventProc
  eventFilter*: QSignalMappereventFilterProc
  timerEvent*: QSignalMappertimerEventProc
  childEvent*: QSignalMapperchildEventProc
  customEvent*: QSignalMappercustomEventProc
  connectNotify*: QSignalMapperconnectNotifyProc
  disconnectNotify*: QSignalMapperdisconnectNotifyProc

proc QSignalMappermetaObject*(self: gen_qsignalmapper_types.QSignalMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_virtualbase_metaObject(self.h), owned: false)

proc QSignalMappermetacast*(self: gen_qsignalmapper_types.QSignalMapper, param1: cstring): pointer =
  fcQSignalMapper_virtualbase_metacast(self.h, param1)

proc QSignalMappermetacall*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQSignalMapper_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSignalMapperevent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): bool =
  fcQSignalMapper_virtualbase_event(self.h, event.h)

proc QSignalMappereventFilter*(self: gen_qsignalmapper_types.QSignalMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSignalMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSignalMappertimerEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSignalMapper_virtualbase_timerEvent(self.h, event.h)

proc QSignalMapperchildEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSignalMapper_virtualbase_childEvent(self.h, event.h)

proc QSignalMappercustomEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): void =
  fcQSignalMapper_virtualbase_customEvent(self.h, event.h)

proc QSignalMapperconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSignalMapper_virtualbase_connectNotify(self.h, signal.h)

proc QSignalMapperdisconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSignalMapper_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSignalMapper_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSignalMapper_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSignalMapper_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSignalMapper_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSignalMapper_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSignalMapper_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSignalMapper_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSignalMapper_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSignalMapper_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSignalMapper_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](fcQSignalMapper_vdata(self))
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSignalMapper* {.inheritable.} = ref object of QSignalMapper
  vtbl*: cQSignalMapperVTable

method metaObject*(self: VirtualQSignalMapper): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSignalMappermetaObject(self[])
method metacast*(self: VirtualQSignalMapper, param1: cstring): pointer {.base.} =
  QSignalMappermetacast(self[], param1)
method metacall*(self: VirtualQSignalMapper, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSignalMappermetacall(self[], param1, param2, param3)
method event*(self: VirtualQSignalMapper, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSignalMapperevent(self[], event)
method eventFilter*(self: VirtualQSignalMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSignalMappereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSignalMapper, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSignalMappertimerEvent(self[], event)
method childEvent*(self: VirtualQSignalMapper, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSignalMapperchildEvent(self[], event)
method customEvent*(self: VirtualQSignalMapper, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSignalMappercustomEvent(self[], event)
method connectNotify*(self: VirtualQSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSignalMapperconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSignalMapperdisconnectNotify(self[], signal)

proc fcQSignalMapper_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSignalMapper_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSignalMapper_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSignalMapper_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSignalMapper_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSignalMapper_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSignalMapper_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSignalMapper_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSignalMapper_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSignalMapper_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSignalMapper](fcQSignalMapper_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qsignalmapper_types.QSignalMapper): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsignalmapper_types.QSignalMapper): cint =
  fcQSignalMapper_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsignalmapper_types.QSignalMapper, signal: cstring): cint =
  fcQSignalMapper_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSignalMapper_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsignalmapper_types.QSignalMapper,
    vtbl: ref QSignalMapperVTable = nil): gen_qsignalmapper_types.QSignalMapper =
  let vtbl = if vtbl == nil: new QSignalMapperVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSignalMapperVTable](fcQSignalMapper_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSignalMapper_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSignalMapper_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSignalMapper_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSignalMapper_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSignalMapper_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSignalMapper_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSignalMapper_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSignalMapper_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSignalMapper_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSignalMapper_vtable_callback_disconnectNotify
  gen_qsignalmapper_types.QSignalMapper(h: fcQSignalMapper_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsignalmapper_types.QSignalMapper,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSignalMapperVTable = nil): gen_qsignalmapper_types.QSignalMapper =
  let vtbl = if vtbl == nil: new QSignalMapperVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSignalMapperVTable](fcQSignalMapper_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSignalMapper_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSignalMapper_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSignalMapper_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSignalMapper_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSignalMapper_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSignalMapper_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSignalMapper_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSignalMapper_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSignalMapper_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSignalMapper_vtable_callback_disconnectNotify
  gen_qsignalmapper_types.QSignalMapper(h: fcQSignalMapper_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSignalMapper_mvtbl = cQSignalMapperVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSignalMapper()[])](self.fcQSignalMapper_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSignalMapper_method_callback_metaObject,
  metacast: fcQSignalMapper_method_callback_metacast,
  metacall: fcQSignalMapper_method_callback_metacall,
  event: fcQSignalMapper_method_callback_event,
  eventFilter: fcQSignalMapper_method_callback_eventFilter,
  timerEvent: fcQSignalMapper_method_callback_timerEvent,
  childEvent: fcQSignalMapper_method_callback_childEvent,
  customEvent: fcQSignalMapper_method_callback_customEvent,
  connectNotify: fcQSignalMapper_method_callback_connectNotify,
  disconnectNotify: fcQSignalMapper_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsignalmapper_types.QSignalMapper,
    inst: VirtualQSignalMapper) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSignalMapper_new(addr(cQSignalMapper_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsignalmapper_types.QSignalMapper,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSignalMapper) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSignalMapper_new2(addr(cQSignalMapper_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsignalmapper_types.QSignalMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_staticMetaObject())
