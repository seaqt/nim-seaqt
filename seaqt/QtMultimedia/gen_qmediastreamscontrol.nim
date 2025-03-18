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


{.compile("gen_qmediastreamscontrol.cpp", QtMultimediaCFlags).}


type QMediaStreamsControlStreamTypeEnum* = distinct cint
template UnknownStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 0
template VideoStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 1
template AudioStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 2
template SubPictureStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 3
template DataStream*(_: type QMediaStreamsControlStreamTypeEnum): untyped = 4


import ./gen_qmediastreamscontrol_types
export gen_qmediastreamscontrol_types

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

type cQMediaStreamsControl*{.exportc: "QMediaStreamsControl", incompleteStruct.} = object

proc fcQMediaStreamsControl_metaObject(self: pointer): pointer {.importc: "QMediaStreamsControl_metaObject".}
proc fcQMediaStreamsControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaStreamsControl_metacast".}
proc fcQMediaStreamsControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaStreamsControl_metacall".}
proc fcQMediaStreamsControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_tr".}
proc fcQMediaStreamsControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf8".}
proc fcQMediaStreamsControl_streamCount(self: pointer): cint {.importc: "QMediaStreamsControl_streamCount".}
proc fcQMediaStreamsControl_streamType(self: pointer, streamNumber: cint): cint {.importc: "QMediaStreamsControl_streamType".}
proc fcQMediaStreamsControl_metaData(self: pointer, streamNumber: cint, key: struct_miqt_string): pointer {.importc: "QMediaStreamsControl_metaData".}
proc fcQMediaStreamsControl_isActive(self: pointer, streamNumber: cint): bool {.importc: "QMediaStreamsControl_isActive".}
proc fcQMediaStreamsControl_setActive(self: pointer, streamNumber: cint, state: bool): void {.importc: "QMediaStreamsControl_setActive".}
proc fcQMediaStreamsControl_streamsChanged(self: pointer): void {.importc: "QMediaStreamsControl_streamsChanged".}
proc fcQMediaStreamsControl_connect_streamsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaStreamsControl_connect_streamsChanged".}
proc fcQMediaStreamsControl_activeStreamsChanged(self: pointer): void {.importc: "QMediaStreamsControl_activeStreamsChanged".}
proc fcQMediaStreamsControl_connect_activeStreamsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaStreamsControl_connect_activeStreamsChanged".}
proc fcQMediaStreamsControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_tr2".}
proc fcQMediaStreamsControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaStreamsControl_tr3".}
proc fcQMediaStreamsControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf82".}
proc fcQMediaStreamsControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaStreamsControl_trUtf83".}
proc fcQMediaStreamsControl_protectedbase_sender(self: pointer): pointer {.importc: "QMediaStreamsControl_protectedbase_sender".}
proc fcQMediaStreamsControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaStreamsControl_protectedbase_senderSignalIndex".}
proc fcQMediaStreamsControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaStreamsControl_protectedbase_receivers".}
proc fcQMediaStreamsControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaStreamsControl_protectedbase_isSignalConnected".}
proc fcQMediaStreamsControl_staticMetaObject(): pointer {.importc: "QMediaStreamsControl_staticMetaObject".}

proc metaObject*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaStreamsControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, param1: cstring): pointer =
  fcQMediaStreamsControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaStreamsControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring): string =
  let v_ms = fcQMediaStreamsControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring): string =
  let v_ms = fcQMediaStreamsControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc streamCount*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl): cint =
  fcQMediaStreamsControl_streamCount(self.h)

proc streamType*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint): cint =
  cint(fcQMediaStreamsControl_streamType(self.h, streamNumber))

proc metaData*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint, key: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMediaStreamsControl_metaData(self.h, streamNumber, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc isActive*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint): bool =
  fcQMediaStreamsControl_isActive(self.h, streamNumber)

proc setActive*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, streamNumber: cint, state: bool): void =
  fcQMediaStreamsControl_setActive(self.h, streamNumber, state)

proc streamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl): void =
  fcQMediaStreamsControl_streamsChanged(self.h)

type QMediaStreamsControlstreamsChangedSlot* = proc()
proc fcQMediaStreamsControl_slot_callback_streamsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaStreamsControlstreamsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaStreamsControl_slot_callback_streamsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaStreamsControlstreamsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStreamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, slot: QMediaStreamsControlstreamsChangedSlot) =
  var tmp = new QMediaStreamsControlstreamsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaStreamsControl_connect_streamsChanged(self.h, cast[int](addr tmp[]), fcQMediaStreamsControl_slot_callback_streamsChanged, fcQMediaStreamsControl_slot_callback_streamsChanged_release)

proc activeStreamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl): void =
  fcQMediaStreamsControl_activeStreamsChanged(self.h)

type QMediaStreamsControlactiveStreamsChangedSlot* = proc()
proc fcQMediaStreamsControl_slot_callback_activeStreamsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaStreamsControlactiveStreamsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaStreamsControl_slot_callback_activeStreamsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaStreamsControlactiveStreamsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActiveStreamsChanged*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, slot: QMediaStreamsControlactiveStreamsChangedSlot) =
  var tmp = new QMediaStreamsControlactiveStreamsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaStreamsControl_connect_activeStreamsChanged(self.h, cast[int](addr tmp[]), fcQMediaStreamsControl_slot_callback_activeStreamsChanged, fcQMediaStreamsControl_slot_callback_activeStreamsChanged_release)

proc tr*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaStreamsControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaStreamsControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaStreamsControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaStreamsControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaStreamsControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl): cint =
  fcQMediaStreamsControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, signal: cstring): cint =
  fcQMediaStreamsControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediastreamscontrol_types.QMediaStreamsControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaStreamsControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediastreamscontrol_types.QMediaStreamsControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaStreamsControl_staticMetaObject())
