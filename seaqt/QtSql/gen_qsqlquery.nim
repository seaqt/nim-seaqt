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


type QSqlQueryBatchExecutionModeEnum* = distinct cint
template ValuesAsRows*(_: type QSqlQueryBatchExecutionModeEnum): untyped = 0
template ValuesAsColumns*(_: type QSqlQueryBatchExecutionModeEnum): untyped = 1


import ./gen_qsqlquery_types
export gen_qsqlquery_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qsqldatabase_types,
  ./gen_qsqldriver_types,
  ./gen_qsqlerror_types,
  ./gen_qsqlrecord_types,
  ./gen_qsqlresult_types
export
  gen_qvariant_types,
  gen_qsqldatabase_types,
  gen_qsqldriver_types,
  gen_qsqlerror_types,
  gen_qsqlrecord_types,
  gen_qsqlresult_types

type cQSqlQuery*{.exportc: "QSqlQuery", incompleteStruct.} = object

proc fcQSqlQuery_operatorAssign(self: pointer, other: pointer): void {.importc: "QSqlQuery_operatorAssign".}
proc fcQSqlQuery_swap(self: pointer, other: pointer): void {.importc: "QSqlQuery_swap".}
proc fcQSqlQuery_isValid(self: pointer): bool {.importc: "QSqlQuery_isValid".}
proc fcQSqlQuery_isActive(self: pointer): bool {.importc: "QSqlQuery_isActive".}
proc fcQSqlQuery_isNullField(self: pointer, field: cint): bool {.importc: "QSqlQuery_isNull_field".}
proc fcQSqlQuery_isNullName(self: pointer, name: struct_seaqt_string): bool {.importc: "QSqlQuery_isNull_name".}
proc fcQSqlQuery_at(self: pointer): cint {.importc: "QSqlQuery_at".}
proc fcQSqlQuery_lastQuery(self: pointer): struct_seaqt_string {.importc: "QSqlQuery_lastQuery".}
proc fcQSqlQuery_numRowsAffected(self: pointer): cint {.importc: "QSqlQuery_numRowsAffected".}
proc fcQSqlQuery_lastError(self: pointer): pointer {.importc: "QSqlQuery_lastError".}
proc fcQSqlQuery_isSelect(self: pointer): bool {.importc: "QSqlQuery_isSelect".}
proc fcQSqlQuery_size(self: pointer): cint {.importc: "QSqlQuery_size".}
proc fcQSqlQuery_driver(self: pointer): pointer {.importc: "QSqlQuery_driver".}
proc fcQSqlQuery_resultX(self: pointer): pointer {.importc: "QSqlQuery_result".}
proc fcQSqlQuery_isForwardOnly(self: pointer): bool {.importc: "QSqlQuery_isForwardOnly".}
proc fcQSqlQuery_record(self: pointer): pointer {.importc: "QSqlQuery_record".}
proc fcQSqlQuery_setForwardOnly(self: pointer, forward: bool): void {.importc: "QSqlQuery_setForwardOnly".}
proc fcQSqlQuery_execQuery(self: pointer, query: struct_seaqt_string): bool {.importc: "QSqlQuery_exec_query".}
proc fcQSqlQuery_valueI(self: pointer, i: cint): pointer {.importc: "QSqlQuery_value_i".}
proc fcQSqlQuery_valueName(self: pointer, name: struct_seaqt_string): pointer {.importc: "QSqlQuery_value_name".}
proc fcQSqlQuery_setNumericalPrecisionPolicy(self: pointer, precisionPolicy: cint): void {.importc: "QSqlQuery_setNumericalPrecisionPolicy".}
proc fcQSqlQuery_numericalPrecisionPolicy(self: pointer): cint {.importc: "QSqlQuery_numericalPrecisionPolicy".}
proc fcQSqlQuery_seekI(self: pointer, i: cint): bool {.importc: "QSqlQuery_seek_i".}
proc fcQSqlQuery_next(self: pointer): bool {.importc: "QSqlQuery_next".}
proc fcQSqlQuery_previous(self: pointer): bool {.importc: "QSqlQuery_previous".}
proc fcQSqlQuery_first(self: pointer): bool {.importc: "QSqlQuery_first".}
proc fcQSqlQuery_last(self: pointer): bool {.importc: "QSqlQuery_last".}
proc fcQSqlQuery_clear(self: pointer): void {.importc: "QSqlQuery_clear".}
proc fcQSqlQuery_exec(self: pointer): bool {.importc: "QSqlQuery_exec".}
proc fcQSqlQuery_execBatch(self: pointer): bool {.importc: "QSqlQuery_execBatch".}
proc fcQSqlQuery_prepare(self: pointer, query: struct_seaqt_string): bool {.importc: "QSqlQuery_prepare".}
proc fcQSqlQuery_bindValuePlaceholderVal(self: pointer, placeholder: struct_seaqt_string, val: pointer): void {.importc: "QSqlQuery_bindValue_placeholder_val".}
proc fcQSqlQuery_bindValuePosVal(self: pointer, pos: cint, val: pointer): void {.importc: "QSqlQuery_bindValue_pos_val".}
proc fcQSqlQuery_addBindValueVal(self: pointer, val: pointer): void {.importc: "QSqlQuery_addBindValue_val".}
proc fcQSqlQuery_boundValuePlaceholder(self: pointer, placeholder: struct_seaqt_string): pointer {.importc: "QSqlQuery_boundValue_placeholder".}
proc fcQSqlQuery_boundValuePos(self: pointer, pos: cint): pointer {.importc: "QSqlQuery_boundValue_pos".}
proc fcQSqlQuery_boundValues(self: pointer): struct_seaqt_array {.importc: "QSqlQuery_boundValues".}
proc fcQSqlQuery_executedQuery(self: pointer): struct_seaqt_string {.importc: "QSqlQuery_executedQuery".}
proc fcQSqlQuery_lastInsertId(self: pointer): pointer {.importc: "QSqlQuery_lastInsertId".}
proc fcQSqlQuery_finish(self: pointer): void {.importc: "QSqlQuery_finish".}
proc fcQSqlQuery_nextResult(self: pointer): bool {.importc: "QSqlQuery_nextResult".}
proc fcQSqlQuery_seekIRelative(self: pointer, i: cint, relative: bool): bool {.importc: "QSqlQuery_seek_i_relative".}
proc fcQSqlQuery_execBatchMode(self: pointer, mode: cint): bool {.importc: "QSqlQuery_execBatch_mode".}
proc fcQSqlQuery_bindValuePlaceholderValType(self: pointer, placeholder: struct_seaqt_string, val: pointer, typeVal: cint): void {.importc: "QSqlQuery_bindValue_placeholder_val_type".}
proc fcQSqlQuery_bindValuePosValType(self: pointer, pos: cint, val: pointer, typeVal: cint): void {.importc: "QSqlQuery_bindValue_pos_val_type".}
proc fcQSqlQuery_addBindValueValType(self: pointer, val: pointer, typeVal: cint): void {.importc: "QSqlQuery_addBindValue_val_type".}
proc fcQSqlQuery_new(r: pointer): ptr cQSqlQuery {.importc: "QSqlQuery_new_r".}
proc fcQSqlQuery_new2(): ptr cQSqlQuery {.importc: "QSqlQuery_new".}
proc fcQSqlQuery_new3(db: pointer): ptr cQSqlQuery {.importc: "QSqlQuery_new_db".}
proc fcQSqlQuery_new4(other: pointer): ptr cQSqlQuery {.importc: "QSqlQuery_new_other".}
proc fcQSqlQuery_new5(query: struct_seaqt_string): ptr cQSqlQuery {.importc: "QSqlQuery_new_query".}
proc fcQSqlQuery_new6(query: struct_seaqt_string, db: pointer): ptr cQSqlQuery {.importc: "QSqlQuery_new_query_db".}

