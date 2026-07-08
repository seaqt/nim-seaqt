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


{.compile("gen_qtsqlglobal.cpp", QtSqlCFlags).}


type QSqlLocationEnum* = distinct cint
template BeforeFirstRow*(_: type QSqlLocationEnum): untyped = -1
template AfterLastRow*(_: type QSqlLocationEnum): untyped = -2


type QSqlParamTypeFlagEnum* = distinct cint
template In*(_: type QSqlParamTypeFlagEnum): untyped = 1
template Out*(_: type QSqlParamTypeFlagEnum): untyped = 2
template InOut*(_: type QSqlParamTypeFlagEnum): untyped = 3
template Binary*(_: type QSqlParamTypeFlagEnum): untyped = 4


type QSqlTableTypeEnum* = distinct cint
template Tables*(_: type QSqlTableTypeEnum): untyped = 1
template SystemTables*(_: type QSqlTableTypeEnum): untyped = 2
template Views*(_: type QSqlTableTypeEnum): untyped = 4
template AllTables*(_: type QSqlTableTypeEnum): untyped = 255


type QSqlNumericalPrecisionPolicyEnum* = distinct cint
template LowPrecisionInt32*(_: type QSqlNumericalPrecisionPolicyEnum): untyped = 1
template LowPrecisionInt64*(_: type QSqlNumericalPrecisionPolicyEnum): untyped = 2
template LowPrecisionDouble*(_: type QSqlNumericalPrecisionPolicyEnum): untyped = 4
template HighPrecision*(_: type QSqlNumericalPrecisionPolicyEnum): untyped = 0


import ./gen_qtsqlglobal_types
export gen_qtsqlglobal_types




