import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qnetworkinterface.cpp", cflags).}


type QNetworkAddressEntryDnsEligibilityStatusEnum* = distinct cschar
template DnsEligibilityUnknown*(_: type QNetworkAddressEntryDnsEligibilityStatusEnum): untyped = -1
template DnsIneligible*(_: type QNetworkAddressEntryDnsEligibilityStatusEnum): untyped = 0
template DnsEligible*(_: type QNetworkAddressEntryDnsEligibilityStatusEnum): untyped = 1


type QNetworkInterfaceInterfaceFlagEnum* = distinct cint
template IsUp*(_: type QNetworkInterfaceInterfaceFlagEnum): untyped = 1
template IsRunning*(_: type QNetworkInterfaceInterfaceFlagEnum): untyped = 2
template CanBroadcast*(_: type QNetworkInterfaceInterfaceFlagEnum): untyped = 4
template IsLoopBack*(_: type QNetworkInterfaceInterfaceFlagEnum): untyped = 8
template IsPointToPoint*(_: type QNetworkInterfaceInterfaceFlagEnum): untyped = 16
template CanMulticast*(_: type QNetworkInterfaceInterfaceFlagEnum): untyped = 32


type QNetworkInterfaceInterfaceTypeEnum* = distinct cint
template Loopback*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 1
template Virtual*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 2
template Ethernet*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 3
template Slip*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 4
template CanBus*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 5
template Ppp*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 6
template Fddi*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 7
template Wifi*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 8
template Ieee80211*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 8
template Phonet*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 9
template Ieee802154*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 10
template SixLoWPAN*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 11
template Ieee80216*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 12
template Ieee1394*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 13
template Unknown*(_: type QNetworkInterfaceInterfaceTypeEnum): untyped = 0


import ./gen_qnetworkinterface_types
export gen_qnetworkinterface_types

import
  ../QtCore/gen_qdeadlinetimer_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qhostaddress_types
export
  gen_qdeadlinetimer_types,
  gen_qobjectdefs_types,
  gen_qhostaddress_types

type cQNetworkAddressEntry*{.exportc: "QNetworkAddressEntry", incompleteStruct.} = object
type cQNetworkInterface*{.exportc: "QNetworkInterface", incompleteStruct.} = object