proc operatorAssign*(self: gen_qsqlquery_types.QSqlQuery, other: gen_qsqlquery_types.QSqlQuery): void =
  fcQSqlQuery_operatorAssign(self.h, other.h)

proc swap*(self: gen_qsqlquery_types.QSqlQuery, other: gen_qsqlquery_types.QSqlQuery): void =
  fcQSqlQuery_swap(self.h, other.h)

proc isValid*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_isValid(self.h)

proc isActive*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_isActive(self.h)

proc isNull*(self: gen_qsqlquery_types.QSqlQuery, field: cint): bool =
  fcQSqlQuery_isNullField(self.h, field)

proc isNull*(self: gen_qsqlquery_types.QSqlQuery, name: openArray[char]): bool =
  fcQSqlQuery_isNullName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc at*(self: gen_qsqlquery_types.QSqlQuery): cint =
  fcQSqlQuery_at(self.h)

proc lastQuery*(self: gen_qsqlquery_types.QSqlQuery): string =
  let v_ms = fcQSqlQuery_lastQuery(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc numRowsAffected*(self: gen_qsqlquery_types.QSqlQuery): cint =
  fcQSqlQuery_numRowsAffected(self.h)

proc lastError*(self: gen_qsqlquery_types.QSqlQuery): gen_qsqlerror_types.QSqlError =
  gen_qsqlerror_types.QSqlError(h: fcQSqlQuery_lastError(self.h), owned: true)

proc isSelect*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_isSelect(self.h)

proc size*(self: gen_qsqlquery_types.QSqlQuery): cint =
  fcQSqlQuery_size(self.h)

proc driver*(self: gen_qsqlquery_types.QSqlQuery): gen_qsqldriver_types.QSqlDriver =
  gen_qsqldriver_types.QSqlDriver(h: fcQSqlQuery_driver(self.h), owned: false)

proc resultX*(self: gen_qsqlquery_types.QSqlQuery): gen_qsqlresult_types.QSqlResult =
  gen_qsqlresult_types.QSqlResult(h: fcQSqlQuery_resultX(self.h), owned: false)

proc isForwardOnly*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_isForwardOnly(self.h)

proc record*(self: gen_qsqlquery_types.QSqlQuery): gen_qsqlrecord_types.QSqlRecord =
  gen_qsqlrecord_types.QSqlRecord(h: fcQSqlQuery_record(self.h), owned: true)

proc setForwardOnly*(self: gen_qsqlquery_types.QSqlQuery, forward: bool): void =
  fcQSqlQuery_setForwardOnly(self.h, forward)

proc exec*(self: gen_qsqlquery_types.QSqlQuery, query: openArray[char]): bool =
  fcQSqlQuery_execQuery(self.h, struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query))))

