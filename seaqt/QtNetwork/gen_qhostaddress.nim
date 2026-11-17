import ./qtnetwork_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QHostAddressSpecialAddressEnum* = distinct cint
template Null*(_: type QHostAddressSpecialAddressEnum): untyped = 0
template Broadcast*(_: type QHostAddressSpecialAddressEnum): untyped = 1
template LocalHost*(_: type QHostAddressSpecialAddressEnum): untyped = 2
template LocalHostIPv6*(_: type QHostAddressSpecialAddressEnum): untyped = 3
template Any*(_: type QHostAddressSpecialAddressEnum): untyped = 4
template AnyIPv6*(_: type QHostAddressSpecialAddressEnum): untyped = 5
template AnyIPv4*(_: type QHostAddressSpecialAddressEnum): untyped = 6


type QHostAddressConversionModeFlagEnum* = distinct cint
template ConvertV4MappedToIPv4*(_: type QHostAddressConversionModeFlagEnum): untyped = 1
template ConvertV4CompatToIPv4*(_: type QHostAddressConversionModeFlagEnum): untyped = 2
template ConvertUnspecifiedAddress*(_: type QHostAddressConversionModeFlagEnum): untyped = 4
template ConvertLocalHost*(_: type QHostAddressConversionModeFlagEnum): untyped = 8
template TolerantConversion*(_: type QHostAddressConversionModeFlagEnum): untyped = 255
template StrictConversion*(_: type QHostAddressConversionModeFlagEnum): untyped = 0


import ./gen_qhostaddress_types
export gen_qhostaddress_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQIPv6Address*{.exportc: "QIPv6Address", incompleteStruct.} = object
type cQHostAddress*{.exportc: "QHostAddress", incompleteStruct.} = object

