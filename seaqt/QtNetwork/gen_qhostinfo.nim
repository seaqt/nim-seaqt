import ./Qt5Network_libs

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


type QHostInfoHostInfoErrorEnum* = distinct cint
template NoError*(_: type QHostInfoHostInfoErrorEnum): untyped = 0
template HostNotFound*(_: type QHostInfoHostInfoErrorEnum): untyped = 1
template UnknownError*(_: type QHostInfoHostInfoErrorEnum): untyped = 2


import ./gen_qhostinfo_types
export gen_qhostinfo_types

import
  ./gen_qhostaddress_types
export
  gen_qhostaddress_types

type cQHostInfo*{.exportc: "QHostInfo", incompleteStruct.} = object

proc fcQHostInfo_operatorAssign(self: pointer, d: pointer): void {.importc: "QHostInfo_operatorAssign".}
proc fcQHostInfo_swap(self: pointer, other: pointer): void {.importc: "QHostInfo_swap".}
proc fcQHostInfo_hostName(self: pointer): struct_miqt_string {.importc: "QHostInfo_hostName".}
proc fcQHostInfo_setHostName(self: pointer, name: struct_miqt_string): void {.importc: "QHostInfo_setHostName".}
proc fcQHostInfo_addresses(self: pointer): struct_miqt_array {.importc: "QHostInfo_addresses".}
proc fcQHostInfo_setAddresses(self: pointer, addresses: struct_miqt_array): void {.importc: "QHostInfo_setAddresses".}
proc fcQHostInfo_error(self: pointer): cint {.importc: "QHostInfo_error".}
proc fcQHostInfo_setError(self: pointer, error: cint): void {.importc: "QHostInfo_setError".}
proc fcQHostInfo_errorString(self: pointer): struct_miqt_string {.importc: "QHostInfo_errorString".}
proc fcQHostInfo_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QHostInfo_setErrorString".}
proc fcQHostInfo_setLookupId(self: pointer, id: cint): void {.importc: "QHostInfo_setLookupId".}
proc fcQHostInfo_lookupId(self: pointer): cint {.importc: "QHostInfo_lookupId".}
proc fcQHostInfo_abortHostLookup(lookupId: cint): void {.importc: "QHostInfo_abortHostLookup".}
proc fcQHostInfo_fromName(name: struct_miqt_string): pointer {.importc: "QHostInfo_fromName".}
proc fcQHostInfo_localHostName(): struct_miqt_string {.importc: "QHostInfo_localHostName".}
proc fcQHostInfo_localDomainName(): struct_miqt_string {.importc: "QHostInfo_localDomainName".}
proc fcQHostInfo_new(): ptr cQHostInfo {.importc: "QHostInfo_new".}
proc fcQHostInfo_new2(d: pointer): ptr cQHostInfo {.importc: "QHostInfo_new2".}
proc fcQHostInfo_new3(lookupId: cint): ptr cQHostInfo {.importc: "QHostInfo_new3".}

proc operatorAssign*(self: gen_qhostinfo_types.QHostInfo, d: gen_qhostinfo_types.QHostInfo): void =
  fcQHostInfo_operatorAssign(self.h, d.h)

proc swap*(self: gen_qhostinfo_types.QHostInfo, other: gen_qhostinfo_types.QHostInfo): void =
  fcQHostInfo_swap(self.h, other.h)

proc hostName*(self: gen_qhostinfo_types.QHostInfo): string =
  let v_ms = fcQHostInfo_hostName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHostName*(self: gen_qhostinfo_types.QHostInfo, name: openArray[char]): void =
  fcQHostInfo_setHostName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc addresses*(self: gen_qhostinfo_types.QHostInfo): seq[gen_qhostaddress_types.QHostAddress] =
  var v_ma = fcQHostInfo_addresses(self.h)
  var vx_ret = newSeq[gen_qhostaddress_types.QHostAddress](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qhostaddress_types.QHostAddress(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setAddresses*(self: gen_qhostinfo_types.QHostInfo, addresses: openArray[gen_qhostaddress_types.QHostAddress]): void =
  var addresses_CArray = newSeq[pointer](len(addresses))
  for i in 0..<len(addresses):
    addresses_CArray[i] = addresses[i].h

  fcQHostInfo_setAddresses(self.h, struct_miqt_array(len: csize_t(len(addresses)), data: if len(addresses) == 0: nil else: addr(addresses_CArray[0])))

proc error*(self: gen_qhostinfo_types.QHostInfo): cint =
  cint(fcQHostInfo_error(self.h))

proc setError*(self: gen_qhostinfo_types.QHostInfo, error: cint): void =
  fcQHostInfo_setError(self.h, cint(error))

proc errorString*(self: gen_qhostinfo_types.QHostInfo): string =
  let v_ms = fcQHostInfo_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setErrorString*(self: gen_qhostinfo_types.QHostInfo, errorString: openArray[char]): void =
  fcQHostInfo_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc setLookupId*(self: gen_qhostinfo_types.QHostInfo, id: cint): void =
  fcQHostInfo_setLookupId(self.h, id)

proc lookupId*(self: gen_qhostinfo_types.QHostInfo): cint =
  fcQHostInfo_lookupId(self.h)

proc abortHostLookup*(_: type gen_qhostinfo_types.QHostInfo, lookupId: cint): void =
  fcQHostInfo_abortHostLookup(lookupId)

proc fromName*(_: type gen_qhostinfo_types.QHostInfo, name: openArray[char]): gen_qhostinfo_types.QHostInfo =
  gen_qhostinfo_types.QHostInfo(h: fcQHostInfo_fromName(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc localHostName*(_: type gen_qhostinfo_types.QHostInfo): string =
  let v_ms = fcQHostInfo_localHostName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc localDomainName*(_: type gen_qhostinfo_types.QHostInfo): string =
  let v_ms = fcQHostInfo_localDomainName()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qhostinfo_types.QHostInfo): gen_qhostinfo_types.QHostInfo =
  gen_qhostinfo_types.QHostInfo(h: fcQHostInfo_new(), owned: true)

proc create*(T: type gen_qhostinfo_types.QHostInfo,
    d: gen_qhostinfo_types.QHostInfo): gen_qhostinfo_types.QHostInfo =
  gen_qhostinfo_types.QHostInfo(h: fcQHostInfo_new2(d.h), owned: true)

proc create*(T: type gen_qhostinfo_types.QHostInfo,
    lookupId: cint): gen_qhostinfo_types.QHostInfo =
  gen_qhostinfo_types.QHostInfo(h: fcQHostInfo_new3(lookupId), owned: true)

