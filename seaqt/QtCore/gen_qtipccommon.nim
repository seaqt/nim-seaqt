import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


type QNativeIpcKeyTypeEnum* = distinct cushort
template SystemV*(_: type QNativeIpcKeyTypeEnum): untyped = 81
template PosixRealtime*(_: type QNativeIpcKeyTypeEnum): untyped = 256
template Windows*(_: type QNativeIpcKeyTypeEnum): untyped = 257


import ./gen_qtipccommon_types
export gen_qtipccommon_types

import
  ./gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQNativeIpcKey*{.exportc: "QNativeIpcKey", incompleteStruct.} = object

proc fcQNativeIpcKey_legacyDefaultTypeForOs(): cint {.importc: "QNativeIpcKey_legacyDefaultTypeForOs".}
proc fcQNativeIpcKey_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QNativeIpcKey_operatorAssign".}
proc fcQNativeIpcKey_swap(self: pointer, other: pointer): void {.importc: "QNativeIpcKey_swap".}
proc fcQNativeIpcKey_isEmpty(self: pointer): bool {.importc: "QNativeIpcKey_isEmpty".}
proc fcQNativeIpcKey_isValid(self: pointer): bool {.importc: "QNativeIpcKey_isValid".}
proc fcQNativeIpcKey_typeX(self: pointer): cint {.importc: "QNativeIpcKey_type".}
proc fcQNativeIpcKey_setType(self: pointer, typeVal: cint): void {.importc: "QNativeIpcKey_setType".}
proc fcQNativeIpcKey_nativeKey(self: pointer): struct_seaqt_string {.importc: "QNativeIpcKey_nativeKey".}
proc fcQNativeIpcKey_setNativeKey(self: pointer, newKey: struct_seaqt_string): void {.importc: "QNativeIpcKey_setNativeKey".}
proc fcQNativeIpcKey_toString(self: pointer): struct_seaqt_string {.importc: "QNativeIpcKey_toString".}
proc fcQNativeIpcKey_fromString(stringVal: struct_seaqt_string): pointer {.importc: "QNativeIpcKey_fromString".}
proc fcQNativeIpcKey_new(): ptr cQNativeIpcKey {.importc: "QNativeIpcKey_new".}
proc fcQNativeIpcKey_new2(typeVal: cint): ptr cQNativeIpcKey {.importc: "QNativeIpcKey_new_type".}
proc fcQNativeIpcKey_new3(k: struct_seaqt_string): ptr cQNativeIpcKey {.importc: "QNativeIpcKey_new_k".}
proc fcQNativeIpcKey_new4(fromVal: pointer): ptr cQNativeIpcKey {.importc: "QNativeIpcKey_new_from".}
proc fcQNativeIpcKey_new5(k: struct_seaqt_string, typeVal: cint): ptr cQNativeIpcKey {.importc: "QNativeIpcKey_new_k_type".}
proc fcQNativeIpcKey_staticMetaObject(): pointer {.importc: "QNativeIpcKey_staticMetaObject".}

proc legacyDefaultTypeForOs*(_: type gen_qtipccommon_types.QNativeIpcKey): cint =
  cint(fcQNativeIpcKey_legacyDefaultTypeForOs())

proc operatorAssign*(self: gen_qtipccommon_types.QNativeIpcKey, fromVal: gen_qtipccommon_types.QNativeIpcKey): void =
  fcQNativeIpcKey_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qtipccommon_types.QNativeIpcKey, other: gen_qtipccommon_types.QNativeIpcKey): void =
  fcQNativeIpcKey_swap(self.h, other.h)

proc isEmpty*(self: gen_qtipccommon_types.QNativeIpcKey): bool =
  fcQNativeIpcKey_isEmpty(self.h)

proc isValid*(self: gen_qtipccommon_types.QNativeIpcKey): bool =
  fcQNativeIpcKey_isValid(self.h)

proc typeX*(self: gen_qtipccommon_types.QNativeIpcKey): cint =
  cint(fcQNativeIpcKey_typeX(self.h))

proc setType*(self: gen_qtipccommon_types.QNativeIpcKey, typeVal: cint): void =
  fcQNativeIpcKey_setType(self.h, cint(typeVal))

proc nativeKey*(self: gen_qtipccommon_types.QNativeIpcKey): string =
  let v_ms = fcQNativeIpcKey_nativeKey(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setNativeKey*(self: gen_qtipccommon_types.QNativeIpcKey, newKey: openArray[char]): void =
  fcQNativeIpcKey_setNativeKey(self.h, struct_seaqt_string(data: if len(newKey) > 0: addr newKey[0] else: nil, len: csize_t(len(newKey))))

proc toString*(self: gen_qtipccommon_types.QNativeIpcKey): string =
  let v_ms = fcQNativeIpcKey_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qtipccommon_types.QNativeIpcKey, stringVal: openArray[char]): gen_qtipccommon_types.QNativeIpcKey =
  gen_qtipccommon_types.QNativeIpcKey(h: fcQNativeIpcKey_fromString(struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc create*(T: type gen_qtipccommon_types.QNativeIpcKey): gen_qtipccommon_types.QNativeIpcKey =
  let tmp = gen_qtipccommon_types.QNativeIpcKey(h: fcQNativeIpcKey_new(), owned: true)
  tmp
proc create*(T: type gen_qtipccommon_types.QNativeIpcKey,
    typeVal: cint): gen_qtipccommon_types.QNativeIpcKey =
  let tmp = gen_qtipccommon_types.QNativeIpcKey(h: fcQNativeIpcKey_new2(cint(typeVal)), owned: true)
  tmp
proc create*(T: type gen_qtipccommon_types.QNativeIpcKey,
    k: openArray[char]): gen_qtipccommon_types.QNativeIpcKey =
  let tmp = gen_qtipccommon_types.QNativeIpcKey(h: fcQNativeIpcKey_new3(struct_seaqt_string(data: if len(k) > 0: addr k[0] else: nil, len: csize_t(len(k)))), owned: true)
  tmp
proc create*(T: type gen_qtipccommon_types.QNativeIpcKey,
    fromVal: gen_qtipccommon_types.QNativeIpcKey): gen_qtipccommon_types.QNativeIpcKey =
  let tmp = gen_qtipccommon_types.QNativeIpcKey(h: fcQNativeIpcKey_new4(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qtipccommon_types.QNativeIpcKey,
    k: openArray[char], typeVal: cint): gen_qtipccommon_types.QNativeIpcKey =
  let tmp = gen_qtipccommon_types.QNativeIpcKey(h: fcQNativeIpcKey_new5(struct_seaqt_string(data: if len(k) > 0: addr k[0] else: nil, len: csize_t(len(k))), cint(typeVal)), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qtipccommon_types.QNativeIpcKey): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNativeIpcKey_staticMetaObject())
