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


import ./gen_qscriptable_types
export gen_qscriptable_types

import
  ./gen_qscriptcontext_types,
  ./gen_qscriptengine_types,
  ./gen_qscriptvalue_types
export
  gen_qscriptcontext_types,
  gen_qscriptengine_types,
  gen_qscriptvalue_types

type cQScriptable*{.exportc: "QScriptable", incompleteStruct.} = object

proc fcQScriptable_engine(self: pointer): pointer {.importc: "QScriptable_engine".}
proc fcQScriptable_context(self: pointer): pointer {.importc: "QScriptable_context".}
proc fcQScriptable_thisObject(self: pointer): pointer {.importc: "QScriptable_thisObject".}
proc fcQScriptable_argumentCount(self: pointer): cint {.importc: "QScriptable_argumentCount".}
proc fcQScriptable_argument(self: pointer, index: cint): pointer {.importc: "QScriptable_argument".}
proc fcQScriptable_new(): ptr cQScriptable {.importc: "QScriptable_new".}

proc engine*(self: gen_qscriptable_types.QScriptable): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine(h: fcQScriptable_engine(self.h), owned: false)

proc context*(self: gen_qscriptable_types.QScriptable): gen_qscriptcontext_types.QScriptContext =
  gen_qscriptcontext_types.QScriptContext(h: fcQScriptable_context(self.h), owned: false)

proc thisObject*(self: gen_qscriptable_types.QScriptable): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptable_thisObject(self.h), owned: true)

proc argumentCount*(self: gen_qscriptable_types.QScriptable): cint =
  fcQScriptable_argumentCount(self.h)

proc argument*(self: gen_qscriptable_types.QScriptable, index: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptable_argument(self.h, index), owned: true)

proc create*(T: type gen_qscriptable_types.QScriptable): gen_qscriptable_types.QScriptable =
  let tmp = gen_qscriptable_types.QScriptable(h: fcQScriptable_new(), owned: true)
  tmp
