import ./qtmultimedia_pkg

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


{.compile("gen_qmetadatareadercontrol.cpp", QtMultimediaCFlags).}


import ./gen_qmetadatareadercontrol_types
export gen_qmetadatareadercontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qmediacontrol

type cQMetaDataReaderControl*{.exportc: "QMetaDataReaderControl", incompleteStruct.} = object

proc fcQMetaDataReaderControl_metaObject(self: pointer): pointer {.importc: "QMetaDataReaderControl_metaObject".}
proc fcQMetaDataReaderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMetaDataReaderControl_metacast".}
proc fcQMetaDataReaderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMetaDataReaderControl_metacall".}
proc fcQMetaDataReaderControl_tr(s: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_tr".}
proc fcQMetaDataReaderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_trUtf8".}
proc fcQMetaDataReaderControl_isMetaDataAvailable(self: pointer): bool {.importc: "QMetaDataReaderControl_isMetaDataAvailable".}
proc fcQMetaDataReaderControl_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMetaDataReaderControl_metaData".}
proc fcQMetaDataReaderControl_availableMetaData(self: pointer): struct_miqt_array {.importc: "QMetaDataReaderControl_availableMetaData".}
proc fcQMetaDataReaderControl_metaDataChanged(self: pointer): void {.importc: "QMetaDataReaderControl_metaDataChanged".}
proc fcQMetaDataReaderControl_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMetaDataReaderControl_connect_metaDataChanged".}
proc fcQMetaDataReaderControl_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMetaDataReaderControl_metaDataChanged2".}
proc fcQMetaDataReaderControl_connect_metaDataChanged2(self: pointer, slot: int, callback: proc (slot: int, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMetaDataReaderControl_connect_metaDataChanged2".}
proc fcQMetaDataReaderControl_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMetaDataReaderControl_metaDataAvailableChanged".}
proc fcQMetaDataReaderControl_connect_metaDataAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMetaDataReaderControl_connect_metaDataAvailableChanged".}
proc fcQMetaDataReaderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_tr2".}
proc fcQMetaDataReaderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataReaderControl_tr3".}
proc fcQMetaDataReaderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataReaderControl_trUtf82".}
proc fcQMetaDataReaderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataReaderControl_trUtf83".}
proc fcQMetaDataReaderControl_protectedbase_sender(self: pointer): pointer {.importc: "QMetaDataReaderControl_protectedbase_sender".}
proc fcQMetaDataReaderControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMetaDataReaderControl_protectedbase_senderSignalIndex".}
proc fcQMetaDataReaderControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMetaDataReaderControl_protectedbase_receivers".}
proc fcQMetaDataReaderControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMetaDataReaderControl_protectedbase_isSignalConnected".}
proc fcQMetaDataReaderControl_staticMetaObject(): pointer {.importc: "QMetaDataReaderControl_staticMetaObject".}

proc metaObject*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaDataReaderControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, param1: cstring): pointer =
  fcQMetaDataReaderControl_metacast(self.h, param1)

proc metacall*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMetaDataReaderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmetadatareadercontrol_types.QMetaDataReaderControl, s: cstring): string =
  let v_ms = fcQMetaDataReaderControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmetadatareadercontrol_types.QMetaDataReaderControl, s: cstring): string =
  let v_ms = fcQMetaDataReaderControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isMetaDataAvailable*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl): bool =
  fcQMetaDataReaderControl_isMetaDataAvailable(self.h)

proc metaData*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, key: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMetaDataReaderControl_metaData(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc availableMetaData*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl): seq[string] =
  var v_ma = fcQMetaDataReaderControl_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc metaDataChanged*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl): void =
  fcQMetaDataReaderControl_metaDataChanged(self.h)

type QMetaDataReaderControlmetaDataChangedSlot* = proc()
proc cQMetaDataReaderControl_slot_callback_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMetaDataReaderControlmetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMetaDataReaderControl_slot_callback_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMetaDataReaderControlmetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, slot: QMetaDataReaderControlmetaDataChangedSlot) =
  var tmp = new QMetaDataReaderControlmetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataReaderControl_connect_metaDataChanged(self.h, cast[int](addr tmp[]), cQMetaDataReaderControl_slot_callback_metaDataChanged, cQMetaDataReaderControl_slot_callback_metaDataChanged_release)

proc metaDataChanged*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, key: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQMetaDataReaderControl_metaDataChanged2(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h)

type QMetaDataReaderControlmetaDataChanged2Slot* = proc(key: openArray[char], value: gen_qvariant_types.QVariant)
proc cQMetaDataReaderControl_slot_callback_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMetaDataReaderControlmetaDataChanged2Slot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQMetaDataReaderControl_slot_callback_metaDataChanged2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMetaDataReaderControlmetaDataChanged2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, slot: QMetaDataReaderControlmetaDataChanged2Slot) =
  var tmp = new QMetaDataReaderControlmetaDataChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataReaderControl_connect_metaDataChanged2(self.h, cast[int](addr tmp[]), cQMetaDataReaderControl_slot_callback_metaDataChanged2, cQMetaDataReaderControl_slot_callback_metaDataChanged2_release)

proc metaDataAvailableChanged*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, available: bool): void =
  fcQMetaDataReaderControl_metaDataAvailableChanged(self.h, available)

type QMetaDataReaderControlmetaDataAvailableChangedSlot* = proc(available: bool)
proc cQMetaDataReaderControl_slot_callback_metaDataAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMetaDataReaderControlmetaDataAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc cQMetaDataReaderControl_slot_callback_metaDataAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMetaDataReaderControlmetaDataAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataAvailableChanged*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, slot: QMetaDataReaderControlmetaDataAvailableChangedSlot) =
  var tmp = new QMetaDataReaderControlmetaDataAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataReaderControl_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]), cQMetaDataReaderControl_slot_callback_metaDataAvailableChanged, cQMetaDataReaderControl_slot_callback_metaDataAvailableChanged_release)

proc tr*(_: type gen_qmetadatareadercontrol_types.QMetaDataReaderControl, s: cstring, c: cstring): string =
  let v_ms = fcQMetaDataReaderControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmetadatareadercontrol_types.QMetaDataReaderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMetaDataReaderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmetadatareadercontrol_types.QMetaDataReaderControl, s: cstring, c: cstring): string =
  let v_ms = fcQMetaDataReaderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmetadatareadercontrol_types.QMetaDataReaderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMetaDataReaderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaDataReaderControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl): cint =
  fcQMetaDataReaderControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, signal: cstring): cint =
  fcQMetaDataReaderControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmetadatareadercontrol_types.QMetaDataReaderControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMetaDataReaderControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmetadatareadercontrol_types.QMetaDataReaderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaDataReaderControl_staticMetaObject())
