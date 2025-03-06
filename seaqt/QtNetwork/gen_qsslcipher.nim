import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
{.compile("gen_qsslcipher.cpp", cflags).}


import ./gen_qsslcipher_types
export gen_qsslcipher_types


type cQSslCipher*{.exportc: "QSslCipher", incompleteStruct.} = object

proc fcQSslCipher_new(): ptr cQSslCipher {.importc: "QSslCipher_new".}
proc fcQSslCipher_new2(name: struct_miqt_string): ptr cQSslCipher {.importc: "QSslCipher_new2".}
proc fcQSslCipher_new3(name: struct_miqt_string, protocol: cint): ptr cQSslCipher {.importc: "QSslCipher_new3".}
proc fcQSslCipher_new4(other: pointer): ptr cQSslCipher {.importc: "QSslCipher_new4".}
proc fcQSslCipher_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslCipher_operatorAssign".}
proc fcQSslCipher_swap(self: pointer, other: pointer): void {.importc: "QSslCipher_swap".}
proc fcQSslCipher_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSslCipher_operatorEqual".}
proc fcQSslCipher_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSslCipher_operatorNotEqual".}
proc fcQSslCipher_isNull(self: pointer, ): bool {.importc: "QSslCipher_isNull".}
proc fcQSslCipher_name(self: pointer, ): struct_miqt_string {.importc: "QSslCipher_name".}
proc fcQSslCipher_supportedBits(self: pointer, ): cint {.importc: "QSslCipher_supportedBits".}
proc fcQSslCipher_usedBits(self: pointer, ): cint {.importc: "QSslCipher_usedBits".}
proc fcQSslCipher_keyExchangeMethod(self: pointer, ): struct_miqt_string {.importc: "QSslCipher_keyExchangeMethod".}
proc fcQSslCipher_authenticationMethod(self: pointer, ): struct_miqt_string {.importc: "QSslCipher_authenticationMethod".}
proc fcQSslCipher_encryptionMethod(self: pointer, ): struct_miqt_string {.importc: "QSslCipher_encryptionMethod".}
proc fcQSslCipher_protocolString(self: pointer, ): struct_miqt_string {.importc: "QSslCipher_protocolString".}
proc fcQSslCipher_protocol(self: pointer, ): cint {.importc: "QSslCipher_protocol".}
proc fcQSslCipher_delete(self: pointer) {.importc: "QSslCipher_delete".}


func init*(T: type gen_qsslcipher_types.QSslCipher, h: ptr cQSslCipher): gen_qsslcipher_types.QSslCipher =
  T(h: h)
proc create*(T: type gen_qsslcipher_types.QSslCipher, ): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher.init(fcQSslCipher_new())

proc create*(T: type gen_qsslcipher_types.QSslCipher, name: string): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher.init(fcQSslCipher_new2(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qsslcipher_types.QSslCipher, name: string, protocol: cint): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher.init(fcQSslCipher_new3(struct_miqt_string(data: name, len: csize_t(len(name))), cint(protocol)))

proc create*(T: type gen_qsslcipher_types.QSslCipher, other: gen_qsslcipher_types.QSslCipher): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher.init(fcQSslCipher_new4(other.h))

proc operatorAssign*(self: gen_qsslcipher_types.QSslCipher, other: gen_qsslcipher_types.QSslCipher): void =
  fcQSslCipher_operatorAssign(self.h, other.h)

proc swap*(self: gen_qsslcipher_types.QSslCipher, other: gen_qsslcipher_types.QSslCipher): void =
  fcQSslCipher_swap(self.h, other.h)

proc operatorEqual*(self: gen_qsslcipher_types.QSslCipher, other: gen_qsslcipher_types.QSslCipher): bool =
  fcQSslCipher_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsslcipher_types.QSslCipher, other: gen_qsslcipher_types.QSslCipher): bool =
  fcQSslCipher_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qsslcipher_types.QSslCipher, ): bool =
  fcQSslCipher_isNull(self.h)

proc name*(self: gen_qsslcipher_types.QSslCipher, ): string =
  let v_ms = fcQSslCipher_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedBits*(self: gen_qsslcipher_types.QSslCipher, ): cint =
  fcQSslCipher_supportedBits(self.h)

proc usedBits*(self: gen_qsslcipher_types.QSslCipher, ): cint =
  fcQSslCipher_usedBits(self.h)

proc keyExchangeMethod*(self: gen_qsslcipher_types.QSslCipher, ): string =
  let v_ms = fcQSslCipher_keyExchangeMethod(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc authenticationMethod*(self: gen_qsslcipher_types.QSslCipher, ): string =
  let v_ms = fcQSslCipher_authenticationMethod(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc encryptionMethod*(self: gen_qsslcipher_types.QSslCipher, ): string =
  let v_ms = fcQSslCipher_encryptionMethod(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc protocolString*(self: gen_qsslcipher_types.QSslCipher, ): string =
  let v_ms = fcQSslCipher_protocolString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc protocol*(self: gen_qsslcipher_types.QSslCipher, ): cint =
  cint(fcQSslCipher_protocol(self.h))

proc delete*(self: gen_qsslcipher_types.QSslCipher) =
  fcQSslCipher_delete(self.h)
