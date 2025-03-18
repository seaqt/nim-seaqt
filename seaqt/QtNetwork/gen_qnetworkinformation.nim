import ./qtnetwork_pkg

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


{.compile("gen_qnetworkinformation.cpp", QtNetworkCFlags).}


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
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQNetworkInformation*{.exportc: "QNetworkInformation", incompleteStruct.} = object

proc fcQNetworkInformation_metaObject(self: pointer): pointer {.importc: "QNetworkInformation_metaObject".}
proc fcQNetworkInformation_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkInformation_metacast".}
proc fcQNetworkInformation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkInformation_metacall".}
proc fcQNetworkInformation_tr(s: cstring): struct_miqt_string {.importc: "QNetworkInformation_tr".}
proc fcQNetworkInformation_reachability(self: pointer): cint {.importc: "QNetworkInformation_reachability".}
proc fcQNetworkInformation_isBehindCaptivePortal(self: pointer): bool {.importc: "QNetworkInformation_isBehindCaptivePortal".}
proc fcQNetworkInformation_transportMedium(self: pointer): cint {.importc: "QNetworkInformation_transportMedium".}
proc fcQNetworkInformation_isMetered(self: pointer): bool {.importc: "QNetworkInformation_isMetered".}
proc fcQNetworkInformation_backendName(self: pointer): struct_miqt_string {.importc: "QNetworkInformation_backendName".}
proc fcQNetworkInformation_supports(self: pointer, features: cint): bool {.importc: "QNetworkInformation_supports".}
proc fcQNetworkInformation_supportedFeatures(self: pointer): cint {.importc: "QNetworkInformation_supportedFeatures".}
proc fcQNetworkInformation_loadDefaultBackend(): bool {.importc: "QNetworkInformation_loadDefaultBackend".}
proc fcQNetworkInformation_loadBackendByFeatures(features: cint): bool {.importc: "QNetworkInformation_loadBackendByFeatures".}
proc fcQNetworkInformation_loadWithFeatures(features: cint): bool {.importc: "QNetworkInformation_loadWithFeatures".}
proc fcQNetworkInformation_availableBackends(): struct_miqt_array {.importc: "QNetworkInformation_availableBackends".}
proc fcQNetworkInformation_instance(): pointer {.importc: "QNetworkInformation_instance".}
proc fcQNetworkInformation_reachabilityChanged(self: pointer, newReachability: cint): void {.importc: "QNetworkInformation_reachabilityChanged".}
proc fcQNetworkInformation_connect_reachabilityChanged(self: pointer, slot: int, callback: proc (slot: int, newReachability: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkInformation_connect_reachabilityChanged".}
proc fcQNetworkInformation_isBehindCaptivePortalChanged(self: pointer, state: bool): void {.importc: "QNetworkInformation_isBehindCaptivePortalChanged".}
proc fcQNetworkInformation_connect_isBehindCaptivePortalChanged(self: pointer, slot: int, callback: proc (slot: int, state: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkInformation_connect_isBehindCaptivePortalChanged".}
proc fcQNetworkInformation_transportMediumChanged(self: pointer, current: cint): void {.importc: "QNetworkInformation_transportMediumChanged".}
proc fcQNetworkInformation_connect_transportMediumChanged(self: pointer, slot: int, callback: proc (slot: int, current: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkInformation_connect_transportMediumChanged".}
proc fcQNetworkInformation_isMeteredChanged(self: pointer, isMetered: bool): void {.importc: "QNetworkInformation_isMeteredChanged".}
proc fcQNetworkInformation_connect_isMeteredChanged(self: pointer, slot: int, callback: proc (slot: int, isMetered: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkInformation_connect_isMeteredChanged".}
proc fcQNetworkInformation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkInformation_tr2".}
proc fcQNetworkInformation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkInformation_tr3".}
proc fcQNetworkInformation_protectedbase_sender(self: pointer): pointer {.importc: "QNetworkInformation_protectedbase_sender".}
proc fcQNetworkInformation_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QNetworkInformation_protectedbase_senderSignalIndex".}
proc fcQNetworkInformation_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkInformation_protectedbase_receivers".}
proc fcQNetworkInformation_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkInformation_protectedbase_isSignalConnected".}
proc fcQNetworkInformation_staticMetaObject(): pointer {.importc: "QNetworkInformation_staticMetaObject".}

proc metaObject*(self: gen_qnetworkinformation_types.QNetworkInformation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkInformation_metaObject(self.h), owned: false)

proc metacast*(self: gen_qnetworkinformation_types.QNetworkInformation, param1: cstring): pointer =
  fcQNetworkInformation_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkinformation_types.QNetworkInformation, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkInformation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkinformation_types.QNetworkInformation, s: cstring): string =
  let v_ms = fcQNetworkInformation_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc reachability*(self: gen_qnetworkinformation_types.QNetworkInformation): cint =
  cint(fcQNetworkInformation_reachability(self.h))

proc isBehindCaptivePortal*(self: gen_qnetworkinformation_types.QNetworkInformation): bool =
  fcQNetworkInformation_isBehindCaptivePortal(self.h)

proc transportMedium*(self: gen_qnetworkinformation_types.QNetworkInformation): cint =
  cint(fcQNetworkInformation_transportMedium(self.h))

proc isMetered*(self: gen_qnetworkinformation_types.QNetworkInformation): bool =
  fcQNetworkInformation_isMetered(self.h)

proc backendName*(self: gen_qnetworkinformation_types.QNetworkInformation): string =
  let v_ms = fcQNetworkInformation_backendName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc supports*(self: gen_qnetworkinformation_types.QNetworkInformation, features: cint): bool =
  fcQNetworkInformation_supports(self.h, cint(features))

proc supportedFeatures*(self: gen_qnetworkinformation_types.QNetworkInformation): cint =
  cint(fcQNetworkInformation_supportedFeatures(self.h))

proc loadDefaultBackend*(_: type gen_qnetworkinformation_types.QNetworkInformation): bool =
  fcQNetworkInformation_loadDefaultBackend()

proc loadBackendByFeatures*(_: type gen_qnetworkinformation_types.QNetworkInformation, features: cint): bool =
  fcQNetworkInformation_loadBackendByFeatures(cint(features))

proc load*(_: type gen_qnetworkinformation_types.QNetworkInformation, features: cint): bool =
  fcQNetworkInformation_loadWithFeatures(cint(features))

proc availableBackends*(_: type gen_qnetworkinformation_types.QNetworkInformation): seq[string] =
  var v_ma = fcQNetworkInformation_availableBackends()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc instance*(_: type gen_qnetworkinformation_types.QNetworkInformation): gen_qnetworkinformation_types.QNetworkInformation =
  gen_qnetworkinformation_types.QNetworkInformation(h: fcQNetworkInformation_instance(), owned: false)

proc reachabilityChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, newReachability: cint): void =
  fcQNetworkInformation_reachabilityChanged(self.h, cint(newReachability))

type QNetworkInformationreachabilityChangedSlot* = proc(newReachability: cint)
proc fcQNetworkInformation_slot_callback_reachabilityChanged(slot: int, newReachability: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkInformationreachabilityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newReachability)

  nimfunc[](slotval1)

proc fcQNetworkInformation_slot_callback_reachabilityChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkInformationreachabilityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReachabilityChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationreachabilityChangedSlot) =
  var tmp = new QNetworkInformationreachabilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_reachabilityChanged(self.h, cast[int](addr tmp[]), fcQNetworkInformation_slot_callback_reachabilityChanged, fcQNetworkInformation_slot_callback_reachabilityChanged_release)

proc isBehindCaptivePortalChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, state: bool): void =
  fcQNetworkInformation_isBehindCaptivePortalChanged(self.h, state)

type QNetworkInformationisBehindCaptivePortalChangedSlot* = proc(state: bool)
proc fcQNetworkInformation_slot_callback_isBehindCaptivePortalChanged(slot: int, state: bool) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkInformationisBehindCaptivePortalChangedSlot](cast[pointer](slot))
  let slotval1 = state

  nimfunc[](slotval1)

proc fcQNetworkInformation_slot_callback_isBehindCaptivePortalChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkInformationisBehindCaptivePortalChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onIsBehindCaptivePortalChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationisBehindCaptivePortalChangedSlot) =
  var tmp = new QNetworkInformationisBehindCaptivePortalChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_isBehindCaptivePortalChanged(self.h, cast[int](addr tmp[]), fcQNetworkInformation_slot_callback_isBehindCaptivePortalChanged, fcQNetworkInformation_slot_callback_isBehindCaptivePortalChanged_release)

proc transportMediumChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, current: cint): void =
  fcQNetworkInformation_transportMediumChanged(self.h, cint(current))

type QNetworkInformationtransportMediumChangedSlot* = proc(current: cint)
proc fcQNetworkInformation_slot_callback_transportMediumChanged(slot: int, current: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkInformationtransportMediumChangedSlot](cast[pointer](slot))
  let slotval1 = cint(current)

  nimfunc[](slotval1)

proc fcQNetworkInformation_slot_callback_transportMediumChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkInformationtransportMediumChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onTransportMediumChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationtransportMediumChangedSlot) =
  var tmp = new QNetworkInformationtransportMediumChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_transportMediumChanged(self.h, cast[int](addr tmp[]), fcQNetworkInformation_slot_callback_transportMediumChanged, fcQNetworkInformation_slot_callback_transportMediumChanged_release)

