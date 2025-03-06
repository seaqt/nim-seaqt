import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qnetworkinformation.cpp", cflags).}


type QNetworkInformationReachabilityEnum* = distinct cint
template Unknown*(_: type QNetworkInformationReachabilityEnum): untyped = 0
template Disconnected*(_: type QNetworkInformationReachabilityEnum): untyped = 1
template Local*(_: type QNetworkInformationReachabilityEnum): untyped = 2
template Site*(_: type QNetworkInformationReachabilityEnum): untyped = 3
template Online*(_: type QNetworkInformationReachabilityEnum): untyped = 4


type QNetworkInformationTransportMediumEnum* = distinct cint
template Unknown*(_: type QNetworkInformationTransportMediumEnum): untyped = 0
template Ethernet*(_: type QNetworkInformationTransportMediumEnum): untyped = 1
template Cellular*(_: type QNetworkInformationTransportMediumEnum): untyped = 2
template WiFi*(_: type QNetworkInformationTransportMediumEnum): untyped = 3
template Bluetooth*(_: type QNetworkInformationTransportMediumEnum): untyped = 4


type QNetworkInformationFeatureEnum* = distinct cint
template Reachability*(_: type QNetworkInformationFeatureEnum): untyped = 1
template CaptivePortal*(_: type QNetworkInformationFeatureEnum): untyped = 2
template TransportMedium*(_: type QNetworkInformationFeatureEnum): untyped = 4
template Metered*(_: type QNetworkInformationFeatureEnum): untyped = 8


import ./gen_qnetworkinformation_types
export gen_qnetworkinformation_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobject,
  gen_qobjectdefs_types

type cQNetworkInformation*{.exportc: "QNetworkInformation", incompleteStruct.} = object

proc fcQNetworkInformation_metaObject(self: pointer, ): pointer {.importc: "QNetworkInformation_metaObject".}
proc fcQNetworkInformation_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkInformation_metacast".}
proc fcQNetworkInformation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkInformation_metacall".}
proc fcQNetworkInformation_tr(s: cstring): struct_miqt_string {.importc: "QNetworkInformation_tr".}
proc fcQNetworkInformation_reachability(self: pointer, ): cint {.importc: "QNetworkInformation_reachability".}
proc fcQNetworkInformation_isBehindCaptivePortal(self: pointer, ): bool {.importc: "QNetworkInformation_isBehindCaptivePortal".}
proc fcQNetworkInformation_transportMedium(self: pointer, ): cint {.importc: "QNetworkInformation_transportMedium".}
proc fcQNetworkInformation_isMetered(self: pointer, ): bool {.importc: "QNetworkInformation_isMetered".}
proc fcQNetworkInformation_backendName(self: pointer, ): struct_miqt_string {.importc: "QNetworkInformation_backendName".}
proc fcQNetworkInformation_supports(self: pointer, features: cint): bool {.importc: "QNetworkInformation_supports".}
proc fcQNetworkInformation_supportedFeatures(self: pointer, ): cint {.importc: "QNetworkInformation_supportedFeatures".}
proc fcQNetworkInformation_loadDefaultBackend(): bool {.importc: "QNetworkInformation_loadDefaultBackend".}
proc fcQNetworkInformation_loadBackendByFeatures(features: cint): bool {.importc: "QNetworkInformation_loadBackendByFeatures".}
proc fcQNetworkInformation_loadWithFeatures(features: cint): bool {.importc: "QNetworkInformation_loadWithFeatures".}
proc fcQNetworkInformation_availableBackends(): struct_miqt_array {.importc: "QNetworkInformation_availableBackends".}
proc fcQNetworkInformation_instance(): pointer {.importc: "QNetworkInformation_instance".}
proc fcQNetworkInformation_reachabilityChanged(self: pointer, newReachability: cint): void {.importc: "QNetworkInformation_reachabilityChanged".}
proc fcQNetworkInformation_connect_reachabilityChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_reachabilityChanged".}
proc fcQNetworkInformation_isBehindCaptivePortalChanged(self: pointer, state: bool): void {.importc: "QNetworkInformation_isBehindCaptivePortalChanged".}
proc fcQNetworkInformation_connect_isBehindCaptivePortalChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_isBehindCaptivePortalChanged".}
proc fcQNetworkInformation_transportMediumChanged(self: pointer, current: cint): void {.importc: "QNetworkInformation_transportMediumChanged".}
proc fcQNetworkInformation_connect_transportMediumChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_transportMediumChanged".}
proc fcQNetworkInformation_isMeteredChanged(self: pointer, isMetered: bool): void {.importc: "QNetworkInformation_isMeteredChanged".}
proc fcQNetworkInformation_connect_isMeteredChanged(self: pointer, slot: int) {.importc: "QNetworkInformation_connect_isMeteredChanged".}
proc fcQNetworkInformation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkInformation_tr2".}
proc fcQNetworkInformation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkInformation_tr3".}
proc fcQNetworkInformation_staticMetaObject(): pointer {.importc: "QNetworkInformation_staticMetaObject".}

proc metaObject*(self: gen_qnetworkinformation_types.QNetworkInformation, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkInformation_metaObject(self.h))

proc metacast*(self: gen_qnetworkinformation_types.QNetworkInformation, param1: cstring): pointer =
  fcQNetworkInformation_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkinformation_types.QNetworkInformation, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkInformation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkinformation_types.QNetworkInformation, s: cstring): string =
  let v_ms = fcQNetworkInformation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc reachability*(self: gen_qnetworkinformation_types.QNetworkInformation, ): cint =
  cint(fcQNetworkInformation_reachability(self.h))

