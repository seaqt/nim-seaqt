import ./Qt6Qml_libs

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


import ./gen_qjsvalueiterator_types
export gen_qjsvalueiterator_types

import
  ./gen_qjsvalue_types
export
  gen_qjsvalue_types

type cQJSValueIterator*{.exportc: "QJSValueIterator", incompleteStruct.} = object

proc fcQJSValueIterator_hasNext(self: pointer): bool {.importc: "QJSValueIterator_hasNext".}
proc fcQJSValueIterator_next(self: pointer): bool {.importc: "QJSValueIterator_next".}
proc fcQJSValueIterator_name(self: pointer): struct_miqt_string {.importc: "QJSValueIterator_name".}
proc fcQJSValueIterator_value(self: pointer): pointer {.importc: "QJSValueIterator_value".}
proc fcQJSValueIterator_operatorAssign(self: pointer, value: pointer): void {.importc: "QJSValueIterator_operatorAssign".}
proc fcQJSValueIterator_new(value: pointer): ptr cQJSValueIterator {.importc: "QJSValueIterator_new".}

proc hasNext*(self: gen_qjsvalueiterator_types.QJSValueIterator): bool =
  fcQJSValueIterator_hasNext(self.h)

proc next*(self: gen_qjsvalueiterator_types.QJSValueIterator): bool =
  fcQJSValueIterator_next(self.h)

proc name*(self: gen_qjsvalueiterator_types.QJSValueIterator): string =
  let v_ms = fcQJSValueIterator_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qjsvalueiterator_types.QJSValueIterator): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSValueIterator_value(self.h), owned: true)

proc operatorAssign*(self: gen_qjsvalueiterator_types.QJSValueIterator, value: gen_qjsvalue_types.QJSValue): void =
  fcQJSValueIterator_operatorAssign(self.h, value.h)

proc create*(T: type gen_qjsvalueiterator_types.QJSValueIterator,
    value: gen_qjsvalue_types.QJSValue): gen_qjsvalueiterator_types.QJSValueIterator =
  gen_qjsvalueiterator_types.QJSValueIterator(h: fcQJSValueIterator_new(value.h), owned: true)

