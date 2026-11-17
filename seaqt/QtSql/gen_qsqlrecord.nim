import ./qtsql_pkg

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


import ./gen_qsqlrecord_types
export gen_qsqlrecord_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qsqlfield_types
export
  gen_qvariant_types,
  gen_qsqlfield_types

type cQSqlRecord*{.exportc: "QSqlRecord", incompleteStruct.} = object

proc fcQSqlRecord_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QSqlRecord_operatorAssign".}
proc fcQSqlRecord_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSqlRecord_operatorEqual".}
proc fcQSqlRecord_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSqlRecord_operatorNotEqual".}
proc fcQSqlRecord_valueI(self: pointer, i: cint): pointer {.importc: "QSqlRecord_value_i".}
proc fcQSqlRecord_valueName(self: pointer, name: struct_seaqt_string): pointer {.importc: "QSqlRecord_value_name".}
proc fcQSqlRecord_setValueIVal(self: pointer, i: cint, val: pointer): void {.importc: "QSqlRecord_setValue_i_val".}
proc fcQSqlRecord_setValueNameVal(self: pointer, name: struct_seaqt_string, val: pointer): void {.importc: "QSqlRecord_setValue_name_val".}
proc fcQSqlRecord_setNullI(self: pointer, i: cint): void {.importc: "QSqlRecord_setNull_i".}
proc fcQSqlRecord_setNullName(self: pointer, name: struct_seaqt_string): void {.importc: "QSqlRecord_setNull_name".}
proc fcQSqlRecord_isNullI(self: pointer, i: cint): bool {.importc: "QSqlRecord_isNull_i".}
proc fcQSqlRecord_isNullName(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlRecord_isNull_name".}
proc fcQSqlRecord_indexOf(self: pointer, name: struct_seaqt_string): cint {.importc: "QSqlRecord_indexOf".}
proc fcQSqlRecord_fieldName(self: pointer, i: cint): struct_seaqt_string {.importc: "QSqlRecord_fieldName".}
proc fcQSqlRecord_fieldI(self: pointer, i: cint): pointer {.importc: "QSqlRecord_field_i".}
proc fcQSqlRecord_fieldName(self: pointer, name: struct_seaqt_string): pointer {.importc: "QSqlRecord_field_name".}
proc fcQSqlRecord_isGeneratedI(self: pointer, i: cint): bool {.importc: "QSqlRecord_isGenerated_i".}
proc fcQSqlRecord_isGeneratedName(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlRecord_isGenerated_name".}
proc fcQSqlRecord_setGeneratedNameGenerated(self: pointer, name: struct_seaqt_string, generated: bool): void {.importc: "QSqlRecord_setGenerated_name_generated".}
proc fcQSqlRecord_setGeneratedIGenerated(self: pointer, i: cint, generated: bool): void {.importc: "QSqlRecord_setGenerated_i_generated".}
proc fcQSqlRecord_append(self: pointer, field: pointer): void {.importc: "QSqlRecord_append".}
proc fcQSqlRecord_replace(self: pointer, pos: cint, field: pointer): void {.importc: "QSqlRecord_replace".}
proc fcQSqlRecord_insert(self: pointer, pos: cint, field: pointer): void {.importc: "QSqlRecord_insert".}
proc fcQSqlRecord_remove(self: pointer, pos: cint): void {.importc: "QSqlRecord_remove".}
proc fcQSqlRecord_isEmpty(self: pointer): bool {.importc: "QSqlRecord_isEmpty".}
proc fcQSqlRecord_contains(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlRecord_contains".}
proc fcQSqlRecord_clear(self: pointer): void {.importc: "QSqlRecord_clear".}
proc fcQSqlRecord_clearValues(self: pointer): void {.importc: "QSqlRecord_clearValues".}
proc fcQSqlRecord_count(self: pointer): cint {.importc: "QSqlRecord_count".}
proc fcQSqlRecord_keyValues(self: pointer, keyFields: pointer): pointer {.importc: "QSqlRecord_keyValues".}
proc fcQSqlRecord_new(): ptr cQSqlRecord {.importc: "QSqlRecord_new".}
proc fcQSqlRecord_new2(fromVal: pointer): ptr cQSqlRecord {.importc: "QSqlRecord_new_from".}

proc operatorAssign*(self: gen_qsqlrecord_types.QSqlRecord, fromVal: gen_qsqlrecord_types.QSqlRecord): void =
  fcQSqlRecord_operatorAssign(self.h, fromVal.h)

proc operatorEqual*(self: gen_qsqlrecord_types.QSqlRecord, other: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlRecord_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsqlrecord_types.QSqlRecord, other: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlRecord_operatorNotEqual(self.h, other.h)

proc value*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlRecord_valueI(self.h, i), owned: true)

proc value*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlRecord_valueName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc setValue*(self: gen_qsqlrecord_types.QSqlRecord, i: cint, val: gen_qvariant_types.QVariant): void =
  fcQSqlRecord_setValueIVal(self.h, i, val.h)

proc setValue*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char], val: gen_qvariant_types.QVariant): void =
  fcQSqlRecord_setValueNameVal(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), val.h)

