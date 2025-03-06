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


import ./gen_qauthenticator_types
export gen_qauthenticator_types

import
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qvariant_types

type cQAuthenticator*{.exportc: "QAuthenticator", incompleteStruct.} = object

proc fcQAuthenticator_operatorAssign(self: pointer, other: pointer): void {.importc: "QAuthenticator_operatorAssign".}
proc fcQAuthenticator_operatorEqual(self: pointer, other: pointer): bool {.importc: "QAuthenticator_operatorEqual".}
proc fcQAuthenticator_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QAuthenticator_operatorNotEqual".}
proc fcQAuthenticator_user(self: pointer, ): struct_miqt_string {.importc: "QAuthenticator_user".}
proc fcQAuthenticator_setUser(self: pointer, user: struct_miqt_string): void {.importc: "QAuthenticator_setUser".}
proc fcQAuthenticator_password(self: pointer, ): struct_miqt_string {.importc: "QAuthenticator_password".}
proc fcQAuthenticator_setPassword(self: pointer, password: struct_miqt_string): void {.importc: "QAuthenticator_setPassword".}
proc fcQAuthenticator_realm(self: pointer, ): struct_miqt_string {.importc: "QAuthenticator_realm".}
proc fcQAuthenticator_setRealm(self: pointer, realm: struct_miqt_string): void {.importc: "QAuthenticator_setRealm".}
proc fcQAuthenticator_option(self: pointer, opt: struct_miqt_string): pointer {.importc: "QAuthenticator_option".}
proc fcQAuthenticator_options(self: pointer, ): struct_miqt_map {.importc: "QAuthenticator_options".}
proc fcQAuthenticator_setOption(self: pointer, opt: struct_miqt_string, value: pointer): void {.importc: "QAuthenticator_setOption".}
proc fcQAuthenticator_isNull(self: pointer, ): bool {.importc: "QAuthenticator_isNull".}
proc fcQAuthenticator_detach(self: pointer, ): void {.importc: "QAuthenticator_detach".}
proc fcQAuthenticator_new(): ptr cQAuthenticator {.importc: "QAuthenticator_new".}
proc fcQAuthenticator_new2(other: pointer): ptr cQAuthenticator {.importc: "QAuthenticator_new2".}

proc operatorAssign*(self: gen_qauthenticator_types.QAuthenticator, other: gen_qauthenticator_types.QAuthenticator): void =
  fcQAuthenticator_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qauthenticator_types.QAuthenticator, other: gen_qauthenticator_types.QAuthenticator): bool =
  fcQAuthenticator_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qauthenticator_types.QAuthenticator, other: gen_qauthenticator_types.QAuthenticator): bool =
  fcQAuthenticator_operatorNotEqual(self.h, other.h)

proc user*(self: gen_qauthenticator_types.QAuthenticator, ): string =
  let v_ms = fcQAuthenticator_user(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUser*(self: gen_qauthenticator_types.QAuthenticator, user: string): void =
  fcQAuthenticator_setUser(self.h, struct_miqt_string(data: user, len: csize_t(len(user))))

proc password*(self: gen_qauthenticator_types.QAuthenticator, ): string =
  let v_ms = fcQAuthenticator_password(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPassword*(self: gen_qauthenticator_types.QAuthenticator, password: string): void =
  fcQAuthenticator_setPassword(self.h, struct_miqt_string(data: password, len: csize_t(len(password))))

proc realm*(self: gen_qauthenticator_types.QAuthenticator, ): string =
  let v_ms = fcQAuthenticator_realm(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setRealm*(self: gen_qauthenticator_types.QAuthenticator, realm: string): void =
  fcQAuthenticator_setRealm(self.h, struct_miqt_string(data: realm, len: csize_t(len(realm))))

proc option*(self: gen_qauthenticator_types.QAuthenticator, opt: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAuthenticator_option(self.h, struct_miqt_string(data: opt, len: csize_t(len(opt)))), owned: true)

proc options*(self: gen_qauthenticator_types.QAuthenticator, ): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQAuthenticator_options(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(toOpenArrayByte(vx_hashkey_ms.data, 0, int(vx_hashkey_ms.len)-1))
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc setOption*(self: gen_qauthenticator_types.QAuthenticator, opt: string, value: gen_qvariant_types.QVariant): void =
  fcQAuthenticator_setOption(self.h, struct_miqt_string(data: opt, len: csize_t(len(opt))), value.h)

proc isNull*(self: gen_qauthenticator_types.QAuthenticator, ): bool =
  fcQAuthenticator_isNull(self.h)

proc detach*(self: gen_qauthenticator_types.QAuthenticator, ): void =
  fcQAuthenticator_detach(self.h)

proc create*(T: type gen_qauthenticator_types.QAuthenticator): gen_qauthenticator_types.QAuthenticator =
  gen_qauthenticator_types.QAuthenticator(h: fcQAuthenticator_new(), owned: true)

proc create*(T: type gen_qauthenticator_types.QAuthenticator,
    other: gen_qauthenticator_types.QAuthenticator): gen_qauthenticator_types.QAuthenticator =
  gen_qauthenticator_types.QAuthenticator(h: fcQAuthenticator_new2(other.h), owned: true)

