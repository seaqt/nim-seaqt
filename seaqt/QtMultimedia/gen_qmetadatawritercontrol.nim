import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmetadatawritercontrol.cpp", cflags).}


import ./gen_qmetadatawritercontrol_types
export gen_qmetadatawritercontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qmediacontrol
export
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qmediacontrol

type cQMetaDataWriterControl*{.exportc: "QMetaDataWriterControl", incompleteStruct.} = object

proc fcQMetaDataWriterControl_metaObject(self: pointer, ): pointer {.importc: "QMetaDataWriterControl_metaObject".}
proc fcQMetaDataWriterControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMetaDataWriterControl_metacast".}
proc fcQMetaDataWriterControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMetaDataWriterControl_metacall".}
proc fcQMetaDataWriterControl_tr(s: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_tr".}
proc fcQMetaDataWriterControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_trUtf8".}
proc fcQMetaDataWriterControl_isWritable(self: pointer, ): bool {.importc: "QMetaDataWriterControl_isWritable".}
proc fcQMetaDataWriterControl_isMetaDataAvailable(self: pointer, ): bool {.importc: "QMetaDataWriterControl_isMetaDataAvailable".}
proc fcQMetaDataWriterControl_metaData(self: pointer, key: struct_miqt_string): pointer {.importc: "QMetaDataWriterControl_metaData".}
proc fcQMetaDataWriterControl_setMetaData(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMetaDataWriterControl_setMetaData".}
proc fcQMetaDataWriterControl_availableMetaData(self: pointer, ): struct_miqt_array {.importc: "QMetaDataWriterControl_availableMetaData".}
proc fcQMetaDataWriterControl_metaDataChanged(self: pointer, ): void {.importc: "QMetaDataWriterControl_metaDataChanged".}
proc fcQMetaDataWriterControl_connect_metaDataChanged(self: pointer, slot: int) {.importc: "QMetaDataWriterControl_connect_metaDataChanged".}
proc fcQMetaDataWriterControl_metaDataChanged2(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QMetaDataWriterControl_metaDataChanged2".}
proc fcQMetaDataWriterControl_connect_metaDataChanged2(self: pointer, slot: int) {.importc: "QMetaDataWriterControl_connect_metaDataChanged2".}
proc fcQMetaDataWriterControl_writableChanged(self: pointer, writable: bool): void {.importc: "QMetaDataWriterControl_writableChanged".}
proc fcQMetaDataWriterControl_connect_writableChanged(self: pointer, slot: int) {.importc: "QMetaDataWriterControl_connect_writableChanged".}
proc fcQMetaDataWriterControl_metaDataAvailableChanged(self: pointer, available: bool): void {.importc: "QMetaDataWriterControl_metaDataAvailableChanged".}
proc fcQMetaDataWriterControl_connect_metaDataAvailableChanged(self: pointer, slot: int) {.importc: "QMetaDataWriterControl_connect_metaDataAvailableChanged".}
proc fcQMetaDataWriterControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_tr2".}
proc fcQMetaDataWriterControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataWriterControl_tr3".}
proc fcQMetaDataWriterControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMetaDataWriterControl_trUtf82".}
proc fcQMetaDataWriterControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMetaDataWriterControl_trUtf83".}
proc fcQMetaDataWriterControl_staticMetaObject(): pointer {.importc: "QMetaDataWriterControl_staticMetaObject".}
proc fcQMetaDataWriterControl_delete(self: pointer) {.importc: "QMetaDataWriterControl_delete".}


func init*(T: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl, h: ptr cQMetaDataWriterControl): gen_qmetadatawritercontrol_types.QMetaDataWriterControl =
  T(h: h)
proc metaObject*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaDataWriterControl_metaObject(self.h))

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

proc isWritable*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, ): bool =
  fcQMetaDataWriterControl_isWritable(self.h)

proc isMetaDataAvailable*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, ): bool =
  fcQMetaDataWriterControl_isMetaDataAvailable(self.h)

proc metaData*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMetaDataWriterControl_metaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setMetaData*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, key: string, value: gen_qvariant_types.QVariant): void =
  fcQMetaDataWriterControl_setMetaData(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc availableMetaData*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, ): seq[string] =
  var v_ma = fcQMetaDataWriterControl_availableMetaData(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc metaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, ): void =
  fcQMetaDataWriterControl_metaDataChanged(self.h)

type QMetaDataWriterControlmetaDataChangedSlot* = proc()
proc miqt_exec_callback_QMetaDataWriterControl_metaDataChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMetaDataWriterControlmetaDataChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onmetaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlmetaDataChangedSlot) =
  var tmp = new QMetaDataWriterControlmetaDataChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_metaDataChanged(self.h, cast[int](addr tmp[]))

proc metaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, key: string, value: gen_qvariant_types.QVariant): void =
  fcQMetaDataWriterControl_metaDataChanged2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

type QMetaDataWriterControlmetaDataChanged2Slot* = proc(key: string, value: gen_qvariant_types.QVariant)
proc miqt_exec_callback_QMetaDataWriterControl_metaDataChanged2(slot: int, key: struct_miqt_string, value: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMetaDataWriterControlmetaDataChanged2Slot](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qvariant_types.QVariant(h: value)

  nimfunc[](slotval1, slotval2)

proc onmetaDataChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlmetaDataChanged2Slot) =
  var tmp = new QMetaDataWriterControlmetaDataChanged2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_metaDataChanged2(self.h, cast[int](addr tmp[]))

proc writableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, writable: bool): void =
  fcQMetaDataWriterControl_writableChanged(self.h, writable)

type QMetaDataWriterControlwritableChangedSlot* = proc(writable: bool)
proc miqt_exec_callback_QMetaDataWriterControl_writableChanged(slot: int, writable: bool) {.exportc.} =
  let nimfunc = cast[ptr QMetaDataWriterControlwritableChangedSlot](cast[pointer](slot))
  let slotval1 = writable

  nimfunc[](slotval1)

proc onwritableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlwritableChangedSlot) =
  var tmp = new QMetaDataWriterControlwritableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_writableChanged(self.h, cast[int](addr tmp[]))

proc metaDataAvailableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, available: bool): void =
  fcQMetaDataWriterControl_metaDataAvailableChanged(self.h, available)

type QMetaDataWriterControlmetaDataAvailableChangedSlot* = proc(available: bool)
proc miqt_exec_callback_QMetaDataWriterControl_metaDataAvailableChanged(slot: int, available: bool) {.exportc.} =
  let nimfunc = cast[ptr QMetaDataWriterControlmetaDataAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc onmetaDataAvailableChanged*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl, slot: QMetaDataWriterControlmetaDataAvailableChangedSlot) =
  var tmp = new QMetaDataWriterControlmetaDataAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMetaDataWriterControl_connect_metaDataAvailableChanged(self.h, cast[int](addr tmp[]))

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

proc staticMetaObject*(_: type gen_qmetadatawritercontrol_types.QMetaDataWriterControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMetaDataWriterControl_staticMetaObject())
proc delete*(self: gen_qmetadatawritercontrol_types.QMetaDataWriterControl) =
  fcQMetaDataWriterControl_delete(self.h)
