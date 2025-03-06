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

proc fcQSignalMapper_metaObject(self: pointer, ): pointer {.importc: "QSignalMapper_metaObject".}
proc fcQSignalMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalMapper_metacast".}
proc fcQSignalMapper_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalMapper_metacall".}
proc fcQSignalMapper_tr(s: cstring): struct_miqt_string {.importc: "QSignalMapper_tr".}
proc fcQSignalMapper_setMapping(self: pointer, sender: pointer, id: cint): void {.importc: "QSignalMapper_setMapping".}
proc fcQSignalMapper_setMapping2(self: pointer, sender: pointer, text: struct_miqt_string): void {.importc: "QSignalMapper_setMapping2".}
proc fcQSignalMapper_setMapping3(self: pointer, sender: pointer, objectVal: pointer): void {.importc: "QSignalMapper_setMapping3".}
proc fcQSignalMapper_removeMappings(self: pointer, sender: pointer): void {.importc: "QSignalMapper_removeMappings".}
proc fcQSignalMapper_mapping(self: pointer, id: cint): pointer {.importc: "QSignalMapper_mapping".}
proc fcQSignalMapper_mappingWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QSignalMapper_mappingWithText".}
proc fcQSignalMapper_mappingWithObject(self: pointer, objectVal: pointer): pointer {.importc: "QSignalMapper_mappingWithObject".}
proc fcQSignalMapper_mappedInt(self: pointer, param1: cint): void {.importc: "QSignalMapper_mappedInt".}
proc fcQSignalMapper_connect_mappedInt(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedInt".}
proc fcQSignalMapper_mappedString(self: pointer, param1: struct_miqt_string): void {.importc: "QSignalMapper_mappedString".}
proc fcQSignalMapper_connect_mappedString(self: pointer, slot: int, callback: proc (slot: int, param1: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedString".}
proc fcQSignalMapper_mappedObject(self: pointer, param1: pointer): void {.importc: "QSignalMapper_mappedObject".}
proc fcQSignalMapper_connect_mappedObject(self: pointer, slot: int, callback: proc (slot: int, param1: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSignalMapper_connect_mappedObject".}
proc fcQSignalMapper_map(self: pointer, ): void {.importc: "QSignalMapper_map".}
proc fcQSignalMapper_mapWithSender(self: pointer, sender: pointer): void {.importc: "QSignalMapper_mapWithSender".}
proc fcQSignalMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalMapper_tr2".}
proc fcQSignalMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalMapper_tr3".}
type cQSignalMapperVTable = object
  destructor*: proc(vtbl: ptr cQSignalMapperVTable, self: ptr cQSignalMapper) {.cdecl, raises:[], gcsafe.}
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
proc fcQSignalMapper_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSignalMapper_virtualbase_metaObject".}
proc fcQSignalMapper_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalMapper_virtualbase_metacast".}
proc fcQSignalMapper_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalMapper_virtualbase_metacall".}
proc fcQSignalMapper_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSignalMapper_virtualbase_event".}
proc fcQSignalMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSignalMapper_virtualbase_eventFilter".}
proc fcQSignalMapper_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSignalMapper_virtualbase_timerEvent".}
proc fcQSignalMapper_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSignalMapper_virtualbase_childEvent".}
proc fcQSignalMapper_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSignalMapper_virtualbase_customEvent".}
proc fcQSignalMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSignalMapper_virtualbase_connectNotify".}
proc fcQSignalMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSignalMapper_virtualbase_disconnectNotify".}
proc fcQSignalMapper_new(vtbl: pointer, ): ptr cQSignalMapper {.importc: "QSignalMapper_new".}
proc fcQSignalMapper_new2(vtbl: pointer, parent: pointer): ptr cQSignalMapper {.importc: "QSignalMapper_new2".}
proc fcQSignalMapper_staticMetaObject(): pointer {.importc: "QSignalMapper_staticMetaObject".}
proc fcQSignalMapper_delete(self: pointer) {.importc: "QSignalMapper_delete".}

proc metaObject*(self: gen_qsignalmapper_types.QSignalMapper, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_metaObject(self.h))

proc metacast*(self: gen_qsignalmapper_types.QSignalMapper, param1: cstring): pointer =
  fcQSignalMapper_metacast(self.h, param1)

proc metacall*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQSignalMapper_metacall(self.h, cint(param1), param2, param3)

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
proc miqt_exec_callback_cQSignalMapper_mappedInt(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedIntSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSignalMapper_mappedInt_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedIntSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmappedInt*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedIntSlot) =
  var tmp = new QSignalMappermappedIntSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedInt(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSignalMapper_mappedInt, miqt_exec_callback_cQSignalMapper_mappedInt_release)

proc mappedString*(self: gen_qsignalmapper_types.QSignalMapper, param1: string): void =
  fcQSignalMapper_mappedString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QSignalMappermappedStringSlot* = proc(param1: string)
proc miqt_exec_callback_cQSignalMapper_mappedString(slot: int, param1: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSignalMapper_mappedString_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedStringSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmappedString*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedStringSlot) =
  var tmp = new QSignalMappermappedStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedString(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSignalMapper_mappedString, miqt_exec_callback_cQSignalMapper_mappedString_release)

proc mappedObject*(self: gen_qsignalmapper_types.QSignalMapper, param1: gen_qobject_types.QObject): void =
  fcQSignalMapper_mappedObject(self.h, param1.h)

type QSignalMappermappedObjectSlot* = proc(param1: gen_qobject_types.QObject)
proc miqt_exec_callback_cQSignalMapper_mappedObject(slot: int, param1: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSignalMappermappedObjectSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSignalMapper_mappedObject_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSignalMappermappedObjectSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmappedObject*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedObjectSlot) =
  var tmp = new QSignalMappermappedObjectSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_connect_mappedObject(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQSignalMapper_mappedObject, miqt_exec_callback_cQSignalMapper_mappedObject_release)

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
type QSignalMapperVTable* = object
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
proc QSignalMappermetaObject*(self: gen_qsignalmapper_types.QSignalMapper, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSignalMapper_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSignalMappermetacast*(self: gen_qsignalmapper_types.QSignalMapper, param1: cstring): pointer =
  fcQSignalMapper_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSignalMapper_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSignalMappermetacall*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQSignalMapper_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSignalMapper_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSignalMapperevent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): bool =
  fcQSignalMapper_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSignalMapper_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSignalMappereventFilter*(self: gen_qsignalmapper_types.QSignalMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSignalMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSignalMapper_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSignalMappertimerEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSignalMapper_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSignalMapper_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSignalMapperchildEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSignalMapper_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSignalMapper_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSignalMappercustomEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): void =
  fcQSignalMapper_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSignalMapper_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSignalMapperconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSignalMapper_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSignalMapper_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSignalMapperdisconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSignalMapper_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSignalMapper_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSignalMapperVTable](vtbl)
  let self = QSignalMapper(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsignalmapper_types.QSignalMapper,
    vtbl: ref QSignalMapperVTable = nil): gen_qsignalmapper_types.QSignalMapper =
  let vtbl = if vtbl == nil: new QSignalMapperVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSignalMapperVTable, _: ptr cQSignalMapper) {.cdecl.} =
    let vtbl = cast[ref QSignalMapperVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSignalMapper_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSignalMapper_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSignalMapper_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSignalMapper_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSignalMapper_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSignalMapper_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSignalMapper_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSignalMapper_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSignalMapper_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSignalMapper_disconnectNotify
  gen_qsignalmapper_types.QSignalMapper(h: fcQSignalMapper_new(addr(vtbl[]), ))

proc create*(T: type gen_qsignalmapper_types.QSignalMapper,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSignalMapperVTable = nil): gen_qsignalmapper_types.QSignalMapper =
  let vtbl = if vtbl == nil: new QSignalMapperVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSignalMapperVTable, _: ptr cQSignalMapper) {.cdecl.} =
    let vtbl = cast[ref QSignalMapperVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSignalMapper_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSignalMapper_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSignalMapper_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSignalMapper_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSignalMapper_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSignalMapper_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSignalMapper_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSignalMapper_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSignalMapper_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSignalMapper_disconnectNotify
  gen_qsignalmapper_types.QSignalMapper(h: fcQSignalMapper_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qsignalmapper_types.QSignalMapper): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_staticMetaObject())
proc delete*(self: gen_qsignalmapper_types.QSignalMapper) =
  fcQSignalMapper_delete(self.h)
