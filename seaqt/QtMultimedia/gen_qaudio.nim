import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qaudio.cpp", cflags).}


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