proc isBehindCaptivePortal*(self: gen_qnetworkinformation_types.QNetworkInformation, ): bool =
  fcQNetworkInformation_isBehindCaptivePortal(self.h)

proc transportMedium*(self: gen_qnetworkinformation_types.QNetworkInformation, ): cint =
  cint(fcQNetworkInformation_transportMedium(self.h))

proc isMetered*(self: gen_qnetworkinformation_types.QNetworkInformation, ): bool =
  fcQNetworkInformation_isMetered(self.h)

proc backendName*(self: gen_qnetworkinformation_types.QNetworkInformation, ): string =
  let v_ms = fcQNetworkInformation_backendName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supports*(self: gen_qnetworkinformation_types.QNetworkInformation, features: cint): bool =
  fcQNetworkInformation_supports(self.h, cint(features))

proc supportedFeatures*(self: gen_qnetworkinformation_types.QNetworkInformation, ): cint =
  cint(fcQNetworkInformation_supportedFeatures(self.h))

proc loadDefaultBackend*(_: type gen_qnetworkinformation_types.QNetworkInformation, ): bool =
  fcQNetworkInformation_loadDefaultBackend()

proc loadBackendByFeatures*(_: type gen_qnetworkinformation_types.QNetworkInformation, features: cint): bool =
  fcQNetworkInformation_loadBackendByFeatures(cint(features))

proc load*(_: type gen_qnetworkinformation_types.QNetworkInformation, features: cint): bool =
  fcQNetworkInformation_loadWithFeatures(cint(features))

proc availableBackends*(_: type gen_qnetworkinformation_types.QNetworkInformation, ): seq[string] =
  var v_ma = fcQNetworkInformation_availableBackends()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc instance*(_: type gen_qnetworkinformation_types.QNetworkInformation, ): gen_qnetworkinformation_types.QNetworkInformation =
  gen_qnetworkinformation_types.QNetworkInformation(h: fcQNetworkInformation_instance())

proc reachabilityChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, newReachability: cint): void =
  fcQNetworkInformation_reachabilityChanged(self.h, cint(newReachability))

type QNetworkInformationreachabilityChangedSlot* = proc(newReachability: cint)
proc miqt_exec_callback_cQNetworkInformation_reachabilityChanged(slot: int, newReachability: cint) {.exportc: "miqt_exec_callback_QNetworkInformation_reachabilityChanged".} =
  let nimfunc = cast[ptr QNetworkInformationreachabilityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newReachability)

  nimfunc[](slotval1)

proc onreachabilityChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationreachabilityChangedSlot) =
  var tmp = new QNetworkInformationreachabilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_reachabilityChanged(self.h, cast[int](addr tmp[]))

proc isBehindCaptivePortalChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, state: bool): void =
  fcQNetworkInformation_isBehindCaptivePortalChanged(self.h, state)

type QNetworkInformationisBehindCaptivePortalChangedSlot* = proc(state: bool)
proc miqt_exec_callback_cQNetworkInformation_isBehindCaptivePortalChanged(slot: int, state: bool) {.exportc: "miqt_exec_callback_QNetworkInformation_isBehindCaptivePortalChanged".} =
  let nimfunc = cast[ptr QNetworkInformationisBehindCaptivePortalChangedSlot](cast[pointer](slot))
  let slotval1 = state

  nimfunc[](slotval1)

proc onisBehindCaptivePortalChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationisBehindCaptivePortalChangedSlot) =
  var tmp = new QNetworkInformationisBehindCaptivePortalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_isBehindCaptivePortalChanged(self.h, cast[int](addr tmp[]))

proc transportMediumChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, current: cint): void =
  fcQNetworkInformation_transportMediumChanged(self.h, cint(current))

type QNetworkInformationtransportMediumChangedSlot* = proc(current: cint)
proc miqt_exec_callback_cQNetworkInformation_transportMediumChanged(slot: int, current: cint) {.exportc: "miqt_exec_callback_QNetworkInformation_transportMediumChanged".} =
  let nimfunc = cast[ptr QNetworkInformationtransportMediumChangedSlot](cast[pointer](slot))
  let slotval1 = cint(current)

  nimfunc[](slotval1)

proc ontransportMediumChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationtransportMediumChangedSlot) =
  var tmp = new QNetworkInformationtransportMediumChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_transportMediumChanged(self.h, cast[int](addr tmp[]))

proc isMeteredChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, isMetered: bool): void =
  fcQNetworkInformation_isMeteredChanged(self.h, isMetered)

type QNetworkInformationisMeteredChangedSlot* = proc(isMetered: bool)
proc miqt_exec_callback_cQNetworkInformation_isMeteredChanged(slot: int, isMetered: bool) {.exportc: "miqt_exec_callback_QNetworkInformation_isMeteredChanged".} =
  let nimfunc = cast[ptr QNetworkInformationisMeteredChangedSlot](cast[pointer](slot))
  let slotval1 = isMetered

  nimfunc[](slotval1)

proc onisMeteredChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationisMeteredChangedSlot) =
  var tmp = new QNetworkInformationisMeteredChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_isMeteredChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qnetworkinformation_types.QNetworkInformation, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkInformation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkinformation_types.QNetworkInformation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkInformation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qnetworkinformation_types.QNetworkInformation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkInformation_staticMetaObject())
