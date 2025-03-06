import ./Qt5WebKit_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKit")  & " -fPIC"
{.compile("gen_qwebsecurityorigin.cpp", cflags).}


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

proc fcQWebSecurityOrigin_new(url: pointer): ptr cQWebSecurityOrigin {.importc: "QWebSecurityOrigin_new".}
proc fcQWebSecurityOrigin_new2(other: pointer): ptr cQWebSecurityOrigin {.importc: "QWebSecurityOrigin_new2".}
proc fcQWebSecurityOrigin_allOrigins(): struct_miqt_array {.importc: "QWebSecurityOrigin_allOrigins".}
proc fcQWebSecurityOrigin_addLocalScheme(scheme: struct_miqt_string): void {.importc: "QWebSecurityOrigin_addLocalScheme".}
proc fcQWebSecurityOrigin_removeLocalScheme(scheme: struct_miqt_string): void {.importc: "QWebSecurityOrigin_removeLocalScheme".}
proc fcQWebSecurityOrigin_localSchemes(): struct_miqt_array {.importc: "QWebSecurityOrigin_localSchemes".}
proc fcQWebSecurityOrigin_addAccessWhitelistEntry(self: pointer, scheme: struct_miqt_string, host: struct_miqt_string, subdomainSetting: cint): void {.importc: "QWebSecurityOrigin_addAccessWhitelistEntry".}
proc fcQWebSecurityOrigin_removeAccessWhitelistEntry(self: pointer, scheme: struct_miqt_string, host: struct_miqt_string, subdomainSetting: cint): void {.importc: "QWebSecurityOrigin_removeAccessWhitelistEntry".}
proc fcQWebSecurityOrigin_scheme(self: pointer, ): struct_miqt_string {.importc: "QWebSecurityOrigin_scheme".}
proc fcQWebSecurityOrigin_host(self: pointer, ): struct_miqt_string {.importc: "QWebSecurityOrigin_host".}
proc fcQWebSecurityOrigin_port(self: pointer, ): cint {.importc: "QWebSecurityOrigin_port".}
proc fcQWebSecurityOrigin_databaseUsage(self: pointer, ): clonglong {.importc: "QWebSecurityOrigin_databaseUsage".}
proc fcQWebSecurityOrigin_databaseQuota(self: pointer, ): clonglong {.importc: "QWebSecurityOrigin_databaseQuota".}
proc fcQWebSecurityOrigin_setDatabaseQuota(self: pointer, quota: clonglong): void {.importc: "QWebSecurityOrigin_setDatabaseQuota".}
proc fcQWebSecurityOrigin_setApplicationCacheQuota(self: pointer, quota: clonglong): void {.importc: "QWebSecurityOrigin_setApplicationCacheQuota".}
proc fcQWebSecurityOrigin_databases(self: pointer, ): struct_miqt_array {.importc: "QWebSecurityOrigin_databases".}
proc fcQWebSecurityOrigin_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebSecurityOrigin_operatorAssign".}
proc fcQWebSecurityOrigin_delete(self: pointer) {.importc: "QWebSecurityOrigin_delete".}


func init*(T: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, h: ptr cQWebSecurityOrigin): gen_qwebsecurityorigin_types.QWebSecurityOrigin =
  T(h: h)
proc create*(T: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, url: gen_qurl_types.QUrl): gen_qwebsecurityorigin_types.QWebSecurityOrigin =
  gen_qwebsecurityorigin_types.QWebSecurityOrigin.init(fcQWebSecurityOrigin_new(url.h))

proc create*(T: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, other: gen_qwebsecurityorigin_types.QWebSecurityOrigin): gen_qwebsecurityorigin_types.QWebSecurityOrigin =
  gen_qwebsecurityorigin_types.QWebSecurityOrigin.init(fcQWebSecurityOrigin_new2(other.h))

proc allOrigins*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): seq[gen_qwebsecurityorigin_types.QWebSecurityOrigin] =
  var v_ma = fcQWebSecurityOrigin_allOrigins()
  var vx_ret = newSeq[gen_qwebsecurityorigin_types.QWebSecurityOrigin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebsecurityorigin_types.QWebSecurityOrigin(h: v_outCast[i])
  vx_ret

proc addLocalScheme*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: string): void =
  fcQWebSecurityOrigin_addLocalScheme(struct_miqt_string(data: scheme, len: csize_t(len(scheme))))

proc removeLocalScheme*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: string): void =
  fcQWebSecurityOrigin_removeLocalScheme(struct_miqt_string(data: scheme, len: csize_t(len(scheme))))

proc localSchemes*(_: type gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): seq[string] =
  var v_ma = fcQWebSecurityOrigin_localSchemes()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc addAccessWhitelistEntry*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: string, host: string, subdomainSetting: cint): void =
  fcQWebSecurityOrigin_addAccessWhitelistEntry(self.h, struct_miqt_string(data: scheme, len: csize_t(len(scheme))), struct_miqt_string(data: host, len: csize_t(len(host))), cint(subdomainSetting))

proc removeAccessWhitelistEntry*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, scheme: string, host: string, subdomainSetting: cint): void =
  fcQWebSecurityOrigin_removeAccessWhitelistEntry(self.h, struct_miqt_string(data: scheme, len: csize_t(len(scheme))), struct_miqt_string(data: host, len: csize_t(len(host))), cint(subdomainSetting))

proc scheme*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): string =
  let v_ms = fcQWebSecurityOrigin_scheme(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc host*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): string =
  let v_ms = fcQWebSecurityOrigin_host(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc port*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): cint =
  fcQWebSecurityOrigin_port(self.h)

proc databaseUsage*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): clonglong =
  fcQWebSecurityOrigin_databaseUsage(self.h)

proc databaseQuota*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): clonglong =
  fcQWebSecurityOrigin_databaseQuota(self.h)

proc setDatabaseQuota*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, quota: clonglong): void =
  fcQWebSecurityOrigin_setDatabaseQuota(self.h, quota)

proc setApplicationCacheQuota*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, quota: clonglong): void =
  fcQWebSecurityOrigin_setApplicationCacheQuota(self.h, quota)

proc databases*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, ): seq[gen_qwebdatabase_types.QWebDatabase] =
  var v_ma = fcQWebSecurityOrigin_databases(self.h)
  var vx_ret = newSeq[gen_qwebdatabase_types.QWebDatabase](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebdatabase_types.QWebDatabase(h: v_outCast[i])
  vx_ret

proc operatorAssign*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin, other: gen_qwebsecurityorigin_types.QWebSecurityOrigin): void =
  fcQWebSecurityOrigin_operatorAssign(self.h, other.h)

proc delete*(self: gen_qwebsecurityorigin_types.QWebSecurityOrigin) =
  fcQWebSecurityOrigin_delete(self.h)
