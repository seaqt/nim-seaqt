import ./qtqml_pkg

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


{.compile("gen_qqmlpropertymap.cpp", QtQmlCFlags).}


import ./gen_qqmlpropertymap_types
export gen_qqmlpropertymap_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQQmlPropertyMap*{.exportc: "QQmlPropertyMap", incompleteStruct.} = object

proc fcQQmlPropertyMap_metaObject(self: pointer): pointer {.importc: "QQmlPropertyMap_metaObject".}
proc fcQQmlPropertyMap_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlPropertyMap_metacast".}
proc fcQQmlPropertyMap_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlPropertyMap_metacall".}
proc fcQQmlPropertyMap_tr(s: cstring): struct_miqt_string {.importc: "QQmlPropertyMap_tr".}
proc fcQQmlPropertyMap_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlPropertyMap_trUtf8".}
proc fcQQmlPropertyMap_value(self: pointer, key: struct_miqt_string): pointer {.importc: "QQmlPropertyMap_value".}
proc fcQQmlPropertyMap_insert(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QQmlPropertyMap_insert".}
proc fcQQmlPropertyMap_clear(self: pointer, key: struct_miqt_string): void {.importc: "QQmlPropertyMap_clear".}
proc fcQQmlPropertyMap_keys(self: pointer): struct_miqt_array {.importc: "QQmlPropertyMap_keys".}
proc fcQQmlPropertyMap_count(self: pointer): cint {.importc: "QQmlPropertyMap_count".}
proc fcQQmlPropertyMap_size(self: pointer): cint {.importc: "QQmlPropertyMap_size".}
proc fcQQmlPropertyMap_isEmpty(self: pointer): bool {.importc: "QQmlPropertyMap_isEmpty".}
proc fcQQmlPropertyMap_contains(self: pointer, key: struct_miqt_string): bool {.importc: "QQmlPropertyMap_contains".}
proc fcQQmlPropertyMap_operatorSubscript(self: pointer, key: struct_miqt_string): pointer {.importc: "QQmlPropertyMap_operatorSubscript".}
proc fcQQmlPropertyMap_operatorSubscriptWithKey(self: pointer, key: struct_miqt_string): pointer {.importc: "QQmlPropertyMap_operatorSubscriptWithKey".}
proc fcQQmlPropertyMap_valueChanged(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QQmlPropertyMap_valueChanged".}
proc fcQQmlPropertyMap_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlPropertyMap_connect_valueChanged".}
proc fcQQmlPropertyMap_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlPropertyMap_tr2".}
proc fcQQmlPropertyMap_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlPropertyMap_tr3".}
proc fcQQmlPropertyMap_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlPropertyMap_trUtf82".}
proc fcQQmlPropertyMap_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlPropertyMap_trUtf83".}
proc fcQQmlPropertyMap_vtbl(self: pointer): pointer {.importc: "QQmlPropertyMap_vtbl".}
proc fcQQmlPropertyMap_vdata(self: pointer): pointer {.importc: "QQmlPropertyMap_vdata".}

type cQQmlPropertyMapVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  updateValue*: proc(self: pointer, key: struct_miqt_string, input: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlPropertyMap_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlPropertyMap_virtualbase_metaObject".}
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
proc fcQQmlPropertyMap_protectedbase_sender(self: pointer): pointer {.importc: "QQmlPropertyMap_protectedbase_sender".}
proc fcQQmlPropertyMap_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlPropertyMap_protectedbase_senderSignalIndex".}
proc fcQQmlPropertyMap_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlPropertyMap_protectedbase_receivers".}
proc fcQQmlPropertyMap_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlPropertyMap_protectedbase_isSignalConnected".}
proc fcQQmlPropertyMap_new(vtbl, vdata: pointer): ptr cQQmlPropertyMap {.importc: "QQmlPropertyMap_new".}
proc fcQQmlPropertyMap_new2(vtbl, vdata: pointer, parent: pointer): ptr cQQmlPropertyMap {.importc: "QQmlPropertyMap_new2".}
proc fcQQmlPropertyMap_staticMetaObject(): pointer {.importc: "QQmlPropertyMap_staticMetaObject".}

proc metaObject*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlPropertyMap_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cstring): pointer =
  fcQQmlPropertyMap_metacast(self.h, param1)

proc metacall*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlPropertyMap_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring): string =
  let v_ms = fcQQmlPropertyMap_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring): string =
  let v_ms = fcQQmlPropertyMap_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_value(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc insert*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQQmlPropertyMap_insert(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h)

proc clear*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char]): void =
  fcQQmlPropertyMap_clear(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc keys*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): seq[string] =
  var v_ma = fcQQmlPropertyMap_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc count*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): cint =
  fcQQmlPropertyMap_count(self.h)

