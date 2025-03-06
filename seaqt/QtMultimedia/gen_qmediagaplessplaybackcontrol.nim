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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmediagaplessplaybackcontrol.cpp", cflags).}


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

proc fcQMediaGaplessPlaybackControl_metaObject(self: pointer, ): pointer {.importc: "QMediaGaplessPlaybackControl_metaObject".}
proc fcQMediaGaplessPlaybackControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaGaplessPlaybackControl_metacast".}
proc fcQMediaGaplessPlaybackControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaGaplessPlaybackControl_metacall".}
proc fcQMediaGaplessPlaybackControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr".}
proc fcQMediaGaplessPlaybackControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf8".}
proc fcQMediaGaplessPlaybackControl_nextMedia(self: pointer, ): pointer {.importc: "QMediaGaplessPlaybackControl_nextMedia".}
proc fcQMediaGaplessPlaybackControl_setNextMedia(self: pointer, media: pointer): void {.importc: "QMediaGaplessPlaybackControl_setNextMedia".}
proc fcQMediaGaplessPlaybackControl_isCrossfadeSupported(self: pointer, ): bool {.importc: "QMediaGaplessPlaybackControl_isCrossfadeSupported".}
proc fcQMediaGaplessPlaybackControl_crossfadeTime(self: pointer, ): float64 {.importc: "QMediaGaplessPlaybackControl_crossfadeTime".}
proc fcQMediaGaplessPlaybackControl_setCrossfadeTime(self: pointer, crossfadeTime: float64): void {.importc: "QMediaGaplessPlaybackControl_setCrossfadeTime".}
proc fcQMediaGaplessPlaybackControl_crossfadeTimeChanged(self: pointer, crossfadeTime: float64): void {.importc: "QMediaGaplessPlaybackControl_crossfadeTimeChanged".}
proc fcQMediaGaplessPlaybackControl_connect_crossfadeTimeChanged(self: pointer, slot: int, callback: proc (slot: int, crossfadeTime: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaGaplessPlaybackControl_connect_crossfadeTimeChanged".}
proc fcQMediaGaplessPlaybackControl_nextMediaChanged(self: pointer, media: pointer): void {.importc: "QMediaGaplessPlaybackControl_nextMediaChanged".}
proc fcQMediaGaplessPlaybackControl_connect_nextMediaChanged(self: pointer, slot: int, callback: proc (slot: int, media: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaGaplessPlaybackControl_connect_nextMediaChanged".}
proc fcQMediaGaplessPlaybackControl_advancedToNextMedia(self: pointer, ): void {.importc: "QMediaGaplessPlaybackControl_advancedToNextMedia".}
proc fcQMediaGaplessPlaybackControl_connect_advancedToNextMedia(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaGaplessPlaybackControl_connect_advancedToNextMedia".}
proc fcQMediaGaplessPlaybackControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr2".}
proc fcQMediaGaplessPlaybackControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_tr3".}
proc fcQMediaGaplessPlaybackControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf82".}
proc fcQMediaGaplessPlaybackControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaGaplessPlaybackControl_trUtf83".}
proc fcQMediaGaplessPlaybackControl_protectedbase_sender(self: pointer, ): pointer {.importc: "QMediaGaplessPlaybackControl_protectedbase_sender".}
proc fcQMediaGaplessPlaybackControl_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMediaGaplessPlaybackControl_protectedbase_senderSignalIndex".}
proc fcQMediaGaplessPlaybackControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaGaplessPlaybackControl_protectedbase_receivers".}
proc fcQMediaGaplessPlaybackControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaGaplessPlaybackControl_protectedbase_isSignalConnected".}
proc fcQMediaGaplessPlaybackControl_staticMetaObject(): pointer {.importc: "QMediaGaplessPlaybackControl_staticMetaObject".}
proc fcQMediaGaplessPlaybackControl_delete(self: pointer) {.importc: "QMediaGaplessPlaybackControl_delete".}

proc metaObject*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaGaplessPlaybackControl_metaObject(self.h))

proc metacast*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, param1: cstring): pointer =
  fcQMediaGaplessPlaybackControl_metacast(self.h, param1)

proc metacall*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaGaplessPlaybackControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, ): gen_qmediacontent_types.QMediaContent =
  gen_qmediacontent_types.QMediaContent(h: fcQMediaGaplessPlaybackControl_nextMedia(self.h))

proc setNextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaGaplessPlaybackControl_setNextMedia(self.h, media.h)

proc isCrossfadeSupported*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, ): bool =
  fcQMediaGaplessPlaybackControl_isCrossfadeSupported(self.h)

proc crossfadeTime*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, ): float64 =
  fcQMediaGaplessPlaybackControl_crossfadeTime(self.h)

