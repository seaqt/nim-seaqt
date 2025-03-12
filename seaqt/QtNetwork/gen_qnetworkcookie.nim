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


type QNetworkCookieRawFormEnum* = distinct cint
template NameAndValueOnly*(_: type QNetworkCookieRawFormEnum): untyped = 0
template Full*(_: type QNetworkCookieRawFormEnum): untyped = 1


type QNetworkCookieSameSiteEnum* = distinct cint
template Default*(_: type QNetworkCookieSameSiteEnum): untyped = 0
template None*(_: type QNetworkCookieSameSiteEnum): untyped = 1
template Lax*(_: type QNetworkCookieSameSiteEnum): untyped = 2
template Strict*(_: type QNetworkCookieSameSiteEnum): untyped = 3


import ./gen_qnetworkcookie_types
export gen_qnetworkcookie_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qdatetime_types,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQNetworkCookie*{.exportc: "QNetworkCookie", incompleteStruct.} = object

proc fcQNetworkCookie_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkCookie_operatorAssign".}
proc fcQNetworkCookie_swap(self: pointer, other: pointer): void {.importc: "QNetworkCookie_swap".}
proc fcQNetworkCookie_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkCookie_operatorEqual".}
proc fcQNetworkCookie_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkCookie_operatorNotEqual".}
proc fcQNetworkCookie_isSecure(self: pointer): bool {.importc: "QNetworkCookie_isSecure".}
proc fcQNetworkCookie_setSecure(self: pointer, enable: bool): void {.importc: "QNetworkCookie_setSecure".}
proc fcQNetworkCookie_isHttpOnly(self: pointer): bool {.importc: "QNetworkCookie_isHttpOnly".}
proc fcQNetworkCookie_setHttpOnly(self: pointer, enable: bool): void {.importc: "QNetworkCookie_setHttpOnly".}
proc fcQNetworkCookie_sameSitePolicy(self: pointer): cint {.importc: "QNetworkCookie_sameSitePolicy".}
proc fcQNetworkCookie_setSameSitePolicy(self: pointer, sameSite: cint): void {.importc: "QNetworkCookie_setSameSitePolicy".}
proc fcQNetworkCookie_isSessionCookie(self: pointer): bool {.importc: "QNetworkCookie_isSessionCookie".}
proc fcQNetworkCookie_expirationDate(self: pointer): pointer {.importc: "QNetworkCookie_expirationDate".}
proc fcQNetworkCookie_setExpirationDate(self: pointer, date: pointer): void {.importc: "QNetworkCookie_setExpirationDate".}
proc fcQNetworkCookie_domain(self: pointer): struct_miqt_string {.importc: "QNetworkCookie_domain".}
proc fcQNetworkCookie_setDomain(self: pointer, domain: struct_miqt_string): void {.importc: "QNetworkCookie_setDomain".}
proc fcQNetworkCookie_path(self: pointer): struct_miqt_string {.importc: "QNetworkCookie_path".}
proc fcQNetworkCookie_setPath(self: pointer, path: struct_miqt_string): void {.importc: "QNetworkCookie_setPath".}
proc fcQNetworkCookie_name(self: pointer): struct_miqt_string {.importc: "QNetworkCookie_name".}
proc fcQNetworkCookie_setName(self: pointer, cookieName: struct_miqt_string): void {.importc: "QNetworkCookie_setName".}
proc fcQNetworkCookie_value(self: pointer): struct_miqt_string {.importc: "QNetworkCookie_value".}
proc fcQNetworkCookie_setValue(self: pointer, value: struct_miqt_string): void {.importc: "QNetworkCookie_setValue".}
proc fcQNetworkCookie_toRawForm(self: pointer): struct_miqt_string {.importc: "QNetworkCookie_toRawForm".}
proc fcQNetworkCookie_hasSameIdentifier(self: pointer, other: pointer): bool {.importc: "QNetworkCookie_hasSameIdentifier".}
proc fcQNetworkCookie_normalize(self: pointer, url: pointer): void {.importc: "QNetworkCookie_normalize".}
proc fcQNetworkCookie_parseCookies(cookieString: struct_miqt_string): struct_miqt_array {.importc: "QNetworkCookie_parseCookies".}
proc fcQNetworkCookie_toRawForm1(self: pointer, form: cint): struct_miqt_string {.importc: "QNetworkCookie_toRawForm1".}
proc fcQNetworkCookie_new(): ptr cQNetworkCookie {.importc: "QNetworkCookie_new".}
proc fcQNetworkCookie_new2(other: pointer): ptr cQNetworkCookie {.importc: "QNetworkCookie_new2".}
proc fcQNetworkCookie_new3(name: struct_miqt_string): ptr cQNetworkCookie {.importc: "QNetworkCookie_new3".}
proc fcQNetworkCookie_new4(name: struct_miqt_string, value: struct_miqt_string): ptr cQNetworkCookie {.importc: "QNetworkCookie_new4".}
proc fcQNetworkCookie_staticMetaObject(): pointer {.importc: "QNetworkCookie_staticMetaObject".}

proc operatorAssign*(self: gen_qnetworkcookie_types.QNetworkCookie, other: gen_qnetworkcookie_types.QNetworkCookie): void =
  fcQNetworkCookie_operatorAssign(self.h, other.h)

proc swap*(self: gen_qnetworkcookie_types.QNetworkCookie, other: gen_qnetworkcookie_types.QNetworkCookie): void =
  fcQNetworkCookie_swap(self.h, other.h)

