import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml")  & " -fPIC"
{.compile("gen_qqmlpropertymap.cpp", cflags).}


import ./gen_qqmlpropertymap_types
export gen_qqmlpropertymap_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQQmlPropertyMap*{.exportc: "QQmlPropertyMap", incompleteStruct.} = object

proc fcQQmlPropertyMap_metaObject(self: pointer, ): pointer {.importc: "QQmlPropertyMap_metaObject".}
proc fcQQmlPropertyMap_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlPropertyMap_metacast".}
proc fcQQmlPropertyMap_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlPropertyMap_metacall".}
proc fcQQmlPropertyMap_tr(s: cstring): struct_miqt_string {.importc: "QQmlPropertyMap_tr".}
proc fcQQmlPropertyMap_value(self: pointer, key: struct_miqt_string): pointer {.importc: "QQmlPropertyMap_value".}
proc fcQQmlPropertyMap_insert(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QQmlPropertyMap_insert".}
proc fcQQmlPropertyMap_insertWithValues(self: pointer, values: struct_miqt_map): void {.importc: "QQmlPropertyMap_insertWithValues".}
proc fcQQmlPropertyMap_clear(self: pointer, key: struct_miqt_string): void {.importc: "QQmlPropertyMap_clear".}
proc fcQQmlPropertyMap_freeze(self: pointer, ): void {.importc: "QQmlPropertyMap_freeze".}
proc fcQQmlPropertyMap_keys(self: pointer, ): struct_miqt_array {.importc: "QQmlPropertyMap_keys".}
proc fcQQmlPropertyMap_count(self: pointer, ): cint {.importc: "QQmlPropertyMap_count".}
proc fcQQmlPropertyMap_size(self: pointer, ): cint {.importc: "QQmlPropertyMap_size".}
proc fcQQmlPropertyMap_isEmpty(self: pointer, ): bool {.importc: "QQmlPropertyMap_isEmpty".}
proc fcQQmlPropertyMap_contains(self: pointer, key: struct_miqt_string): bool {.importc: "QQmlPropertyMap_contains".}
proc fcQQmlPropertyMap_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QQmlPropertyMap_operatorSubscript".}
proc fcQQmlPropertyMap_operatorSubscriptWithKey(self: pointer, key: struct_miqt_string): pointer {.importc: "QQmlPropertyMap_operatorSubscriptWithKey".}
proc fcQQmlPropertyMap_valueChanged(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QQmlPropertyMap_valueChanged".}
proc fcQQmlPropertyMap_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlPropertyMap_connect_valueChanged".}
proc fcQQmlPropertyMap_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlPropertyMap_tr2".}
proc fcQQmlPropertyMap_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlPropertyMap_tr3".}
type cQQmlPropertyMapVTable = object
  destructor*: proc(vtbl: ptr cQQmlPropertyMapVTable, self: ptr cQQmlPropertyMap) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  updateValue*: proc(vtbl, self: pointer, key: struct_miqt_string, input: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlPropertyMap_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlPropertyMap_virtualbase_metaObject".}
proc fcQQmlPropertyMap_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlPropertyMap_virtualbase_metacast".}
proc fcQQmlPropertyMap_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlPropertyMap_virtualbase_metacall".}
proc fcQQmlPropertyMap_virtualbase_updateValue(self: pointer, key: struct_miqt_string, input: pointer): pointer {.importc: "QQmlPropertyMap_virtualbase_updateValue".}
proc fcQQmlPropertyMap_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlPropertyMap_virtualbase_event".}
proc fcQQmlPropertyMap_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlPropertyMap_virtualbase_eventFilter".}
proc fcQQmlPropertyMap_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlPropertyMap_virtualbase_timerEvent".}
proc fcQQmlPropertyMap_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlPropertyMap_virtualbase_childEvent".}
proc fcQQmlPropertyMap_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlPropertyMap_virtualbase_customEvent".}
proc fcQQmlPropertyMap_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlPropertyMap_virtualbase_connectNotify".}
proc fcQQmlPropertyMap_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlPropertyMap_virtualbase_disconnectNotify".}
proc fcQQmlPropertyMap_protectedbase_sender(self: pointer, ): pointer {.importc: "QQmlPropertyMap_protectedbase_sender".}
proc fcQQmlPropertyMap_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQmlPropertyMap_protectedbase_senderSignalIndex".}
proc fcQQmlPropertyMap_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlPropertyMap_protectedbase_receivers".}
proc fcQQmlPropertyMap_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlPropertyMap_protectedbase_isSignalConnected".}
proc fcQQmlPropertyMap_new(vtbl: pointer, ): ptr cQQmlPropertyMap {.importc: "QQmlPropertyMap_new".}
proc fcQQmlPropertyMap_new2(vtbl: pointer, parent: pointer): ptr cQQmlPropertyMap {.importc: "QQmlPropertyMap_new2".}
proc fcQQmlPropertyMap_staticMetaObject(): pointer {.importc: "QQmlPropertyMap_staticMetaObject".}
proc fcQQmlPropertyMap_delete(self: pointer) {.importc: "QQmlPropertyMap_delete".}

proc metaObject*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlPropertyMap_metaObject(self.h))

proc metacast*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cstring): pointer =
  fcQQmlPropertyMap_metacast(self.h, param1)

proc metacall*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlPropertyMap_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring): string =
  let v_ms = fcQQmlPropertyMap_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_value(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc insert*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string, value: gen_qvariant_types.QVariant): void =
  fcQQmlPropertyMap_insert(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc insert*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, values: Table[string,gen_qvariant_types.QVariant]): void =
  var values_Keys_CArray = newSeq[struct_miqt_string](len(values))
  var values_Values_CArray = newSeq[pointer](len(values))
  var values_ctr = 0
  for valuesk, valuesv in values:
    values_Keys_CArray[values_ctr] = struct_miqt_string(data: values_k, len: csize_t(len(values_k)))
    values_Values_CArray[values_ctr] = values_v.h
    values_ctr += 1

  fcQQmlPropertyMap_insertWithValues(self.h, struct_miqt_map(len: csize_t(len(values)),keys: if len(values) == 0: nil else: addr(values_Keys_CArray[0]), values: if len(values) == 0: nil else: addr(values_Values_CArray[0]),))

