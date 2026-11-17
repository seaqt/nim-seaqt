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

proc fcQSqlRecord_operatorAssign(self: pointer, other: pointer): void {.importc: "QSqlRecord_operatorAssign".}
proc fcQSqlRecord_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSqlRecord_operatorEqual".}
proc fcQSqlRecord_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSqlRecord_operatorNotEqual".}
proc fcQSqlRecord_value(self: pointer, i: cint): pointer {.importc: "QSqlRecord_value".}
proc fcQSqlRecord_valueWithName(self: pointer, name: struct_seaqt_string): pointer {.importc: "QSqlRecord_valueWithName".}
proc fcQSqlRecord_setValue(self: pointer, i: cint, val: pointer): void {.importc: "QSqlRecord_setValue".}
proc fcQSqlRecord_setValue2(self: pointer, name: struct_seaqt_string, val: pointer): void {.importc: "QSqlRecord_setValue2".}
proc fcQSqlRecord_setNull(self: pointer, i: cint): void {.importc: "QSqlRecord_setNull".}
proc fcQSqlRecord_setNullWithName(self: pointer, name: struct_seaqt_string): void {.importc: "QSqlRecord_setNullWithName".}
proc fcQSqlRecord_isNull(self: pointer, i: cint): bool {.importc: "QSqlRecord_isNull".}
proc fcQSqlRecord_isNullWithName(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlRecord_isNullWithName".}
proc fcQSqlRecord_indexOf(self: pointer, name: struct_seaqt_string): cint {.importc: "QSqlRecord_indexOf".}
proc fcQSqlRecord_fieldName(self: pointer, i: cint): struct_seaqt_string {.importc: "QSqlRecord_fieldName".}
proc fcQSqlRecord_field(self: pointer, i: cint): pointer {.importc: "QSqlRecord_field".}
proc fcQSqlRecord_fieldWithName(self: pointer, name: struct_seaqt_string): pointer {.importc: "QSqlRecord_fieldWithName".}
proc fcQSqlRecord_isGenerated(self: pointer, i: cint): bool {.importc: "QSqlRecord_isGenerated".}
proc fcQSqlRecord_isGeneratedWithName(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlRecord_isGeneratedWithName".}
proc fcQSqlRecord_setGenerated(self: pointer, name: struct_seaqt_string, generated: bool): void {.importc: "QSqlRecord_setGenerated".}
proc fcQSqlRecord_setGenerated2(self: pointer, i: cint, generated: bool): void {.importc: "QSqlRecord_setGenerated2".}
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
proc fcQSqlRecord_new2(other: pointer): ptr cQSqlRecord {.importc: "QSqlRecord_new2".}
proc fcQSqlRecord_delete(self: pointer) {.importc: "QSqlRecord_delete".}

proc operatorAssign*(self: gen_qsqlrecord_types.QSqlRecord, other: gen_qsqlrecord_types.QSqlRecord): void =
  fcQSqlRecord_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qsqlrecord_types.QSqlRecord, other: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlRecord_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsqlrecord_types.QSqlRecord, other: gen_qsqlrecord_types.QSqlRecord): bool =
  fcQSqlRecord_operatorNotEqual(self.h, other.h)

proc value*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlRecord_value(self.h, i))

proc value*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlRecord_valueWithName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc setValue*(self: gen_qsqlrecord_types.QSqlRecord, i: cint, val: gen_qvariant_types.QVariant): void =
  fcQSqlRecord_setValue(self.h, i, val.h)

proc setValue*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char], val: gen_qvariant_types.QVariant): void =
  fcQSqlRecord_setValue2(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), val.h)

proc setNull*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): void =
  fcQSqlRecord_setNull(self.h, i)

proc setNull*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): void =
  fcQSqlRecord_setNullWithName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc isNull*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): bool =
  fcQSqlRecord_isNull(self.h, i)

proc isNull*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): bool =
  fcQSqlRecord_isNullWithName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc indexOf*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): cint =
  fcQSqlRecord_indexOf(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc fieldName*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): string =
  let v_ms = fcQSqlRecord_fieldName(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc field*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): gen_qsqlfield_types.QSqlField =
  gen_qsqlfield_types.QSqlField(h: fcQSqlRecord_field(self.h, i))

proc field*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): gen_qsqlfield_types.QSqlField =
  gen_qsqlfield_types.QSqlField(h: fcQSqlRecord_fieldWithName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))

proc isGenerated*(self: gen_qsqlrecord_types.QSqlRecord, i: cint): bool =
  fcQSqlRecord_isGenerated(self.h, i)

proc isGenerated*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char]): bool =
  fcQSqlRecord_isGeneratedWithName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc setGenerated*(self: gen_qsqlrecord_types.QSqlRecord, name: openArray[char], generated: bool): void =
  fcQSqlRecord_setGenerated(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), generated)

proc setGenerated*(self: gen_qsqlrecord_types.QSqlRecord, i: cint, generated: bool): void =
  fcQSqlRecord_setGenerated2(self.h, i, generated)

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
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlRecord_keyValues(self.h, keyFields.h))

proc create*(T: type gen_qsqlrecord_types.QSqlRecord): gen_qsqlrecord_types.QSqlRecord =
  let tmp = gen_qsqlrecord_types.QSqlRecord(h: fcQSqlRecord_new())
  tmp
proc create*(T: type gen_qsqlrecord_types.QSqlRecord,
    other: gen_qsqlrecord_types.QSqlRecord): gen_qsqlrecord_types.QSqlRecord =
  let tmp = gen_qsqlrecord_types.QSqlRecord(h: fcQSqlRecord_new2(other.h))
  tmp
proc delete*(self: gen_qsqlrecord_types.QSqlRecord) =
  fcQSqlRecord_delete(self.h)
