import ./Qt5Multimedia_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qmediaobject.cpp", cflags).}


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
proc fcQMediaObject_tr(s: cstring): struct_miqt_string {.importc: "QMediaObject_tr".}
proc fcQMediaObject_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaObject_trUtf8".}
proc fcQMediaObject_isAvailable(self: pointer): bool {.importc: "QMediaObject_isAvailable".}
proc fcQMediaObject_availability(self: pointer): cint {.importc: "QMediaObject_availability".}
proc fcQMediaObject_service(self: pointer): pointer {.importc: "QMediaObject_service".}
proc fcQMediaObject_notifyInterval(self: pointer): cint {.importc: "QMediaObject_notifyInterval".}
proc fcQMediaObject_setNotifyInterval(self: pointer, milliSeconds: cint): void {.importc: "QMediaObject_setNotifyInterval".}
proc fcQMediaObject_bindX(self: pointer, param1: pointer): bool {.importc: "QMediaObject_bind".}
proc fcQMediaObject_unbind(self: pointer, param1: pointer): void {.importc: "QMediaObject_unbind".}
proc fcQMediaObject_isMetaDataAvailable(self: pointer): bool {.importc: "QMediaObject_isMetaDataAvailable".}
proc fcQMediaObject_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMediaObject_metaData".}
proc fcQMediaObject_availableMetaData(self: pointer): struct_miqt_array {.importc: "QMediaObject_availableMetaData".}
proc fcQMediaObject_notifyIntervalChanged(self: pointer, milliSeconds: cint): void {.importc: "QMediaObject_notifyIntervalChanged".}
proc fcQMediaObject_connect_notifyIntervalChanged(self: pointer, slot: int, callback: proc (slot: int, milliSeconds: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_notifyIntervalChanged".}
proc fcQMediaObject_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMediaObject_metaDataAvailableChanged".}
proc fcQMediaObject_connect_metaDataAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_metaDataAvailableChanged".}
proc fcQMediaObject_metaDataChanged(self: pointer): void {.importc: "QMediaObject_metaDataChanged".}
proc fcQMediaObject_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_metaDataChanged".}
proc fcQMediaObject_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMediaObject_metaDataChanged2".}
proc fcQMediaObject_connect_metaDataChanged2(self: pointer, slot: int, callback: proc (slot: int, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_metaDataChanged2".}
proc fcQMediaObject_availabilityChanged(self: pointer, available: bool): void {.importc: "QMediaObject_availabilityChanged".}
proc fcQMediaObject_connect_availabilityChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_availabilityChanged".}
proc fcQMediaObject_availabilityChangedWithAvailability(self: pointer, availability: cint): void {.importc: "QMediaObject_availabilityChangedWithAvailability".}
proc fcQMediaObject_connect_availabilityChangedWithAvailability(self: pointer, slot: int, callback: proc (slot: int, availability: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaObject_connect_availabilityChangedWithAvailability".}
proc fcQMediaObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaObject_tr2".}
proc fcQMediaObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaObject_tr3".}
proc fcQMediaObject_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaObject_trUtf82".}
proc fcQMediaObject_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaObject_trUtf83".}
proc fcQMediaObject_protectedbase_addPropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QMediaObject_protectedbase_addPropertyWatch".}
proc fcQMediaObject_protectedbase_removePropertyWatch(self: pointer, name: struct_miqt_string): void {.importc: "QMediaObject_protectedbase_removePropertyWatch".}
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
  let v_ms = fcQMediaObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaobject_types.QMediaObject, s: cstring): string =
  let v_ms = fcQMediaObject_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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

proc metaData*(self: gen_qmediaobject_types.QMediaObject, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMediaObject_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc availableMetaData*(self: gen_qmediaobject_types.QMediaObject): seq[string] =
  var v_ma = fcQMediaObject_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc notifyIntervalChanged*(self: gen_qmediaobject_types.QMediaObject, milliSeconds: cint): void =
  fcQMediaObject_notifyIntervalChanged(self.h, milliSeconds)

type QMediaObjectnotifyIntervalChangedSlot* = proc(milliSeconds: cint)
proc cQMediaObject_slot_callback_notifyIntervalChanged(slot: int, milliSeconds: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectnotifyIntervalChangedSlot](cast[pointer](slot))
  let slotval1 = milliSeconds

  nimfunc[](slotval1)

proc cQMediaObject_slot_callback_notifyIntervalChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectnotifyIntervalChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnotifyIntervalChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectnotifyIntervalChangedSlot) =
  var tmp = new QMediaObjectnotifyIntervalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_notifyIntervalChanged(self.h, cast[int](addr tmp[]), cQMediaObject_slot_callback_notifyIntervalChanged, cQMediaObject_slot_callback_notifyIntervalChanged_release)

proc metaDataAvailableChanged*(self: gen_qmediaobject_types.QMediaObject, available: bool): void =
  fcQMediaObject_metaDataAvailableChanged(self.h, available)

type QMediaObjectmetaDataAvailableChangedSlot* = proc(available: bool)
proc cQMediaObject_slot_callback_metaDataAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectmetaDataAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc cQMediaObject_slot_callback_metaDataAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectmetaDataAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataAvailableChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectmetaDataAvailableChangedSlot) =
  var tmp = new QMediaObjectmetaDataAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]), cQMediaObject_slot_callback_metaDataAvailableChanged, cQMediaObject_slot_callback_metaDataAvailableChanged_release)

proc metaDataChanged*(self: gen_qmediaobject_types.QMediaObject): void =
  fcQMediaObject_metaDataChanged(self.h)

type QMediaObjectmetaDataChangedSlot* = proc()
proc cQMediaObject_slot_callback_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectmetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaObject_slot_callback_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectmetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectmetaDataChangedSlot) =
  var tmp = new QMediaObjectmetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_metaDataChanged(self.h, cast[int](addr tmp[]), cQMediaObject_slot_callback_metaDataChanged, cQMediaObject_slot_callback_metaDataChanged_release)

