import ./qtqml_pkg

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


import ./gen_qjsnumbercoercion_types
export gen_qjsnumbercoercion_types


type cQJSNumberCoercion*{.exportc: "QJSNumberCoercion", incompleteStruct.} = object

proc fcQJSNumberCoercion_isInteger(d: float64): bool {.importc: "QJSNumberCoercion_isInteger".}
proc fcQJSNumberCoercion_toInteger(d: float64): cint {.importc: "QJSNumberCoercion_toInteger".}
proc fcQJSNumberCoercion_equals(lhs: float64, rhs: float64): bool {.importc: "QJSNumberCoercion_equals".}
proc fcQJSNumberCoercion_new(param1: pointer): ptr cQJSNumberCoercion {.importc: "QJSNumberCoercion_new".}

proc isInteger*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, d: float64): bool =
  fcQJSNumberCoercion_isInteger(d)

proc toInteger*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, d: float64): cint =
  fcQJSNumberCoercion_toInteger(d)

proc equals*(_: type gen_qjsnumbercoercion_types.QJSNumberCoercion, lhs: float64, rhs: float64): bool =
  fcQJSNumberCoercion_equals(lhs, rhs)

proc create*(T: type gen_qjsnumbercoercion_types.QJSNumberCoercion,
    param1: gen_qjsnumbercoercion_types.QJSNumberCoercion): gen_qjsnumbercoercion_types.QJSNumberCoercion =
  gen_qjsnumbercoercion_types.QJSNumberCoercion(h: fcQJSNumberCoercion_new(param1.h), owned: true)