proc setCrossfadeTime*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, crossfadeTime: float64): void =
  fcQMediaGaplessPlaybackControl_setCrossfadeTime(self.h, crossfadeTime)

proc crossfadeTimeChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, crossfadeTime: float64): void =
  fcQMediaGaplessPlaybackControl_crossfadeTimeChanged(self.h, crossfadeTime)

type QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot* = proc(crossfadeTime: float64)
proc miqt_exec_callback_cQMediaGaplessPlaybackControl_crossfadeTimeChanged(slot: int, crossfadeTime: float64) {.cdecl.} =
  let nimfunc = cast[ptr QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot](cast[pointer](slot))
  let slotval1 = crossfadeTime

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaGaplessPlaybackControl_crossfadeTimeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncrossfadeTimeChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, slot: QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot) =
  var tmp = new QMediaGaplessPlaybackControlcrossfadeTimeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaGaplessPlaybackControl_connect_crossfadeTimeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaGaplessPlaybackControl_crossfadeTimeChanged, miqt_exec_callback_cQMediaGaplessPlaybackControl_crossfadeTimeChanged_release)

proc nextMediaChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, media: gen_qmediacontent_types.QMediaContent): void =
  fcQMediaGaplessPlaybackControl_nextMediaChanged(self.h, media.h)

type QMediaGaplessPlaybackControlnextMediaChangedSlot* = proc(media: gen_qmediacontent_types.QMediaContent)
proc miqt_exec_callback_cQMediaGaplessPlaybackControl_nextMediaChanged(slot: int, media: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMediaGaplessPlaybackControlnextMediaChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qmediacontent_types.QMediaContent(h: media)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMediaGaplessPlaybackControl_nextMediaChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaGaplessPlaybackControlnextMediaChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnextMediaChanged*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, slot: QMediaGaplessPlaybackControlnextMediaChangedSlot) =
  var tmp = new QMediaGaplessPlaybackControlnextMediaChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaGaplessPlaybackControl_connect_nextMediaChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaGaplessPlaybackControl_nextMediaChanged, miqt_exec_callback_cQMediaGaplessPlaybackControl_nextMediaChanged_release)

proc advancedToNextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, ): void =
  fcQMediaGaplessPlaybackControl_advancedToNextMedia(self.h)

type QMediaGaplessPlaybackControladvancedToNextMediaSlot* = proc()
proc miqt_exec_callback_cQMediaGaplessPlaybackControl_advancedToNextMedia(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaGaplessPlaybackControladvancedToNextMediaSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaGaplessPlaybackControl_advancedToNextMedia_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaGaplessPlaybackControladvancedToNextMediaSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onadvancedToNextMedia*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, slot: QMediaGaplessPlaybackControladvancedToNextMediaSlot) =
  var tmp = new QMediaGaplessPlaybackControladvancedToNextMediaSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaGaplessPlaybackControl_connect_advancedToNextMedia(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaGaplessPlaybackControl_advancedToNextMedia, miqt_exec_callback_cQMediaGaplessPlaybackControl_advancedToNextMedia_release)

proc tr*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaGaplessPlaybackControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaGaplessPlaybackControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaGaplessPlaybackControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaGaplessPlaybackControl_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, ): cint =
  fcQMediaGaplessPlaybackControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, signal: cstring): cint =
  fcQMediaGaplessPlaybackControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaGaplessPlaybackControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaGaplessPlaybackControl_staticMetaObject())
proc delete*(self: gen_qmediagaplessplaybackcontrol_types.QMediaGaplessPlaybackControl) =
  fcQMediaGaplessPlaybackControl_delete(self.h)
