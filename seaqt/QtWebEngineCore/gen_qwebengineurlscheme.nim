import ./qtwebenginecore_pkg

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


type QWebEngineUrlSchemeSyntaxEnum* = distinct cint
template HostPortAndUserInformation*(_: type QWebEngineUrlSchemeSyntaxEnum): untyped = 0
template HostAndPort*(_: type QWebEngineUrlSchemeSyntaxEnum): untyped = 1
template Host*(_: type QWebEngineUrlSchemeSyntaxEnum): untyped = 2
template Path*(_: type QWebEngineUrlSchemeSyntaxEnum): untyped = 3


type QWebEngineUrlSchemeSpecialPortEnum* = distinct cint
template PortUnspecified*(_: type QWebEngineUrlSchemeSpecialPortEnum): untyped = -1


type QWebEngineUrlSchemeFlagEnum* = distinct cint
template SecureScheme*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 1
template LocalScheme*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 2
template LocalAccessAllowed*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 4
template NoAccessAllowed*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 8
template ServiceWorkersAllowed*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 16
template ViewSourceAllowed*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 32
template ContentSecurityPolicyIgnored*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 64
template CorsEnabled*(_: type QWebEngineUrlSchemeFlagEnum): untyped = 128


import ./gen_qwebengineurlscheme_types
export gen_qwebengineurlscheme_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQWebEngineUrlScheme*{.exportc: "QWebEngineUrlScheme", incompleteStruct.} = object

proc fcQWebEngineUrlScheme_operatorAssign(self: pointer, that: pointer): void {.importc: "QWebEngineUrlScheme_operatorAssign".}
proc fcQWebEngineUrlScheme_operatorEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineUrlScheme_operatorEqual".}
proc fcQWebEngineUrlScheme_operatorNotEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineUrlScheme_operatorNotEqual".}
proc fcQWebEngineUrlScheme_name(self: pointer): struct_miqt_string {.importc: "QWebEngineUrlScheme_name".}
proc fcQWebEngineUrlScheme_setName(self: pointer, newValue: struct_miqt_string): void {.importc: "QWebEngineUrlScheme_setName".}
proc fcQWebEngineUrlScheme_syntax(self: pointer): cint {.importc: "QWebEngineUrlScheme_syntax".}
proc fcQWebEngineUrlScheme_setSyntax(self: pointer, newValue: cint): void {.importc: "QWebEngineUrlScheme_setSyntax".}
proc fcQWebEngineUrlScheme_defaultPort(self: pointer): cint {.importc: "QWebEngineUrlScheme_defaultPort".}
proc fcQWebEngineUrlScheme_setDefaultPort(self: pointer, newValue: cint): void {.importc: "QWebEngineUrlScheme_setDefaultPort".}
proc fcQWebEngineUrlScheme_flags(self: pointer): cint {.importc: "QWebEngineUrlScheme_flags".}
proc fcQWebEngineUrlScheme_setFlags(self: pointer, newValue: cint): void {.importc: "QWebEngineUrlScheme_setFlags".}
proc fcQWebEngineUrlScheme_registerScheme(scheme: pointer): void {.importc: "QWebEngineUrlScheme_registerScheme".}
proc fcQWebEngineUrlScheme_schemeByName(name: struct_miqt_string): pointer {.importc: "QWebEngineUrlScheme_schemeByName".}
proc fcQWebEngineUrlScheme_new(): ptr cQWebEngineUrlScheme {.importc: "QWebEngineUrlScheme_new".}
proc fcQWebEngineUrlScheme_new2(name: struct_miqt_string): ptr cQWebEngineUrlScheme {.importc: "QWebEngineUrlScheme_new2".}
proc fcQWebEngineUrlScheme_new3(that: pointer): ptr cQWebEngineUrlScheme {.importc: "QWebEngineUrlScheme_new3".}
proc fcQWebEngineUrlScheme_staticMetaObject(): pointer {.importc: "QWebEngineUrlScheme_staticMetaObject".}

proc operatorAssign*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme, that: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): void =
  fcQWebEngineUrlScheme_operatorAssign(self.h, that.h)

proc operatorEqual*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme, that: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): bool =
  fcQWebEngineUrlScheme_operatorEqual(self.h, that.h)

proc operatorNotEqual*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme, that: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): bool =
  fcQWebEngineUrlScheme_operatorNotEqual(self.h, that.h)

proc name*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): seq[byte] =
  var v_bytearray = fcQWebEngineUrlScheme_name(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setName*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme, newValue: openArray[byte]): void =
  fcQWebEngineUrlScheme_setName(self.h, struct_miqt_string(data: cast[cstring](if len(newValue) == 0: nil else: unsafeAddr newValue[0]), len: csize_t(len(newValue))))

proc syntax*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): cint =
  cint(fcQWebEngineUrlScheme_syntax(self.h))

proc setSyntax*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme, newValue: cint): void =
  fcQWebEngineUrlScheme_setSyntax(self.h, cint(newValue))

proc defaultPort*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): cint =
  fcQWebEngineUrlScheme_defaultPort(self.h)

proc setDefaultPort*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme, newValue: cint): void =
  fcQWebEngineUrlScheme_setDefaultPort(self.h, newValue)

proc flags*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): cint =
  cint(fcQWebEngineUrlScheme_flags(self.h))

proc setFlags*(self: gen_qwebengineurlscheme_types.QWebEngineUrlScheme, newValue: cint): void =
  fcQWebEngineUrlScheme_setFlags(self.h, cint(newValue))

proc registerScheme*(_: type gen_qwebengineurlscheme_types.QWebEngineUrlScheme, scheme: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): void =
  fcQWebEngineUrlScheme_registerScheme(scheme.h)

proc schemeByName*(_: type gen_qwebengineurlscheme_types.QWebEngineUrlScheme, name: openArray[byte]): gen_qwebengineurlscheme_types.QWebEngineUrlScheme =
  gen_qwebengineurlscheme_types.QWebEngineUrlScheme(h: fcQWebEngineUrlScheme_schemeByName(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qwebengineurlscheme_types.QWebEngineUrlScheme): gen_qwebengineurlscheme_types.QWebEngineUrlScheme =
  gen_qwebengineurlscheme_types.QWebEngineUrlScheme(h: fcQWebEngineUrlScheme_new(), owned: true)

proc create*(T: type gen_qwebengineurlscheme_types.QWebEngineUrlScheme,
    name: openArray[byte]): gen_qwebengineurlscheme_types.QWebEngineUrlScheme =
  gen_qwebengineurlscheme_types.QWebEngineUrlScheme(h: fcQWebEngineUrlScheme_new2(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qwebengineurlscheme_types.QWebEngineUrlScheme,
    that: gen_qwebengineurlscheme_types.QWebEngineUrlScheme): gen_qwebengineurlscheme_types.QWebEngineUrlScheme =
  gen_qwebengineurlscheme_types.QWebEngineUrlScheme(h: fcQWebEngineUrlScheme_new3(that.h), owned: true)

proc staticMetaObject*(_: type gen_qwebengineurlscheme_types.QWebEngineUrlScheme): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineUrlScheme_staticMetaObject())
