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


{.compile("gen_qaudio.cpp", QtMultimediaCFlags).}


type QAudioErrorEnum* = distinct cint
template NoError*(_: type QAudioErrorEnum): untyped = 0
template OpenError*(_: type QAudioErrorEnum): untyped = 1
template IOError*(_: type QAudioErrorEnum): untyped = 2
template UnderrunError*(_: type QAudioErrorEnum): untyped = 3
template FatalError*(_: type QAudioErrorEnum): untyped = 4


type QAudioStateEnum* = distinct cint
template ActiveState*(_: type QAudioStateEnum): untyped = 0
template SuspendedState*(_: type QAudioStateEnum): untyped = 1
template StoppedState*(_: type QAudioStateEnum): untyped = 2
template IdleState*(_: type QAudioStateEnum): untyped = 3


type QAudioVolumeScaleEnum* = distinct cint
template LinearVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 0
template CubicVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 1
template LogarithmicVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 2
template DecibelVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 3


import ./gen_qaudio_types
export gen_qaudio_types