proc fcQNetworkAddressEntry_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkAddressEntry_operatorAssign".}
proc fcQNetworkAddressEntry_swap(self: pointer, other: pointer): void {.importc: "QNetworkAddressEntry_swap".}
proc fcQNetworkAddressEntry_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkAddressEntry_operatorEqual".}
proc fcQNetworkAddressEntry_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkAddressEntry_operatorNotEqual".}
proc fcQNetworkAddressEntry_dnsEligibility(self: pointer, ): cint {.importc: "QNetworkAddressEntry_dnsEligibility".}
proc fcQNetworkAddressEntry_setDnsEligibility(self: pointer, status: cint): void {.importc: "QNetworkAddressEntry_setDnsEligibility".}
proc fcQNetworkAddressEntry_ip(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_ip".}
proc fcQNetworkAddressEntry_setIp(self: pointer, newIp: pointer): void {.importc: "QNetworkAddressEntry_setIp".}
proc fcQNetworkAddressEntry_netmask(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_netmask".}
proc fcQNetworkAddressEntry_setNetmask(self: pointer, newNetmask: pointer): void {.importc: "QNetworkAddressEntry_setNetmask".}
proc fcQNetworkAddressEntry_prefixLength(self: pointer, ): cint {.importc: "QNetworkAddressEntry_prefixLength".}
proc fcQNetworkAddressEntry_setPrefixLength(self: pointer, length: cint): void {.importc: "QNetworkAddressEntry_setPrefixLength".}
proc fcQNetworkAddressEntry_broadcast(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_broadcast".}
proc fcQNetworkAddressEntry_setBroadcast(self: pointer, newBroadcast: pointer): void {.importc: "QNetworkAddressEntry_setBroadcast".}
proc fcQNetworkAddressEntry_isLifetimeKnown(self: pointer, ): bool {.importc: "QNetworkAddressEntry_isLifetimeKnown".}
proc fcQNetworkAddressEntry_preferredLifetime(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_preferredLifetime".}
proc fcQNetworkAddressEntry_validityLifetime(self: pointer, ): pointer {.importc: "QNetworkAddressEntry_validityLifetime".}
proc fcQNetworkAddressEntry_setAddressLifetime(self: pointer, preferred: pointer, validity: pointer): void {.importc: "QNetworkAddressEntry_setAddressLifetime".}
proc fcQNetworkAddressEntry_clearAddressLifetime(self: pointer, ): void {.importc: "QNetworkAddressEntry_clearAddressLifetime".}
proc fcQNetworkAddressEntry_isPermanent(self: pointer, ): bool {.importc: "QNetworkAddressEntry_isPermanent".}
proc fcQNetworkAddressEntry_isTemporary(self: pointer, ): bool {.importc: "QNetworkAddressEntry_isTemporary".}
proc fcQNetworkAddressEntry_new(): ptr cQNetworkAddressEntry {.importc: "QNetworkAddressEntry_new".}
proc fcQNetworkAddressEntry_new2(other: pointer): ptr cQNetworkAddressEntry {.importc: "QNetworkAddressEntry_new2".}
proc fcQNetworkAddressEntry_delete(self: pointer) {.importc: "QNetworkAddressEntry_delete".}
proc fcQNetworkInterface_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkInterface_operatorAssign".}
proc fcQNetworkInterface_swap(self: pointer, other: pointer): void {.importc: "QNetworkInterface_swap".}
proc fcQNetworkInterface_isValid(self: pointer, ): bool {.importc: "QNetworkInterface_isValid".}
proc fcQNetworkInterface_index(self: pointer, ): cint {.importc: "QNetworkInterface_index".}
proc fcQNetworkInterface_maximumTransmissionUnit(self: pointer, ): cint {.importc: "QNetworkInterface_maximumTransmissionUnit".}
proc fcQNetworkInterface_name(self: pointer, ): struct_miqt_string {.importc: "QNetworkInterface_name".}
proc fcQNetworkInterface_humanReadableName(self: pointer, ): struct_miqt_string {.importc: "QNetworkInterface_humanReadableName".}
proc fcQNetworkInterface_flags(self: pointer, ): cint {.importc: "QNetworkInterface_flags".}
proc fcQNetworkInterface_typeX(self: pointer, ): cint {.importc: "QNetworkInterface_type".}
proc fcQNetworkInterface_hardwareAddress(self: pointer, ): struct_miqt_string {.importc: "QNetworkInterface_hardwareAddress".}
proc fcQNetworkInterface_addressEntries(self: pointer, ): struct_miqt_array {.importc: "QNetworkInterface_addressEntries".}
proc fcQNetworkInterface_interfaceIndexFromName(name: struct_miqt_string): cint {.importc: "QNetworkInterface_interfaceIndexFromName".}
proc fcQNetworkInterface_interfaceFromName(name: struct_miqt_string): pointer {.importc: "QNetworkInterface_interfaceFromName".}
proc fcQNetworkInterface_interfaceFromIndex(index: cint): pointer {.importc: "QNetworkInterface_interfaceFromIndex".}
proc fcQNetworkInterface_interfaceNameFromIndex(index: cint): struct_miqt_string {.importc: "QNetworkInterface_interfaceNameFromIndex".}
proc fcQNetworkInterface_allInterfaces(): struct_miqt_array {.importc: "QNetworkInterface_allInterfaces".}
proc fcQNetworkInterface_allAddresses(): struct_miqt_array {.importc: "QNetworkInterface_allAddresses".}
proc fcQNetworkInterface_new(): ptr cQNetworkInterface {.importc: "QNetworkInterface_new".}
proc fcQNetworkInterface_new2(other: pointer): ptr cQNetworkInterface {.importc: "QNetworkInterface_new2".}
proc fcQNetworkInterface_staticMetaObject(): pointer {.importc: "QNetworkInterface_staticMetaObject".}
proc fcQNetworkInterface_delete(self: pointer) {.importc: "QNetworkInterface_delete".}

proc operatorAssign*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, other: gen_qnetworkinterface_types.QNetworkAddressEntry): void =
  fcQNetworkAddressEntry_operatorAssign(self.h, other.h)

proc swap*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, other: gen_qnetworkinterface_types.QNetworkAddressEntry): void =
  fcQNetworkAddressEntry_swap(self.h, other.h)

proc operatorEqual*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, other: gen_qnetworkinterface_types.QNetworkAddressEntry): bool =
  fcQNetworkAddressEntry_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, other: gen_qnetworkinterface_types.QNetworkAddressEntry): bool =
  fcQNetworkAddressEntry_operatorNotEqual(self.h, other.h)

