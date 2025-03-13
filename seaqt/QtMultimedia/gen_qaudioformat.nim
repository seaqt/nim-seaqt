import ./Qt6Multimedia_libs

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


type QAudioFormatSampleFormatEnum* = distinct cushort
template Unknown*(_: type QAudioFormatSampleFormatEnum): untyped = 0
template UInt8*(_: type QAudioFormatSampleFormatEnum): untyped = 1
template Int16*(_: type QAudioFormatSampleFormatEnum): untyped = 2
template Int32*(_: type QAudioFormatSampleFormatEnum): untyped = 3
template Float*(_: type QAudioFormatSampleFormatEnum): untyped = 4
template NSampleFormats*(_: type QAudioFormatSampleFormatEnum): untyped = 5


type QAudioFormatAudioChannelPositionEnum* = distinct cint
template UnknownPosition*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 0
template FrontLeft*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 1
template FrontRight*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 2
template FrontCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 3
template LFE*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 4
template BackLeft*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 5
template BackRight*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 6
template FrontLeftOfCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 7
template FrontRightOfCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 8
template BackCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 9
template SideLeft*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 10
template SideRight*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 11
template TopCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 12
template TopFrontLeft*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 13
template TopFrontCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 14
template TopFrontRight*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 15
template TopBackLeft*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 16
template TopBackCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 17
template TopBackRight*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 18
template LFE2*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 19
template TopSideLeft*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 20
template TopSideRight*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 21
template BottomFrontCenter*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 22
template BottomFrontLeft*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 23
template BottomFrontRight*(_: type QAudioFormatAudioChannelPositionEnum): untyped = 24


type QAudioFormatChannelConfigEnum* = distinct cuint
template ChannelConfigUnknown*(_: type QAudioFormatChannelConfigEnum): untyped = 0
template ChannelConfigMono*(_: type QAudioFormatChannelConfigEnum): untyped = 8
template ChannelConfigStereo*(_: type QAudioFormatChannelConfigEnum): untyped = 6
template ChannelConfig2Dot1*(_: type QAudioFormatChannelConfigEnum): untyped = 22
template ChannelConfig3Dot0*(_: type QAudioFormatChannelConfigEnum): untyped = 14
template ChannelConfig3Dot1*(_: type QAudioFormatChannelConfigEnum): untyped = 30
template ChannelConfigSurround5Dot0*(_: type QAudioFormatChannelConfigEnum): untyped = 110
template ChannelConfigSurround5Dot1*(_: type QAudioFormatChannelConfigEnum): untyped = 126
template ChannelConfigSurround7Dot0*(_: type QAudioFormatChannelConfigEnum): untyped = 3182
template ChannelConfigSurround7Dot1*(_: type QAudioFormatChannelConfigEnum): untyped = 3198


import ./gen_qaudioformat_types
export gen_qaudioformat_types


type cQAudioFormat*{.exportc: "QAudioFormat", incompleteStruct.} = object

proc fcQAudioFormat_isValid(self: pointer): bool {.importc: "QAudioFormat_isValid".}
proc fcQAudioFormat_setSampleRate(self: pointer, sampleRate: cint): void {.importc: "QAudioFormat_setSampleRate".}
proc fcQAudioFormat_sampleRate(self: pointer): cint {.importc: "QAudioFormat_sampleRate".}
proc fcQAudioFormat_setChannelConfig(self: pointer, config: cint): void {.importc: "QAudioFormat_setChannelConfig".}
proc fcQAudioFormat_channelConfig(self: pointer): cint {.importc: "QAudioFormat_channelConfig".}
proc fcQAudioFormat_setChannelCount(self: pointer, channelCount: cint): void {.importc: "QAudioFormat_setChannelCount".}
proc fcQAudioFormat_channelCount(self: pointer): cint {.importc: "QAudioFormat_channelCount".}
proc fcQAudioFormat_channelOffset(self: pointer, channel: cint): cint {.importc: "QAudioFormat_channelOffset".}
proc fcQAudioFormat_setSampleFormat(self: pointer, f: cint): void {.importc: "QAudioFormat_setSampleFormat".}
proc fcQAudioFormat_sampleFormat(self: pointer): cint {.importc: "QAudioFormat_sampleFormat".}
proc fcQAudioFormat_bytesForDuration(self: pointer, microseconds: clonglong): cint {.importc: "QAudioFormat_bytesForDuration".}
proc fcQAudioFormat_durationForBytes(self: pointer, byteCount: cint): clonglong {.importc: "QAudioFormat_durationForBytes".}
proc fcQAudioFormat_bytesForFrames(self: pointer, frameCount: cint): cint {.importc: "QAudioFormat_bytesForFrames".}
proc fcQAudioFormat_framesForBytes(self: pointer, byteCount: cint): cint {.importc: "QAudioFormat_framesForBytes".}
proc fcQAudioFormat_framesForDuration(self: pointer, microseconds: clonglong): cint {.importc: "QAudioFormat_framesForDuration".}
proc fcQAudioFormat_durationForFrames(self: pointer, frameCount: cint): clonglong {.importc: "QAudioFormat_durationForFrames".}
proc fcQAudioFormat_bytesPerFrame(self: pointer): cint {.importc: "QAudioFormat_bytesPerFrame".}
proc fcQAudioFormat_bytesPerSample(self: pointer): cint {.importc: "QAudioFormat_bytesPerSample".}
proc fcQAudioFormat_normalizedSampleValue(self: pointer, sample: pointer): float32 {.importc: "QAudioFormat_normalizedSampleValue".}
proc fcQAudioFormat_defaultChannelConfigForChannelCount(channelCount: cint): cint {.importc: "QAudioFormat_defaultChannelConfigForChannelCount".}
proc fcQAudioFormat_new(): ptr cQAudioFormat {.importc: "QAudioFormat_new".}
proc fcQAudioFormat_new2(param1: pointer): ptr cQAudioFormat {.importc: "QAudioFormat_new2".}

