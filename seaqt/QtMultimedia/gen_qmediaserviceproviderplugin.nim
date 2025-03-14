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


type QMediaServiceProviderHintTypeEnum* = distinct cint
template Null*(_: type QMediaServiceProviderHintTypeEnum): untyped = 0
template ContentType*(_: type QMediaServiceProviderHintTypeEnum): untyped = 1
template Device*(_: type QMediaServiceProviderHintTypeEnum): untyped = 2
template SupportedFeatures*(_: type QMediaServiceProviderHintTypeEnum): untyped = 3
template CameraPosition*(_: type QMediaServiceProviderHintTypeEnum): untyped = 4


type QMediaServiceProviderHintFeatureEnum* = distinct cint
template LowLatencyPlayback*(_: type QMediaServiceProviderHintFeatureEnum): untyped = 1
template RecordingSupport*(_: type QMediaServiceProviderHintFeatureEnum): untyped = 2
template StreamPlayback*(_: type QMediaServiceProviderHintFeatureEnum): untyped = 4
template VideoSurface*(_: type QMediaServiceProviderHintFeatureEnum): untyped = 8


import ./gen_qmediaserviceproviderplugin_types
export gen_qmediaserviceproviderplugin_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediaservice_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qmediaservice_types

type cQMediaServiceProviderHint*{.exportc: "QMediaServiceProviderHint", incompleteStruct.} = object
type cQMediaServiceProviderFactoryInterface*{.exportc: "QMediaServiceProviderFactoryInterface", incompleteStruct.} = object
type cQMediaServiceSupportedFormatsInterface*{.exportc: "QMediaServiceSupportedFormatsInterface", incompleteStruct.} = object
type cQMediaServiceSupportedDevicesInterface*{.exportc: "QMediaServiceSupportedDevicesInterface", incompleteStruct.} = object
type cQMediaServiceDefaultDeviceInterface*{.exportc: "QMediaServiceDefaultDeviceInterface", incompleteStruct.} = object
type cQMediaServiceCameraInfoInterface*{.exportc: "QMediaServiceCameraInfoInterface", incompleteStruct.} = object
type cQMediaServiceFeaturesInterface*{.exportc: "QMediaServiceFeaturesInterface", incompleteStruct.} = object
type cQMediaServiceProviderPlugin*{.exportc: "QMediaServiceProviderPlugin", incompleteStruct.} = object

