import ./Qt6Core_libs

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


type QtPrivateOrderingEnum* = distinct cschar
template Equal*(_: type QtPrivateOrderingEnum): untyped = 0
template Equivalent*(_: type QtPrivateOrderingEnum): untyped = 0
template Less*(_: type QtPrivateOrderingEnum): untyped = -1
template Greater*(_: type QtPrivateOrderingEnum): untyped = 1


type QtPrivateUncomparableEnum* = distinct cschar
template Unordered*(_: type QtPrivateUncomparableEnum): untyped = -127


import ./gen_qcompare_types
export gen_qcompare_types


type cQPartialOrdering*{.exportc: "QPartialOrdering", incompleteStruct.} = object

proc fcQPartialOrdering_new(param1: pointer): ptr cQPartialOrdering {.importc: "QPartialOrdering_new".}

proc create*(T: type gen_qcompare_types.QPartialOrdering,
    param1: gen_qcompare_types.QPartialOrdering): gen_qcompare_types.QPartialOrdering =
  gen_qcompare_types.QPartialOrdering(h: fcQPartialOrdering_new(param1.h), owned: true)

