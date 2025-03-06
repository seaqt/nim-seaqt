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


type QAudioFormatSampleTypeEnum* = distinct cint
template Unknown*(_: type QAudioFormatSampleTypeEnum): untyped = 0
template SignedInt*(_: type QAudioFormatSampleTypeEnum): untyped = 1
template UnSignedInt*(_: type QAudioFormatSampleTypeEnum): untyped = 2
template Float*(_: type QAudioFormatSampleTypeEnum): untyped = 3


type QAudioFormatEndianEnum* = distinct cint
template BigEndian*(_: type QAudioFormatEndianEnum): untyped = 0
template LittleEndian*(_: type QAudioFormatEndianEnum): untyped = 1


import ./gen_qaudioformat_types
export gen_qaudioformat_types


type cQAudioFormat*{.exportc: "QAudioFormat", incompleteStruct.} = object

proc fcQAudioFormat_operatorAssign(self: pointer, other: pointer): void {.importc: "QAudioFormat_operatorAssign".}
proc fcQAudioFormat_operatorEqual(self: pointer, other: pointer): bool {.importc: "QAudioFormat_operatorEqual".}
proc fcQAudioFormat_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QAudioFormat_operatorNotEqual".}
proc fcQAudioFormat_isValid(self: pointer, ): bool {.importc: "QAudioFormat_isValid".}
proc fcQAudioFormat_setSampleRate(self: pointer, sampleRate: cint): void {.importc: "QAudioFormat_setSampleRate".}
proc fcQAudioFormat_sampleRate(self: pointer, ): cint {.importc: "QAudioFormat_sampleRate".}
proc fcQAudioFormat_setChannelCount(self: pointer, channelCount: cint): void {.importc: "QAudioFormat_setChannelCount".}
proc fcQAudioFormat_channelCount(self: pointer, ): cint {.importc: "QAudioFormat_channelCount".}
proc fcQAudioFormat_setSampleSize(self: pointer, sampleSize: cint): void {.importc: "QAudioFormat_setSampleSize".}
proc fcQAudioFormat_sampleSize(self: pointer, ): cint {.importc: "QAudioFormat_sampleSize".}
proc fcQAudioFormat_setCodec(self: pointer, codec: struct_miqt_string): void {.importc: "QAudioFormat_setCodec".}
proc fcQAudioFormat_codec(self: pointer, ): struct_miqt_string {.importc: "QAudioFormat_codec".}
proc fcQAudioFormat_setByteOrder(self: pointer, byteOrder: cint): void {.importc: "QAudioFormat_setByteOrder".}
proc fcQAudioFormat_byteOrder(self: pointer, ): cint {.importc: "QAudioFormat_byteOrder".}
proc fcQAudioFormat_setSampleType(self: pointer, sampleType: cint): void {.importc: "QAudioFormat_setSampleType".}
proc fcQAudioFormat_sampleType(self: pointer, ): cint {.importc: "QAudioFormat_sampleType".}
proc fcQAudioFormat_bytesForDuration(self: pointer, duration: clonglong): cint {.importc: "QAudioFormat_bytesForDuration".}
proc fcQAudioFormat_durationForBytes(self: pointer, byteCount: cint): clonglong {.importc: "QAudioFormat_durationForBytes".}
proc fcQAudioFormat_bytesForFrames(self: pointer, frameCount: cint): cint {.importc: "QAudioFormat_bytesForFrames".}
proc fcQAudioFormat_framesForBytes(self: pointer, byteCount: cint): cint {.importc: "QAudioFormat_framesForBytes".}
proc fcQAudioFormat_framesForDuration(self: pointer, duration: clonglong): cint {.importc: "QAudioFormat_framesForDuration".}
proc fcQAudioFormat_durationForFrames(self: pointer, frameCount: cint): clonglong {.importc: "QAudioFormat_durationForFrames".}
proc fcQAudioFormat_bytesPerFrame(self: pointer, ): cint {.importc: "QAudioFormat_bytesPerFrame".}
proc fcQAudioFormat_new(): ptr cQAudioFormat {.importc: "QAudioFormat_new".}
proc fcQAudioFormat_new2(other: pointer): ptr cQAudioFormat {.importc: "QAudioFormat_new2".}

