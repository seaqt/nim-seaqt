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
{.compile("gen_qaudiodevice.cpp", cflags).}


type QAudioDeviceModeEnum* = distinct cint
template Null*(_: type QAudioDeviceModeEnum): untyped = 0
template Input*(_: type QAudioDeviceModeEnum): untyped = 1
template Output*(_: type QAudioDeviceModeEnum): untyped = 2


import ./gen_qaudiodevice_types
export gen_qaudiodevice_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudioformat_types
export
  gen_qobjectdefs_types,
  gen_qaudioformat_types

type cQAudioDevice*{.exportc: "QAudioDevice", incompleteStruct.} = object

proc fcQAudioDevice_swap(self: pointer, other: pointer): void {.importc: "QAudioDevice_swap".}
proc fcQAudioDevice_operatorAssign(self: pointer, other: pointer): void {.importc: "QAudioDevice_operatorAssign".}
proc fcQAudioDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QAudioDevice_operatorEqual".}
proc fcQAudioDevice_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QAudioDevice_operatorNotEqual".}
proc fcQAudioDevice_isNull(self: pointer, ): bool {.importc: "QAudioDevice_isNull".}
proc fcQAudioDevice_id(self: pointer, ): struct_miqt_string {.importc: "QAudioDevice_id".}
proc fcQAudioDevice_description(self: pointer, ): struct_miqt_string {.importc: "QAudioDevice_description".}
proc fcQAudioDevice_isDefault(self: pointer, ): bool {.importc: "QAudioDevice_isDefault".}
proc fcQAudioDevice_mode(self: pointer, ): cint {.importc: "QAudioDevice_mode".}
proc fcQAudioDevice_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAudioDevice_isFormatSupported".}
proc fcQAudioDevice_preferredFormat(self: pointer, ): pointer {.importc: "QAudioDevice_preferredFormat".}
proc fcQAudioDevice_minimumSampleRate(self: pointer, ): cint {.importc: "QAudioDevice_minimumSampleRate".}
proc fcQAudioDevice_maximumSampleRate(self: pointer, ): cint {.importc: "QAudioDevice_maximumSampleRate".}
proc fcQAudioDevice_minimumChannelCount(self: pointer, ): cint {.importc: "QAudioDevice_minimumChannelCount".}
proc fcQAudioDevice_maximumChannelCount(self: pointer, ): cint {.importc: "QAudioDevice_maximumChannelCount".}
proc fcQAudioDevice_supportedSampleFormats(self: pointer, ): struct_miqt_array {.importc: "QAudioDevice_supportedSampleFormats".}
proc fcQAudioDevice_channelConfiguration(self: pointer, ): cint {.importc: "QAudioDevice_channelConfiguration".}
proc fcQAudioDevice_new(): ptr cQAudioDevice {.importc: "QAudioDevice_new".}
proc fcQAudioDevice_new2(other: pointer): ptr cQAudioDevice {.importc: "QAudioDevice_new2".}
proc fcQAudioDevice_staticMetaObject(): pointer {.importc: "QAudioDevice_staticMetaObject".}
proc fcQAudioDevice_delete(self: pointer) {.importc: "QAudioDevice_delete".}

proc swap*(self: gen_qaudiodevice_types.QAudioDevice, other: gen_qaudiodevice_types.QAudioDevice): void =
  fcQAudioDevice_swap(self.h, other.h)

proc operatorAssign*(self: gen_qaudiodevice_types.QAudioDevice, other: gen_qaudiodevice_types.QAudioDevice): void =
  fcQAudioDevice_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qaudiodevice_types.QAudioDevice, other: gen_qaudiodevice_types.QAudioDevice): bool =
  fcQAudioDevice_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qaudiodevice_types.QAudioDevice, other: gen_qaudiodevice_types.QAudioDevice): bool =
  fcQAudioDevice_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qaudiodevice_types.QAudioDevice, ): bool =
  fcQAudioDevice_isNull(self.h)

proc id*(self: gen_qaudiodevice_types.QAudioDevice, ): seq[byte] =
  var v_bytearray = fcQAudioDevice_id(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc description*(self: gen_qaudiodevice_types.QAudioDevice, ): string =
  let v_ms = fcQAudioDevice_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isDefault*(self: gen_qaudiodevice_types.QAudioDevice, ): bool =
  fcQAudioDevice_isDefault(self.h)

proc mode*(self: gen_qaudiodevice_types.QAudioDevice, ): cint =
  cint(fcQAudioDevice_mode(self.h))

proc isFormatSupported*(self: gen_qaudiodevice_types.QAudioDevice, format: gen_qaudioformat_types.QAudioFormat): bool =
  fcQAudioDevice_isFormatSupported(self.h, format.h)

proc preferredFormat*(self: gen_qaudiodevice_types.QAudioDevice, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioDevice_preferredFormat(self.h))

proc minimumSampleRate*(self: gen_qaudiodevice_types.QAudioDevice, ): cint =
  fcQAudioDevice_minimumSampleRate(self.h)

proc maximumSampleRate*(self: gen_qaudiodevice_types.QAudioDevice, ): cint =
  fcQAudioDevice_maximumSampleRate(self.h)

proc minimumChannelCount*(self: gen_qaudiodevice_types.QAudioDevice, ): cint =
  fcQAudioDevice_minimumChannelCount(self.h)

proc maximumChannelCount*(self: gen_qaudiodevice_types.QAudioDevice, ): cint =
  fcQAudioDevice_maximumChannelCount(self.h)

proc supportedSampleFormats*(self: gen_qaudiodevice_types.QAudioDevice, ): seq[cint] =
  var v_ma = fcQAudioDevice_supportedSampleFormats(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc channelConfiguration*(self: gen_qaudiodevice_types.QAudioDevice, ): cint =
  cint(fcQAudioDevice_channelConfiguration(self.h))

proc create*(T: type gen_qaudiodevice_types.QAudioDevice): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQAudioDevice_new())

proc create*(T: type gen_qaudiodevice_types.QAudioDevice,
    other: gen_qaudiodevice_types.QAudioDevice): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQAudioDevice_new2(other.h))

proc staticMetaObject*(_: type gen_qaudiodevice_types.QAudioDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioDevice_staticMetaObject())
proc delete*(self: gen_qaudiodevice_types.QAudioDevice) =
  fcQAudioDevice_delete(self.h)
