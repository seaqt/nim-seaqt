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
template InterruptedState*(_: type QAudioStateEnum): untyped = 4


type QAudioModeEnum* = distinct cint
template AudioInput*(_: type QAudioModeEnum): untyped = 0
template AudioOutput*(_: type QAudioModeEnum): untyped = 1


type QAudioRoleEnum* = distinct cint
template UnknownRole*(_: type QAudioRoleEnum): untyped = 0
template MusicRole*(_: type QAudioRoleEnum): untyped = 1
template VideoRole*(_: type QAudioRoleEnum): untyped = 2
template VoiceCommunicationRole*(_: type QAudioRoleEnum): untyped = 3
template AlarmRole*(_: type QAudioRoleEnum): untyped = 4
template NotificationRole*(_: type QAudioRoleEnum): untyped = 5
template RingtoneRole*(_: type QAudioRoleEnum): untyped = 6
template AccessibilityRole*(_: type QAudioRoleEnum): untyped = 7
template SonificationRole*(_: type QAudioRoleEnum): untyped = 8
template GameRole*(_: type QAudioRoleEnum): untyped = 9
template CustomRole*(_: type QAudioRoleEnum): untyped = 10


type QAudioVolumeScaleEnum* = distinct cint
template LinearVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 0
template CubicVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 1
template LogarithmicVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 2
template DecibelVolumeScale*(_: type QAudioVolumeScaleEnum): untyped = 3


import ./gen_qaudio_types
export gen_qaudio_types