proc isMeteredChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, isMetered: bool): void =
  fcQNetworkInformation_isMeteredChanged(self.h, isMetered)

type QNetworkInformationisMeteredChangedSlot* = proc(isMetered: bool)
proc fcQNetworkInformation_slot_callback_isMeteredChanged(slot: int, isMetered: bool) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkInformationisMeteredChangedSlot](cast[pointer](slot))
  let slotval1 = isMetered

  nimfunc[](slotval1)

proc fcQNetworkInformation_slot_callback_isMeteredChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkInformationisMeteredChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onIsMeteredChanged*(self: gen_qnetworkinformation_types.QNetworkInformation, slot: QNetworkInformationisMeteredChangedSlot) =
  var tmp = new QNetworkInformationisMeteredChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkInformation_connect_isMeteredChanged(self.h, cast[int](addr tmp[]), fcQNetworkInformation_slot_callback_isMeteredChanged, fcQNetworkInformation_slot_callback_isMeteredChanged_release)

proc tr*(_: type gen_qnetworkinformation_types.QNetworkInformation, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkInformation_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkinformation_types.QNetworkInformation, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkInformation_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qnetworkinformation_types.QNetworkInformation): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkInformation_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qnetworkinformation_types.QNetworkInformation): cint =
  fcQNetworkInformation_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworkinformation_types.QNetworkInformation, signal: cstring): cint =
  fcQNetworkInformation_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworkinformation_types.QNetworkInformation, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkInformation_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qnetworkinformation_types.QNetworkInformation): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkInformation_staticMetaObject())
