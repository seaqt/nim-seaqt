import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml")  & " -fPIC"
{.compile("gen_qqmlscriptstring.cpp", cflags).}


import ./gen_qqmlscriptstring_types
export gen_qqmlscriptstring_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQQmlScriptString*{.exportc: "QQmlScriptString", incompleteStruct.} = object

proc fcQQmlScriptString_new(): ptr cQQmlScriptString {.importc: "QQmlScriptString_new".}
proc fcQQmlScriptString_new2(param1: pointer): ptr cQQmlScriptString {.importc: "QQmlScriptString_new2".}
proc fcQQmlScriptString_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlScriptString_operatorAssign".}
proc fcQQmlScriptString_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QQmlScriptString_operatorEqual".}
proc fcQQmlScriptString_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QQmlScriptString_operatorNotEqual".}
proc fcQQmlScriptString_isEmpty(self: pointer, ): bool {.importc: "QQmlScriptString_isEmpty".}
proc fcQQmlScriptString_isUndefinedLiteral(self: pointer, ): bool {.importc: "QQmlScriptString_isUndefinedLiteral".}
proc fcQQmlScriptString_isNullLiteral(self: pointer, ): bool {.importc: "QQmlScriptString_isNullLiteral".}
proc fcQQmlScriptString_stringLiteral(self: pointer, ): struct_miqt_string {.importc: "QQmlScriptString_stringLiteral".}
proc fcQQmlScriptString_numberLiteral(self: pointer, ok: ptr bool): float64 {.importc: "QQmlScriptString_numberLiteral".}
proc fcQQmlScriptString_booleanLiteral(self: pointer, ok: ptr bool): bool {.importc: "QQmlScriptString_booleanLiteral".}
proc fcQQmlScriptString_staticMetaObject(): pointer {.importc: "QQmlScriptString_staticMetaObject".}
proc fcQQmlScriptString_delete(self: pointer) {.importc: "QQmlScriptString_delete".}


func init*(T: type gen_qqmlscriptstring_types.QQmlScriptString, h: ptr cQQmlScriptString): gen_qqmlscriptstring_types.QQmlScriptString =
  T(h: h)
proc create*(T: type gen_qqmlscriptstring_types.QQmlScriptString, ): gen_qqmlscriptstring_types.QQmlScriptString =
  gen_qqmlscriptstring_types.QQmlScriptString.init(fcQQmlScriptString_new())

proc create*(T: type gen_qqmlscriptstring_types.QQmlScriptString, param1: gen_qqmlscriptstring_types.QQmlScriptString): gen_qqmlscriptstring_types.QQmlScriptString =
  gen_qqmlscriptstring_types.QQmlScriptString.init(fcQQmlScriptString_new2(param1.h))

proc operatorAssign*(self: gen_qqmlscriptstring_types.QQmlScriptString, param1: gen_qqmlscriptstring_types.QQmlScriptString): void =
  fcQQmlScriptString_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qqmlscriptstring_types.QQmlScriptString, param1: gen_qqmlscriptstring_types.QQmlScriptString): bool =
  fcQQmlScriptString_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qqmlscriptstring_types.QQmlScriptString, param1: gen_qqmlscriptstring_types.QQmlScriptString): bool =
  fcQQmlScriptString_operatorNotEqual(self.h, param1.h)

proc isEmpty*(self: gen_qqmlscriptstring_types.QQmlScriptString, ): bool =
  fcQQmlScriptString_isEmpty(self.h)

proc isUndefinedLiteral*(self: gen_qqmlscriptstring_types.QQmlScriptString, ): bool =
  fcQQmlScriptString_isUndefinedLiteral(self.h)

proc isNullLiteral*(self: gen_qqmlscriptstring_types.QQmlScriptString, ): bool =
  fcQQmlScriptString_isNullLiteral(self.h)

proc stringLiteral*(self: gen_qqmlscriptstring_types.QQmlScriptString, ): string =
  let v_ms = fcQQmlScriptString_stringLiteral(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc numberLiteral*(self: gen_qqmlscriptstring_types.QQmlScriptString, ok: ptr bool): float64 =
  fcQQmlScriptString_numberLiteral(self.h, ok)

proc booleanLiteral*(self: gen_qqmlscriptstring_types.QQmlScriptString, ok: ptr bool): bool =
  fcQQmlScriptString_booleanLiteral(self.h, ok)

proc staticMetaObject*(_: type gen_qqmlscriptstring_types.QQmlScriptString): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlScriptString_staticMetaObject())
proc delete*(self: gen_qqmlscriptstring_types.QQmlScriptString) =
  fcQQmlScriptString_delete(self.h)
