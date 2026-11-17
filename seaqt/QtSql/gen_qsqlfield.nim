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


type QSqlFieldRequiredStatusEnum* = distinct cint
template Unknown*(_: type QSqlFieldRequiredStatusEnum): untyped = -1
template Optional*(_: type QSqlFieldRequiredStatusEnum): untyped = 0
template Required*(_: type QSqlFieldRequiredStatusEnum): untyped = 1


import ./gen_qsqlfield_types
export gen_qsqlfield_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQSqlField*{.exportc: "QSqlField", incompleteStruct.} = object

proc fcQSqlField_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QSqlField_operatorAssign".}
proc fcQSqlField_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSqlField_operatorEqual".}
proc fcQSqlField_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSqlField_operatorNotEqual".}
proc fcQSqlField_setValue(self: pointer, value: pointer): void {.importc: "QSqlField_setValue".}
proc fcQSqlField_value(self: pointer): pointer {.importc: "QSqlField_value".}
proc fcQSqlField_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QSqlField_setName".}
proc fcQSqlField_name(self: pointer): struct_seaqt_string {.importc: "QSqlField_name".}
proc fcQSqlField_setTableName(self: pointer, tableName: struct_seaqt_string): void {.importc: "QSqlField_setTableName".}
proc fcQSqlField_tableName(self: pointer): struct_seaqt_string {.importc: "QSqlField_tableName".}
proc fcQSqlField_isNull(self: pointer): bool {.importc: "QSqlField_isNull".}
proc fcQSqlField_setReadOnly(self: pointer, readOnly: bool): void {.importc: "QSqlField_setReadOnly".}
proc fcQSqlField_isReadOnly(self: pointer): bool {.importc: "QSqlField_isReadOnly".}
proc fcQSqlField_clear(self: pointer): void {.importc: "QSqlField_clear".}
proc fcQSqlField_typeX(self: pointer): cint {.importc: "QSqlField_type".}
proc fcQSqlField_isAutoValue(self: pointer): bool {.importc: "QSqlField_isAutoValue".}
proc fcQSqlField_setType(self: pointer, typeVal: cint): void {.importc: "QSqlField_setType".}
proc fcQSqlField_setRequiredStatus(self: pointer, status: cint): void {.importc: "QSqlField_setRequiredStatus".}
proc fcQSqlField_setRequired(self: pointer, required: bool): void {.importc: "QSqlField_setRequired".}
proc fcQSqlField_setLength(self: pointer, fieldLength: cint): void {.importc: "QSqlField_setLength".}
proc fcQSqlField_setPrecision(self: pointer, precision: cint): void {.importc: "QSqlField_setPrecision".}
proc fcQSqlField_setDefaultValue(self: pointer, value: pointer): void {.importc: "QSqlField_setDefaultValue".}
proc fcQSqlField_setSqlType(self: pointer, typeVal: cint): void {.importc: "QSqlField_setSqlType".}
proc fcQSqlField_setGenerated(self: pointer, gen: bool): void {.importc: "QSqlField_setGenerated".}
proc fcQSqlField_setAutoValue(self: pointer, autoVal: bool): void {.importc: "QSqlField_setAutoValue".}
proc fcQSqlField_requiredStatus(self: pointer): cint {.importc: "QSqlField_requiredStatus".}
proc fcQSqlField_length(self: pointer): cint {.importc: "QSqlField_length".}
proc fcQSqlField_precision(self: pointer): cint {.importc: "QSqlField_precision".}
proc fcQSqlField_defaultValue(self: pointer): pointer {.importc: "QSqlField_defaultValue".}
proc fcQSqlField_typeID(self: pointer): cint {.importc: "QSqlField_typeID".}
proc fcQSqlField_isGenerated(self: pointer): bool {.importc: "QSqlField_isGenerated".}
proc fcQSqlField_isValid(self: pointer): bool {.importc: "QSqlField_isValid".}
proc fcQSqlField_new(): ptr cQSqlField {.importc: "QSqlField_new".}
proc fcQSqlField_new2(fieldName: struct_seaqt_string, typeVal: cint, tableName: struct_seaqt_string): ptr cQSqlField {.importc: "QSqlField_new_fieldName_type_tableName".}
proc fcQSqlField_new3(fromVal: pointer): ptr cQSqlField {.importc: "QSqlField_new_from".}
proc fcQSqlField_new4(fieldName: struct_seaqt_string): ptr cQSqlField {.importc: "QSqlField_new_fieldName".}
proc fcQSqlField_new5(fieldName: struct_seaqt_string, typeVal: cint): ptr cQSqlField {.importc: "QSqlField_new_fieldName_type".}

proc operatorAssign*(self: gen_qsqlfield_types.QSqlField, fromVal: gen_qsqlfield_types.QSqlField): void =
  fcQSqlField_operatorAssign(self.h, fromVal.h)

proc operatorEqual*(self: gen_qsqlfield_types.QSqlField, other: gen_qsqlfield_types.QSqlField): bool =
  fcQSqlField_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsqlfield_types.QSqlField, other: gen_qsqlfield_types.QSqlField): bool =
  fcQSqlField_operatorNotEqual(self.h, other.h)

proc setValue*(self: gen_qsqlfield_types.QSqlField, value: gen_qvariant_types.QVariant): void =
  fcQSqlField_setValue(self.h, value.h)

proc value*(self: gen_qsqlfield_types.QSqlField): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlField_value(self.h), owned: true)