proc isValid*(self: gen_qaudioformat_types.QAudioFormat): bool =
  fcQAudioFormat_isValid(self.h)

proc setSampleRate*(self: gen_qaudioformat_types.QAudioFormat, sampleRate: cint): void =
  fcQAudioFormat_setSampleRate(self.h, sampleRate)

proc sampleRate*(self: gen_qaudioformat_types.QAudioFormat): cint =
  fcQAudioFormat_sampleRate(self.h)

proc setChannelConfig*(self: gen_qaudioformat_types.QAudioFormat, config: cint): void =
  fcQAudioFormat_setChannelConfig(self.h, cint(config))

proc channelConfig*(self: gen_qaudioformat_types.QAudioFormat): cint =
  cint(fcQAudioFormat_channelConfig(self.h))

proc setChannelCount*(self: gen_qaudioformat_types.QAudioFormat, channelCount: cint): void =
  fcQAudioFormat_setChannelCount(self.h, channelCount)

proc channelCount*(self: gen_qaudioformat_types.QAudioFormat): cint =
  fcQAudioFormat_channelCount(self.h)

proc channelOffset*(self: gen_qaudioformat_types.QAudioFormat, channel: cint): cint =
  fcQAudioFormat_channelOffset(self.h, cint(channel))

proc setSampleFormat*(self: gen_qaudioformat_types.QAudioFormat, f: cint): void =
  fcQAudioFormat_setSampleFormat(self.h, cint(f))

proc sampleFormat*(self: gen_qaudioformat_types.QAudioFormat): cint =
  cint(fcQAudioFormat_sampleFormat(self.h))

proc bytesForDuration*(self: gen_qaudioformat_types.QAudioFormat, microseconds: clonglong): cint =
  fcQAudioFormat_bytesForDuration(self.h, microseconds)

proc durationForBytes*(self: gen_qaudioformat_types.QAudioFormat, byteCount: cint): clonglong =
  fcQAudioFormat_durationForBytes(self.h, byteCount)

proc bytesForFrames*(self: gen_qaudioformat_types.QAudioFormat, frameCount: cint): cint =
  fcQAudioFormat_bytesForFrames(self.h, frameCount)

proc framesForBytes*(self: gen_qaudioformat_types.QAudioFormat, byteCount: cint): cint =
  fcQAudioFormat_framesForBytes(self.h, byteCount)

proc framesForDuration*(self: gen_qaudioformat_types.QAudioFormat, microseconds: clonglong): cint =
  fcQAudioFormat_framesForDuration(self.h, microseconds)

proc durationForFrames*(self: gen_qaudioformat_types.QAudioFormat, frameCount: cint): clonglong =
  fcQAudioFormat_durationForFrames(self.h, frameCount)

proc bytesPerFrame*(self: gen_qaudioformat_types.QAudioFormat): cint =
  fcQAudioFormat_bytesPerFrame(self.h)

proc bytesPerSample*(self: gen_qaudioformat_types.QAudioFormat): cint =
  fcQAudioFormat_bytesPerSample(self.h)

proc normalizedSampleValue*(self: gen_qaudioformat_types.QAudioFormat, sample: pointer): float32 =
  fcQAudioFormat_normalizedSampleValue(self.h, sample)

proc defaultChannelConfigForChannelCount*(_: type gen_qaudioformat_types.QAudioFormat, channelCount: cint): cint =
  cint(fcQAudioFormat_defaultChannelConfigForChannelCount(channelCount))

proc create*(T: type gen_qaudioformat_types.QAudioFormat): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioFormat_new(), owned: true)

proc create*(T: type gen_qaudioformat_types.QAudioFormat,
    param1: gen_qaudioformat_types.QAudioFormat): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioFormat_new2(param1.h), owned: true)