proc fcQMediaServiceProviderHint_operatorAssign(self: pointer, other: pointer): void {.importc: "QMediaServiceProviderHint_operatorAssign".}
proc fcQMediaServiceProviderHint_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMediaServiceProviderHint_operatorEqual".}
proc fcQMediaServiceProviderHint_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMediaServiceProviderHint_operatorNotEqual".}
proc fcQMediaServiceProviderHint_isNull(self: pointer): bool {.importc: "QMediaServiceProviderHint_isNull".}
proc fcQMediaServiceProviderHint_typeX(self: pointer): cint {.importc: "QMediaServiceProviderHint_type".}
proc fcQMediaServiceProviderHint_mimeType(self: pointer): struct_miqt_string {.importc: "QMediaServiceProviderHint_mimeType".}
proc fcQMediaServiceProviderHint_codecs(self: pointer): struct_miqt_array {.importc: "QMediaServiceProviderHint_codecs".}
proc fcQMediaServiceProviderHint_device(self: pointer): struct_miqt_string {.importc: "QMediaServiceProviderHint_device".}
proc fcQMediaServiceProviderHint_cameraPosition(self: pointer): cint {.importc: "QMediaServiceProviderHint_cameraPosition".}
proc fcQMediaServiceProviderHint_features(self: pointer): cint {.importc: "QMediaServiceProviderHint_features".}
proc fcQMediaServiceProviderHint_new(): ptr cQMediaServiceProviderHint {.importc: "QMediaServiceProviderHint_new".}
proc fcQMediaServiceProviderHint_new2(mimeType: struct_miqt_string, codecs: struct_miqt_array): ptr cQMediaServiceProviderHint {.importc: "QMediaServiceProviderHint_new2".}
proc fcQMediaServiceProviderHint_new3(device: struct_miqt_string): ptr cQMediaServiceProviderHint {.importc: "QMediaServiceProviderHint_new3".}
proc fcQMediaServiceProviderHint_new4(position: cint): ptr cQMediaServiceProviderHint {.importc: "QMediaServiceProviderHint_new4".}
proc fcQMediaServiceProviderHint_new5(features: cint): ptr cQMediaServiceProviderHint {.importc: "QMediaServiceProviderHint_new5".}
proc fcQMediaServiceProviderHint_new6(other: pointer): ptr cQMediaServiceProviderHint {.importc: "QMediaServiceProviderHint_new6".}
proc fcQMediaServiceProviderFactoryInterface_createX(self: pointer, key: struct_miqt_string): pointer {.importc: "QMediaServiceProviderFactoryInterface_create".}
proc fcQMediaServiceProviderFactoryInterface_release(self: pointer, service: pointer): void {.importc: "QMediaServiceProviderFactoryInterface_release".}
proc fcQMediaServiceProviderFactoryInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaServiceProviderFactoryInterface_operatorAssign".}
proc fcQMediaServiceSupportedFormatsInterface_hasSupport(self: pointer, mimeType: struct_miqt_string, codecs: struct_miqt_array): cint {.importc: "QMediaServiceSupportedFormatsInterface_hasSupport".}
proc fcQMediaServiceSupportedFormatsInterface_supportedMimeTypes(self: pointer): struct_miqt_array {.importc: "QMediaServiceSupportedFormatsInterface_supportedMimeTypes".}
proc fcQMediaServiceSupportedFormatsInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaServiceSupportedFormatsInterface_operatorAssign".}
proc fcQMediaServiceSupportedDevicesInterface_devices(self: pointer, service: struct_miqt_string): struct_miqt_array {.importc: "QMediaServiceSupportedDevicesInterface_devices".}
proc fcQMediaServiceSupportedDevicesInterface_deviceDescription(self: pointer, service: struct_miqt_string, device: struct_miqt_string): struct_miqt_string {.importc: "QMediaServiceSupportedDevicesInterface_deviceDescription".}
proc fcQMediaServiceSupportedDevicesInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaServiceSupportedDevicesInterface_operatorAssign".}
proc fcQMediaServiceDefaultDeviceInterface_defaultDevice(self: pointer, service: struct_miqt_string): struct_miqt_string {.importc: "QMediaServiceDefaultDeviceInterface_defaultDevice".}
proc fcQMediaServiceDefaultDeviceInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaServiceDefaultDeviceInterface_operatorAssign".}
proc fcQMediaServiceCameraInfoInterface_cameraPosition(self: pointer, device: struct_miqt_string): cint {.importc: "QMediaServiceCameraInfoInterface_cameraPosition".}
proc fcQMediaServiceCameraInfoInterface_cameraOrientation(self: pointer, device: struct_miqt_string): cint {.importc: "QMediaServiceCameraInfoInterface_cameraOrientation".}
proc fcQMediaServiceCameraInfoInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaServiceCameraInfoInterface_operatorAssign".}
proc fcQMediaServiceFeaturesInterface_supportedFeatures(self: pointer, service: struct_miqt_string): cint {.importc: "QMediaServiceFeaturesInterface_supportedFeatures".}
proc fcQMediaServiceFeaturesInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QMediaServiceFeaturesInterface_operatorAssign".}
proc fcQMediaServiceProviderPlugin_metaObject(self: pointer): pointer {.importc: "QMediaServiceProviderPlugin_metaObject".}
proc fcQMediaServiceProviderPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaServiceProviderPlugin_metacast".}
proc fcQMediaServiceProviderPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaServiceProviderPlugin_metacall".}
proc fcQMediaServiceProviderPlugin_tr(s: cstring): struct_miqt_string {.importc: "QMediaServiceProviderPlugin_tr".}
proc fcQMediaServiceProviderPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaServiceProviderPlugin_trUtf8".}
proc fcQMediaServiceProviderPlugin_createX(self: pointer, key: struct_miqt_string): pointer {.importc: "QMediaServiceProviderPlugin_create".}
proc fcQMediaServiceProviderPlugin_release(self: pointer, service: pointer): void {.importc: "QMediaServiceProviderPlugin_release".}
proc fcQMediaServiceProviderPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaServiceProviderPlugin_tr2".}
proc fcQMediaServiceProviderPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaServiceProviderPlugin_tr3".}
proc fcQMediaServiceProviderPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaServiceProviderPlugin_trUtf82".}
proc fcQMediaServiceProviderPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaServiceProviderPlugin_trUtf83".}
proc fcQMediaServiceProviderPlugin_protectedbase_sender(self: pointer): pointer {.importc: "QMediaServiceProviderPlugin_protectedbase_sender".}
proc fcQMediaServiceProviderPlugin_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaServiceProviderPlugin_protectedbase_senderSignalIndex".}
proc fcQMediaServiceProviderPlugin_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaServiceProviderPlugin_protectedbase_receivers".}
proc fcQMediaServiceProviderPlugin_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaServiceProviderPlugin_protectedbase_isSignalConnected".}
proc fcQMediaServiceProviderPlugin_staticMetaObject(): pointer {.importc: "QMediaServiceProviderPlugin_staticMetaObject".}

