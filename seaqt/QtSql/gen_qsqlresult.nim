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


type QSqlResultBindingSyntaxEnum* = distinct cint
template PositionalBinding*(_: type QSqlResultBindingSyntaxEnum): untyped = 0
template NamedBinding*(_: type QSqlResultBindingSyntaxEnum): untyped = 1


import ./gen_qsqlresult_types
export gen_qsqlresult_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qsqldriver_types,
  ./gen_qsqlerror_types
export
  gen_qvariant_types,
  gen_qsqldriver_types,
  gen_qsqlerror_types

type cQSqlResult*{.exportc: "QSqlResult", incompleteStruct.} = object

proc fcQSqlResult_handle(self: pointer): pointer {.importc: "QSqlResult_handle".}
proc fcQSqlResult_protectedbase_at(self: pointer): cint {.importc: "QSqlResult_protectedbase_at".}
proc fcQSqlResult_protectedbase_lastQuery(self: pointer): struct_seaqt_string {.importc: "QSqlResult_protectedbase_lastQuery".}
proc fcQSqlResult_protectedbase_lastError(self: pointer): pointer {.importc: "QSqlResult_protectedbase_lastError".}
proc fcQSqlResult_protectedbase_isValid(self: pointer): bool {.importc: "QSqlResult_protectedbase_isValid".}
proc fcQSqlResult_protectedbase_isActive(self: pointer): bool {.importc: "QSqlResult_protectedbase_isActive".}
proc fcQSqlResult_protectedbase_isSelect(self: pointer): bool {.importc: "QSqlResult_protectedbase_isSelect".}
proc fcQSqlResult_protectedbase_isForwardOnly(self: pointer): bool {.importc: "QSqlResult_protectedbase_isForwardOnly".}
proc fcQSqlResult_protectedbase_driver(self: pointer): pointer {.importc: "QSqlResult_protectedbase_driver".}
proc fcQSqlResult_protectedbase_addBindValue(self: pointer, val: pointer, typeVal: cint): void {.importc: "QSqlResult_protectedbase_addBindValue".}
proc fcQSqlResult_protectedbase_boundValue_placeholder(self: pointer, placeholder: struct_seaqt_string): pointer {.importc: "QSqlResult_protectedbase_boundValue_placeholder".}
proc fcQSqlResult_protectedbase_boundValue_pos(self: pointer, pos: cint): pointer {.importc: "QSqlResult_protectedbase_boundValue_pos".}
proc fcQSqlResult_protectedbase_bindValueType_placeholder(self: pointer, placeholder: struct_seaqt_string): cint {.importc: "QSqlResult_protectedbase_bindValueType_placeholder".}
proc fcQSqlResult_protectedbase_bindValueType_pos(self: pointer, pos: cint): cint {.importc: "QSqlResult_protectedbase_bindValueType_pos".}
proc fcQSqlResult_protectedbase_boundValueCount(self: pointer): cint {.importc: "QSqlResult_protectedbase_boundValueCount".}
proc fcQSqlResult_protectedbase_boundValues(self: pointer): struct_seaqt_array {.importc: "QSqlResult_protectedbase_boundValues".}
proc fcQSqlResult_protectedbase_boundValues_const(self: pointer): struct_seaqt_array {.importc: "QSqlResult_protectedbase_boundValues_const".}
proc fcQSqlResult_protectedbase_executedQuery(self: pointer): struct_seaqt_string {.importc: "QSqlResult_protectedbase_executedQuery".}
proc fcQSqlResult_protectedbase_boundValueNames(self: pointer): struct_seaqt_array {.importc: "QSqlResult_protectedbase_boundValueNames".}
proc fcQSqlResult_protectedbase_boundValueName(self: pointer, pos: cint): struct_seaqt_string {.importc: "QSqlResult_protectedbase_boundValueName".}
proc fcQSqlResult_protectedbase_clear(self: pointer): void {.importc: "QSqlResult_protectedbase_clear".}
proc fcQSqlResult_protectedbase_hasOutValues(self: pointer): bool {.importc: "QSqlResult_protectedbase_hasOutValues".}
proc fcQSqlResult_protectedbase_bindingSyntax(self: pointer): cint {.importc: "QSqlResult_protectedbase_bindingSyntax".}
proc fcQSqlResult_protectedbase_numericalPrecisionPolicy(self: pointer): cint {.importc: "QSqlResult_protectedbase_numericalPrecisionPolicy".}
proc fcQSqlResult_protectedbase_setPositionalBindingEnabled(self: pointer, enable: bool): void {.importc: "QSqlResult_protectedbase_setPositionalBindingEnabled".}
proc fcQSqlResult_protectedbase_isPositionalBindingEnabled(self: pointer): bool {.importc: "QSqlResult_protectedbase_isPositionalBindingEnabled".}
proc fcQSqlResult_protectedbase_resetBindCount(self: pointer): void {.importc: "QSqlResult_protectedbase_resetBindCount".}

