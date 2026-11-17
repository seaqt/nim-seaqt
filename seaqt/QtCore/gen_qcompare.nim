import ./qtcore_pkg

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


type QtPrivateOrderingEnum* = distinct cschar
template Equal*(_: type QtPrivateOrderingEnum): untyped = 0
template Equivalent*(_: type QtPrivateOrderingEnum): untyped = 0
template Less*(_: type QtPrivateOrderingEnum): untyped = -1
template Greater*(_: type QtPrivateOrderingEnum): untyped = 1


type QtPrivateUncomparableEnum* = distinct cschar
template Unordered*(_: type QtPrivateUncomparableEnum): untyped = 2


type QtPrivateLegacyUncomparableEnum* = distinct cschar
template Unordered*(_: type QtPrivateLegacyUncomparableEnum): untyped = -127


import ./gen_qcompare_types
export gen_qcompare_types


type cpartial_ordering*{.exportc: "partial_ordering", incompleteStruct.} = object
type cweak_ordering*{.exportc: "weak_ordering", incompleteStruct.} = object
type cstrong_ordering*{.exportc: "strong_ordering", incompleteStruct.} = object
type cQPartialOrdering*{.exportc: "QPartialOrdering", incompleteStruct.} = object

proc fcpartial_ordering_new(fromVal: pointer): ptr cpartial_ordering {.importc: "partial_ordering_new".}
proc fcweak_ordering_ToPartialOrdering(self: pointer): pointer {.importc: "weak_ordering_ToPartial_ordering".}
proc fcweak_ordering_new(fromVal: pointer): ptr cweak_ordering {.importc: "weak_ordering_new".}
proc fcstrong_ordering_ToPartialOrdering(self: pointer): pointer {.importc: "strong_ordering_ToPartial_ordering".}
proc fcstrong_ordering_ToWeakOrdering(self: pointer): pointer {.importc: "strong_ordering_ToWeak_ordering".}
proc fcstrong_ordering_new(fromVal: pointer): ptr cstrong_ordering {.importc: "strong_ordering_new".}
proc fcQPartialOrdering_ToPartialOrdering(self: pointer): pointer {.importc: "QPartialOrdering_ToPartial_ordering".}
proc fcQPartialOrdering_new(order: pointer): ptr cQPartialOrdering {.importc: "QPartialOrdering_new_Qt_partial_ordering".}
proc fcQPartialOrdering_new2(stdorder: pointer): ptr cQPartialOrdering {.importc: "QPartialOrdering_new_Qt_weak_ordering".}
proc fcQPartialOrdering_new3(stdorder: pointer): ptr cQPartialOrdering {.importc: "QPartialOrdering_new_Qt_strong_ordering".}
proc fcQPartialOrdering_new4(fromVal: pointer): ptr cQPartialOrdering {.importc: "QPartialOrdering_new_QPartialOrdering".}

proc create*(T: type gen_qcompare_types.partial_ordering,
    fromVal: gen_qcompare_types.partial_ordering): gen_qcompare_types.partial_ordering =
  let tmp = gen_qcompare_types.partial_ordering(h: fcpartial_ordering_new(fromVal.h), owned: true)
  tmp
proc ToPartialOrdering*(self: gen_qcompare_types.weak_ordering): gen_qcompare_types.partial_ordering =
  gen_qcompare_types.partial_ordering(h: fcweak_ordering_ToPartialOrdering(self.h), owned: true)

proc create*(T: type gen_qcompare_types.weak_ordering,
    fromVal: gen_qcompare_types.weak_ordering): gen_qcompare_types.weak_ordering =
  let tmp = gen_qcompare_types.weak_ordering(h: fcweak_ordering_new(fromVal.h), owned: true)
  tmp
proc ToPartialOrdering*(self: gen_qcompare_types.strong_ordering): gen_qcompare_types.partial_ordering =
  gen_qcompare_types.partial_ordering(h: fcstrong_ordering_ToPartialOrdering(self.h), owned: true)

proc ToWeakOrdering*(self: gen_qcompare_types.strong_ordering): gen_qcompare_types.weak_ordering =
  gen_qcompare_types.weak_ordering(h: fcstrong_ordering_ToWeakOrdering(self.h), owned: true)

proc create*(T: type gen_qcompare_types.strong_ordering,
    fromVal: gen_qcompare_types.strong_ordering): gen_qcompare_types.strong_ordering =
  let tmp = gen_qcompare_types.strong_ordering(h: fcstrong_ordering_new(fromVal.h), owned: true)
  tmp
proc ToPartialOrdering*(self: gen_qcompare_types.QPartialOrdering): gen_qcompare_types.partial_ordering =
  gen_qcompare_types.partial_ordering(h: fcQPartialOrdering_ToPartialOrdering(self.h), owned: true)

proc create*(T: type gen_qcompare_types.QPartialOrdering,
    order: gen_qcompare_types.partial_ordering): gen_qcompare_types.QPartialOrdering =
  let tmp = gen_qcompare_types.QPartialOrdering(h: fcQPartialOrdering_new(order.h), owned: true)
  tmp
proc create*(T: type gen_qcompare_types.QPartialOrdering,
    stdorder: gen_qcompare_types.weak_ordering): gen_qcompare_types.QPartialOrdering =
  let tmp = gen_qcompare_types.QPartialOrdering(h: fcQPartialOrdering_new2(stdorder.h), owned: true)
  tmp
proc create*(T: type gen_qcompare_types.QPartialOrdering,
    stdorder: gen_qcompare_types.strong_ordering): gen_qcompare_types.QPartialOrdering =
  let tmp = gen_qcompare_types.QPartialOrdering(h: fcQPartialOrdering_new3(stdorder.h), owned: true)
  tmp
proc create*(T: type gen_qcompare_types.QPartialOrdering,
    fromVal: gen_qcompare_types.QPartialOrdering): gen_qcompare_types.QPartialOrdering =
  let tmp = gen_qcompare_types.QPartialOrdering(h: fcQPartialOrdering_new4(fromVal.h), owned: true)
  tmp