proc metaDataChanged*(self: gen_qmediaobject_types.QMediaObject, key: string, value: gen_qvariant_types.QVariant): void =
  fcQMediaObject_metaDataChanged2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

type QMediaObjectmetaDataChanged2Slot* = proc(key: string, value: gen_qvariant_types.QVariant)
proc cQMediaObject_slot_callback_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectmetaDataChanged2Slot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQMediaObject_slot_callback_metaDataChanged2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectmetaDataChanged2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectmetaDataChanged2Slot) =
  var tmp = new QMediaObjectmetaDataChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_metaDataChanged2(self.h, cast[int](addr tmp[]), cQMediaObject_slot_callback_metaDataChanged2, cQMediaObject_slot_callback_metaDataChanged2_release)

proc availabilityChanged*(self: gen_qmediaobject_types.QMediaObject, available: bool): void =
  fcQMediaObject_availabilityChanged(self.h, available)

type QMediaObjectavailabilityChangedSlot* = proc(available: bool)
proc cQMediaObject_slot_callback_availabilityChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectavailabilityChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc cQMediaObject_slot_callback_availabilityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectavailabilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailabilityChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectavailabilityChangedSlot) =
  var tmp = new QMediaObjectavailabilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_availabilityChanged(self.h, cast[int](addr tmp[]), cQMediaObject_slot_callback_availabilityChanged, cQMediaObject_slot_callback_availabilityChanged_release)

proc availabilityChanged*(self: gen_qmediaobject_types.QMediaObject, availability: cint): void =
  fcQMediaObject_availabilityChangedWithAvailability(self.h, cint(availability))

type QMediaObjectavailabilityChangedWithAvailabilitySlot* = proc(availability: cint)
proc cQMediaObject_slot_callback_availabilityChangedWithAvailability(slot: int, availability: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMediaObjectavailabilityChangedWithAvailabilitySlot](cast[pointer](slot))
  let slotval1 = cint(availability)

  nimfunc[](slotval1)

proc cQMediaObject_slot_callback_availabilityChangedWithAvailability_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaObjectavailabilityChangedWithAvailabilitySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailabilityChanged*(self: gen_qmediaobject_types.QMediaObject, slot: QMediaObjectavailabilityChangedWithAvailabilitySlot) =
  var tmp = new QMediaObjectavailabilityChangedWithAvailabilitySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaObject_connect_availabilityChangedWithAvailability(self.h, cast[int](addr tmp[]), cQMediaObject_slot_callback_availabilityChangedWithAvailability, cQMediaObject_slot_callback_availabilityChangedWithAvailability_release)

proc tr*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring): string =
  let v_ms = fcQMediaObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring): string =
  let v_ms = fcQMediaObject_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaobject_types.QMediaObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaObject_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPropertyWatch*(self: gen_qmediaobject_types.QMediaObject, name: seq[byte]): void =
  fcQMediaObject_protectedbase_addPropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

proc removePropertyWatch*(self: gen_qmediaobject_types.QMediaObject, name: seq[byte]): void =
  fcQMediaObject_protectedbase_removePropertyWatch(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))))

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
