import ./Qt5Network_libs

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


type QHstsPolicyPolicyFlagEnum* = distinct cint
template IncludeSubDomains*(_: type QHstsPolicyPolicyFlagEnum): untyped = 1


import ./gen_qhstspolicy_types
export gen_qhstspolicy_types

import
  ../QtCore/gen_qdatetime_types
export
  gen_qdatetime_types

type cQHstsPolicy*{.exportc: "QHstsPolicy", incompleteStruct.} = object

proc fcQHstsPolicy_operatorAssign(self: pointer, rhs: pointer): void {.importc: "QHstsPolicy_operatorAssign".}
proc fcQHstsPolicy_swap(self: pointer, other: pointer): void {.importc: "QHstsPolicy_swap".}
proc fcQHstsPolicy_setHost(self: pointer, host: struct_miqt_string): void {.importc: "QHstsPolicy_setHost".}
proc fcQHstsPolicy_host(self: pointer, ): struct_miqt_string {.importc: "QHstsPolicy_host".}
proc fcQHstsPolicy_setExpiry(self: pointer, expiry: pointer): void {.importc: "QHstsPolicy_setExpiry".}
proc fcQHstsPolicy_expiry(self: pointer, ): pointer {.importc: "QHstsPolicy_expiry".}
proc fcQHstsPolicy_setIncludesSubDomains(self: pointer, includeVal: bool): void {.importc: "QHstsPolicy_setIncludesSubDomains".}
proc fcQHstsPolicy_includesSubDomains(self: pointer, ): bool {.importc: "QHstsPolicy_includesSubDomains".}
proc fcQHstsPolicy_isExpired(self: pointer, ): bool {.importc: "QHstsPolicy_isExpired".}
proc fcQHstsPolicy_setHost2(self: pointer, host: struct_miqt_string, mode: cint): void {.importc: "QHstsPolicy_setHost2".}
proc fcQHstsPolicy_host1(self: pointer, options: cint): struct_miqt_string {.importc: "QHstsPolicy_host1".}
proc fcQHstsPolicy_new(): ptr cQHstsPolicy {.importc: "QHstsPolicy_new".}
proc fcQHstsPolicy_new2(expiry: pointer, flags: cint, host: struct_miqt_string): ptr cQHstsPolicy {.importc: "QHstsPolicy_new2".}
proc fcQHstsPolicy_new3(rhs: pointer): ptr cQHstsPolicy {.importc: "QHstsPolicy_new3".}
proc fcQHstsPolicy_new4(expiry: pointer, flags: cint, host: struct_miqt_string, mode: cint): ptr cQHstsPolicy {.importc: "QHstsPolicy_new4".}

proc operatorAssign*(self: gen_qhstspolicy_types.QHstsPolicy, rhs: gen_qhstspolicy_types.QHstsPolicy): void =
  fcQHstsPolicy_operatorAssign(self.h, rhs.h)

proc swap*(self: gen_qhstspolicy_types.QHstsPolicy, other: gen_qhstspolicy_types.QHstsPolicy): void =
  fcQHstsPolicy_swap(self.h, other.h)

proc setHost*(self: gen_qhstspolicy_types.QHstsPolicy, host: string): void =
  fcQHstsPolicy_setHost(self.h, struct_miqt_string(data: host, len: csize_t(len(host))))

proc host*(self: gen_qhstspolicy_types.QHstsPolicy, ): string =
  let v_ms = fcQHstsPolicy_host(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setExpiry*(self: gen_qhstspolicy_types.QHstsPolicy, expiry: gen_qdatetime_types.QDateTime): void =
  fcQHstsPolicy_setExpiry(self.h, expiry.h)

proc expiry*(self: gen_qhstspolicy_types.QHstsPolicy, ): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQHstsPolicy_expiry(self.h), owned: true)

proc setIncludesSubDomains*(self: gen_qhstspolicy_types.QHstsPolicy, includeVal: bool): void =
  fcQHstsPolicy_setIncludesSubDomains(self.h, includeVal)

proc includesSubDomains*(self: gen_qhstspolicy_types.QHstsPolicy, ): bool =
  fcQHstsPolicy_includesSubDomains(self.h)

proc isExpired*(self: gen_qhstspolicy_types.QHstsPolicy, ): bool =
  fcQHstsPolicy_isExpired(self.h)

proc setHost*(self: gen_qhstspolicy_types.QHstsPolicy, host: string, mode: cint): void =
  fcQHstsPolicy_setHost2(self.h, struct_miqt_string(data: host, len: csize_t(len(host))), cint(mode))

proc host*(self: gen_qhstspolicy_types.QHstsPolicy, options: cint): string =
  let v_ms = fcQHstsPolicy_host1(self.h, cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qhstspolicy_types.QHstsPolicy): gen_qhstspolicy_types.QHstsPolicy =
  gen_qhstspolicy_types.QHstsPolicy(h: fcQHstsPolicy_new(), owned: true)

proc create*(T: type gen_qhstspolicy_types.QHstsPolicy,
    expiry: gen_qdatetime_types.QDateTime, flags: cint, host: string): gen_qhstspolicy_types.QHstsPolicy =
  gen_qhstspolicy_types.QHstsPolicy(h: fcQHstsPolicy_new2(expiry.h, cint(flags), struct_miqt_string(data: host, len: csize_t(len(host)))), owned: true)

proc create*(T: type gen_qhstspolicy_types.QHstsPolicy,
    rhs: gen_qhstspolicy_types.QHstsPolicy): gen_qhstspolicy_types.QHstsPolicy =
  gen_qhstspolicy_types.QHstsPolicy(h: fcQHstsPolicy_new3(rhs.h), owned: true)

proc create*(T: type gen_qhstspolicy_types.QHstsPolicy,
    expiry: gen_qdatetime_types.QDateTime, flags: cint, host: string, mode: cint): gen_qhstspolicy_types.QHstsPolicy =
  gen_qhstspolicy_types.QHstsPolicy(h: fcQHstsPolicy_new4(expiry.h, cint(flags), struct_miqt_string(data: host, len: csize_t(len(host))), cint(mode)), owned: true)

