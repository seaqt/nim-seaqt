import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qcompare.cpp", cflags).}


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
proc fcQPartialOrdering_delete(self: pointer) {.importc: "QPartialOrdering_delete".}


func init*(T: type gen_qcompare_types.QPartialOrdering, h: ptr cQPartialOrdering): gen_qcompare_types.QPartialOrdering =
  T(h: h)
proc create*(T: type gen_qcompare_types.QPartialOrdering, param1: gen_qcompare_types.QPartialOrdering): gen_qcompare_types.QPartialOrdering =
  gen_qcompare_types.QPartialOrdering.init(fcQPartialOrdering_new(param1.h))

proc delete*(self: gen_qcompare_types.QPartialOrdering) =
  fcQPartialOrdering_delete(self.h)
