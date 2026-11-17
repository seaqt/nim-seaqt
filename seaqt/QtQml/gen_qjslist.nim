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


import ./gen_qjslist_types
export gen_qjslist_types


type cQJSListIndexClamp*{.exportc: "QJSListIndexClamp", incompleteStruct.} = object
type cQJSListForInIterator*{.exportc: "QJSListForInIterator", incompleteStruct.} = object
type cQJSListForOfIterator*{.exportc: "QJSListForOfIterator", incompleteStruct.} = object

proc fcQJSListIndexClamp_clampStartMax(start: int64, max: int64): int64 {.importc: "QJSListIndexClamp_clamp_start_max".}
proc fcQJSListIndexClamp_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJSListIndexClamp_operatorAssign".}
proc fcQJSListIndexClamp_clampStartMaxMin(start: int64, max: int64, min: int64): int64 {.importc: "QJSListIndexClamp_clamp_start_max_min".}
proc fcQJSListIndexClamp_new(fromVal: pointer): ptr cQJSListIndexClamp {.importc: "QJSListIndexClamp_new_from".}
proc fcQJSListIndexClamp_new2(): ptr cQJSListIndexClamp {.importc: "QJSListIndexClamp_new".}
proc fcQJSListForInIterator_hasNext(self: pointer): bool {.importc: "QJSListForInIterator_hasNext".}
proc fcQJSListForInIterator_next(self: pointer): int64 {.importc: "QJSListForInIterator_next".}
proc fcQJSListForOfIterator_init(self: pointer): void {.importc: "QJSListForOfIterator_init".}

proc clamp*(_: type gen_qjslist_types.QJSListIndexClamp, start: int64, max: int64): int64 =
  fcQJSListIndexClamp_clampStartMax(start, max)

proc operatorAssign*(self: gen_qjslist_types.QJSListIndexClamp, fromVal: gen_qjslist_types.QJSListIndexClamp): void =
  fcQJSListIndexClamp_operatorAssign(self.h, fromVal.h)

proc clamp*(_: type gen_qjslist_types.QJSListIndexClamp, start: int64, max: int64, min: int64): int64 =
  fcQJSListIndexClamp_clampStartMaxMin(start, max, min)

proc create*(T: type gen_qjslist_types.QJSListIndexClamp,
    fromVal: gen_qjslist_types.QJSListIndexClamp): gen_qjslist_types.QJSListIndexClamp =
  let tmp = gen_qjslist_types.QJSListIndexClamp(h: fcQJSListIndexClamp_new(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qjslist_types.QJSListIndexClamp): gen_qjslist_types.QJSListIndexClamp =
  let tmp = gen_qjslist_types.QJSListIndexClamp(h: fcQJSListIndexClamp_new2(), owned: true)
  tmp
proc hasNext*(self: gen_qjslist_types.QJSListForInIterator): bool =
  fcQJSListForInIterator_hasNext(self.h)

proc next*(self: gen_qjslist_types.QJSListForInIterator): int64 =
  fcQJSListForInIterator_next(self.h)

proc init*(self: gen_qjslist_types.QJSListForOfIterator): void =
  fcQJSListForOfIterator_init(self.h)

