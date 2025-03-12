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
{.compile("gen_qmetadatawritercontrol.cpp", cflags).}


import ./gen_qmetadatawritercontrol_types
export gen_qmetadatawritercontrol_types

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

type cQMetaDataWriterControl*{.exportc: "QMetaDataWriterControl", incompleteStruct.} = object

proc fcQMetaDataWriterControl_metaObject(self: pointer): pointer {.importc: "QMetaDataWriterControl_metaObject".}
proc fcQMetaDataWriterControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMetaDataWriterControl_metacast".}
proc fcQMetaDataWriterControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMetaDataWriterControl_metacall".}
proc fcQMetaDataWriterControl_tr(s: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_tr".}
proc fcQMetaDataWriterControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_trUtf8".}
proc fcQMetaDataWriterControl_isWritable(self: pointer): bool {.importc: "QMetaDataWriterControl_isWritable".}
proc fcQMetaDataWriterControl_isMetaDataAvailable(self: pointer): bool {.importc: "QMetaDataWriterControl_isMetaDataAvailable".}
proc fcQMetaDataWriterControl_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMetaDataWriterControl_metaData".}
proc fcQMetaDataWriterControl_setMetaData(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMetaDataWriterControl_setMetaData".}
proc fcQMetaDataWriterControl_availableMetaData(self: pointer): struct_miqt_array {.importc: "QMetaDataWriterControl_availableMetaData".}
proc fcQMetaDataWriterControl_metaDataChanged(self: pointer): void {.importc: "QMetaDataWriterControl_metaDataChanged".}
proc fcQMetaDataWriterControl_connect_metaDataChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMetaDataWriterControl_connect_metaDataChanged".}
proc fcQMetaDataWriterControl_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMetaDataWriterControl_metaDataChanged2".}
proc fcQMetaDataWriterControl_connect_metaDataChanged2(self: pointer, slot: int, callback: proc (slot: int, key: struct_miqt_string, value: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMetaDataWriterControl_connect_metaDataChanged2".}
proc fcQMetaDataWriterControl_writableChanged(self: pointer, writable: bool): void {.importc: "QMetaDataWriterControl_writableChanged".}
proc fcQMetaDataWriterControl_connect_writableChanged(self: pointer, slot: int, callback: proc (slot: int, writable: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMetaDataWriterControl_connect_writableChanged".}
proc fcQMetaDataWriterControl_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMetaDataWriterControl_metaDataAvailableChanged".}
proc fcQMetaDataWriterControl_connect_metaDataAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMetaDataWriterControl_connect_metaDataAvailableChanged".}
proc fcQMetaDataWriterControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_tr2".}
proc fcQMetaDataWriterControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataWriterControl_tr3".}
proc fcQMetaDataWriterControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_trUtf82".}
proc fcQMetaDataWriterControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataWriterControl_trUtf83".}
proc fcQMetaDataWriterControl_protectedbase_sender(self: pointer): pointer {.importc: "QMetaDataWriterControl_protectedbase_sender".}
proc fcQMetaDataWriterControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMetaDataWriterControl_protectedbase_senderSignalIndex".}
proc fcQMetaDataWriterControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMetaDataWriterControl_protectedbase_receivers".}
proc fcQMetaDataWriterControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMetaDataWriterControl_protectedbase_isSignalConnected".}
proc fcQMetaDataWriterControl_staticMetaObject(): pointer {.importc: "QMetaDataWriterControl_staticMetaObject".}

proc metaObject*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaDataWriterControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, param1: cstring): pointer =
  fcQMetaDataWriterControl_metacast(self.h, param1)

proc metacall*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMetaDataWriterControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl, s: cstring): string =
  let v_ms = fcQMetaDataWriterControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl, s: cstring): string =
  let v_ms = fcQMetaDataWriterControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isWritable*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl): bool =
  fcQMetaDataWriterControl_isWritable(self.h)

proc isMetaDataAvailable*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl): bool =
  fcQMetaDataWriterControl_isMetaDataAvailable(self.h)

proc metaData*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMetaDataWriterControl_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc setMetaData*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, key: string, value: gen_qvariant_types.QVariant): void =
  fcQMetaDataWriterControl_setMetaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc availableMetaData*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl): seq[string] =
  var v_ma = fcQMetaDataWriterControl_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc metaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl): void =
  fcQMetaDataWriterControl_metaDataChanged(self.h)

