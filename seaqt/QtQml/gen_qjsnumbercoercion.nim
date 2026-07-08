import ./qtqml_pkg

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


import ./gen_qjsnumbercoercion_types
export gen_qjsnumbercoercion_types


type cQJSNumberCoercion*{.exportc: "QJSNumberCoercion", incompleteStruct.} = object

proc fcQJSNumberCoercion_isInteger(d: float64): bool {.importc: "QJSNumberCoercion_isInteger".}
proc fcQJSNumberCoercion_isArrayIndexDouble(d: float64): bool {.importc: "QJSNumberCoercion_isArrayIndex_double".}
proc fcQJSNumberCoercion_isArrayIndexQint64(i: clonglong): bool {.importc: "QJSNumberCoercion_isArrayIndex_qint64".}
proc fcQJSNumberCoercion_isArrayIndexQuint64(i: culonglong): bool {.importc: "QJSNumberCoercion_isArrayIndex_quint64".}
proc fcQJSNumberCoercion_toInteger(d: float64): cint {.importc: "QJSNumberCoercion_toInteger".}
proc fcQJSNumberCoercion_equals(lhs: float64, rhs: float64): bool {.importc: "QJSNumberCoercion_equals".}
proc fcQJSNumberCoercion_roundTowards0(d: float64): float64 {.importc: "QJSNumberCoercion_roundTowards0".}
proc fcQJSNumberCoercion_new(fromVal: pointer): ptr cQJSNumberCoercion {.importc: "QJSNumberCoercion_new".}

proc isInteger*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, d: float64): bool =
  fcQJSNumberCoercion_isInteger(d)

proc isArrayIndex*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, d: float64): bool =
  fcQJSNumberCoercion_isArrayIndexDouble(d)

proc isArrayIndex*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, i: clonglong): bool =
  fcQJSNumberCoercion_isArrayIndexQint64(i)

proc isArrayIndex*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, i: culonglong): bool =
  fcQJSNumberCoercion_isArrayIndexQuint64(i)

proc toInteger*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, d: float64): cint =
  fcQJSNumberCoercion_toInteger(d)

proc equals*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, lhs: float64, rhs: float64): bool =
  fcQJSNumberCoercion_equals(lhs, rhs)

proc roundTowards0*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, d: float64): float64 =
  fcQJSNumberCoercion_roundTowards0(d)

proc create*(T: type gen_qjsnumbercoercion_types.QJSNumberCoercion,
    fromVal: gen_qjsnumbercoercion_types.QJSNumberCoercion): gen_qjsnumbercoercion_types.QJSNumberCoercion =
  let tmp = gen_qjsnumbercoercion_types.QJSNumberCoercion(h: fcQJSNumberCoercion_new(fromVal.h), owned: true)
  tmp
