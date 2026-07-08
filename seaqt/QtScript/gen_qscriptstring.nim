import ./qtscript_pkg

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


import ./gen_qscriptstring_types
export gen_qscriptstring_types


type cQScriptString*{.exportc: "QScriptString", incompleteStruct.} = object

proc fcQScriptString_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QScriptString_operatorAssign".}
proc fcQScriptString_isValid(self: pointer): bool {.importc: "QScriptString_isValid".}
proc fcQScriptString_operatorEqual(self: pointer, other: pointer): bool {.importc: "QScriptString_operatorEqual".}
proc fcQScriptString_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QScriptString_operatorNotEqual".}
proc fcQScriptString_toArrayIndex(self: pointer): cuint {.importc: "QScriptString_toArrayIndex".}
proc fcQScriptString_toString(self: pointer): struct_seaqt_string {.importc: "QScriptString_toString".}
proc fcQScriptString_ToQString(self: pointer): struct_seaqt_string {.importc: "QScriptString_ToQString".}
proc fcQScriptString_toArrayIndexOk(self: pointer, ok: ptr bool): cuint {.importc: "QScriptString_toArrayIndex_ok".}
proc fcQScriptString_new(): ptr cQScriptString {.importc: "QScriptString_new".}
proc fcQScriptString_new2(fromVal: pointer): ptr cQScriptString {.importc: "QScriptString_new_from".}

proc operatorAssign*(self: gen_qscriptstring_types.QScriptString, fromVal: gen_qscriptstring_types.QScriptString): void =
  fcQScriptString_operatorAssign(self.h, fromVal.h)

proc isValid*(self: gen_qscriptstring_types.QScriptString): bool =
  fcQScriptString_isValid(self.h)

proc operatorEqual*(self: gen_qscriptstring_types.QScriptString, other: gen_qscriptstring_types.QScriptString): bool =
  fcQScriptString_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qscriptstring_types.QScriptString, other: gen_qscriptstring_types.QScriptString): bool =
  fcQScriptString_operatorNotEqual(self.h, other.h)

proc toArrayIndex*(self: gen_qscriptstring_types.QScriptString): cuint =
  fcQScriptString_toArrayIndex(self.h)

proc toString*(self: gen_qscriptstring_types.QScriptString): string =
  let v_ms = fcQScriptString_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc ToQString*(self: gen_qscriptstring_types.QScriptString): string =
  let v_ms = fcQScriptString_ToQString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toArrayIndex*(self: gen_qscriptstring_types.QScriptString, ok: ptr bool): cuint =
  fcQScriptString_toArrayIndexOk(self.h, ok)

proc create*(T: type gen_qscriptstring_types.QScriptString): gen_qscriptstring_types.QScriptString =
  let tmp = gen_qscriptstring_types.QScriptString(h: fcQScriptString_new(), owned: true)
  tmp
proc create*(T: type gen_qscriptstring_types.QScriptString,
    fromVal: gen_qscriptstring_types.QScriptString): gen_qscriptstring_types.QScriptString =
  let tmp = gen_qscriptstring_types.QScriptString(h: fcQScriptString_new2(fromVal.h), owned: true)
  tmp
