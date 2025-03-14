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
proc fcQHostAddress_operatorAssign(self: pointer, other: pointer): void {.importc: "QHostAddress_operatorAssign".}
proc fcQHostAddress_operatorAssignWithAddress(self: pointer, address: cint): void {.importc: "QHostAddress_operatorAssignWithAddress".}
proc fcQHostAddress_swap(self: pointer, other: pointer): void {.importc: "QHostAddress_swap".}
proc fcQHostAddress_setAddress(self: pointer, ip4Addr: cuint): void {.importc: "QHostAddress_setAddress".}
proc fcQHostAddress_setAddressWithIp6Addr(self: pointer, ip6Addr: ptr uint8): void {.importc: "QHostAddress_setAddressWithIp6Addr".}
proc fcQHostAddress_setAddress2(self: pointer, ip6Addr: pointer): void {.importc: "QHostAddress_setAddress2".}
proc fcQHostAddress_setAddress3(self: pointer, address: struct_miqt_string): bool {.importc: "QHostAddress_setAddress3".}
proc fcQHostAddress_setAddress4(self: pointer, address: cint): void {.importc: "QHostAddress_setAddress4".}
proc fcQHostAddress_protocol(self: pointer): cint {.importc: "QHostAddress_protocol".}
proc fcQHostAddress_toIPv4Address(self: pointer): cuint {.importc: "QHostAddress_toIPv4Address".}
proc fcQHostAddress_toIPv6Address(self: pointer): pointer {.importc: "QHostAddress_toIPv6Address".}
proc fcQHostAddress_toString(self: pointer): struct_miqt_string {.importc: "QHostAddress_toString".}
proc fcQHostAddress_scopeId(self: pointer): struct_miqt_string {.importc: "QHostAddress_scopeId".}
proc fcQHostAddress_setScopeId(self: pointer, id: struct_miqt_string): void {.importc: "QHostAddress_setScopeId".}
proc fcQHostAddress_isEqual(self: pointer, address: pointer): bool {.importc: "QHostAddress_isEqual".}
proc fcQHostAddress_operatorEqual(self: pointer, address: pointer): bool {.importc: "QHostAddress_operatorEqual".}
proc fcQHostAddress_operatorEqualWithAddress(self: pointer, address: cint): bool {.importc: "QHostAddress_operatorEqualWithAddress".}
proc fcQHostAddress_operatorNotEqual(self: pointer, address: pointer): bool {.importc: "QHostAddress_operatorNotEqual".}
proc fcQHostAddress_operatorNotEqualWithAddress(self: pointer, address: cint): bool {.importc: "QHostAddress_operatorNotEqualWithAddress".}
proc fcQHostAddress_isNull(self: pointer): bool {.importc: "QHostAddress_isNull".}
proc fcQHostAddress_clear(self: pointer): void {.importc: "QHostAddress_clear".}
proc fcQHostAddress_isInSubnet(self: pointer, subnet: pointer, netmask: cint): bool {.importc: "QHostAddress_isInSubnet".}
proc fcQHostAddress_isInSubnetWithSubnet(self: pointer, subnet: struct_miqt_map): bool {.importc: "QHostAddress_isInSubnetWithSubnet".}
proc fcQHostAddress_isLoopback(self: pointer): bool {.importc: "QHostAddress_isLoopback".}
proc fcQHostAddress_isGlobal(self: pointer): bool {.importc: "QHostAddress_isGlobal".}
proc fcQHostAddress_isLinkLocal(self: pointer): bool {.importc: "QHostAddress_isLinkLocal".}
proc fcQHostAddress_isSiteLocal(self: pointer): bool {.importc: "QHostAddress_isSiteLocal".}
proc fcQHostAddress_isUniqueLocalUnicast(self: pointer): bool {.importc: "QHostAddress_isUniqueLocalUnicast".}
proc fcQHostAddress_isMulticast(self: pointer): bool {.importc: "QHostAddress_isMulticast".}
proc fcQHostAddress_isBroadcast(self: pointer): bool {.importc: "QHostAddress_isBroadcast".}
proc fcQHostAddress_parseSubnet(subnet: struct_miqt_string): struct_miqt_map {.importc: "QHostAddress_parseSubnet".}
proc fcQHostAddress_toIPv4Address1(self: pointer, ok: ptr bool): cuint {.importc: "QHostAddress_toIPv4Address1".}
proc fcQHostAddress_isEqual2(self: pointer, address: pointer, mode: cint): bool {.importc: "QHostAddress_isEqual2".}
proc fcQHostAddress_new(): ptr cQHostAddress {.importc: "QHostAddress_new".}
proc fcQHostAddress_new2(ip4Addr: cuint): ptr cQHostAddress {.importc: "QHostAddress_new2".}
proc fcQHostAddress_new3(ip6Addr: ptr uint8): ptr cQHostAddress {.importc: "QHostAddress_new3".}
proc fcQHostAddress_new4(ip6Addr: pointer): ptr cQHostAddress {.importc: "QHostAddress_new4".}
proc fcQHostAddress_new5(address: struct_miqt_string): ptr cQHostAddress {.importc: "QHostAddress_new5".}
proc fcQHostAddress_new6(copy: pointer): ptr cQHostAddress {.importc: "QHostAddress_new6".}
proc fcQHostAddress_new7(address: cint): ptr cQHostAddress {.importc: "QHostAddress_new7".}
proc fcQHostAddress_staticMetaObject(): pointer {.importc: "QHostAddress_staticMetaObject".}