proc dnsEligibility*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): cint =
  cint(fcQNetworkAddressEntry_dnsEligibility(self.h))

proc setDnsEligibility*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, status: cint): void =
  fcQNetworkAddressEntry_setDnsEligibility(self.h, cint(status))

proc ip*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQNetworkAddressEntry_ip(self.h))

proc setIp*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, newIp: gen_qhostaddress_types.QHostAddress): void =
  fcQNetworkAddressEntry_setIp(self.h, newIp.h)

proc netmask*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQNetworkAddressEntry_netmask(self.h))

proc setNetmask*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, newNetmask: gen_qhostaddress_types.QHostAddress): void =
  fcQNetworkAddressEntry_setNetmask(self.h, newNetmask.h)

proc prefixLength*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): cint =
  fcQNetworkAddressEntry_prefixLength(self.h)

proc setPrefixLength*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, length: cint): void =
  fcQNetworkAddressEntry_setPrefixLength(self.h, length)

proc broadcast*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQNetworkAddressEntry_broadcast(self.h))

proc setBroadcast*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, newBroadcast: gen_qhostaddress_types.QHostAddress): void =
  fcQNetworkAddressEntry_setBroadcast(self.h, newBroadcast.h)

proc isLifetimeKnown*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): bool =
  fcQNetworkAddressEntry_isLifetimeKnown(self.h)

proc preferredLifetime*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQNetworkAddressEntry_preferredLifetime(self.h))

proc validityLifetime*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): gen_qdeadlinetimer_types.QDeadlineTimer =
  gen_qdeadlinetimer_types.QDeadlineTimer(h: fcQNetworkAddressEntry_validityLifetime(self.h))

proc setAddressLifetime*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, preferred: gen_qdeadlinetimer_types.QDeadlineTimer, validity: gen_qdeadlinetimer_types.QDeadlineTimer): void =
  fcQNetworkAddressEntry_setAddressLifetime(self.h, preferred.h, validity.h)

proc clearAddressLifetime*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): void =
  fcQNetworkAddressEntry_clearAddressLifetime(self.h)

proc isPermanent*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): bool =
  fcQNetworkAddressEntry_isPermanent(self.h)

proc isTemporary*(self: gen_qnetworkinterface_types.QNetworkAddressEntry, ): bool =
  fcQNetworkAddressEntry_isTemporary(self.h)

proc create*(T: type gen_qnetworkinterface_types.QNetworkAddressEntry): gen_qnetworkinterface_types.QNetworkAddressEntry =
  gen_qnetworkinterface_types.QNetworkAddressEntry(h: fcQNetworkAddressEntry_new())

proc create*(T: type gen_qnetworkinterface_types.QNetworkAddressEntry,
    other: gen_qnetworkinterface_types.QNetworkAddressEntry): gen_qnetworkinterface_types.QNetworkAddressEntry =
  gen_qnetworkinterface_types.QNetworkAddressEntry(h: fcQNetworkAddressEntry_new2(other.h))

proc delete*(self: gen_qnetworkinterface_types.QNetworkAddressEntry) =
  fcQNetworkAddressEntry_delete(self.h)