proc fcQIPv6Address_operatorSubscript(self: pointer, index: cint): uint8 {.importc: "QIPv6Address_operatorSubscript".}
proc fcQIPv6Address_new(): ptr cQIPv6Address {.importc: "QIPv6Address_new".}
proc fcQIPv6Address_new2(fromVal: pointer): ptr cQIPv6Address {.importc: "QIPv6Address_new_from".}
proc fcQHostAddress_operatorAssignFrom(self: pointer, fromVal: pointer): void {.importc: "QHostAddress_operatorAssign_from".}
proc fcQHostAddress_operatorAssignAddress(self: pointer, address: cint): void {.importc: "QHostAddress_operatorAssign_address".}
proc fcQHostAddress_swap(self: pointer, other: pointer): void {.importc: "QHostAddress_swap".}
proc fcQHostAddress_setAddressQuint32(self: pointer, ip4Addr: cuint): void {.importc: "QHostAddress_setAddress_quint32".}
proc fcQHostAddress_setAddressQuint8(self: pointer, ip6Addr: ptr uint8): void {.importc: "QHostAddress_setAddress_quint8".}
proc fcQHostAddress_setAddress_Q_IPV6ADDR(self: pointer, ip6Addr: pointer): void {.importc: "QHostAddress_setAddress_Q_IPV6ADDR".}
proc fcQHostAddress_setAddress_QString(self: pointer, address: struct_seaqt_string): bool {.importc: "QHostAddress_setAddress_QString".}
proc fcQHostAddress_setAddress_QHostAddress_SpecialAddress(self: pointer, address: cint): void {.importc: "QHostAddress_setAddress_QHostAddress_SpecialAddress".}
proc fcQHostAddress_protocol(self: pointer): cint {.importc: "QHostAddress_protocol".}
proc fcQHostAddress_toIPv4Address(self: pointer): cuint {.importc: "QHostAddress_toIPv4Address".}
proc fcQHostAddress_toIPv6Address(self: pointer): pointer {.importc: "QHostAddress_toIPv6Address".}
proc fcQHostAddress_toString(self: pointer): struct_seaqt_string {.importc: "QHostAddress_toString".}
proc fcQHostAddress_scopeId(self: pointer): struct_seaqt_string {.importc: "QHostAddress_scopeId".}
proc fcQHostAddress_setScopeId(self: pointer, id: struct_seaqt_string): void {.importc: "QHostAddress_setScopeId".}
proc fcQHostAddress_isEqualAddress(self: pointer, address: pointer): bool {.importc: "QHostAddress_isEqual_address".}
proc fcQHostAddress_operatorEqual_QHostAddress(self: pointer, address: pointer): bool {.importc: "QHostAddress_operatorEqual_QHostAddress".}
proc fcQHostAddress_operatorEqual_QHostAddress_SpecialAddress(self: pointer, address: cint): bool {.importc: "QHostAddress_operatorEqual_QHostAddress_SpecialAddress".}
proc fcQHostAddress_operatorNotEqual_QHostAddress(self: pointer, address: pointer): bool {.importc: "QHostAddress_operatorNotEqual_QHostAddress".}
proc fcQHostAddress_operatorNotEqual_QHostAddress_SpecialAddress(self: pointer, address: cint): bool {.importc: "QHostAddress_operatorNotEqual_QHostAddress_SpecialAddress".}
proc fcQHostAddress_isNull(self: pointer): bool {.importc: "QHostAddress_isNull".}
proc fcQHostAddress_clear(self: pointer): void {.importc: "QHostAddress_clear".}
proc fcQHostAddress_isInSubnetSubnetNetmask(self: pointer, subnet: pointer, netmask: cint): bool {.importc: "QHostAddress_isInSubnet_subnet_netmask".}
proc fcQHostAddress_isInSubnetSubnet(self: pointer, subnet: struct_seaqt_map): bool {.importc: "QHostAddress_isInSubnet_subnet".}
proc fcQHostAddress_isLoopback(self: pointer): bool {.importc: "QHostAddress_isLoopback".}
proc fcQHostAddress_isGlobal(self: pointer): bool {.importc: "QHostAddress_isGlobal".}
proc fcQHostAddress_isLinkLocal(self: pointer): bool {.importc: "QHostAddress_isLinkLocal".}
proc fcQHostAddress_isSiteLocal(self: pointer): bool {.importc: "QHostAddress_isSiteLocal".}
proc fcQHostAddress_isUniqueLocalUnicast(self: pointer): bool {.importc: "QHostAddress_isUniqueLocalUnicast".}
proc fcQHostAddress_isMulticast(self: pointer): bool {.importc: "QHostAddress_isMulticast".}
proc fcQHostAddress_isBroadcast(self: pointer): bool {.importc: "QHostAddress_isBroadcast".}
proc fcQHostAddress_isPrivateUse(self: pointer): bool {.importc: "QHostAddress_isPrivateUse".}
proc fcQHostAddress_parseSubnet(subnet: struct_seaqt_string): struct_seaqt_map {.importc: "QHostAddress_parseSubnet".}
proc fcQHostAddress_toIPv4AddressOk(self: pointer, ok: ptr bool): cuint {.importc: "QHostAddress_toIPv4Address_ok".}
proc fcQHostAddress_isEqualAddressMode(self: pointer, address: pointer, mode: cint): bool {.importc: "QHostAddress_isEqual_address_mode".}
proc fcQHostAddress_new(): ptr cQHostAddress {.importc: "QHostAddress_new".}
proc fcQHostAddress_new2(ip4Addr: cuint): ptr cQHostAddress {.importc: "QHostAddress_new_quint32".}
proc fcQHostAddress_new3(ip6Addr: ptr uint8): ptr cQHostAddress {.importc: "QHostAddress_new_quint8".}
proc fcQHostAddress_new4(ip6Addr: pointer): ptr cQHostAddress {.importc: "QHostAddress_new_Q_IPV6ADDR".}
proc fcQHostAddress_new5(address: struct_seaqt_string): ptr cQHostAddress {.importc: "QHostAddress_new_QString".}
proc fcQHostAddress_new6(fromVal: pointer): ptr cQHostAddress {.importc: "QHostAddress_new_QHostAddress".}
proc fcQHostAddress_new7(address: cint): ptr cQHostAddress {.importc: "QHostAddress_new_QHostAddress_SpecialAddress".}
proc fcQHostAddress_staticMetaObject(): pointer {.importc: "QHostAddress_staticMetaObject".}