proc setNull*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): void =
  fcQSqlRecord_setNullI(self.h, i)

proc setNull*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): void =
  fcQSqlRecord_setNullName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc isNull*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): bool =
  fcQSqlRecord_isNullI(self.h, i)

proc isNull*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): bool =
  fcQSqlRecord_isNullName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc indexOf*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): cint =
  fcQSqlRecord_indexOf(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc fieldName*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): string =
  let v_ms = fcQSqlRecord_fieldName(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc field*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): gen_qsqlfield_types.QSqlField =
  gen_qsqlfield_types.QSqlField(h: fcQSqlRecord_fieldI(self.h, i), owned: true)

proc field*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): gen_qsqlfield_types.QSqlField =
  gen_qsqlfield_types.QSqlField(h: fcQSqlRecord_fieldName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc isGenerated*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): bool =
  fcQSqlRecord_isGeneratedI(self.h, i)

proc isGenerated*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): bool =
  fcQSqlRecord_isGeneratedName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setGenerated*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char], generated: bool): void =
  fcQSqlRecord_setGeneratedNameGenerated(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), generated)

proc setGenerated*(self: gen_qsqlrecord_types.QSqlRecord, i: cint, generated: bool): void =
  fcQSqlRecord_setGeneratedIGenerated(self.h, i, generated)

proc append*(self: gen_qsqlrecord_types.QSqlRecord, field: gen_qsqlfield_types.QSqlField): void =
  fcQSqlRecord_append(self.h, field.h)

proc replace*(self: gen_qsqlrecord_types.QSqlRecord, pos: cint, field: gen_qsqlfield_types.QSqlField): void =
  fcQSqlRecord_replace(self.h, pos, field.h)

proc insert*(self: gen_qsqlrecord_types.QSqlRecord, pos: cint, field: gen_qsqlfield_types.QSqlField): void =
  fcQSqlRecord_insert(self.h, pos, field.h)

proc remove*(self: gen_qsqlrecord_types.QSqlRecord, pos: cint): void =
  fcQSqlRecord_remove(self.h, pos)

proc isEmpty*(self: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlRecord_isEmpty(self.h)

proc contains*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): bool =
  fcQSqlRecord_contains(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc clear*(self: gen_qsqlrecord_types.QSqlRecord): void =
  fcQSqlRecord_clear(self.h)

proc clearValues*(self: gen_qsqlrecord_types.QSqlRecord): void =
  fcQSqlRecord_clearValues(self.h)

proc count*(self: gen_qsqlrecord_types.QSqlRecord): cint =
  fcQSqlRecord_count(self.h)

proc keyValues*(self: gen_qsqlrecord_types.QSqlRecord, keyFields: gen_qsqlrecord_types.QSqlRecord): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlRecord_keyValues(self.h, keyFields.h), owned: true)

proc create*(T: type gen_qsqlrecord_types.QSqlRecord): gen_qsqlrecord_types.QSqlRecord =
  let tmp = gen_qsqlrecord_types.QSqlRecord(h: fcQSqlRecord_new(), owned: true)
  tmp
proc create*(T: type gen_qsqlrecord_types.QSqlRecord,
    fromVal: gen_qsqlrecord_types.QSqlRecord): gen_qsqlrecord_types.QSqlRecord =
  let tmp = gen_qsqlrecord_types.QSqlRecord(h: fcQSqlRecord_new2(fromVal.h), owned: true)
  tmp
