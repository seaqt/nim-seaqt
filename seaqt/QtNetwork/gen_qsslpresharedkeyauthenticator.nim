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


import ./gen_qsslpresharedkeyauthenticator_types
export gen_qsslpresharedkeyauthenticator_types


type cQSslPreSharedKeyAuthenticator*{.exportc: "QSslPreSharedKeyAuthenticator", incompleteStruct.} = object

proc fcQSslPreSharedKeyAuthenticator_operatorAssign(self: pointer, authenticator: pointer): void {.importc: "QSslPreSharedKeyAuthenticator_operatorAssign".}
proc fcQSslPreSharedKeyAuthenticator_swap(self: pointer, other: pointer): void {.importc: "QSslPreSharedKeyAuthenticator_swap".}
proc fcQSslPreSharedKeyAuthenticator_identityHint(self: pointer): struct_miqt_string {.importc: "QSslPreSharedKeyAuthenticator_identityHint".}
proc fcQSslPreSharedKeyAuthenticator_setIdentity(self: pointer, identity: struct_miqt_string): void {.importc: "QSslPreSharedKeyAuthenticator_setIdentity".}
proc fcQSslPreSharedKeyAuthenticator_identity(self: pointer): struct_miqt_string {.importc: "QSslPreSharedKeyAuthenticator_identity".}
proc fcQSslPreSharedKeyAuthenticator_maximumIdentityLength(self: pointer): cint {.importc: "QSslPreSharedKeyAuthenticator_maximumIdentityLength".}
proc fcQSslPreSharedKeyAuthenticator_setPreSharedKey(self: pointer, preSharedKey: struct_miqt_string): void {.importc: "QSslPreSharedKeyAuthenticator_setPreSharedKey".}
proc fcQSslPreSharedKeyAuthenticator_preSharedKey(self: pointer): struct_miqt_string {.importc: "QSslPreSharedKeyAuthenticator_preSharedKey".}
proc fcQSslPreSharedKeyAuthenticator_maximumPreSharedKeyLength(self: pointer): cint {.importc: "QSslPreSharedKeyAuthenticator_maximumPreSharedKeyLength".}
proc fcQSslPreSharedKeyAuthenticator_new(): ptr cQSslPreSharedKeyAuthenticator {.importc: "QSslPreSharedKeyAuthenticator_new".}
proc fcQSslPreSharedKeyAuthenticator_new2(authenticator: pointer): ptr cQSslPreSharedKeyAuthenticator {.importc: "QSslPreSharedKeyAuthenticator_new2".}

proc operatorAssign*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQSslPreSharedKeyAuthenticator_operatorAssign(self.h, authenticator.h)

proc swap*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator, other: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQSslPreSharedKeyAuthenticator_swap(self.h, other.h)

proc identityHint*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): seq[byte] =
  var v_bytearray = fcQSslPreSharedKeyAuthenticator_identityHint(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setIdentity*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator, identity: openArray[byte]): void =
  fcQSslPreSharedKeyAuthenticator_setIdentity(self.h, struct_miqt_string(data: cast[cstring](if len(identity) == 0: nil else: unsafeAddr identity[0]), len: csize_t(len(identity))))

proc identity*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): seq[byte] =
  var v_bytearray = fcQSslPreSharedKeyAuthenticator_identity(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc maximumIdentityLength*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): cint =
  fcQSslPreSharedKeyAuthenticator_maximumIdentityLength(self.h)

proc setPreSharedKey*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator, preSharedKey: openArray[byte]): void =
  fcQSslPreSharedKeyAuthenticator_setPreSharedKey(self.h, struct_miqt_string(data: cast[cstring](if len(preSharedKey) == 0: nil else: unsafeAddr preSharedKey[0]), len: csize_t(len(preSharedKey))))

proc preSharedKey*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): seq[byte] =
  var v_bytearray = fcQSslPreSharedKeyAuthenticator_preSharedKey(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc maximumPreSharedKeyLength*(self: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): cint =
  fcQSslPreSharedKeyAuthenticator_maximumPreSharedKeyLength(self.h)

proc create*(T: type gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator =
  gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: fcQSslPreSharedKeyAuthenticator_new(), owned: true)

proc create*(T: type gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator,
    authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator =
  gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: fcQSslPreSharedKeyAuthenticator_new2(authenticator.h), owned: true)