proc operatorAssign*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint, other: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): void =
  fcQMediaServiceProviderHint_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint, other: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): bool =
  fcQMediaServiceProviderHint_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint, other: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): bool =
  fcQMediaServiceProviderHint_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): bool =
  fcQMediaServiceProviderHint_isNull(self.h)

proc typeX*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): cint =
  cint(fcQMediaServiceProviderHint_typeX(self.h))

proc mimeType*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): string =
  let v_ms = fcQMediaServiceProviderHint_mimeType(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc codecs*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): seq[string] =
  var v_ma = fcQMediaServiceProviderHint_codecs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc device*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): seq[byte] =
  var v_bytearray = fcQMediaServiceProviderHint_device(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc cameraPosition*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): cint =
  cint(fcQMediaServiceProviderHint_cameraPosition(self.h))

proc features*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): cint =
  cint(fcQMediaServiceProviderHint_features(self.h))

proc create*(T: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint =
  gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint(h: fcQMediaServiceProviderHint_new(), owned: true)

proc create*(T: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint,
    mimeType: openArray[char], codecs: openArray[string]): gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint =
  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: if len(codecs[i]) > 0: addr codecs[i][0] else: nil, len: csize_t(len(codecs[i])))

  gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint(h: fcQMediaServiceProviderHint_new2(struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0]))), owned: true)

proc create*(T: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint,
    device: openArray[byte]): gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint =
  gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint(h: fcQMediaServiceProviderHint_new3(struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))), owned: true)

proc create*(T: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint,
    position: cint): gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint =
  gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint(h: fcQMediaServiceProviderHint_new4(cint(position)), owned: true)

proc create2*(T: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint,
    features: cint): gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint =
  gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint(h: fcQMediaServiceProviderHint_new5(cint(features)), owned: true)

proc create*(T: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint,
    other: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint): gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint =
  gen_qmediaserviceproviderplugin_types.QMediaServiceProviderHint(h: fcQMediaServiceProviderHint_new6(other.h), owned: true)

proc createX*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderFactoryInterface, key: openArray[char]): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fcQMediaServiceProviderFactoryInterface_createX(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: false)

proc release*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderFactoryInterface, service: gen_qmediaservice_types.QMediaService): void =
  fcQMediaServiceProviderFactoryInterface_release(self.h, service.h)

proc operatorAssign*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderFactoryInterface, param1: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderFactoryInterface): void =
  fcQMediaServiceProviderFactoryInterface_operatorAssign(self.h, param1.h)

proc hasSupport*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedFormatsInterface, mimeType: openArray[char], codecs: openArray[string]): cint =
  var codecs_CArray = newSeq[struct_miqt_string](len(codecs))
  for i in 0..<len(codecs):
    codecs_CArray[i] = struct_miqt_string(data: if len(codecs[i]) > 0: addr codecs[i][0] else: nil, len: csize_t(len(codecs[i])))

  cint(fcQMediaServiceSupportedFormatsInterface_hasSupport(self.h, struct_miqt_string(data: if len(mimeType) > 0: addr mimeType[0] else: nil, len: csize_t(len(mimeType))), struct_miqt_array(len: csize_t(len(codecs)), data: if len(codecs) == 0: nil else: addr(codecs_CArray[0]))))

