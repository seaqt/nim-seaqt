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


{.compile("gen_qmultimedia.cpp", QtMultimediaCFlags).}


type QMultimediaSupportEstimateEnum* = distinct cint
template NotSupported*(_: type QMultimediaSupportEstimateEnum): untyped = 0
template MaybeSupported*(_: type QMultimediaSupportEstimateEnum): untyped = 1
template ProbablySupported*(_: type QMultimediaSupportEstimateEnum): untyped = 2
template PreferredService*(_: type QMultimediaSupportEstimateEnum): untyped = 3


type QMultimediaEncodingQualityEnum* = distinct cint
template VeryLowQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 0
template LowQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 1
template NormalQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 2
template HighQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 3
template VeryHighQuality*(_: type QMultimediaEncodingQualityEnum): untyped = 4


type QMultimediaEncodingModeEnum* = distinct cint
template ConstantQualityEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 0
template ConstantBitRateEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 1
template AverageBitRateEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 2
template TwoPassEncoding*(_: type QMultimediaEncodingModeEnum): untyped = 3


type QMultimediaAvailabilityStatusEnum* = distinct cint
template Available*(_: type QMultimediaAvailabilityStatusEnum): untyped = 0
template ServiceMissing*(_: type QMultimediaAvailabilityStatusEnum): untyped = 1
template Busy*(_: type QMultimediaAvailabilityStatusEnum): untyped = 2
template ResourceError*(_: type QMultimediaAvailabilityStatusEnum): untyped = 3


import ./gen_qmultimedia_types
export gen_qmultimedia_types




