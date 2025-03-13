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


import ./gen_qsslkey_types
export gen_qsslkey_types

import
  ../QtCore/gen_qiodevice_types
export
  gen_qiodevice_types

type cQSslKey*{.exportc: "QSslKey", incompleteStruct.} = object

proc fcQSslKey_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslKey_operatorAssign".}
proc fcQSslKey_swap(self: pointer, other: pointer): void {.importc: "QSslKey_swap".}
proc fcQSslKey_isNull(self: pointer): bool {.importc: "QSslKey_isNull".}
proc fcQSslKey_clear(self: pointer): void {.importc: "QSslKey_clear".}
proc fcQSslKey_length(self: pointer): cint {.importc: "QSslKey_length".}
proc fcQSslKey_typeX(self: pointer): cint {.importc: "QSslKey_type".}
proc fcQSslKey_algorithm(self: pointer): cint {.importc: "QSslKey_algorithm".}
proc fcQSslKey_toPem(self: pointer): struct_miqt_string {.importc: "QSslKey_toPem".}
proc fcQSslKey_toDer(self: pointer): struct_miqt_string {.importc: "QSslKey_toDer".}
proc fcQSslKey_handle(self: pointer): pointer {.importc: "QSslKey_handle".}
proc fcQSslKey_operatorEqual(self: pointer, key: pointer): bool {.importc: "QSslKey_operatorEqual".}
proc fcQSslKey_operatorNotEqual(self: pointer, key: pointer): bool {.importc: "QSslKey_operatorNotEqual".}
proc fcQSslKey_toPem1(self: pointer, passPhrase: struct_miqt_string): struct_miqt_string {.importc: "QSslKey_toPem1".}
proc fcQSslKey_toDer1(self: pointer, passPhrase: struct_miqt_string): struct_miqt_string {.importc: "QSslKey_toDer1".}
proc fcQSslKey_new(): ptr cQSslKey {.importc: "QSslKey_new".}
proc fcQSslKey_new2(encoded: struct_miqt_string, algorithm: cint): ptr cQSslKey {.importc: "QSslKey_new2".}
proc fcQSslKey_new3(device: pointer, algorithm: cint): ptr cQSslKey {.importc: "QSslKey_new3".}
proc fcQSslKey_new4(handle: pointer): ptr cQSslKey {.importc: "QSslKey_new4".}
proc fcQSslKey_new5(other: pointer): ptr cQSslKey {.importc: "QSslKey_new5".}
proc fcQSslKey_new6(encoded: struct_miqt_string, algorithm: cint, format: cint): ptr cQSslKey {.importc: "QSslKey_new6".}
proc fcQSslKey_new7(encoded: struct_miqt_string, algorithm: cint, format: cint, typeVal: cint): ptr cQSslKey {.importc: "QSslKey_new7".}
proc fcQSslKey_new8(encoded: struct_miqt_string, algorithm: cint, format: cint, typeVal: cint, passPhrase: struct_miqt_string): ptr cQSslKey {.importc: "QSslKey_new8".}
proc fcQSslKey_new9(device: pointer, algorithm: cint, format: cint): ptr cQSslKey {.importc: "QSslKey_new9".}
proc fcQSslKey_new10(device: pointer, algorithm: cint, format: cint, typeVal: cint): ptr cQSslKey {.importc: "QSslKey_new10".}
proc fcQSslKey_new11(device: pointer, algorithm: cint, format: cint, typeVal: cint, passPhrase: struct_miqt_string): ptr cQSslKey {.importc: "QSslKey_new11".}
proc fcQSslKey_new12(handle: pointer, typeVal: cint): ptr cQSslKey {.importc: "QSslKey_new12".}

proc operatorAssign*(self: gen_qsslkey_types.QSslKey, other: gen_qsslkey_types.QSslKey): void =
  fcQSslKey_operatorAssign(self.h, other.h)

proc swap*(self: gen_qsslkey_types.QSslKey, other: gen_qsslkey_types.QSslKey): void =
  fcQSslKey_swap(self.h, other.h)

proc isNull*(self: gen_qsslkey_types.QSslKey): bool =
  fcQSslKey_isNull(self.h)

proc clear*(self: gen_qsslkey_types.QSslKey): void =
  fcQSslKey_clear(self.h)

proc length*(self: gen_qsslkey_types.QSslKey): cint =
  fcQSslKey_length(self.h)

proc typeX*(self: gen_qsslkey_types.QSslKey): cint =
  cint(fcQSslKey_typeX(self.h))

proc algorithm*(self: gen_qsslkey_types.QSslKey): cint =
  cint(fcQSslKey_algorithm(self.h))

proc toPem*(self: gen_qsslkey_types.QSslKey): seq[byte] =
  var v_bytearray = fcQSslKey_toPem(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toDer*(self: gen_qsslkey_types.QSslKey): seq[byte] =
  var v_bytearray = fcQSslKey_toDer(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc handle*(self: gen_qsslkey_types.QSslKey): pointer =
  fcQSslKey_handle(self.h)

proc operatorEqual*(self: gen_qsslkey_types.QSslKey, key: gen_qsslkey_types.QSslKey): bool =
  fcQSslKey_operatorEqual(self.h, key.h)

proc operatorNotEqual*(self: gen_qsslkey_types.QSslKey, key: gen_qsslkey_types.QSslKey): bool =
  fcQSslKey_operatorNotEqual(self.h, key.h)

proc toPem*(self: gen_qsslkey_types.QSslKey, passPhrase: openArray[byte]): seq[byte] =
  var v_bytearray = fcQSslKey_toPem1(self.h, struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toDer*(self: gen_qsslkey_types.QSslKey, passPhrase: openArray[byte]): seq[byte] =
  var v_bytearray = fcQSslKey_toDer1(self.h, struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create*(T: type gen_qsslkey_types.QSslKey): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new(), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    encoded: openArray[byte], algorithm: cint): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new2(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm)), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    device: gen_qiodevice_types.QIODevice, algorithm: cint): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new3(device.h, cint(algorithm)), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    handle: pointer): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new4(handle), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    other: gen_qsslkey_types.QSslKey): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new5(other.h), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    encoded: openArray[byte], algorithm: cint, format: cint): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new6(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm), cint(format)), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    encoded: openArray[byte], algorithm: cint, format: cint, typeVal: cint): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new7(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm), cint(format), cint(typeVal)), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    encoded: openArray[byte], algorithm: cint, format: cint, typeVal: cint, passPhrase: openArray[byte]): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new8(struct_miqt_string(data: cast[cstring](if len(encoded) == 0: nil else: unsafeAddr encoded[0]), len: csize_t(len(encoded))), cint(algorithm), cint(format), cint(typeVal), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase)))), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    device: gen_qiodevice_types.QIODevice, algorithm: cint, format: cint): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new9(device.h, cint(algorithm), cint(format)), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    device: gen_qiodevice_types.QIODevice, algorithm: cint, format: cint, typeVal: cint): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new10(device.h, cint(algorithm), cint(format), cint(typeVal)), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    device: gen_qiodevice_types.QIODevice, algorithm: cint, format: cint, typeVal: cint, passPhrase: openArray[byte]): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new11(device.h, cint(algorithm), cint(format), cint(typeVal), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase)))), owned: true)

proc create*(T: type gen_qsslkey_types.QSslKey,
    handle: pointer, typeVal: cint): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslKey_new12(handle, cint(typeVal)), owned: true)

