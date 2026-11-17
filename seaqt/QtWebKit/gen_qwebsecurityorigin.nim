import ./qtwebkit_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


type QWebSecurityOriginSubdomainSettingEnum* = distinct cint
template AllowSubdomains*(_: type QWebSecurityOriginSubdomainSettingEnum): untyped = 0
template DisallowSubdomains*(_: type QWebSecurityOriginSubdomainSettingEnum): untyped = 1


import ./gen_qwebsecurityorigin_types
export gen_qwebsecurityorigin_types

import
  ../QtCore/gen_qurl_types,
  ./gen_qwebdatabase_types
export
  gen_qurl_types,
  gen_qwebdatabase_types

type cQWebSecurityOrigin*{.exportc: "QWebSecurityOrigin", incompleteStruct.} = object

proc fcQWebSecurityOrigin_allOrigins(): struct_seaqt_array {.importc: "QWebSecurityOrigin_allOrigins".}
proc fcQWebSecurityOrigin_addLocalScheme(scheme: struct_seaqt_string): void {.importc: "QWebSecurityOrigin_addLocalScheme".}
proc fcQWebSecurityOrigin_removeLocalScheme(scheme: struct_seaqt_string): void {.importc: "QWebSecurityOrigin_removeLocalScheme".}
proc fcQWebSecurityOrigin_localSchemes(): struct_seaqt_array {.importc: "QWebSecurityOrigin_localSchemes".}
proc fcQWebSecurityOrigin_addAccessWhitelistEntry(self: pointer, scheme: struct_seaqt_string, host: struct_seaqt_string, subdomainSetting: cint): void {.importc: "QWebSecurityOrigin_addAccessWhitelistEntry".}
proc fcQWebSecurityOrigin_removeAccessWhitelistEntry(self: pointer, scheme: struct_seaqt_string, host: struct_seaqt_string, subdomainSetting: cint): void {.importc: "QWebSecurityOrigin_removeAccessWhitelistEntry".}
proc fcQWebSecurityOrigin_scheme(self: pointer): struct_seaqt_string {.importc: "QWebSecurityOrigin_scheme".}
proc fcQWebSecurityOrigin_host(self: pointer): struct_seaqt_string {.importc: "QWebSecurityOrigin_host".}
proc fcQWebSecurityOrigin_port(self: pointer): cint {.importc: "QWebSecurityOrigin_port".}
proc fcQWebSecurityOrigin_databaseUsage(self: pointer): clonglong {.importc: "QWebSecurityOrigin_databaseUsage".}
proc fcQWebSecurityOrigin_databaseQuota(self: pointer): clonglong {.importc: "QWebSecurityOrigin_databaseQuota".}
proc fcQWebSecurityOrigin_setDatabaseQuota(self: pointer, quota: clonglong): void {.importc: "QWebSecurityOrigin_setDatabaseQuota".}
proc fcQWebSecurityOrigin_setApplicationCacheQuota(self: pointer, quota: clonglong): void {.importc: "QWebSecurityOrigin_setApplicationCacheQuota".}
proc fcQWebSecurityOrigin_databases(self: pointer): struct_seaqt_array {.importc: "QWebSecurityOrigin_databases".}
proc fcQWebSecurityOrigin_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebSecurityOrigin_operatorAssign".}
proc fcQWebSecurityOrigin_new(url: pointer): ptr cQWebSecurityOrigin {.importc: "QWebSecurityOrigin_new".}
proc fcQWebSecurityOrigin_new2(other: pointer): ptr cQWebSecurityOrigin {.importc: "QWebSecurityOrigin_new2".}
proc fcQWebSecurityOrigin_delete(self: pointer) {.importc: "QWebSecurityOrigin_delete".}

proc allOrigins*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin): seq[gen_qwebsecurityorigin_types.QWebSecurityOrigin] =
  var v_ma = fcQWebSecurityOrigin_allOrigins()
  var vx_ret = newSeq[gen_qwebsecurityorigin_types.QWebSecurityOrigin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebsecurityorigin_types.QWebSecurityOrigin(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc addLocalScheme*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: openArray[char]): void =
  fcQWebSecurityOrigin_addLocalScheme(struct_seaqt_string(data: if len(scheme) > 0: addr scheme[0] else: nil, len: csize_t(len(scheme))))

proc removeLocalScheme*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: openArray[char]): void =
  fcQWebSecurityOrigin_removeLocalScheme(struct_seaqt_string(data: if len(scheme) > 0: addr scheme[0] else: nil, len: csize_t(len(scheme))))

proc localSchemes*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin): seq[string] =
  var v_ma = fcQWebSecurityOrigin_localSchemes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc addAccessWhitelistEntry*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: openArray[char], host: openArray[char], subdomainSetting: cint): void =
  fcQWebSecurityOrigin_addAccessWhitelistEntry(self.h, struct_seaqt_string(data: if len(scheme) > 0: addr scheme[0] else: nil, len: csize_t(len(scheme))), struct_seaqt_string(data: if len(host) > 0: addr host[0] else: nil, len: csize_t(len(host))), cint(subdomainSetting))

proc removeAccessWhitelistEntry*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: openArray[char], host: openArray[char], subdomainSetting: cint): void =
  fcQWebSecurityOrigin_removeAccessWhitelistEntry(self.h, struct_seaqt_string(data: if len(scheme) > 0: addr scheme[0] else: nil, len: csize_t(len(scheme))), struct_seaqt_string(data: if len(host) > 0: addr host[0] else: nil, len: csize_t(len(host))), cint(subdomainSetting))

proc scheme*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin): string =
  let v_ms = fcQWebSecurityOrigin_scheme(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc host*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin): string =
  let v_ms = fcQWebSecurityOrigin_host(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc port*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin): cint =
  fcQWebSecurityOrigin_port(self.h)

proc databaseUsage*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin): clonglong =
  fcQWebSecurityOrigin_databaseUsage(self.h)

proc databaseQuota*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin): clonglong =
  fcQWebSecurityOrigin_databaseQuota(self.h)

proc setDatabaseQuota*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, quota: clonglong): void =
  fcQWebSecurityOrigin_setDatabaseQuota(self.h, quota)

proc setApplicationCacheQuota*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, quota: clonglong): void =
  fcQWebSecurityOrigin_setApplicationCacheQuota(self.h, quota)

proc databases*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin): seq[gen_qwebdatabase_types.QWebDatabase] =
  var v_ma = fcQWebSecurityOrigin_databases(self.h)
  var vx_ret = newSeq[gen_qwebdatabase_types.QWebDatabase](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebdatabase_types.QWebDatabase(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc operatorAssign*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, other: gen_qwebsecurityorigin_types.QWebSecurityOrigin): void =
  fcQWebSecurityOrigin_operatorAssign(self.h, other.h)

proc create*(T: type gen_qwebsecurityorigin_types.QWebSecurityOrigin,
    url: gen_qurl_types.QUrl): gen_qwebsecurityorigin_types.QWebSecurityOrigin =
  let tmp = gen_qwebsecurityorigin_types.QWebSecurityOrigin(h: fcQWebSecurityOrigin_new(url.h))
  tmp
proc create*(T: type gen_qwebsecurityorigin_types.QWebSecurityOrigin,
    other: gen_qwebsecurityorigin_types.QWebSecurityOrigin): gen_qwebsecurityorigin_types.QWebSecurityOrigin =
  let tmp = gen_qwebsecurityorigin_types.QWebSecurityOrigin(h: fcQWebSecurityOrigin_new2(other.h))
  tmp
proc delete*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin) =
  fcQWebSecurityOrigin_delete(self.h)