proc clear*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string): void =
  fcQQmlPropertyMap_clear(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc freeze*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): void =
  fcQQmlPropertyMap_freeze(self.h)

proc keys*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): seq[string] =
  var v_ma = fcQQmlPropertyMap_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc count*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): cint =
  fcQQmlPropertyMap_count(self.h)

proc size*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): cint =
  fcQQmlPropertyMap_size(self.h)

proc isEmpty*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): bool =
  fcQQmlPropertyMap_isEmpty(self.h)

proc contains*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string): bool =
  fcQQmlPropertyMap_contains(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc operatorSubscript*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_operatorSubscript(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc operatorSubscript2*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_operatorSubscriptWithKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc valueChanged*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string, value: gen_qvariant_types.QVariant): void =
  fcQQmlPropertyMap_valueChanged(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

type QQmlPropertyMapvalueChangedSlot* = proc(key: string, value: gen_qvariant_types.QVariant)
proc miqt_exec_callback_cQQmlPropertyMap_valueChanged(slot: int, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQmlPropertyMapvalueChangedSlot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQQmlPropertyMap_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlPropertyMapvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvalueChanged*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapvalueChangedSlot) =
  var tmp = new QQmlPropertyMapvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_connect_valueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQmlPropertyMap_valueChanged, miqt_exec_callback_cQQmlPropertyMap_valueChanged_release)

proc tr*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring, c: cstring): string =
  let v_ms = fcQQmlPropertyMap_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlPropertyMap_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQmlPropertyMapmetaObjectProc* = proc(self: QQmlPropertyMap): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlPropertyMapmetacastProc* = proc(self: QQmlPropertyMap, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlPropertyMapmetacallProc* = proc(self: QQmlPropertyMap, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlPropertyMapupdateValueProc* = proc(self: QQmlPropertyMap, key: string, input: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QQmlPropertyMapeventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlPropertyMapeventFilterProc* = proc(self: QQmlPropertyMap, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlPropertyMaptimerEventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlPropertyMapchildEventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlPropertyMapcustomEventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlPropertyMapconnectNotifyProc* = proc(self: QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlPropertyMapdisconnectNotifyProc* = proc(self: QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlPropertyMapVTable* = object
  vtbl: cQQmlPropertyMapVTable
  metaObject*: QQmlPropertyMapmetaObjectProc
  metacast*: QQmlPropertyMapmetacastProc
  metacall*: QQmlPropertyMapmetacallProc
  updateValue*: QQmlPropertyMapupdateValueProc
  event*: QQmlPropertyMapeventProc
  eventFilter*: QQmlPropertyMapeventFilterProc
  timerEvent*: QQmlPropertyMaptimerEventProc
  childEvent*: QQmlPropertyMapchildEventProc
  customEvent*: QQmlPropertyMapcustomEventProc
  connectNotify*: QQmlPropertyMapconnectNotifyProc
  disconnectNotify*: QQmlPropertyMapdisconnectNotifyProc
proc QQmlPropertyMapmetaObject*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlPropertyMap_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlPropertyMap_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlPropertyMapmetacast*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cstring): pointer =
  fcQQmlPropertyMap_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlPropertyMap_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlPropertyMapmetacall*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlPropertyMap_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlPropertyMap_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlPropertyMapupdateValue*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string, input: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_virtualbase_updateValue(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), input.h))

proc miqt_exec_callback_cQQmlPropertyMap_updateValue(vtbl: pointer, self: pointer, key: struct_miqt_string, input: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qvariant_types.QVariant(h: input)
  var virtualReturn = vtbl[].updateValue(self, slotval1, slotval2)
  virtualReturn.h

proc QQmlPropertyMapevent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlPropertyMap_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQmlPropertyMap_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlPropertyMapeventFilter*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlPropertyMap_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlPropertyMap_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlPropertyMaptimerEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlPropertyMap_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlPropertyMap_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlPropertyMapchildEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlPropertyMap_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlPropertyMap_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlPropertyMapcustomEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlPropertyMap_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlPropertyMap_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlPropertyMapconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlPropertyMap_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlPropertyMap_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlPropertyMapdisconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlPropertyMap_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlPropertyMap_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](vtbl)
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlPropertyMap_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): cint =
  fcQQmlPropertyMap_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: cstring): cint =
  fcQQmlPropertyMap_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlPropertyMap_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap,
    vtbl: ref QQmlPropertyMapVTable = nil): gen_qqmlpropertymap_types.QQmlPropertyMap =
  let vtbl = if vtbl == nil: new QQmlPropertyMapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlPropertyMapVTable, _: ptr cQQmlPropertyMap) {.cdecl.} =
    let vtbl = cast[ref QQmlPropertyMapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlPropertyMap_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlPropertyMap_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlPropertyMap_metacall
  if not isNil(vtbl.updateValue):
    vtbl[].vtbl.updateValue = miqt_exec_callback_cQQmlPropertyMap_updateValue
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlPropertyMap_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlPropertyMap_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlPropertyMap_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlPropertyMap_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlPropertyMap_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlPropertyMap_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlPropertyMap_disconnectNotify
  gen_qqmlpropertymap_types.QQmlPropertyMap(h: fcQQmlPropertyMap_new(addr(vtbl[]), ))

proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlPropertyMapVTable = nil): gen_qqmlpropertymap_types.QQmlPropertyMap =
  let vtbl = if vtbl == nil: new QQmlPropertyMapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlPropertyMapVTable, _: ptr cQQmlPropertyMap) {.cdecl.} =
    let vtbl = cast[ref QQmlPropertyMapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlPropertyMap_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlPropertyMap_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlPropertyMap_metacall
  if not isNil(vtbl.updateValue):
    vtbl[].vtbl.updateValue = miqt_exec_callback_cQQmlPropertyMap_updateValue
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlPropertyMap_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlPropertyMap_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlPropertyMap_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlPropertyMap_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlPropertyMap_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlPropertyMap_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlPropertyMap_disconnectNotify
  gen_qqmlpropertymap_types.QQmlPropertyMap(h: fcQQmlPropertyMap_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlPropertyMap_staticMetaObject())
proc delete*(self: gen_qqmlpropertymap_types.QQmlPropertyMap) =
  fcQQmlPropertyMap_delete(self.h)
