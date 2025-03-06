import ./Qt5Script_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Script")  & " -fPIC"
{.compile("gen_qscriptvalueiterator.cpp", cflags).}


import ./gen_qscriptvalueiterator_types
export gen_qscriptvalueiterator_types

import
  ./gen_qscriptstring_types,
  ./gen_qscriptvalue_types
export
  gen_qscriptstring_types,
  gen_qscriptvalue_types

type cQScriptValueIterator*{.exportc: "QScriptValueIterator", incompleteStruct.} = object

proc fcQScriptValueIterator_hasNext(self: pointer, ): bool {.importc: "QScriptValueIterator_hasNext".}
proc fcQScriptValueIterator_next(self: pointer, ): void {.importc: "QScriptValueIterator_next".}
proc fcQScriptValueIterator_hasPrevious(self: pointer, ): bool {.importc: "QScriptValueIterator_hasPrevious".}
proc fcQScriptValueIterator_previous(self: pointer, ): void {.importc: "QScriptValueIterator_previous".}
proc fcQScriptValueIterator_name(self: pointer, ): struct_miqt_string {.importc: "QScriptValueIterator_name".}
proc fcQScriptValueIterator_scriptName(self: pointer, ): pointer {.importc: "QScriptValueIterator_scriptName".}
proc fcQScriptValueIterator_value(self: pointer, ): pointer {.importc: "QScriptValueIterator_value".}
proc fcQScriptValueIterator_setValue(self: pointer, value: pointer): void {.importc: "QScriptValueIterator_setValue".}
proc fcQScriptValueIterator_flags(self: pointer, ): cint {.importc: "QScriptValueIterator_flags".}
proc fcQScriptValueIterator_remove(self: pointer, ): void {.importc: "QScriptValueIterator_remove".}
proc fcQScriptValueIterator_toFront(self: pointer, ): void {.importc: "QScriptValueIterator_toFront".}
proc fcQScriptValueIterator_toBack(self: pointer, ): void {.importc: "QScriptValueIterator_toBack".}
proc fcQScriptValueIterator_operatorAssign(self: pointer, value: pointer): void {.importc: "QScriptValueIterator_operatorAssign".}
proc fcQScriptValueIterator_new(value: pointer): ptr cQScriptValueIterator {.importc: "QScriptValueIterator_new".}
proc fcQScriptValueIterator_delete(self: pointer) {.importc: "QScriptValueIterator_delete".}

proc hasNext*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): bool =
  fcQScriptValueIterator_hasNext(self.h)

proc next*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): void =
  fcQScriptValueIterator_next(self.h)

proc hasPrevious*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): bool =
  fcQScriptValueIterator_hasPrevious(self.h)

proc previous*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): void =
  fcQScriptValueIterator_previous(self.h)

proc name*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): string =
  let v_ms = fcQScriptValueIterator_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scriptName*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): gen_qscriptstring_types.QScriptString =
  gen_qscriptstring_types.QScriptString(h: fcQScriptValueIterator_scriptName(self.h))

proc value*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptValueIterator_value(self.h))

proc setValue*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValueIterator_setValue(self.h, value.h)

proc flags*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): cint =
  cint(fcQScriptValueIterator_flags(self.h))

proc remove*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): void =
  fcQScriptValueIterator_remove(self.h)

proc toFront*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): void =
  fcQScriptValueIterator_toFront(self.h)

proc toBack*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, ): void =
  fcQScriptValueIterator_toBack(self.h)

proc operatorAssign*(self: gen_qscriptvalueiterator_types.QScriptValueIterator, value: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptValueIterator_operatorAssign(self.h, value.h)

proc create*(T: type gen_qscriptvalueiterator_types.QScriptValueIterator,
    value: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalueiterator_types.QScriptValueIterator =
  gen_qscriptvalueiterator_types.QScriptValueIterator(h: fcQScriptValueIterator_new(value.h))

proc delete*(self: gen_qscriptvalueiterator_types.QScriptValueIterator) =
  fcQScriptValueIterator_delete(self.h)
