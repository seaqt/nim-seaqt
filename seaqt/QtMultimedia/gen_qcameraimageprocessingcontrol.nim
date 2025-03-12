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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qcameraimageprocessingcontrol.cpp", cflags).}


type QCameraImageProcessingControlProcessingParameterEnum* = distinct cint
template WhiteBalancePreset*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 0
template ColorTemperature*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 1
template Contrast*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 2
template Saturation*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 3
template Brightness*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 4
template Sharpening*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 5
template Denoising*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 6
template ContrastAdjustment*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 7
template SaturationAdjustment*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 8
template BrightnessAdjustment*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 9
template SharpeningAdjustment*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 10
template DenoisingAdjustment*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 11
template ColorFilter*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 12
template ExtendedParameter*(_: type QCameraImageProcessingControlProcessingParameterEnum): untyped = 1000


import ./gen_qcameraimageprocessingcontrol_types
export gen_qcameraimageprocessingcontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qmediacontrol

type cQCameraImageProcessingControl*{.exportc: "QCameraImageProcessingControl", incompleteStruct.} = object

proc fcQCameraImageProcessingControl_metaObject(self: pointer): pointer {.importc: "QCameraImageProcessingControl_metaObject".}
proc fcQCameraImageProcessingControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageProcessingControl_metacast".}
proc fcQCameraImageProcessingControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageProcessingControl_metacall".}
proc fcQCameraImageProcessingControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_tr".}
proc fcQCameraImageProcessingControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_trUtf8".}
proc fcQCameraImageProcessingControl_isParameterSupported(self: pointer, param1: cint): bool {.importc: "QCameraImageProcessingControl_isParameterSupported".}
proc fcQCameraImageProcessingControl_isParameterValueSupported(self: pointer, parameter: cint, value: pointer): bool {.importc: "QCameraImageProcessingControl_isParameterValueSupported".}
proc fcQCameraImageProcessingControl_parameter(self: pointer, parameter: cint): pointer {.importc: "QCameraImageProcessingControl_parameter".}
proc fcQCameraImageProcessingControl_setParameter(self: pointer, parameter: cint, value: pointer): void {.importc: "QCameraImageProcessingControl_setParameter".}
proc fcQCameraImageProcessingControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_tr2".}
proc fcQCameraImageProcessingControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessingControl_tr3".}
proc fcQCameraImageProcessingControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageProcessingControl_trUtf82".}
proc fcQCameraImageProcessingControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageProcessingControl_trUtf83".}
proc fcQCameraImageProcessingControl_protectedbase_sender(self: pointer): pointer {.importc: "QCameraImageProcessingControl_protectedbase_sender".}
proc fcQCameraImageProcessingControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCameraImageProcessingControl_protectedbase_senderSignalIndex".}
proc fcQCameraImageProcessingControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraImageProcessingControl_protectedbase_receivers".}
proc fcQCameraImageProcessingControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraImageProcessingControl_protectedbase_isSignalConnected".}
proc fcQCameraImageProcessingControl_staticMetaObject(): pointer {.importc: "QCameraImageProcessingControl_staticMetaObject".}

proc metaObject*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageProcessingControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, param1: cstring): pointer =
  fcQCameraImageProcessingControl_metacast(self.h, param1)

proc metacall*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraImageProcessingControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, s: cstring): string =
  let v_ms = fcQCameraImageProcessingControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, s: cstring): string =
  let v_ms = fcQCameraImageProcessingControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isParameterSupported*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, param1: cint): bool =
  fcQCameraImageProcessingControl_isParameterSupported(self.h, cint(param1))

proc isParameterValueSupported*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, parameter: cint, value: gen_qvariant_types.QVariant): bool =
  fcQCameraImageProcessingControl_isParameterValueSupported(self.h, cint(parameter), value.h)

proc parameter*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, parameter: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCameraImageProcessingControl_parameter(self.h, cint(parameter)), owned: true)

proc setParameter*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, parameter: cint, value: gen_qvariant_types.QVariant): void =
  fcQCameraImageProcessingControl_setParameter(self.h, cint(parameter), value.h)

proc tr*(_: type gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageProcessingControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageProcessingControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, s: cstring, c: cstring): string =
  let v_ms = fcQCameraImageProcessingControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraImageProcessingControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraImageProcessingControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl): cint =
  fcQCameraImageProcessingControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, signal: cstring): cint =
  fcQCameraImageProcessingControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraImageProcessingControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qcameraimageprocessingcontrol_types.QCameraImageProcessingControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraImageProcessingControl_staticMetaObject())