type QMetaDataWriterControlmetaDataChangedSlot* = proc()
proc cQMetaDataWriterControl_slot_callback_metaDataChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMetaDataWriterControlmetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMetaDataWriterControl_slot_callback_metaDataChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMetaDataWriterControlmetaDataChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlmetaDataChangedSlot) =
  var tmp = new QMetaDataWriterControlmetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_metaDataChanged(self.h, cast[int](addr tmp[]), cQMetaDataWriterControl_slot_callback_metaDataChanged, cQMetaDataWriterControl_slot_callback_metaDataChanged_release)

proc metaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, key: string, value: gen_qvariant_types.QVariant): void =
  fcQMetaDataWriterControl_metaDataChanged2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

type QMetaDataWriterControlmetaDataChanged2Slot* = proc(key: string, value: gen_qvariant_types.QVariant)
proc cQMetaDataWriterControl_slot_callback_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMetaDataWriterControlmetaDataChanged2Slot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)

  nimfunc[](slotval1, slotval2)

proc cQMetaDataWriterControl_slot_callback_metaDataChanged2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMetaDataWriterControlmetaDataChanged2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlmetaDataChanged2Slot) =
  var tmp = new QMetaDataWriterControlmetaDataChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_metaDataChanged2(self.h, cast[int](addr tmp[]), cQMetaDataWriterControl_slot_callback_metaDataChanged2, cQMetaDataWriterControl_slot_callback_metaDataChanged2_release)

proc writableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, writable: bool): void =
  fcQMetaDataWriterControl_writableChanged(self.h, writable)

type QMetaDataWriterControlwritableChangedSlot* = proc(writable: bool)
proc cQMetaDataWriterControl_slot_callback_writableChanged(slot: int, writable: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMetaDataWriterControlwritableChangedSlot](cast[pointer](slot))
  let slotval1 = writable

  nimfunc[](slotval1)

proc cQMetaDataWriterControl_slot_callback_writableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMetaDataWriterControlwritableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwritableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlwritableChangedSlot) =
  var tmp = new QMetaDataWriterControlwritableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_writableChanged(self.h, cast[int](addr tmp[]), cQMetaDataWriterControl_slot_callback_writableChanged, cQMetaDataWriterControl_slot_callback_writableChanged_release)

proc metaDataAvailableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, available: bool): void =
  fcQMetaDataWriterControl_metaDataAvailableChanged(self.h, available)

type QMetaDataWriterControlmetaDataAvailableChangedSlot* = proc(available: bool)
proc cQMetaDataWriterControl_slot_callback_metaDataAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QMetaDataWriterControlmetaDataAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc cQMetaDataWriterControl_slot_callback_metaDataAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMetaDataWriterControlmetaDataAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmetaDataAvailableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlmetaDataAvailableChangedSlot) =
  var tmp = new QMetaDataWriterControlmetaDataAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]), cQMetaDataWriterControl_slot_callback_metaDataAvailableChanged, cQMetaDataWriterControl_slot_callback_metaDataAvailableChanged_release)

proc tr*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl, s: cstring, c: cstring): string =
  let v_ms = fcQMetaDataWriterControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMetaDataWriterControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl, s: cstring, c: cstring): string =
  let v_ms = fcQMetaDataWriterControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMetaDataWriterControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMetaDataWriterControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl): cint =
  fcQMetaDataWriterControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, signal: cstring): cint =
  fcQMetaDataWriterControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMetaDataWriterControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaDataWriterControl_staticMetaObject())
