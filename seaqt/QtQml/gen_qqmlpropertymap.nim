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

proc fcQQmlPropertyMap_new(): ptr cQQmlPropertyMap {.importc: "QQmlPropertyMap_new".}
proc fcQQmlPropertyMap_new2(parent: pointer): ptr cQQmlPropertyMap {.importc: "QQmlPropertyMap_new2".}
proc fcQQmlPropertyMap_metaObject(self: pointer, ): pointer {.importc: "QQmlPropertyMap_metaObject".}
proc fcQQmlPropertyMap_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlPropertyMap_metacast".}
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
proc fcQQmlPropertyMap_connect_valueChanged(self: pointer, slot: int) {.importc: "QQmlPropertyMap_connect_valueChanged".}
proc fcQQmlPropertyMap_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlPropertyMap_tr2".}
proc fcQQmlPropertyMap_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlPropertyMap_tr3".}
proc fQQmlPropertyMap_virtualbase_updateValue(self: pointer, key: struct_miqt_string, input: pointer): pointer{.importc: "QQmlPropertyMap_virtualbase_updateValue".}
proc fcQQmlPropertyMap_override_virtual_updateValue(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_updateValue".}
proc fQQmlPropertyMap_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlPropertyMap_virtualbase_event".}
proc fcQQmlPropertyMap_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_event".}
proc fQQmlPropertyMap_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlPropertyMap_virtualbase_eventFilter".}
proc fcQQmlPropertyMap_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_eventFilter".}
proc fQQmlPropertyMap_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlPropertyMap_virtualbase_timerEvent".}
proc fcQQmlPropertyMap_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_timerEvent".}
proc fQQmlPropertyMap_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlPropertyMap_virtualbase_childEvent".}
proc fcQQmlPropertyMap_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_childEvent".}
proc fQQmlPropertyMap_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlPropertyMap_virtualbase_customEvent".}
proc fcQQmlPropertyMap_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_customEvent".}
proc fQQmlPropertyMap_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlPropertyMap_virtualbase_connectNotify".}
proc fcQQmlPropertyMap_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_connectNotify".}
proc fQQmlPropertyMap_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlPropertyMap_virtualbase_disconnectNotify".}
proc fcQQmlPropertyMap_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlPropertyMap_override_virtual_disconnectNotify".}
proc fcQQmlPropertyMap_delete(self: pointer) {.importc: "QQmlPropertyMap_delete".}


func init*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap, h: ptr cQQmlPropertyMap): gen_qqmlpropertymap_types.QQmlPropertyMap =
  T(h: h)
proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap, ): gen_qqmlpropertymap_types.QQmlPropertyMap =
  gen_qqmlpropertymap_types.QQmlPropertyMap.init(fcQQmlPropertyMap_new())

proc create*(T: type gen_qqmlpropertymap_types.QQmlPropertyMap, parent: gen_qobject_types.QObject): gen_qqmlpropertymap_types.QQmlPropertyMap =
  gen_qqmlpropertymap_types.QQmlPropertyMap.init(fcQQmlPropertyMap_new2(parent.h))

proc metaObject*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlPropertyMap_metaObject(self.h))

proc metacast*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, param1: cstring): pointer =
  fcQQmlPropertyMap_metacast(self.h, param1)

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
proc miqt_exec_callback_QQmlPropertyMap_valueChanged(slot: int, key: struct_miqt_string, value: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQmlPropertyMapvalueChangedSlot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2)

proc onvalueChanged*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapvalueChangedSlot) =
  var tmp = new QQmlPropertyMapvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_connect_valueChanged(self.h, cast[int](addr tmp[]))

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

proc QQmlPropertyMapupdateValue*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, key: string, input: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQQmlPropertyMap_virtualbase_updateValue(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), input.h))

type QQmlPropertyMapupdateValueProc* = proc(key: string, input: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onupdateValue*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapupdateValueProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMapupdateValueProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_updateValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_updateValue(self: ptr cQQmlPropertyMap, slot: int, key: struct_miqt_string, input: pointer): pointer {.exportc: "miqt_exec_callback_QQmlPropertyMap_updateValue ".} =
  var nimfunc = cast[ptr QQmlPropertyMapupdateValueProc](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: input)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QQmlPropertyMapevent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlPropertyMap_virtualbase_event(self.h, event.h)

type QQmlPropertyMapeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapeventProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMapeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_event(self: ptr cQQmlPropertyMap, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlPropertyMap_event ".} =
  var nimfunc = cast[ptr QQmlPropertyMapeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlPropertyMapeventFilter*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlPropertyMap_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlPropertyMapeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapeventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMapeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_eventFilter(self: ptr cQQmlPropertyMap, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlPropertyMap_eventFilter ".} =
  var nimfunc = cast[ptr QQmlPropertyMapeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlPropertyMaptimerEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlPropertyMap_virtualbase_timerEvent(self.h, event.h)

type QQmlPropertyMaptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMaptimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMaptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_timerEvent(self: ptr cQQmlPropertyMap, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlPropertyMap_timerEvent ".} =
  var nimfunc = cast[ptr QQmlPropertyMaptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlPropertyMapchildEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlPropertyMap_virtualbase_childEvent(self.h, event.h)

type QQmlPropertyMapchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMapchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_childEvent(self: ptr cQQmlPropertyMap, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlPropertyMap_childEvent ".} =
  var nimfunc = cast[ptr QQmlPropertyMapchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlPropertyMapcustomEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, event: gen_qcoreevent_types.QEvent): void =
  fQQmlPropertyMap_virtualbase_customEvent(self.h, event.h)

type QQmlPropertyMapcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapcustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMapcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_customEvent(self: ptr cQQmlPropertyMap, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlPropertyMap_customEvent ".} =
  var nimfunc = cast[ptr QQmlPropertyMapcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlPropertyMapconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlPropertyMap_virtualbase_connectNotify(self.h, signal.h)

type QQmlPropertyMapconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMapconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_connectNotify(self: ptr cQQmlPropertyMap, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlPropertyMap_connectNotify ".} =
  var nimfunc = cast[ptr QQmlPropertyMapconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlPropertyMapdisconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlPropertyMap_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlPropertyMapdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlpropertymap_types.QQmlPropertyMap, slot: QQmlPropertyMapdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlPropertyMapdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlPropertyMap_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlPropertyMap_disconnectNotify(self: ptr cQQmlPropertyMap, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlPropertyMap_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlPropertyMapdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qqmlpropertymap_types.QQmlPropertyMap) =
  fcQQmlPropertyMap_delete(self.h)