proc operatorSubscript*(self: gen_qhostaddress_types.QIPv6Address, index: cint): uint8 =
  fcQIPv6Address_operatorSubscript(self.h, index)

proc create*(T: type gen_qhostaddress_types.QIPv6Address): gen_qhostaddress_types.QIPv6Address =
  let tmp = gen_qhostaddress_types.QIPv6Address(h: fcQIPv6Address_new(), owned: true)
  tmp
proc create*(T: type gen_qhostaddress_types.QIPv6Address,
    fromVal: gen_qhostaddress_types.QIPv6Address): gen_qhostaddress_types.QIPv6Address =
  let tmp = gen_qhostaddress_types.QIPv6Address(h: fcQIPv6Address_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qhostaddress_types.QHostAddress, fromVal: gen_qhostaddress_types.QHostAddress): void =
  fcQHostAddress_operatorAssignFrom(self.h, fromVal.h)

proc operatorAssign*(self: gen_qhostaddress_types.QHostAddress, address: cint): void =
  fcQHostAddress_operatorAssignAddress(self.h, cint(address))

proc swap*(self: gen_qhostaddress_types.QHostAddress, other: gen_qhostaddress_types.QHostAddress): void =
  fcQHostAddress_swap(self.h, other.h)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, ip4Addr: cuint): void =
  fcQHostAddress_setAddressQuint32(self.h, ip4Addr)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, ip6Addr: ptr uint8): void =
  fcQHostAddress_setAddressQuint8(self.h, ip6Addr)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, ip6Addr: gen_qhostaddress_types.QIPv6Address): void =
  fcQHostAddress_setAddress_Q_IPV6ADDR(self.h, ip6Addr.h)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, address: openArray[char]): bool =
  fcQHostAddress_setAddress_QString(self.h, struct_seaqt_string(data: if len(address) > 0: addr address[0] else: nil, len: csize_t(len(address))))

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, address: cint): void =
  fcQHostAddress_setAddress_QHostAddress_SpecialAddress(self.h, cint(address))

proc protocol*(self: gen_qhostaddress_types.QHostAddress): cint =
  cint(fcQHostAddress_protocol(self.h))

proc toIPv4Address*(self: gen_qhostaddress_types.QHostAddress): cuint =
  fcQHostAddress_toIPv4Address(self.h)

proc toIPv6Address*(self: gen_qhostaddress_types.QHostAddress): gen_qhostaddress_types.QIPv6Address =
  gen_qhostaddress_types.QIPv6Address(h: fcQHostAddress_toIPv6Address(self.h), owned: true)

proc toString*(self: gen_qhostaddress_types.QHostAddress): string =
  let v_ms = fcQHostAddress_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc scopeId*(self: gen_qhostaddress_types.QHostAddress): string =
  let v_ms = fcQHostAddress_scopeId(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setScopeId*(self: gen_qhostaddress_types.QHostAddress, id: openArray[char]): void =
  fcQHostAddress_setScopeId(self.h, struct_seaqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))))

proc isEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isEqualAddress(self.h, address.h)

proc operatorEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_operatorEqual_QHostAddress(self.h, address.h)

proc operatorEqual*(self: gen_qhostaddress_types.QHostAddress, address: cint): bool =
  fcQHostAddress_operatorEqual_QHostAddress_SpecialAddress(self.h, cint(address))

proc operatorNotEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_operatorNotEqual_QHostAddress(self.h, address.h)

proc operatorNotEqual*(self: gen_qhostaddress_types.QHostAddress, address: cint): bool =
  fcQHostAddress_operatorNotEqual_QHostAddress_SpecialAddress(self.h, cint(address))