proc operatorSubscript*(self: gen_qhostaddress_types.QIPv6Address, index: cint): uint8 =
  fcQIPv6Address_operatorSubscript(self.h, index)

proc operatorAssign*(self: gen_qhostaddress_types.QHostAddress, other: gen_qhostaddress_types.QHostAddress): void =
  fcQHostAddress_operatorAssign(self.h, other.h)

proc operatorAssign*(self: gen_qhostaddress_types.QHostAddress, address: cint): void =
  fcQHostAddress_operatorAssignWithAddress(self.h, cint(address))

proc swap*(self: gen_qhostaddress_types.QHostAddress, other: gen_qhostaddress_types.QHostAddress): void =
  fcQHostAddress_swap(self.h, other.h)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, ip4Addr: cuint): void =
  fcQHostAddress_setAddress(self.h, ip4Addr)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, ip6Addr: ptr uint8): void =
  fcQHostAddress_setAddressWithIp6Addr(self.h, ip6Addr)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, ip6Addr: gen_qhostaddress_types.QIPv6Address): void =
  fcQHostAddress_setAddress2(self.h, ip6Addr.h)

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, address: openArray[char]): bool =
  fcQHostAddress_setAddress3(self.h, struct_miqt_string(data: if len(address) > 0: addr address[0] else: nil, len: csize_t(len(address))))

proc setAddress*(self: gen_qhostaddress_types.QHostAddress, address: cint): void =
  fcQHostAddress_setAddress4(self.h, cint(address))

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
  fcQHostAddress_setScopeId(self.h, struct_miqt_string(data: if len(id) > 0: addr id[0] else: nil, len: csize_t(len(id))))

proc isEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isEqual(self.h, address.h)

proc operatorEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_operatorEqual(self.h, address.h)

proc operatorEqual*(self: gen_qhostaddress_types.QHostAddress, address: cint): bool =
  fcQHostAddress_operatorEqualWithAddress(self.h, cint(address))

proc operatorNotEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_operatorNotEqual(self.h, address.h)

proc operatorNotEqual*(self: gen_qhostaddress_types.QHostAddress, address: cint): bool =
  fcQHostAddress_operatorNotEqualWithAddress(self.h, cint(address))

proc isNull*(self: gen_qhostaddress_types.QHostAddress): bool =
  fcQHostAddress_isNull(self.h)

proc clear*(self: gen_qhostaddress_types.QHostAddress): void =
  fcQHostAddress_clear(self.h)

proc isInSubnet*(self: gen_qhostaddress_types.QHostAddress, subnet: gen_qhostaddress_types.QHostAddress, netmask: cint): bool =
  fcQHostAddress_isInSubnet(self.h, subnet.h, netmask)

proc isInSubnet*(self: gen_qhostaddress_types.QHostAddress, subnet: tuple[first: gen_qhostaddress_types.QHostAddress, second: cint]): bool =
  var subnet_CArray_First: pointer
  var subnet_CArray_Second: cint
  subnet_CArray_First = subnet.first.h
  subnet_CArray_Second = subnet.second
  fcQHostAddress_isInSubnetWithSubnet(self.h, struct_miqt_map(len: 1,keys: addr(subnet_CArray_First),values: addr(subnet_CArray_Second),))

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

proc parseSubnet*(_: type gen_qhostaddress_types.QHostAddress, subnet: openArray[char]): tuple[first: gen_qhostaddress_types.QHostAddress, second: cint] =
  var v_mm = fcQHostAddress_parseSubnet(struct_miqt_string(data: if len(subnet) > 0: addr subnet[0] else: nil, len: csize_t(len(subnet))))
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = gen_qhostaddress_types.QHostAddress(h: v_First_CArray[0], owned: true)

  var v_entry_Second = v_Second_CArray[0]

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc toIPv4Address*(self: gen_qhostaddress_types.QHostAddress, ok: ptr bool): cuint =
  fcQHostAddress_toIPv4Address1(self.h, ok)

proc isEqual*(self: gen_qhostaddress_types.QHostAddress, address: gen_qhostaddress_types.QHostAddress, mode: cint): bool =
  fcQHostAddress_isEqual2(self.h, address.h, cint(mode))

proc create*(T: type gen_qhostaddress_types.QHostAddress): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new(), owned: true)

proc create*(T: type gen_qhostaddress_types.QHostAddress,
    ip4Addr: cuint): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new2(ip4Addr), owned: true)

proc create*(T: type gen_qhostaddress_types.QHostAddress,
    ip6Addr: ptr uint8): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new3(ip6Addr), owned: true)

proc create*(T: type gen_qhostaddress_types.QHostAddress,
    ip6Addr: gen_qhostaddress_types.QIPv6Address): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new4(ip6Addr.h), owned: true)

proc create*(T: type gen_qhostaddress_types.QHostAddress,
    address: openArray[char]): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new5(struct_miqt_string(data: if len(address) > 0: addr address[0] else: nil, len: csize_t(len(address)))), owned: true)

proc create*(T: type gen_qhostaddress_types.QHostAddress,
    copy: gen_qhostaddress_types.QHostAddress): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new6(copy.h), owned: true)

proc create*(T: type gen_qhostaddress_types.QHostAddress,
    address: cint): gen_qhostaddress_types.QHostAddress =
  gen_qhostaddress_types.QHostAddress(h: fcQHostAddress_new7(cint(address)), owned: true)

proc staticMetaObject*(_: type gen_qhostaddress_types.QHostAddress): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHostAddress_staticMetaObject())
