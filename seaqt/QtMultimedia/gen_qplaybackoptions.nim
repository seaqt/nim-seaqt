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


type QPlaybackOptionsPlaybackIntentEnum* = distinct cint
template Playback*(_: type QPlaybackOptionsPlaybackIntentEnum): untyped = 0
template LowLatencyStreaming*(_: type QPlaybackOptionsPlaybackIntentEnum): untyped = 1


import ./gen_qplaybackoptions_types
export gen_qplaybackoptions_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQPlaybackOptions*{.exportc: "QPlaybackOptions", incompleteStruct.} = object

proc fcQPlaybackOptions_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QPlaybackOptions_operatorAssign".}
proc fcQPlaybackOptions_swap(self: pointer, other: pointer): void {.importc: "QPlaybackOptions_swap".}
proc fcQPlaybackOptions_resetNetworkTimeout(self: pointer): void {.importc: "QPlaybackOptions_resetNetworkTimeout".}
proc fcQPlaybackOptions_playbackIntent(self: pointer): cint {.importc: "QPlaybackOptions_playbackIntent".}
proc fcQPlaybackOptions_setPlaybackIntent(self: pointer, intent: cint): void {.importc: "QPlaybackOptions_setPlaybackIntent".}
proc fcQPlaybackOptions_resetPlaybackIntent(self: pointer): void {.importc: "QPlaybackOptions_resetPlaybackIntent".}
proc fcQPlaybackOptions_probeSize(self: pointer): int64 {.importc: "QPlaybackOptions_probeSize".}
proc fcQPlaybackOptions_setProbeSize(self: pointer, probeSizeBytes: int64): void {.importc: "QPlaybackOptions_setProbeSize".}
proc fcQPlaybackOptions_resetProbeSize(self: pointer): void {.importc: "QPlaybackOptions_resetProbeSize".}
proc fcQPlaybackOptions_new(): ptr cQPlaybackOptions {.importc: "QPlaybackOptions_new".}
proc fcQPlaybackOptions_new2(fromVal: pointer): ptr cQPlaybackOptions {.importc: "QPlaybackOptions_new_from".}
proc fcQPlaybackOptions_staticMetaObject(): pointer {.importc: "QPlaybackOptions_staticMetaObject".}

proc operatorAssign*(self: gen_qplaybackoptions_types.QPlaybackOptions, fromVal: gen_qplaybackoptions_types.QPlaybackOptions): void =
  fcQPlaybackOptions_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qplaybackoptions_types.QPlaybackOptions, other: gen_qplaybackoptions_types.QPlaybackOptions): void =
  fcQPlaybackOptions_swap(self.h, other.h)

proc resetNetworkTimeout*(self: gen_qplaybackoptions_types.QPlaybackOptions): void =
  fcQPlaybackOptions_resetNetworkTimeout(self.h)

proc playbackIntent*(self: gen_qplaybackoptions_types.QPlaybackOptions): cint =
  cint(fcQPlaybackOptions_playbackIntent(self.h))

proc setPlaybackIntent*(self: gen_qplaybackoptions_types.QPlaybackOptions, intent: cint): void =
  fcQPlaybackOptions_setPlaybackIntent(self.h, cint(intent))

proc resetPlaybackIntent*(self: gen_qplaybackoptions_types.QPlaybackOptions): void =
  fcQPlaybackOptions_resetPlaybackIntent(self.h)

proc probeSize*(self: gen_qplaybackoptions_types.QPlaybackOptions): int64 =
  fcQPlaybackOptions_probeSize(self.h)

proc setProbeSize*(self: gen_qplaybackoptions_types.QPlaybackOptions, probeSizeBytes: int64): void =
  fcQPlaybackOptions_setProbeSize(self.h, probeSizeBytes)

proc resetProbeSize*(self: gen_qplaybackoptions_types.QPlaybackOptions): void =
  fcQPlaybackOptions_resetProbeSize(self.h)

proc create*(T: type gen_qplaybackoptions_types.QPlaybackOptions): gen_qplaybackoptions_types.QPlaybackOptions =
  let tmp = gen_qplaybackoptions_types.QPlaybackOptions(h: fcQPlaybackOptions_new(), owned: true)
  tmp
proc create*(T: type gen_qplaybackoptions_types.QPlaybackOptions,
    fromVal: gen_qplaybackoptions_types.QPlaybackOptions): gen_qplaybackoptions_types.QPlaybackOptions =
  let tmp = gen_qplaybackoptions_types.QPlaybackOptions(h: fcQPlaybackOptions_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qplaybackoptions_types.QPlaybackOptions): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPlaybackOptions_staticMetaObject())