proc isNull*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isNull(self.h)

proc clear*(self: gen_qhostaddress_types.QHostAddress): void =
  fcQHostAddress_clear(self.h)

proc isInSubnet*(self: gen_qhostaddress_types.QHostAddress, subnet: gen_qhostaddress_types.QHostAddress, netmask: cint): bool =
  fcQHostAddress_isInSubnetSubnetNetmask(self.h, subnet.h, netmask)

proc isInSubnet*(self: gen_qhostaddress_types.QHostAddress, subnet: tuple[first: gen_qhostaddress_types.QHostAddress, second: cint]): bool =
  var subnet_CArray_First: pointer
  var subnet_CArray_Second: cint
  subnet_CArray_First = subnet.first.h
  subnet_CArray_Second = subnet.second
  fcQHostAddress_isInSubnetSubnet(self.h, struct_seaqt_map(len: 1,keys: addr(subnet_CArray_First),values: addr(subnet_CArray_Second),))

proc isLoopback*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isLoopback(self.h)

proc isGlobal*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isGlobal(self.h)

proc isLinkLocal*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isLinkLocal(self.h)

proc isSiteLocal*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isSiteLocal(self.h)

proc isUniqueLocalUnicast*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isUniqueLocalUnicast(self.h)

proc isMulticast*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isMulticast(self.h)

proc isBroadcast*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isBroadcast(self.h)

proc isPrivateUse*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isPrivateUse(self.h)

proc parseSubnet*(_: type gen_qhostaddress_types.QHostAddress, subnet: openArray[char]): tuple[first: gen_qhostaddress_types.QHostAddress, second: cint] =
  var v_mm = fcQHostAddress_parseSubnet(struct_seaqt_string(data: if len(subnet) > 0: addr subnet[0] else: nil, len: csize_t(len(subnet))))
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = gen_qhostaddress_types.QHostAddress(h: v_First_CArray[0], owned: true)

  var v_entry_Second = v_Second_CArray[0]

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc toIPv4Address*(self: gen_qhostaddress_types.QHostAddress, ok: ptr bool): cuint =
  fcQHostAddress_toIPv4AddressOk(self.h, ok)

proc isEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress, mode: cint): bool =
  fcQHostAddress_isEqualAddressMode(self.h, address.h, cint(mode))

proc create*(T: type gen_qhostaddress_types.QHostAddress): gen_qhostaddress_types.QHostAddress =
  let tmp = gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new(), owned: true)
  tmp
proc create*(T: type gen_qhostaddress_types.QHostAddress,
    ip4Addr: cuint): gen_qhostaddress_types.QHostAddress =
  let tmp = gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new2(ip4Addr), owned: true)
  tmp
proc create*(T: type gen_qhostaddress_types.QHostAddress,
    ip6Addr: ptr uint8): gen_qhostaddress_types.QHostAddress =
  let tmp = gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new3(ip6Addr), owned: true)
  tmp
proc create*(T: type gen_qhostaddress_types.QHostAddress,
    ip6Addr: gen_qhostaddress_types.QIPv6Address): gen_qhostaddress_types.QHostAddress =
  let tmp = gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new4(ip6Addr.h), owned: true)
  tmp
proc create*(T: type gen_qhostaddress_types.QHostAddress,
    address: openArray[char]): gen_qhostaddress_types.QHostAddress =
  let tmp = gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new5(struct_seaqt_string(data: if len(address) > 0: addr address[0] else: nil, len: csize_t(len(address)))), owned: true)
  tmp
proc create*(T: type gen_qhostaddress_types.QHostAddress,
    fromVal: gen_qhostaddress_types.QHostAddress): gen_qhostaddress_types.QHostAddress =
  let tmp = gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new6(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qhostaddress_types.QHostAddress,
    address: cint): gen_qhostaddress_types.QHostAddress =
  let tmp = gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new7(cint(address)), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qhostaddress_types.QHostAddress): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHostAddress_staticMetaObject())