proc operatorEqual*(self: gen_qnetworkcookie_types.QNetworkCookie, other: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookie_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qnetworkcookie_types.QNetworkCookie, other: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookie_operatorNotEqual(self.h, other.h)

proc isSecure*(self: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookie_isSecure(self.h)

proc setSecure*(self: gen_qnetworkcookie_types.QNetworkCookie, enable: bool): void =
  fcQNetworkCookie_setSecure(self.h, enable)

proc isHttpOnly*(self: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookie_isHttpOnly(self.h)

proc setHttpOnly*(self: gen_qnetworkcookie_types.QNetworkCookie, enable: bool): void =
  fcQNetworkCookie_setHttpOnly(self.h, enable)

proc sameSitePolicy*(self: gen_qnetworkcookie_types.QNetworkCookie): cint =
  cint(fcQNetworkCookie_sameSitePolicy(self.h))

proc setSameSitePolicy*(self: gen_qnetworkcookie_types.QNetworkCookie, sameSite: cint): void =
  fcQNetworkCookie_setSameSitePolicy(self.h, cint(sameSite))

proc isSessionCookie*(self: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookie_isSessionCookie(self.h)

proc expirationDate*(self: gen_qnetworkcookie_types.QNetworkCookie): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQNetworkCookie_expirationDate(self.h), owned: true)

proc setExpirationDate*(self: gen_qnetworkcookie_types.QNetworkCookie, date: gen_qdatetime_types.QDateTime): void =
  fcQNetworkCookie_setExpirationDate(self.h, date.h)

proc domain*(self: gen_qnetworkcookie_types.QNetworkCookie): string =
  let v_ms = fcQNetworkCookie_domain(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDomain*(self: gen_qnetworkcookie_types.QNetworkCookie, domain: string): void =
  fcQNetworkCookie_setDomain(self.h, struct_miqt_string(data: domain, len: csize_t(len(domain))))

proc path*(self: gen_qnetworkcookie_types.QNetworkCookie): string =
  let v_ms = fcQNetworkCookie_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPath*(self: gen_qnetworkcookie_types.QNetworkCookie, path: string): void =
  fcQNetworkCookie_setPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc name*(self: gen_qnetworkcookie_types.QNetworkCookie): seq[byte] =
  var v_bytearray = fcQNetworkCookie_name(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setName*(self: gen_qnetworkcookie_types.QNetworkCookie, cookieName: seq[byte]): void =
  fcQNetworkCookie_setName(self.h, struct_miqt_string(data: cast[cstring](if len(cookieName) == 0: nil else: unsafeAddr cookieName[0]), len: csize_t(len(cookieName))))

proc value*(self: gen_qnetworkcookie_types.QNetworkCookie): seq[byte] =
  var v_bytearray = fcQNetworkCookie_value(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setValue*(self: gen_qnetworkcookie_types.QNetworkCookie, value: seq[byte]): void =
  fcQNetworkCookie_setValue(self.h, struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value))))

proc toRawForm*(self: gen_qnetworkcookie_types.QNetworkCookie): seq[byte] =
  var v_bytearray = fcQNetworkCookie_toRawForm(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc hasSameIdentifier*(self: gen_qnetworkcookie_types.QNetworkCookie, other: gen_qnetworkcookie_types.QNetworkCookie): bool =
  fcQNetworkCookie_hasSameIdentifier(self.h, other.h)

proc normalize*(self: gen_qnetworkcookie_types.QNetworkCookie, url: gen_qurl_types.QUrl): void =
  fcQNetworkCookie_normalize(self.h, url.h)

proc parseCookies*(_: type gen_qnetworkcookie_types.QNetworkCookie, cookieString: seq[byte]): seq[gen_qnetworkcookie_types.QNetworkCookie] =
  var v_ma = fcQNetworkCookie_parseCookies(struct_miqt_string(data: cast[cstring](if len(cookieString) == 0: nil else: unsafeAddr cookieString[0]), len: csize_t(len(cookieString))))
  var vx_ret = newSeq[gen_qnetworkcookie_types.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie_types.QNetworkCookie(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc toRawForm*(self: gen_qnetworkcookie_types.QNetworkCookie, form: cint): seq[byte] =
  var v_bytearray = fcQNetworkCookie_toRawForm1(self.h, cint(form))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create*(T: type gen_qnetworkcookie_types.QNetworkCookie): gen_qnetworkcookie_types.QNetworkCookie =
  gen_qnetworkcookie_types.QNetworkCookie(h: fcQNetworkCookie_new(), owned: true)

proc create*(T: type gen_qnetworkcookie_types.QNetworkCookie,
    other: gen_qnetworkcookie_types.QNetworkCookie): gen_qnetworkcookie_types.QNetworkCookie =
  gen_qnetworkcookie_types.QNetworkCookie(h: fcQNetworkCookie_new2(other.h), owned: true)

proc create*(T: type gen_qnetworkcookie_types.QNetworkCookie,
    name: seq[byte]): gen_qnetworkcookie_types.QNetworkCookie =
  gen_qnetworkcookie_types.QNetworkCookie(h: fcQNetworkCookie_new3(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qnetworkcookie_types.QNetworkCookie,
    name: seq[byte], value: seq[byte]): gen_qnetworkcookie_types.QNetworkCookie =
  gen_qnetworkcookie_types.QNetworkCookie(h: fcQNetworkCookie_new4(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))), struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value)))), owned: true)

proc staticMetaObject*(_: type gen_qnetworkcookie_types.QNetworkCookie): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkCookie_staticMetaObject())
