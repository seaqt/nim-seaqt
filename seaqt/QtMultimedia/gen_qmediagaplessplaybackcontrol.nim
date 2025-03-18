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


{.compile("gen_qmediagaplessplaybackcontrol.cpp", QtMultimediaCFlags).}


import ./gen_qmediagaplessplaybackcontrol_types
export gen_qmediagaplessplaybackcontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediacontent_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontent_types,
  gen_qmediacontrol

type cQMediaGaplessPlaybackControl*{.exportc: "QMediaGaplessPlaybackControl", incompleteStruct.} = object

proc fcQMediaGaplessPlaybackControl_metaObject(self: pointer): pointer {.importc: "QMediaGaplessPlaybackControl_metaObject".}
proc fcQMediaGaplessPlaybackControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaGaplessPlaybackControl_metacast".}
proc fcQMediaGaplessPlaybackControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaGaplessPlaybackControl_metacall".}
proc fcQMediaGaplessPlaybackControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr".}
proc fcQMediaGaplessPlaybackControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf8".}
proc fcQMediaGaplessPlaybackControl_nextMedia(self: pointer): pointer {.importc: "QMediaGaplessPlaybackControl_nextMedia".}
proc fcQMediaGaplessPlaybackControl_setNextMedia(self: pointer, media: pointer): void {.importc: "QMediaGaplessPlaybackControl_setNextMedia".}
proc fcQMediaGaplessPlaybackControl_isCrossfadeSupported(self: pointer): bool {.importc: "QMediaGaplessPlaybackControl_isCrossfadeSupported".}
proc fcQMediaGaplessPlaybackControl_crossfadeTime(self: pointer): float64 {.importc: "QMediaGaplessPlaybackControl_crossfadeTime".}
proc fcQMediaGaplessPlaybackControl_setCrossfadeTime(self: pointer, crossfadeTime: float64): void {.importc: "QMediaGaplessPlaybackControl_setCrossfadeTime".}
proc fcQMediaGaplessPlaybackControl_crossfadeTimeChanged(self: pointer, crossfadeTime: float64): void {.importc: "QMediaGaplessPlaybackControl_crossfadeTimeChanged".}
proc fcQMediaGaplessPlaybackControl_connect_crossfadeTimeChanged(self: pointer, slot: int, callback: proc (slot: int, crossfadeTime: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaGaplessPlaybackControl_connect_crossfadeTimeChanged".}
proc fcQMediaGaplessPlaybackControl_nextMediaChanged(self: pointer, media: pointer): void {.importc: "QMediaGaplessPlaybackControl_nextMediaChanged".}
proc fcQMediaGaplessPlaybackControl_connect_nextMediaChanged(self: pointer, slot: int, callback: proc (slot: int, media: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaGaplessPlaybackControl_connect_nextMediaChanged".}
proc fcQMediaGaplessPlaybackControl_advancedToNextMedia(self: pointer): void {.importc: "QMediaGaplessPlaybackControl_advancedToNextMedia".}
proc fcQMediaGaplessPlaybackControl_connect_advancedToNextMedia(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaGaplessPlaybackControl_connect_advancedToNextMedia".}
proc fcQMediaGaplessPlaybackControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr2".}
proc fcQMediaGaplessPlaybackControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr3".}
proc fcQMediaGaplessPlaybackControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf82".}
proc fcQMediaGaplessPlaybackControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf83".}
proc fcQMediaGaplessPlaybackControl_protectedbase_sender(self: pointer): pointer {.importc: "QMediaGaplessPlaybackControl_protectedbase_sender".}
proc fcQMediaGaplessPlaybackControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaGaplessPlaybackControl_protectedbase_senderSignalIndex".}
proc fcQMediaGaplessPlaybackControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaGaplessPlaybackControl_protectedbase_receivers".}
proc fcQMediaGaplessPlaybackControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaGaplessPlaybackControl_protectedbase_isSignalConnected".}
proc fcQMediaGaplessPlaybackControl_staticMetaObject(): pointer {.importc: "QMediaGaplessPlaybackControl_staticMetaObject".}

proc metaObject*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaGaplessPlaybackControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, param1: cstring): pointer =
  fcQMediaGaplessPlaybackControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaGaplessPlaybackControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc nextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaGaplessPlaybackControl_nextMedia(self.h), owned: true)

proc setNextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaGaplessPlaybackControl_setNextMedia(self.h, media.h)

proc isCrossfadeSupported*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): bool =
  fcQMediaGaplessPlaybackControl_isCrossfadeSupported(self.h)

proc crossfadeTime*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): float64 =
  fcQMediaGaplessPlaybackControl_crossfadeTime(self.h)

proc setCrossfadeTime*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, crossfadeTime: float64): void =
  fcQMediaGaplessPlaybackControl_setCrossfadeTime(self.h, crossfadeTime)