proc supportedMimeTypes*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedFormatsInterface): seq[string] =
  var v_ma = fcQMediaServiceSupportedFormatsInterface_supportedMimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc operatorAssign*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedFormatsInterface, param1: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedFormatsInterface): void =
  fcQMediaServiceSupportedFormatsInterface_operatorAssign(self.h, param1.h)

proc devices*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedDevicesInterface, service: openArray[byte]): seq[seq[byte]] =
  var v_ma = fcQMediaServiceSupportedDevicesInterface_devices(self.h, struct_miqt_string(data: cast[cstring](if len(service) == 0: nil else: unsafeAddr service[0]), len: csize_t(len(service))))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc deviceDescription*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedDevicesInterface, service: openArray[byte], device: openArray[byte]): string =
  let v_ms = fcQMediaServiceSupportedDevicesInterface_deviceDescription(self.h, struct_miqt_string(data: cast[cstring](if len(service) == 0: nil else: unsafeAddr service[0]), len: csize_t(len(service))), struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedDevicesInterface, param1: gen_qmediaserviceproviderplugin_types.QMediaServiceSupportedDevicesInterface): void =
  fcQMediaServiceSupportedDevicesInterface_operatorAssign(self.h, param1.h)

proc defaultDevice*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceDefaultDeviceInterface, service: openArray[byte]): seq[byte] =
  var v_bytearray = fcQMediaServiceDefaultDeviceInterface_defaultDevice(self.h, struct_miqt_string(data: cast[cstring](if len(service) == 0: nil else: unsafeAddr service[0]), len: csize_t(len(service))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc operatorAssign*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceDefaultDeviceInterface, param1: gen_qmediaserviceproviderplugin_types.QMediaServiceDefaultDeviceInterface): void =
  fcQMediaServiceDefaultDeviceInterface_operatorAssign(self.h, param1.h)

proc cameraPosition*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceCameraInfoInterface, device: openArray[byte]): cint =
  cint(fcQMediaServiceCameraInfoInterface_cameraPosition(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc cameraOrientation*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceCameraInfoInterface, device: openArray[byte]): cint =
  fcQMediaServiceCameraInfoInterface_cameraOrientation(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))))

proc operatorAssign*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceCameraInfoInterface, param1: gen_qmediaserviceproviderplugin_types.QMediaServiceCameraInfoInterface): void =
  fcQMediaServiceCameraInfoInterface_operatorAssign(self.h, param1.h)

proc supportedFeatures*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceFeaturesInterface, service: openArray[byte]): cint =
  cint(fcQMediaServiceFeaturesInterface_supportedFeatures(self.h, struct_miqt_string(data: cast[cstring](if len(service) == 0: nil else: unsafeAddr service[0]), len: csize_t(len(service)))))

proc operatorAssign*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceFeaturesInterface, param1: gen_qmediaserviceproviderplugin_types.QMediaServiceFeaturesInterface): void =
  fcQMediaServiceFeaturesInterface_operatorAssign(self.h, param1.h)

proc metaObject*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaServiceProviderPlugin_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, param1: cstring): pointer =
  fcQMediaServiceProviderPlugin_metacast(self.h, param1)

proc metacall*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaServiceProviderPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, s: cstring): string =
  let v_ms = fcQMediaServiceProviderPlugin_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, s: cstring): string =
  let v_ms = fcQMediaServiceProviderPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createX*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, key: openArray[char]): gen_qmediaservice_types.QMediaService =
  gen_qmediaservice_types.QMediaService(h: fcQMediaServiceProviderPlugin_createX(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: false)

proc release*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, service: gen_qmediaservice_types.QMediaService): void =
  fcQMediaServiceProviderPlugin_release(self.h, service.h)

proc tr*(_: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQMediaServiceProviderPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaServiceProviderPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, s: cstring, c: cstring): string =
  let v_ms = fcQMediaServiceProviderPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaServiceProviderPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaServiceProviderPlugin_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin): cint =
  fcQMediaServiceProviderPlugin_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, signal: cstring): cint =
  fcQMediaServiceProviderPlugin_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaServiceProviderPlugin_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qmediaserviceproviderplugin_types.QMediaServiceProviderPlugin): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaServiceProviderPlugin_staticMetaObject())