proc value*(self: gen_qsqlquery_types.QSqlQuery, i: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQuery_valueI(self.h, i), owned: true)

proc value*(self: gen_qsqlquery_types.QSqlQuery, name: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQuery_valueName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc setNumericalPrecisionPolicy*(self: gen_qsqlquery_types.QSqlQuery, precisionPolicy: cint): void =
  fcQSqlQuery_setNumericalPrecisionPolicy(self.h, cint(precisionPolicy))

proc numericalPrecisionPolicy*(self: gen_qsqlquery_types.QSqlQuery): cint =
  cint(fcQSqlQuery_numericalPrecisionPolicy(self.h))

proc seek*(self: gen_qsqlquery_types.QSqlQuery, i: cint): bool =
  fcQSqlQuery_seekI(self.h, i)

proc next*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_next(self.h)

proc previous*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_previous(self.h)

proc first*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_first(self.h)

proc last*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_last(self.h)

proc clear*(self: gen_qsqlquery_types.QSqlQuery): void =
  fcQSqlQuery_clear(self.h)

proc exec*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_exec(self.h)

proc execBatch*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_execBatch(self.h)

proc prepare*(self: gen_qsqlquery_types.QSqlQuery, query: openArray[char]): bool =
  fcQSqlQuery_prepare(self.h, struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query))))

proc bindValue*(self: gen_qsqlquery_types.QSqlQuery, placeholder: openArray[char], val: gen_qvariant_types.QVariant): void =
  fcQSqlQuery_bindValuePlaceholderVal(self.h, struct_seaqt_string(data: if len(placeholder) > 0: addr placeholder[0] else: nil, len: csize_t(len(placeholder))), val.h)

proc bindValue*(self: gen_qsqlquery_types.QSqlQuery, pos: cint, val: gen_qvariant_types.QVariant): void =
  fcQSqlQuery_bindValuePosVal(self.h, pos, val.h)

proc addBindValue*(self: gen_qsqlquery_types.QSqlQuery, val: gen_qvariant_types.QVariant): void =
  fcQSqlQuery_addBindValueVal(self.h, val.h)

