import ./Qt5Network_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
{.compile("gen_qnetworkconfiguration.cpp", cflags).}


type QNetworkConfigurationTypeEnum* = distinct cint
template InternetAccessPoint*(_: type QNetworkConfigurationTypeEnum): untyped = 0
template ServiceNetwork*(_: type QNetworkConfigurationTypeEnum): untyped = 1
template UserChoice*(_: type QNetworkConfigurationTypeEnum): untyped = 2
template Invalid*(_: type QNetworkConfigurationTypeEnum): untyped = 3


type QNetworkConfigurationPurposeEnum* = distinct cint
template UnknownPurpose*(_: type QNetworkConfigurationPurposeEnum): untyped = 0
template PublicPurpose*(_: type QNetworkConfigurationPurposeEnum): untyped = 1
template PrivatePurpose*(_: type QNetworkConfigurationPurposeEnum): untyped = 2
template ServiceSpecificPurpose*(_: type QNetworkConfigurationPurposeEnum): untyped = 3


type QNetworkConfigurationStateFlagEnum* = distinct cint
template Undefined*(_: type QNetworkConfigurationStateFlagEnum): untyped = 1
template Defined*(_: type QNetworkConfigurationStateFlagEnum): untyped = 2
template Discovered*(_: type QNetworkConfigurationStateFlagEnum): untyped = 6
template Active*(_: type QNetworkConfigurationStateFlagEnum): untyped = 14


type QNetworkConfigurationBearerTypeEnum* = distinct cint
template BearerUnknown*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 0
template BearerEthernet*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 1
template BearerWLAN*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 2
template Bearer2G*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 3
template BearerCDMA2000*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 4
template BearerWCDMA*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 5
template BearerHSPA*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 6
template BearerBluetooth*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 7
template BearerWiMAX*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 8
template BearerEVDO*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 9
template BearerLTE*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 10
template Bearer3G*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 11
template Bearer4G*(_: type QNetworkConfigurationBearerTypeEnum): untyped = 12


import ./gen_qnetworkconfiguration_types
export gen_qnetworkconfiguration_types


type cQNetworkConfiguration*{.exportc: "QNetworkConfiguration", incompleteStruct.} = object

proc fcQNetworkConfiguration_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkConfiguration_operatorAssign".}
proc fcQNetworkConfiguration_swap(self: pointer, other: pointer): void {.importc: "QNetworkConfiguration_swap".}
proc fcQNetworkConfiguration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkConfiguration_operatorEqual".}
proc fcQNetworkConfiguration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkConfiguration_operatorNotEqual".}
proc fcQNetworkConfiguration_state(self: pointer, ): cint {.importc: "QNetworkConfiguration_state".}
proc fcQNetworkConfiguration_typeX(self: pointer, ): cint {.importc: "QNetworkConfiguration_type".}
proc fcQNetworkConfiguration_purpose(self: pointer, ): cint {.importc: "QNetworkConfiguration_purpose".}
proc fcQNetworkConfiguration_bearerType(self: pointer, ): cint {.importc: "QNetworkConfiguration_bearerType".}
proc fcQNetworkConfiguration_bearerTypeFamily(self: pointer, ): cint {.importc: "QNetworkConfiguration_bearerTypeFamily".}
proc fcQNetworkConfiguration_bearerTypeName(self: pointer, ): struct_miqt_string {.importc: "QNetworkConfiguration_bearerTypeName".}
proc fcQNetworkConfiguration_identifier(self: pointer, ): struct_miqt_string {.importc: "QNetworkConfiguration_identifier".}
proc fcQNetworkConfiguration_isRoamingAvailable(self: pointer, ): bool {.importc: "QNetworkConfiguration_isRoamingAvailable".}
proc fcQNetworkConfiguration_children(self: pointer, ): struct_miqt_array {.importc: "QNetworkConfiguration_children".}
proc fcQNetworkConfiguration_name(self: pointer, ): struct_miqt_string {.importc: "QNetworkConfiguration_name".}
proc fcQNetworkConfiguration_isValid(self: pointer, ): bool {.importc: "QNetworkConfiguration_isValid".}
proc fcQNetworkConfiguration_connectTimeout(self: pointer, ): cint {.importc: "QNetworkConfiguration_connectTimeout".}
proc fcQNetworkConfiguration_setConnectTimeout(self: pointer, timeout: cint): bool {.importc: "QNetworkConfiguration_setConnectTimeout".}
proc fcQNetworkConfiguration_new(): ptr cQNetworkConfiguration {.importc: "QNetworkConfiguration_new".}
proc fcQNetworkConfiguration_new2(other: pointer): ptr cQNetworkConfiguration {.importc: "QNetworkConfiguration_new2".}
proc fcQNetworkConfiguration_delete(self: pointer) {.importc: "QNetworkConfiguration_delete".}

proc operatorAssign*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, other: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfiguration_operatorAssign(self.h, other.h)

proc swap*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, other: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfiguration_swap(self.h, other.h)

proc operatorEqual*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, other: gen_qnetworkconfiguration_types.QNetworkConfiguration): bool =
  fcQNetworkConfiguration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, other: gen_qnetworkconfiguration_types.QNetworkConfiguration): bool =
  fcQNetworkConfiguration_operatorNotEqual(self.h, other.h)

proc state*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): cint =
  cint(fcQNetworkConfiguration_state(self.h))

proc typeX*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): cint =
  cint(fcQNetworkConfiguration_typeX(self.h))

proc purpose*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): cint =
  cint(fcQNetworkConfiguration_purpose(self.h))

proc bearerType*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): cint =
  cint(fcQNetworkConfiguration_bearerType(self.h))

proc bearerTypeFamily*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): cint =
  cint(fcQNetworkConfiguration_bearerTypeFamily(self.h))

proc bearerTypeName*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): string =
  let v_ms = fcQNetworkConfiguration_bearerTypeName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc identifier*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): string =
  let v_ms = fcQNetworkConfiguration_identifier(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isRoamingAvailable*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): bool =
  fcQNetworkConfiguration_isRoamingAvailable(self.h)

proc children*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): seq[gen_qnetworkconfiguration_types.QNetworkConfiguration] =
  var v_ma = fcQNetworkConfiguration_children(self.h)
  var vx_ret = newSeq[gen_qnetworkconfiguration_types.QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: v_outCast[i])
  vx_ret

proc name*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): string =
  let v_ms = fcQNetworkConfiguration_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): bool =
  fcQNetworkConfiguration_isValid(self.h)

proc connectTimeout*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, ): cint =
  fcQNetworkConfiguration_connectTimeout(self.h)

proc setConnectTimeout*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration, timeout: cint): bool =
  fcQNetworkConfiguration_setConnectTimeout(self.h, timeout)

proc create*(T: type gen_qnetworkconfiguration_types.QNetworkConfiguration): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkConfiguration_new())

proc create*(T: type gen_qnetworkconfiguration_types.QNetworkConfiguration,
    other: gen_qnetworkconfiguration_types.QNetworkConfiguration): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkConfiguration_new2(other.h))

proc delete*(self: gen_qnetworkconfiguration_types.QNetworkConfiguration) =
  fcQNetworkConfiguration_delete(self.h)