proc crossfadeTimeChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, crossfadeTime: float64): void =
  fcQMediaGaplessPlaybackControl_crossfadeTimeChanged(self.h, crossfadeTime)

type QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot* = proc(crossfadeTime: float64)
proc fcQMediaGaplessPlaybackControl_slot_callback_crossfadeTimeChanged(slot: int, crossfadeTime: float64) {.cdecl.} =
  let nimfunc = cast[ptr QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot](cast[pointer](slot))
  let slotval1 = crossfadeTime

  nimfunc[](slotval1)

proc fcQMediaGaplessPlaybackControl_slot_callback_crossfadeTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCrossfadeTimeChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, slot: QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot) =
  var tmp = new QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaGaplessPlaybackControl_connect_crossfadeTimeChanged(self.h, cast[int](addr tmp[]), fcQMediaGaplessPlaybackControl_slot_callback_crossfadeTimeChanged, fcQMediaGaplessPlaybackControl_slot_callback_crossfadeTimeChanged_release)

proc nextMediaChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaGaplessPlaybackControl_nextMediaChanged(self.h, media.h)

type QMediaGaplessPlaybackControlnextMediaChangedSlot* = proc(media: gen_qmediacontent_types.QMediaContent)
proc fcQMediaGaplessPlaybackControl_slot_callback_nextMediaChanged(slot: int, media: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaGaplessPlaybackControlnextMediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: media, owned: false)

  nimfunc[](slotval1)

proc fcQMediaGaplessPlaybackControl_slot_callback_nextMediaChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaGaplessPlaybackControlnextMediaChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNextMediaChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, slot: QMediaGaplessPlaybackControlnextMediaChangedSlot) =
  var tmp = new QMediaGaplessPlaybackControlnextMediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaGaplessPlaybackControl_connect_nextMediaChanged(self.h, cast[int](addr tmp[]), fcQMediaGaplessPlaybackControl_slot_callback_nextMediaChanged, fcQMediaGaplessPlaybackControl_slot_callback_nextMediaChanged_release)

proc advancedToNextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): void =
  fcQMediaGaplessPlaybackControl_advancedToNextMedia(self.h)

type QMediaGaplessPlaybackControladvancedToNextMediaSlot* = proc()
proc fcQMediaGaplessPlaybackControl_slot_callback_advancedToNextMedia(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaGaplessPlaybackControladvancedToNextMediaSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMediaGaplessPlaybackControl_slot_callback_advancedToNextMedia_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaGaplessPlaybackControladvancedToNextMediaSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAdvancedToNextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, slot: QMediaGaplessPlaybackControladvancedToNextMediaSlot) =
  var tmp = new QMediaGaplessPlaybackControladvancedToNextMediaSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaGaplessPlaybackControl_connect_advancedToNextMedia(self.h, cast[int](addr tmp[]), fcQMediaGaplessPlaybackControl_slot_callback_advancedToNextMedia, fcQMediaGaplessPlaybackControl_slot_callback_advancedToNextMedia_release)

proc tr*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaGaplessPlaybackControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaGaplessPlaybackControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaGaplessPlaybackControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): cint =
  fcQMediaGaplessPlaybackControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, signal: cstring): cint =
  fcQMediaGaplessPlaybackControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaGaplessPlaybackControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaGaplessPlaybackControl_staticMetaObject())