proc size*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): cint =
  fcQQmlPropertyMap_size(self.h)

proc isEmpty*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): bool =
  fcQQmlPropertyMap_isEmpty(self.h)

proc contains*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char]): bool =
  fcQQmlPropertyMap_contains(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc operatorSubscript*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_operatorSubscript(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: false)

proc operatorSubscript2*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_operatorSubscriptWithKey(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc valueChanged*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQQmlPropertyMap_valueChanged(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h)

type QQmlPropertyMapvalueChangedSlot* = proc(key: openArray[char], value: gen_qvariant_types.QVariant)
proc fcQQmlPropertyMap_slot_callback_valueChanged(slot: int, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QQmlPropertyMapvalueChangedSlot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQQmlPropertyMap_slot_callback_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlPropertyMapvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onValueChanged*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapvalueChangedSlot) =
  var tmp = new QQmlPropertyMapvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_connect_valueChanged(self.h, cast[int](addr tmp[]), fcQQmlPropertyMap_slot_callback_valueChanged, fcQQmlPropertyMap_slot_callback_valueChanged_release)

proc tr*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring, c: cstring): string =
  let v_ms = fcQQmlPropertyMap_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlPropertyMap_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring, c: cstring): string =
  let v_ms = fcQQmlPropertyMap_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlPropertyMap_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QQmlPropertyMapmetaObjectProc* = proc(self: QQmlPropertyMap): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlPropertyMapmetacastProc* = proc(self: QQmlPropertyMap, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlPropertyMapmetacallProc* = proc(self: QQmlPropertyMap, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlPropertyMapupdateValueProc* = proc(self: QQmlPropertyMap, key: openArray[char], input: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QQmlPropertyMapeventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlPropertyMapeventFilterProc* = proc(self: QQmlPropertyMap, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlPropertyMaptimerEventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlPropertyMapchildEventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlPropertyMapcustomEventProc* = proc(self: QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlPropertyMapconnectNotifyProc* = proc(self: QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlPropertyMapdisconnectNotifyProc* = proc(self: QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QQmlPropertyMapVTable* {.inheritable, pure.} = object
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

proc QQmlPropertyMapmetaObject*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlPropertyMap_virtualbase_metaObject(self.h), owned: false)

proc QQmlPropertyMapmetacast*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cstring): pointer =
  fcQQmlPropertyMap_virtualbase_metacast(self.h, param1)

proc QQmlPropertyMapmetacall*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlPropertyMap_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QQmlPropertyMapupdateValue*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: openArray[char], input: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlPropertyMap_virtualbase_updateValue(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), input.h), owned: true)

proc QQmlPropertyMapevent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlPropertyMap_virtualbase_event(self.h, event.h)

proc QQmlPropertyMapeventFilter*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlPropertyMap_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QQmlPropertyMaptimerEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlPropertyMap_virtualbase_timerEvent(self.h, event.h)

proc QQmlPropertyMapchildEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlPropertyMap_virtualbase_childEvent(self.h, event.h)

proc QQmlPropertyMapcustomEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlPropertyMap_virtualbase_customEvent(self.h, event.h)

proc QQmlPropertyMapconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlPropertyMap_virtualbase_connectNotify(self.h, signal.h)

proc QQmlPropertyMapdisconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlPropertyMap_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQQmlPropertyMap_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlPropertyMap_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQQmlPropertyMap_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlPropertyMap_vtable_callback_updateValue(self: pointer, key: struct_miqt_string, input: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qvariant_types.QVariant(h: input, owned: false)
  var virtualReturn = vtbl[].updateValue(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlPropertyMap_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQQmlPropertyMap_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQQmlPropertyMap_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQQmlPropertyMap_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQQmlPropertyMap_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQQmlPropertyMap_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQQmlPropertyMap_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
  let self = QQmlPropertyMap(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlPropertyMap* {.inheritable.} = ref object of QQmlPropertyMap
  vtbl*: cQQmlPropertyMapVTable

method metaObject*(self: VirtualQQmlPropertyMap): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlPropertyMapmetaObject(self[])
method metacast*(self: VirtualQQmlPropertyMap, param1: cstring): pointer {.base.} =
  QQmlPropertyMapmetacast(self[], param1)
method metacall*(self: VirtualQQmlPropertyMap, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlPropertyMapmetacall(self[], param1, param2, param3)
method updateValue*(self: VirtualQQmlPropertyMap, key: openArray[char], input: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QQmlPropertyMapupdateValue(self[], key, input)
method event*(self: VirtualQQmlPropertyMap, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlPropertyMapevent(self[], event)
method eventFilter*(self: VirtualQQmlPropertyMap, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlPropertyMapeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQQmlPropertyMap, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlPropertyMaptimerEvent(self[], event)
method childEvent*(self: VirtualQQmlPropertyMap, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlPropertyMapchildEvent(self[], event)
method customEvent*(self: VirtualQQmlPropertyMap, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlPropertyMapcustomEvent(self[], event)
method connectNotify*(self: VirtualQQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlPropertyMapconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlPropertyMapdisconnectNotify(self[], signal)

proc fcQQmlPropertyMap_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlPropertyMap_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQQmlPropertyMap_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQQmlPropertyMap_method_callback_updateValue(self: pointer, key: struct_miqt_string, input: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qvariant_types.QVariant(h: input, owned: false)
  var virtualReturn = inst.updateValue(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQQmlPropertyMap_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQQmlPropertyMap_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQQmlPropertyMap_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQQmlPropertyMap_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQQmlPropertyMap_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQQmlPropertyMap_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQQmlPropertyMap_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlPropertyMap](fcQQmlPropertyMap_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlPropertyMap_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlpropertymap_types.QQmlPropertyMap): cint =
  fcQQmlPropertyMap_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: cstring): cint =
  fcQQmlPropertyMap_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlPropertyMap_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap,
    vtbl: ref QQmlPropertyMapVTable = nil): gen_qqmlpropertymap_types.QQmlPropertyMap =
  let vtbl = if vtbl == nil: new QQmlPropertyMapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlPropertyMap_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlPropertyMap_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlPropertyMap_vtable_callback_metacall
  if not isNil(vtbl[].updateValue):
    vtbl[].vtbl.updateValue = fcQQmlPropertyMap_vtable_callback_updateValue
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlPropertyMap_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlPropertyMap_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlPropertyMap_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlPropertyMap_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlPropertyMap_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlPropertyMap_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlPropertyMap_vtable_callback_disconnectNotify
  gen_qqmlpropertymap_types.QQmlPropertyMap(h: fcQQmlPropertyMap_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQmlPropertyMapVTable = nil): gen_qqmlpropertymap_types.QQmlPropertyMap =
  let vtbl = if vtbl == nil: new QQmlPropertyMapVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlPropertyMapVTable](fcQQmlPropertyMap_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQQmlPropertyMap_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQQmlPropertyMap_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQQmlPropertyMap_vtable_callback_metacall
  if not isNil(vtbl[].updateValue):
    vtbl[].vtbl.updateValue = fcQQmlPropertyMap_vtable_callback_updateValue
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQQmlPropertyMap_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQQmlPropertyMap_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQQmlPropertyMap_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQQmlPropertyMap_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQQmlPropertyMap_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQQmlPropertyMap_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQQmlPropertyMap_vtable_callback_disconnectNotify
  gen_qqmlpropertymap_types.QQmlPropertyMap(h: fcQQmlPropertyMap_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQQmlPropertyMap_mvtbl = cQQmlPropertyMapVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlPropertyMap()[])](self.fcQQmlPropertyMap_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQQmlPropertyMap_method_callback_metaObject,
  metacast: fcQQmlPropertyMap_method_callback_metacast,
  metacall: fcQQmlPropertyMap_method_callback_metacall,
  updateValue: fcQQmlPropertyMap_method_callback_updateValue,
  event: fcQQmlPropertyMap_method_callback_event,
  eventFilter: fcQQmlPropertyMap_method_callback_eventFilter,
  timerEvent: fcQQmlPropertyMap_method_callback_timerEvent,
  childEvent: fcQQmlPropertyMap_method_callback_childEvent,
  customEvent: fcQQmlPropertyMap_method_callback_customEvent,
  connectNotify: fcQQmlPropertyMap_method_callback_connectNotify,
  disconnectNotify: fcQQmlPropertyMap_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap,
    inst: VirtualQQmlPropertyMap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlPropertyMap_new(addr(cQQmlPropertyMap_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap,
    parent: gen_qobject_types.QObject,
    inst: VirtualQQmlPropertyMap) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlPropertyMap_new2(addr(cQQmlPropertyMap_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlpropertymap_types.QQmlPropertyMap): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlPropertyMap_staticMetaObject())