proc operatorAssign*(self: gen_qaudioformat_types.QAudioFormat, other: gen_qaudioformat_types.QAudioFormat): void =
  fcQAudioFormat_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qaudioformat_types.QAudioFormat, other: gen_qaudioformat_types.QAudioFormat): bool =
  fcQAudioFormat_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qaudioformat_types.QAudioFormat, other: gen_qaudioformat_types.QAudioFormat): bool =
  fcQAudioFormat_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qaudioformat_types.QAudioFormat, ): bool =
  fcQAudioFormat_isValid(self.h)

proc setSampleRate*(self: gen_qaudioformat_types.QAudioFormat, sampleRate: cint): void =
  fcQAudioFormat_setSampleRate(self.h, sampleRate)

proc sampleRate*(self: gen_qaudioformat_types.QAudioFormat, ): cint =
  fcQAudioFormat_sampleRate(self.h)

proc setChannelCount*(self: gen_qaudioformat_types.QAudioFormat, channelCount: cint): void =
  fcQAudioFormat_setChannelCount(self.h, channelCount)

proc channelCount*(self: gen_qaudioformat_types.QAudioFormat, ): cint =
  fcQAudioFormat_channelCount(self.h)

proc setSampleSize*(self: gen_qaudioformat_types.QAudioFormat, sampleSize: cint): void =
  fcQAudioFormat_setSampleSize(self.h, sampleSize)

proc sampleSize*(self: gen_qaudioformat_types.QAudioFormat, ): cint =
  fcQAudioFormat_sampleSize(self.h)

proc setCodec*(self: gen_qaudioformat_types.QAudioFormat, codec: string): void =
  fcQAudioFormat_setCodec(self.h, struct_miqt_string(data: codec, len: csize_t(len(codec))))

proc codec*(self: gen_qaudioformat_types.QAudioFormat, ): string =
  let v_ms = fcQAudioFormat_codec(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setByteOrder*(self: gen_qaudioformat_types.QAudioFormat, byteOrder: cint): void =
  fcQAudioFormat_setByteOrder(self.h, cint(byteOrder))

proc byteOrder*(self: gen_qaudioformat_types.QAudioFormat, ): cint =
  cint(fcQAudioFormat_byteOrder(self.h))

proc setSampleType*(self: gen_qaudioformat_types.QAudioFormat, sampleType: cint): void =
  fcQAudioFormat_setSampleType(self.h, cint(sampleType))

proc sampleType*(self: gen_qaudioformat_types.QAudioFormat, ): cint =
  cint(fcQAudioFormat_sampleType(self.h))

proc bytesForDuration*(self: gen_qaudioformat_types.QAudioFormat, duration: clonglong): cint =
  fcQAudioFormat_bytesForDuration(self.h, duration)

proc durationForBytes*(self: gen_qaudioformat_types.QAudioFormat, byteCount: cint): clonglong =
  fcQAudioFormat_durationForBytes(self.h, byteCount)

proc bytesForFrames*(self: gen_qaudioformat_types.QAudioFormat, frameCount: cint): cint =
  fcQAudioFormat_bytesForFrames(self.h, frameCount)

proc framesForBytes*(self: gen_qaudioformat_types.QAudioFormat, byteCount: cint): cint =
  fcQAudioFormat_framesForBytes(self.h, byteCount)

proc framesForDuration*(self: gen_qaudioformat_types.QAudioFormat, duration: clonglong): cint =
  fcQAudioFormat_framesForDuration(self.h, duration)

proc durationForFrames*(self: gen_qaudioformat_types.QAudioFormat, frameCount: cint): clonglong =
  fcQAudioFormat_durationForFrames(self.h, frameCount)

proc bytesPerFrame*(self: gen_qaudioformat_types.QAudioFormat, ): cint =
  fcQAudioFormat_bytesPerFrame(self.h)

proc create*(T: type gen_qaudioformat_types.QAudioFormat): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioFormat_new(), owned: true)

proc create*(T: type gen_qaudioformat_types.QAudioFormat,
    other: gen_qaudioformat_types.QAudioFormat): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioFormat_new2(other.h), owned: true)

