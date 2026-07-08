import ./qtmultimedia_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qmediaobject.cpp", QtMultimediaCFlags).}


import ./gen_qmediaobject_types
export gen_qmediaobject_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qmediaservice_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qmediaservice_types

type cQMediaObject*{.exportc: "QMediaObject", incompleteStruct.} = object

proc fcQMediaObject_metaObject(self: pointer): pointer {.importc: "QMediaObject_metaObject".}
proc fcQMediaObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaObject_metacast".}
proc fcQMediaObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaObject_metacall".}
proc fcQMediaObject_trS(s: cstring): struct_seaqt_string {.importc: "QMediaObject_tr_s".}
proc fcQMediaObject_trUtf8S(s: cstring): struct_seaqt_string {.importc: "QMediaObject_trUtf8_s".}
proc fcQMediaObject_isAvailable(self: pointer): bool {.importc: "QMediaObject_isAvailable".}
proc fcQMediaObject_availability(self: pointer): cint {.importc: "QMediaObject_availability".}
proc fcQMediaObject_service(self: pointer): pointer {.importc: "QMediaObject_service".}
proc fcQMediaObject_notifyInterval(self: pointer): cint {.importc: "QMediaObject_notifyInterval".}
proc fcQMediaObject_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QMediaObject_setNotifyInterval".}
proc fcQMediaObject_bindX(self: pointer, param1: pointer): bool {.importc: "QMediaObject_bind".}
proc fcQMediaObject_unbind(self: pointer, param1: pointer): void {.importc: "QMediaObject_unbind".}
proc fcQMediaObject_isMetaDataAvailable(self: pointer): bool {.importc: "QMediaObject_isMetaDataAvailable".}
proc fcQMediaObject_metaData(self: pointer, key: struct_seaqt_string): pointer {.importc: "QMediaObject_metaData".}
proc fcQMediaObject_availableMetaData(self: pointer): struct_seaqt_array {.importc: "QMediaObject_availableMetaData".}
proc fcQMediaObject_notifyIntervalChanged(self: pointer, milliSeconds: cint): void {.importc: "QMediaObject_notifyIntervalChanged".}
proc fcQMediaObject_connect_notifyIntervalChanged(self: pointer, slot: int, callback: proc (slot: int, milliSeconds: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_notifyIntervalChanged".}
proc fcQMediaObject_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaObject_metaDataAvailableChanged".}
proc fcQMediaObject_connect_metaDataAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_metaDataAvailableChanged".}
proc fcQMediaObject_metaDataChanged(self: pointer): void {.importc: "QMediaObject_metaDataChanged".}
proc fcQMediaObject_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_metaDataChanged".}
proc fcQMediaObject_metaDataChangedKeyValue(self: pointer, key: struct_seaqt_string, value: pointer): void {.importc: "QMediaObject_metaDataChanged_key_value".}
proc fcQMediaObject_connect_metaDataChangedKeyValue(self: pointer, slot: int, callback: proc (slot: int, key: struct_seaqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_metaDataChanged_key_value".}
proc fcQMediaObject_availabilityChangedAvailable(self: pointer, available: bool): void {.importc: "QMediaObject_availabilityChanged_available".}
proc fcQMediaObject_connect_availabilityChangedAvailable(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_availabilityChanged_available".}
proc fcQMediaObject_availabilityChangedAvailability(self: pointer, availability: cint): void {.importc: "QMediaObject_availabilityChanged_availability".}
proc fcQMediaObject_connect_availabilityChangedAvailability(self: pointer, slot: int, callback: proc (slot: int, availability: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_availabilityChanged_availability".}
proc fcQMediaObject_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QMediaObject_tr_s_c".}
proc fcQMediaObject_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QMediaObject_tr_s_c_n".}
proc fcQMediaObject_trUtf8SC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QMediaObject_trUtf8_s_c".}
proc fcQMediaObject_trUtf8SCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QMediaObject_trUtf8_s_c_n".}
proc fcQMediaObject_protectedbase_addPropertyWatch(self: pointer, name: struct_seaqt_string): void {.importc: "QMediaObject_protectedbase_addPropertyWatch".}
proc fcQMediaObject_protectedbase_removePropertyWatch(self: pointer, name: struct_seaqt_string): void {.importc: "QMediaObject_protectedbase_removePropertyWatch".}
proc fcQMediaObject_protectedbase_sender(self: pointer): pointer {.importc: "QMediaObject_protectedbase_sender".}
proc fcQMediaObject_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaObject_protectedbase_senderSignalIndex".}
proc fcQMediaObject_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaObject_protectedbase_receivers".}
proc fcQMediaObject_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaObject_protectedbase_isSignalConnected".}
proc fcQMediaObject_staticMetaObject(): pointer {.importc: "QMediaObject_staticMetaObject".}

proc metaObject*(self: gen_qmediaobject_types.QMediaObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaObject_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediaobject_types.QMediaObject, param1: cstring): pointer =
  fcQMediaObject_metacast(self.h, param1)

proc metacall*(self: gen_qmediaobject_types.QMediaObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaobject_types.QMediaObject, s: cstring): string =
  let v_ms = fcQMediaObject_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaobject_types.QMediaObject, s: cstring): string =
  let v_ms = fcQMediaObject_trUtf8S(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isAvailable*(self: gen_qmediaobject_types.QMediaObject): bool =
  fcQMediaObject_isAvailable(self.h)

proc availability*(self: gen_qmediaobject_types.QMediaObject): cint =
  cint(fcQMediaObject_availability(self.h))

proc service*(self: gen_qmediaobject_types.QMediaObject): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fcQMediaObject_service(self.h), owned: false)

proc notifyInterval*(self: gen_qmediaobject_types.QMediaObject): cint =
  fcQMediaObject_notifyInterval(self.h)

proc setNotifyInterval*(self: gen_qmediaobject_types.QMediaObject, milliSeconds: cint): void =
  fcQMediaObject_setNotifyInterval(self.h, milliSeconds)

proc bindX*(self: gen_qmediaobject_types.QMediaObject, param1: gen_qobject_types.QObject): bool =
  fcQMediaObject_bindX(self.h, param1.h)

proc unbind*(self: gen_qmediaobject_types.QMediaObject, param1: gen_qobject_types.QObject): void =
  fcQMediaObject_unbind(self.h, param1.h)

proc isMetaDataAvailable*(self: gen_qmediaobject_types.QMediaObject): bool =
  fcQMediaObject_isMetaDataAvailable(self.h)

proc metaData*(self: gen_qmediaobject_types.QMediaObject, key: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMediaObject_metaData(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc availableMetaData*(self: gen_qmediaobject_types.QMediaObject): seq[string] =
  var v_ma = fcQMediaObject_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc notifyIntervalChanged*(self: gen_qmediaobject_types.QMediaObject, milliSeconds: cint): void =
  fcQMediaObject_notifyIntervalChanged(self.h, milliSeconds)

type QMediaObjectnotifyIntervalChangedSlot* = proc(milliSeconds: cint)
proc fcQMediaObject_slot_callback_notifyIntervalChanged(slot: int, milliSeconds: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectnotifyIntervalChangedSlot](cast[pointer](slot))
  let slotval1 = milliSeconds

  nimfunc[](slotval1)

proc fcQMediaObject_slot_callback_notifyIntervalChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectnotifyIntervalChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNotifyIntervalChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectnotifyIntervalChangedSlot) =
  var tmp = new QMediaObjectnotifyIntervalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_notifyIntervalChanged(self.h, cast[int](addr tmp[]), fcQMediaObject_slot_callback_notifyIntervalChanged, fcQMediaObject_slot_callback_notifyIntervalChanged_release)

proc metaDataAvailableChanged*(self: gen_qmediaobject_types.QMediaObject, available: bool): void =
  fcQMediaObject_metaDataAvailableChanged(self.h, available)

type QMediaObjectmetaDataAvailableChangedSlot* = proc(available: bool)
proc fcQMediaObject_slot_callback_metaDataAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectmetaDataAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc fcQMediaObject_slot_callback_metaDataAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectmetaDataAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMetaDataAvailableChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectmetaDataAvailableChangedSlot) =
  var tmp = new QMediaObjectmetaDataAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]), fcQMediaObject_slot_callback_metaDataAvailableChanged, fcQMediaObject_slot_callback_metaDataAvailableChanged_release)

proc metaDataChanged*(self: gen_qmediaobject_types.QMediaObject): void =
  fcQMediaObject_metaDataChanged(self.h)

type QMediaObjectmetaDataChangedSlot* = proc()
proc fcQMediaObject_slot_callback_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectmetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaObject_slot_callback_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectmetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMetaDataChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectmetaDataChangedSlot) =
  var tmp = new QMediaObjectmetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_metaDataChanged(self.h, cast[int](addr tmp[]), fcQMediaObject_slot_callback_metaDataChanged, fcQMediaObject_slot_callback_metaDataChanged_release)

proc metaDataChanged*(self: gen_qmediaobject_types.QMediaObject, key: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQMediaObject_metaDataChangedKeyValue(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h)

type QMediaObjectmetaDataChangedKeyValueSlot* = proc(key: openArray[char], value: gen_qvariant_types.QVariant)
proc fcQMediaObject_slot_callback_metaDataChangedKeyValue(slot: int, key: struct_seaqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectmetaDataChangedKeyValueSlot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQMediaObject_slot_callback_metaDataChangedKeyValue_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectmetaDataChangedKeyValueSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onMetaDataChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectmetaDataChangedKeyValueSlot) =
  var tmp = new QMediaObjectmetaDataChangedKeyValueSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_metaDataChangedKeyValue(self.h, cast[int](addr tmp[]), fcQMediaObject_slot_callback_metaDataChangedKeyValue, fcQMediaObject_slot_callback_metaDataChangedKeyValue_release)

proc availabilityChanged*(self: gen_qmediaobject_types.QMediaObject, available: bool): void =
  fcQMediaObject_availabilityChangedAvailable(self.h, available)

type QMediaObjectavailabilityChangedAvailableSlot* = proc(available: bool)
proc fcQMediaObject_slot_callback_availabilityChangedAvailable(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectavailabilityChangedAvailableSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc fcQMediaObject_slot_callback_availabilityChangedAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectavailabilityChangedAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAvailabilityChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectavailabilityChangedAvailableSlot) =
  var tmp = new QMediaObjectavailabilityChangedAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_availabilityChangedAvailable(self.h, cast[int](addr tmp[]), fcQMediaObject_slot_callback_availabilityChangedAvailable, fcQMediaObject_slot_callback_availabilityChangedAvailable_release)

proc availabilityChanged*(self: gen_qmediaobject_types.QMediaObject, availability: cint): void =
  fcQMediaObject_availabilityChangedAvailability(self.h, cint(availability))

type QMediaObjectavailabilityChangedAvailabilitySlot* = proc(availability: cint)
proc fcQMediaObject_slot_callback_availabilityChangedAvailability(slot: int, availability: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectavailabilityChangedAvailabilitySlot](cast[pointer](slot))
  let slotval1 = cint(availability)

  nimfunc[](slotval1)

proc fcQMediaObject_slot_callback_availabilityChangedAvailability_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectavailabilityChangedAvailabilitySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAvailabilityChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectavailabilityChangedAvailabilitySlot) =
  var tmp = new QMediaObjectavailabilityChangedAvailabilitySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_availabilityChangedAvailability(self.h, cast[int](addr tmp[]), fcQMediaObject_slot_callback_availabilityChangedAvailability, fcQMediaObject_slot_callback_availabilityChangedAvailability_release)

proc tr*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring): string =
  let v_ms = fcQMediaObject_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaObject_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring): string =
  let v_ms = fcQMediaObject_trUtf8SC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaObject_trUtf8SCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addPropertyWatch*(self: gen_qmediaobject_types.QMediaObject, name: openArray[byte]): void =
  fcQMediaObject_protectedbase_addPropertyWatch(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc removePropertyWatch*(self: gen_qmediaobject_types.QMediaObject, name: openArray[byte]): void =
  fcQMediaObject_protectedbase_removePropertyWatch(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc sender*(self: gen_qmediaobject_types.QMediaObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaObject_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediaobject_types.QMediaObject): cint =
  fcQMediaObject_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediaobject_types.QMediaObject, signal: cstring): cint =
  fcQMediaObject_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediaobject_types.QMediaObject, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaObject_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediaobject_types.QMediaObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaObject_staticMetaObject())
