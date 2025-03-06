import ./Qt5Script_libs

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

const cflags = gorge("pkg-config --cflags Qt5Script")  & " -fPIC"
{.compile("gen_qscriptcontextinfo.cpp", cflags).}


type QScriptContextInfoFunctionTypeEnum* = distinct cint
template ScriptFunction*(_: type QScriptContextInfoFunctionTypeEnum): untyped = 0
template QtFunction*(_: type QScriptContextInfoFunctionTypeEnum): untyped = 1
template QtPropertyFunction*(_: type QScriptContextInfoFunctionTypeEnum): untyped = 2
template NativeFunction*(_: type QScriptContextInfoFunctionTypeEnum): untyped = 3


import ./gen_qscriptcontextinfo_types
export gen_qscriptcontextinfo_types

import
  ./gen_qscriptcontext_types
export
  gen_qscriptcontext_types

type cQScriptContextInfo*{.exportc: "QScriptContextInfo", incompleteStruct.} = object

proc fcQScriptContextInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QScriptContextInfo_operatorAssign".}
proc fcQScriptContextInfo_isNull(self: pointer, ): bool {.importc: "QScriptContextInfo_isNull".}
proc fcQScriptContextInfo_scriptId(self: pointer, ): clonglong {.importc: "QScriptContextInfo_scriptId".}
proc fcQScriptContextInfo_fileName(self: pointer, ): struct_miqt_string {.importc: "QScriptContextInfo_fileName".}
proc fcQScriptContextInfo_lineNumber(self: pointer, ): cint {.importc: "QScriptContextInfo_lineNumber".}
proc fcQScriptContextInfo_columnNumber(self: pointer, ): cint {.importc: "QScriptContextInfo_columnNumber".}
proc fcQScriptContextInfo_functionName(self: pointer, ): struct_miqt_string {.importc: "QScriptContextInfo_functionName".}
proc fcQScriptContextInfo_functionType(self: pointer, ): cint {.importc: "QScriptContextInfo_functionType".}
proc fcQScriptContextInfo_functionParameterNames(self: pointer, ): struct_miqt_array {.importc: "QScriptContextInfo_functionParameterNames".}
proc fcQScriptContextInfo_functionStartLineNumber(self: pointer, ): cint {.importc: "QScriptContextInfo_functionStartLineNumber".}
proc fcQScriptContextInfo_functionEndLineNumber(self: pointer, ): cint {.importc: "QScriptContextInfo_functionEndLineNumber".}
proc fcQScriptContextInfo_functionMetaIndex(self: pointer, ): cint {.importc: "QScriptContextInfo_functionMetaIndex".}
proc fcQScriptContextInfo_operatorEqual(self: pointer, other: pointer): bool {.importc: "QScriptContextInfo_operatorEqual".}
proc fcQScriptContextInfo_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QScriptContextInfo_operatorNotEqual".}
proc fcQScriptContextInfo_new(context: pointer): ptr cQScriptContextInfo {.importc: "QScriptContextInfo_new".}
proc fcQScriptContextInfo_new2(other: pointer): ptr cQScriptContextInfo {.importc: "QScriptContextInfo_new2".}
proc fcQScriptContextInfo_new3(): ptr cQScriptContextInfo {.importc: "QScriptContextInfo_new3".}
proc fcQScriptContextInfo_delete(self: pointer) {.importc: "QScriptContextInfo_delete".}

proc operatorAssign*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, other: gen_qscriptcontextinfo_types.QScriptContextInfo): void =
  fcQScriptContextInfo_operatorAssign(self.h, other.h)

proc isNull*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): bool =
  fcQScriptContextInfo_isNull(self.h)

proc scriptId*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): clonglong =
  fcQScriptContextInfo_scriptId(self.h)

proc fileName*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): string =
  let v_ms = fcQScriptContextInfo_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lineNumber*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): cint =
  fcQScriptContextInfo_lineNumber(self.h)

proc columnNumber*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): cint =
  fcQScriptContextInfo_columnNumber(self.h)

proc functionName*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): string =
  let v_ms = fcQScriptContextInfo_functionName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc functionType*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): cint =
  cint(fcQScriptContextInfo_functionType(self.h))

proc functionParameterNames*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): seq[string] =
  var v_ma = fcQScriptContextInfo_functionParameterNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc functionStartLineNumber*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): cint =
  fcQScriptContextInfo_functionStartLineNumber(self.h)

proc functionEndLineNumber*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): cint =
  fcQScriptContextInfo_functionEndLineNumber(self.h)

proc functionMetaIndex*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, ): cint =
  fcQScriptContextInfo_functionMetaIndex(self.h)

proc operatorEqual*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, other: gen_qscriptcontextinfo_types.QScriptContextInfo): bool =
  fcQScriptContextInfo_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qscriptcontextinfo_types.QScriptContextInfo, other: gen_qscriptcontextinfo_types.QScriptContextInfo): bool =
  fcQScriptContextInfo_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qscriptcontextinfo_types.QScriptContextInfo,
    context: gen_qscriptcontext_types.QScriptContext): gen_qscriptcontextinfo_types.QScriptContextInfo =
  gen_qscriptcontextinfo_types.QScriptContextInfo(h: fcQScriptContextInfo_new(context.h))

proc create*(T: type gen_qscriptcontextinfo_types.QScriptContextInfo,
    other: gen_qscriptcontextinfo_types.QScriptContextInfo): gen_qscriptcontextinfo_types.QScriptContextInfo =
  gen_qscriptcontextinfo_types.QScriptContextInfo(h: fcQScriptContextInfo_new2(other.h))

proc create*(T: type gen_qscriptcontextinfo_types.QScriptContextInfo): gen_qscriptcontextinfo_types.QScriptContextInfo =
  gen_qscriptcontextinfo_types.QScriptContextInfo(h: fcQScriptContextInfo_new3())

proc delete*(self: gen_qscriptcontextinfo_types.QScriptContextInfo) =
  fcQScriptContextInfo_delete(self.h)