proc boundValue*(self: gen_qsqlquery_types.QSqlQuery, placeholder: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQuery_boundValuePlaceholder(self.h, struct_seaqt_string(data: if len(placeholder) > 0: addr placeholder[0] else: nil, len: csize_t(len(placeholder)))), owned: true)

proc boundValue*(self: gen_qsqlquery_types.QSqlQuery, pos: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQuery_boundValuePos(self.h, pos), owned: true)

proc boundValues*(self: gen_qsqlquery_types.QSqlQuery): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQSqlQuery_boundValues(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc executedQuery*(self: gen_qsqlquery_types.QSqlQuery): string =
  let v_ms = fcQSqlQuery_executedQuery(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lastInsertId*(self: gen_qsqlquery_types.QSqlQuery): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlQuery_lastInsertId(self.h), owned: true)

proc finish*(self: gen_qsqlquery_types.QSqlQuery): void =
  fcQSqlQuery_finish(self.h)

proc nextResult*(self: gen_qsqlquery_types.QSqlQuery): bool =
  fcQSqlQuery_nextResult(self.h)

proc seek*(self: gen_qsqlquery_types.QSqlQuery, i: cint, relative: bool): bool =
  fcQSqlQuery_seekIRelative(self.h, i, relative)

proc execBatch*(self: gen_qsqlquery_types.QSqlQuery, mode: cint): bool =
  fcQSqlQuery_execBatchMode(self.h, cint(mode))

proc bindValue*(self: gen_qsqlquery_types.QSqlQuery, placeholder: openArray[char], val: gen_qvariant_types.QVariant, typeVal: cint): void =
  fcQSqlQuery_bindValuePlaceholderValType(self.h, struct_seaqt_string(data: if len(placeholder) > 0: addr placeholder[0] else: nil, len: csize_t(len(placeholder))), val.h, cint(typeVal))

proc bindValue*(self: gen_qsqlquery_types.QSqlQuery, pos: cint, val: gen_qvariant_types.QVariant, typeVal: cint): void =
  fcQSqlQuery_bindValuePosValType(self.h, pos, val.h, cint(typeVal))

proc addBindValue*(self: gen_qsqlquery_types.QSqlQuery, val: gen_qvariant_types.QVariant, typeVal: cint): void =
  fcQSqlQuery_addBindValueValType(self.h, val.h, cint(typeVal))

proc create*(T: type gen_qsqlquery_types.QSqlQuery,
    r: gen_qsqlresult_types.QSqlResult): gen_qsqlquery_types.QSqlQuery =
  let tmp = gen_qsqlquery_types.QSqlQuery(h: fcQSqlQuery_new(r.h), owned: true)
  tmp
proc create*(T: type gen_qsqlquery_types.QSqlQuery): gen_qsqlquery_types.QSqlQuery =
  let tmp = gen_qsqlquery_types.QSqlQuery(h: fcQSqlQuery_new2(), owned: true)
  tmp
proc create*(T: type gen_qsqlquery_types.QSqlQuery,
    db: gen_qsqldatabase_types.QSqlDatabase): gen_qsqlquery_types.QSqlQuery =
  let tmp = gen_qsqlquery_types.QSqlQuery(h: fcQSqlQuery_new3(db.h), owned: true)
  tmp
proc create*(T: type gen_qsqlquery_types.QSqlQuery,
    other: gen_qsqlquery_types.QSqlQuery): gen_qsqlquery_types.QSqlQuery =
  let tmp = gen_qsqlquery_types.QSqlQuery(h: fcQSqlQuery_new4(other.h), owned: true)
  tmp
proc create*(T: type gen_qsqlquery_types.QSqlQuery,
    query: openArray[char]): gen_qsqlquery_types.QSqlQuery =
  let tmp = gen_qsqlquery_types.QSqlQuery(h: fcQSqlQuery_new5(struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query)))), owned: true)
  tmp
proc create*(T: type gen_qsqlquery_types.QSqlQuery,
    query: openArray[char], db: gen_qsqldatabase_types.QSqlDatabase): gen_qsqlquery_types.QSqlQuery =
  let tmp = gen_qsqlquery_types.QSqlQuery(h: fcQSqlQuery_new6(struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query))), db.h), owned: true)
  tmp