proc setName*(self: gen_qsqlfield_types.QSqlField, name: openArray[char]): void =
  fcQSqlField_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc name*(self: gen_qsqlfield_types.QSqlField): string =
  let v_ms = fcQSqlField_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTableName*(self: gen_qsqlfield_types.QSqlField, tableName: openArray[char]): void =
  fcQSqlField_setTableName(self.h, struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName))))

proc tableName*(self: gen_qsqlfield_types.QSqlField): string =
  let v_ms = fcQSqlField_tableName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qsqlfield_types.QSqlField): bool =
  fcQSqlField_isNull(self.h)

proc setReadOnly*(self: gen_qsqlfield_types.QSqlField, readOnly: bool): void =
  fcQSqlField_setReadOnly(self.h, readOnly)

proc isReadOnly*(self: gen_qsqlfield_types.QSqlField): bool =
  fcQSqlField_isReadOnly(self.h)

proc clear*(self: gen_qsqlfield_types.QSqlField): void =
  fcQSqlField_clear(self.h)

proc typeX*(self: gen_qsqlfield_types.QSqlField): cint =
  cint(fcQSqlField_typeX(self.h))

proc isAutoValue*(self: gen_qsqlfield_types.QSqlField): bool =
  fcQSqlField_isAutoValue(self.h)

proc setType*(self: gen_qsqlfield_types.QSqlField, typeVal: cint): void =
  fcQSqlField_setType(self.h, cint(typeVal))

proc setRequiredStatus*(self: gen_qsqlfield_types.QSqlField, status: cint): void =
  fcQSqlField_setRequiredStatus(self.h, cint(status))

proc setRequired*(self: gen_qsqlfield_types.QSqlField, required: bool): void =
  fcQSqlField_setRequired(self.h, required)

proc setLength*(self: gen_qsqlfield_types.QSqlField, fieldLength: cint): void =
  fcQSqlField_setLength(self.h, fieldLength)

proc setPrecision*(self: gen_qsqlfield_types.QSqlField, precision: cint): void =
  fcQSqlField_setPrecision(self.h, precision)

proc setDefaultValue*(self: gen_qsqlfield_types.QSqlField, value: gen_qvariant_types.QVariant): void =
  fcQSqlField_setDefaultValue(self.h, value.h)

proc setSqlType*(self: gen_qsqlfield_types.QSqlField, typeVal: cint): void =
  fcQSqlField_setSqlType(self.h, typeVal)

proc setGenerated*(self: gen_qsqlfield_types.QSqlField, gen: bool): void =
  fcQSqlField_setGenerated(self.h, gen)

proc setAutoValue*(self: gen_qsqlfield_types.QSqlField, autoVal: bool): void =
  fcQSqlField_setAutoValue(self.h, autoVal)

proc requiredStatus*(self: gen_qsqlfield_types.QSqlField): cint =
  cint(fcQSqlField_requiredStatus(self.h))

proc length*(self: gen_qsqlfield_types.QSqlField): cint =
  fcQSqlField_length(self.h)

proc precision*(self: gen_qsqlfield_types.QSqlField): cint =
  fcQSqlField_precision(self.h)

proc defaultValue*(self: gen_qsqlfield_types.QSqlField): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlField_defaultValue(self.h), owned: true)

proc typeID*(self: gen_qsqlfield_types.QSqlField): cint =
  fcQSqlField_typeID(self.h)

proc isGenerated*(self: gen_qsqlfield_types.QSqlField): bool =
  fcQSqlField_isGenerated(self.h)

proc isValid*(self: gen_qsqlfield_types.QSqlField): bool =
  fcQSqlField_isValid(self.h)

proc create*(T: type gen_qsqlfield_types.QSqlField): gen_qsqlfield_types.QSqlField =
  let tmp = gen_qsqlfield_types.QSqlField(h: fcQSqlField_new(), owned: true)
  tmp
proc create*(T: type gen_qsqlfield_types.QSqlField,
    fieldName: openArray[char], typeVal: cint, tableName: openArray[char]): gen_qsqlfield_types.QSqlField =
  let tmp = gen_qsqlfield_types.QSqlField(h: fcQSqlField_new2(struct_seaqt_string(data: if len(fieldName) > 0: addr fieldName[0] else: nil, len: csize_t(len(fieldName))), cint(typeVal), struct_seaqt_string(data: if len(tableName) > 0: addr tableName[0] else: nil, len: csize_t(len(tableName)))), owned: true)
  tmp
proc create*(T: type gen_qsqlfield_types.QSqlField,
    fromVal: gen_qsqlfield_types.QSqlField): gen_qsqlfield_types.QSqlField =
  let tmp = gen_qsqlfield_types.QSqlField(h: fcQSqlField_new3(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qsqlfield_types.QSqlField,
    fieldName: openArray[char]): gen_qsqlfield_types.QSqlField =
  let tmp = gen_qsqlfield_types.QSqlField(h: fcQSqlField_new4(struct_seaqt_string(data: if len(fieldName) > 0: addr fieldName[0] else: nil, len: csize_t(len(fieldName)))), owned: true)
  tmp
proc create*(T: type gen_qsqlfield_types.QSqlField,
    fieldName: openArray[char], typeVal: cint): gen_qsqlfield_types.QSqlField =
  let tmp = gen_qsqlfield_types.QSqlField(h: fcQSqlField_new5(struct_seaqt_string(data: if len(fieldName) > 0: addr fieldName[0] else: nil, len: csize_t(len(fieldName))), cint(typeVal)), owned: true)
  tmp
