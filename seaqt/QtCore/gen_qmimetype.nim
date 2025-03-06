import ./Qt5Core_libs

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


import ./gen_qmimetype_types
export gen_qmimetype_types

import
  ./gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQMimeType*{.exportc: "QMimeType", incompleteStruct.} = object

proc fcQMimeType_operatorAssign(self: pointer, other: pointer): void {.importc: "QMimeType_operatorAssign".}
proc fcQMimeType_swap(self: pointer, other: pointer): void {.importc: "QMimeType_swap".}
proc fcQMimeType_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMimeType_operatorEqual".}
proc fcQMimeType_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMimeType_operatorNotEqual".}
proc fcQMimeType_isValid(self: pointer, ): bool {.importc: "QMimeType_isValid".}
proc fcQMimeType_isDefault(self: pointer, ): bool {.importc: "QMimeType_isDefault".}
proc fcQMimeType_name(self: pointer, ): struct_miqt_string {.importc: "QMimeType_name".}
proc fcQMimeType_comment(self: pointer, ): struct_miqt_string {.importc: "QMimeType_comment".}
proc fcQMimeType_genericIconName(self: pointer, ): struct_miqt_string {.importc: "QMimeType_genericIconName".}
proc fcQMimeType_iconName(self: pointer, ): struct_miqt_string {.importc: "QMimeType_iconName".}
proc fcQMimeType_globPatterns(self: pointer, ): struct_miqt_array {.importc: "QMimeType_globPatterns".}
proc fcQMimeType_parentMimeTypes(self: pointer, ): struct_miqt_array {.importc: "QMimeType_parentMimeTypes".}
proc fcQMimeType_allAncestors(self: pointer, ): struct_miqt_array {.importc: "QMimeType_allAncestors".}
proc fcQMimeType_aliases(self: pointer, ): struct_miqt_array {.importc: "QMimeType_aliases".}
proc fcQMimeType_suffixes(self: pointer, ): struct_miqt_array {.importc: "QMimeType_suffixes".}
proc fcQMimeType_preferredSuffix(self: pointer, ): struct_miqt_string {.importc: "QMimeType_preferredSuffix".}
proc fcQMimeType_inherits(self: pointer, mimeTypeName: struct_miqt_string): bool {.importc: "QMimeType_inherits".}
proc fcQMimeType_filterString(self: pointer, ): struct_miqt_string {.importc: "QMimeType_filterString".}
proc fcQMimeType_new(): ptr cQMimeType {.importc: "QMimeType_new".}
proc fcQMimeType_new2(other: pointer): ptr cQMimeType {.importc: "QMimeType_new2".}
proc fcQMimeType_staticMetaObject(): pointer {.importc: "QMimeType_staticMetaObject".}

proc operatorAssign*(self: gen_qmimetype_types.QMimeType, other: gen_qmimetype_types.QMimeType): void =
  fcQMimeType_operatorAssign(self.h, other.h)

proc swap*(self: gen_qmimetype_types.QMimeType, other: gen_qmimetype_types.QMimeType): void =
  fcQMimeType_swap(self.h, other.h)

proc operatorEqual*(self: gen_qmimetype_types.QMimeType, other: gen_qmimetype_types.QMimeType): bool =
  fcQMimeType_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmimetype_types.QMimeType, other: gen_qmimetype_types.QMimeType): bool =
  fcQMimeType_operatorNotEqual(self.h, other.h)

proc isValid*(self: gen_qmimetype_types.QMimeType, ): bool =
  fcQMimeType_isValid(self.h)

proc isDefault*(self: gen_qmimetype_types.QMimeType, ): bool =
  fcQMimeType_isDefault(self.h)

proc name*(self: gen_qmimetype_types.QMimeType, ): string =
  let v_ms = fcQMimeType_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc comment*(self: gen_qmimetype_types.QMimeType, ): string =
  let v_ms = fcQMimeType_comment(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc genericIconName*(self: gen_qmimetype_types.QMimeType, ): string =
  let v_ms = fcQMimeType_genericIconName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc iconName*(self: gen_qmimetype_types.QMimeType, ): string =
  let v_ms = fcQMimeType_iconName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc globPatterns*(self: gen_qmimetype_types.QMimeType, ): seq[string] =
  var v_ma = fcQMimeType_globPatterns(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc parentMimeTypes*(self: gen_qmimetype_types.QMimeType, ): seq[string] =
  var v_ma = fcQMimeType_parentMimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc allAncestors*(self: gen_qmimetype_types.QMimeType, ): seq[string] =
  var v_ma = fcQMimeType_allAncestors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc aliases*(self: gen_qmimetype_types.QMimeType, ): seq[string] =
  var v_ma = fcQMimeType_aliases(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc suffixes*(self: gen_qmimetype_types.QMimeType, ): seq[string] =
  var v_ma = fcQMimeType_suffixes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc preferredSuffix*(self: gen_qmimetype_types.QMimeType, ): string =
  let v_ms = fcQMimeType_preferredSuffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc inherits*(self: gen_qmimetype_types.QMimeType, mimeTypeName: string): bool =
  fcQMimeType_inherits(self.h, struct_miqt_string(data: mimeTypeName, len: csize_t(len(mimeTypeName))))

proc filterString*(self: gen_qmimetype_types.QMimeType, ): string =
  let v_ms = fcQMimeType_filterString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qmimetype_types.QMimeType): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeType_new(), owned: true)

proc create*(T: type gen_qmimetype_types.QMimeType,
    other: gen_qmimetype_types.QMimeType): gen_qmimetype_types.QMimeType =
  gen_qmimetype_types.QMimeType(h: fcQMimeType_new2(other.h), owned: true)

proc staticMetaObject*(_: type gen_qmimetype_types.QMimeType): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMimeType_staticMetaObject())