proc operatorAssign*(self: gen_qnetworkinterface_types.QNetworkInterface, other: gen_qnetworkinterface_types.QNetworkInterface): void =
  fcQNetworkInterface_operatorAssign(self.h, other.h)

proc swap*(self: gen_qnetworkinterface_types.QNetworkInterface, other: gen_qnetworkinterface_types.QNetworkInterface): void =
  fcQNetworkInterface_swap(self.h, other.h)

proc isValid*(self: gen_qnetworkinterface_types.QNetworkInterface, ): bool =
  fcQNetworkInterface_isValid(self.h)

proc index*(self: gen_qnetworkinterface_types.QNetworkInterface, ): cint =
  fcQNetworkInterface_index(self.h)

proc maximumTransmissionUnit*(self: gen_qnetworkinterface_types.QNetworkInterface, ): cint =
  fcQNetworkInterface_maximumTransmissionUnit(self.h)

proc name*(self: gen_qnetworkinterface_types.QNetworkInterface, ): string =
  let v_ms = fcQNetworkInterface_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc humanReadableName*(self: gen_qnetworkinterface_types.QNetworkInterface, ): string =
  let v_ms = fcQNetworkInterface_humanReadableName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc flags*(self: gen_qnetworkinterface_types.QNetworkInterface, ): cint =
  cint(fcQNetworkInterface_flags(self.h))

proc typeX*(self: gen_qnetworkinterface_types.QNetworkInterface, ): cint =
  cint(fcQNetworkInterface_typeX(self.h))

proc hardwareAddress*(self: gen_qnetworkinterface_types.QNetworkInterface, ): string =
  let v_ms = fcQNetworkInterface_hardwareAddress(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addressEntries*(self: gen_qnetworkinterface_types.QNetworkInterface, ): seq[gen_qnetworkinterface_types.QNetworkAddressEntry] =
  var v_ma = fcQNetworkInterface_addressEntries(self.h)
  var vx_ret = newSeq[gen_qnetworkinterface_types.QNetworkAddressEntry](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkinterface_types.QNetworkAddressEntry(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc interfaceIndexFromName*(_: type gen_qnetworkinterface_types.QNetworkInterface, name: string): cint =
  fcQNetworkInterface_interfaceIndexFromName(struct_miqt_string(data: name, len: csize_t(len(name))))

proc interfaceFromName*(_: type gen_qnetworkinterface_types.QNetworkInterface, name: string): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQNetworkInterface_interfaceFromName(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc interfaceFromIndex*(_: type gen_qnetworkinterface_types.QNetworkInterface, index: cint): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQNetworkInterface_interfaceFromIndex(index))

proc interfaceNameFromIndex*(_: type gen_qnetworkinterface_types.QNetworkInterface, index: cint): string =
  let v_ms = fcQNetworkInterface_interfaceNameFromIndex(index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allInterfaces*(_: type gen_qnetworkinterface_types.QNetworkInterface, ): seq[gen_qnetworkinterface_types.QNetworkInterface] =
  var v_ma = fcQNetworkInterface_allInterfaces()
  var vx_ret = newSeq[gen_qnetworkinterface_types.QNetworkInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkinterface_types.QNetworkInterface(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc allAddresses*(_: type gen_qnetworkinterface_types.QNetworkInterface, ): seq[gen_qhostaddress_types.QHostAddress] =
  var v_ma = fcQNetworkInterface_allAddresses()
  var vx_ret = newSeq[gen_qhostaddress_types.QHostAddress](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qhostaddress_types.QHostAddress(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qnetworkinterface_types.QNetworkInterface): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQNetworkInterface_new())

proc create*(T: type gen_qnetworkinterface_types.QNetworkInterface,
    other: gen_qnetworkinterface_types.QNetworkInterface): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQNetworkInterface_new2(other.h))

proc staticMetaObject*(_: type gen_qnetworkinterface_types.QNetworkInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkInterface_staticMetaObject())
proc delete*(self: gen_qnetworkinterface_types.QNetworkInterface) =
  fcQNetworkInterface_delete(self.h)