proc handle*(self: gen_qsqlresult_types.QSqlResult): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlResult_handle(self.h), owned: true)

proc at*(self: gen_qsqlresult_types.QSqlResult): cint =
  fcQSqlResult_protectedbase_at(self.h)

proc lastQuery*(self: gen_qsqlresult_types.QSqlResult): string =
  let v_ms = fcQSqlResult_protectedbase_lastQuery(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lastError*(self: gen_qsqlresult_types.QSqlResult): gen_qsqlerror_types.QSqlError =
  gen_qsqlerror_types.QSqlError(h: fcQSqlResult_protectedbase_lastError(self.h), owned: true)

proc isValid*(self: gen_qsqlresult_types.QSqlResult): bool =
  fcQSqlResult_protectedbase_isValid(self.h)

proc isActive*(self: gen_qsqlresult_types.QSqlResult): bool =
  fcQSqlResult_protectedbase_isActive(self.h)

proc isSelect*(self: gen_qsqlresult_types.QSqlResult): bool =
  fcQSqlResult_protectedbase_isSelect(self.h)

proc isForwardOnly*(self: gen_qsqlresult_types.QSqlResult): bool =
  fcQSqlResult_protectedbase_isForwardOnly(self.h)

proc driver*(self: gen_qsqlresult_types.QSqlResult): gen_qsqldriver_types.QSqlDriver =
  gen_qsqldriver_types.QSqlDriver(h: fcQSqlResult_protectedbase_driver(self.h), owned: false)

proc addBindValue*(self: gen_qsqlresult_types.QSqlResult, val: gen_qvariant_types.QVariant, typeVal: cint): void =
  fcQSqlResult_protectedbase_addBindValue(self.h, val.h, cint(typeVal))

proc boundValue*(self: gen_qsqlresult_types.QSqlResult, placeholder: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlResult_protectedbase_boundValue_placeholder(self.h, struct_seaqt_string(data: if len(placeholder) > 0: addr placeholder[0] else: nil, len: csize_t(len(placeholder)))), owned: true)

proc boundValue*(self: gen_qsqlresult_types.QSqlResult, pos: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSqlResult_protectedbase_boundValue_pos(self.h, pos), owned: true)

proc bindValueType*(self: gen_qsqlresult_types.QSqlResult, placeholder: openArray[char]): cint =
  cint(fcQSqlResult_protectedbase_bindValueType_placeholder(self.h, struct_seaqt_string(data: if len(placeholder) > 0: addr placeholder[0] else: nil, len: csize_t(len(placeholder)))))

proc bindValueType*(self: gen_qsqlresult_types.QSqlResult, pos: cint): cint =
  cint(fcQSqlResult_protectedbase_bindValueType_pos(self.h, pos))

proc boundValueCount*(self: gen_qsqlresult_types.QSqlResult): cint =
  fcQSqlResult_protectedbase_boundValueCount(self.h)

proc boundValues*(self: gen_qsqlresult_types.QSqlResult): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQSqlResult_protectedbase_boundValues(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc boundValues*(self: gen_qsqlresult_types.QSqlResult): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQSqlResult_protectedbase_boundValues_const(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc executedQuery*(self: gen_qsqlresult_types.QSqlResult): string =
  let v_ms = fcQSqlResult_protectedbase_executedQuery(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc boundValueNames*(self: gen_qsqlresult_types.QSqlResult): seq[string] =
  var v_ma = fcQSqlResult_protectedbase_boundValueNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc boundValueName*(self: gen_qsqlresult_types.QSqlResult, pos: cint): string =
  let v_ms = fcQSqlResult_protectedbase_boundValueName(self.h, pos)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc clear*(self: gen_qsqlresult_types.QSqlResult): void =
  fcQSqlResult_protectedbase_clear(self.h)

proc hasOutValues*(self: gen_qsqlresult_types.QSqlResult): bool =
  fcQSqlResult_protectedbase_hasOutValues(self.h)

proc bindingSyntax*(self: gen_qsqlresult_types.QSqlResult): cint =
  cint(fcQSqlResult_protectedbase_bindingSyntax(self.h))

proc numericalPrecisionPolicy*(self: gen_qsqlresult_types.QSqlResult): cint =
  cint(fcQSqlResult_protectedbase_numericalPrecisionPolicy(self.h))

proc setPositionalBindingEnabled*(self: gen_qsqlresult_types.QSqlResult, enable: bool): void =
  fcQSqlResult_protectedbase_setPositionalBindingEnabled(self.h, enable)

proc isPositionalBindingEnabled*(self: gen_qsqlresult_types.QSqlResult): bool =
  fcQSqlResult_protectedbase_isPositionalBindingEnabled(self.h)

proc resetBindCount*(self: gen_qsqlresult_types.QSqlResult): void =
  fcQSqlResult_protectedbase_resetBindCount(self.h)

