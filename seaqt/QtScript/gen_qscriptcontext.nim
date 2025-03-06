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
{.compile("gen_qscriptcontext.cpp", cflags).}


type QScriptContextExecutionStateEnum* = distinct cint
template NormalState*(_: type QScriptContextExecutionStateEnum): untyped = 0
template ExceptionState*(_: type QScriptContextExecutionStateEnum): untyped = 1


type QScriptContextErrorEnum* = distinct cint
template UnknownError*(_: type QScriptContextErrorEnum): untyped = 0
template ReferenceError*(_: type QScriptContextErrorEnum): untyped = 1
template SyntaxError*(_: type QScriptContextErrorEnum): untyped = 2
template TypeError*(_: type QScriptContextErrorEnum): untyped = 3
template RangeError*(_: type QScriptContextErrorEnum): untyped = 4
template URIError*(_: type QScriptContextErrorEnum): untyped = 5


import ./gen_qscriptcontext_types
export gen_qscriptcontext_types

import
  ./gen_qscriptengine_types,
  ./gen_qscriptvalue_types
export
  gen_qscriptengine_types,
  gen_qscriptvalue_types

type cQScriptContext*{.exportc: "QScriptContext", incompleteStruct.} = object

proc fcQScriptContext_parentContext(self: pointer, ): pointer {.importc: "QScriptContext_parentContext".}
proc fcQScriptContext_engine(self: pointer, ): pointer {.importc: "QScriptContext_engine".}
proc fcQScriptContext_state(self: pointer, ): cint {.importc: "QScriptContext_state".}
proc fcQScriptContext_callee(self: pointer, ): pointer {.importc: "QScriptContext_callee".}
proc fcQScriptContext_argumentCount(self: pointer, ): cint {.importc: "QScriptContext_argumentCount".}
proc fcQScriptContext_argument(self: pointer, index: cint): pointer {.importc: "QScriptContext_argument".}
proc fcQScriptContext_argumentsObject(self: pointer, ): pointer {.importc: "QScriptContext_argumentsObject".}
proc fcQScriptContext_scopeChain(self: pointer, ): struct_miqt_array {.importc: "QScriptContext_scopeChain".}
proc fcQScriptContext_pushScope(self: pointer, objectVal: pointer): void {.importc: "QScriptContext_pushScope".}
proc fcQScriptContext_popScope(self: pointer, ): pointer {.importc: "QScriptContext_popScope".}
proc fcQScriptContext_returnValue(self: pointer, ): pointer {.importc: "QScriptContext_returnValue".}
proc fcQScriptContext_setReturnValue(self: pointer, resultVal: pointer): void {.importc: "QScriptContext_setReturnValue".}
proc fcQScriptContext_activationObject(self: pointer, ): pointer {.importc: "QScriptContext_activationObject".}
proc fcQScriptContext_setActivationObject(self: pointer, activation: pointer): void {.importc: "QScriptContext_setActivationObject".}
proc fcQScriptContext_thisObject(self: pointer, ): pointer {.importc: "QScriptContext_thisObject".}
proc fcQScriptContext_setThisObject(self: pointer, thisObject: pointer): void {.importc: "QScriptContext_setThisObject".}
proc fcQScriptContext_isCalledAsConstructor(self: pointer, ): bool {.importc: "QScriptContext_isCalledAsConstructor".}
proc fcQScriptContext_throwValue(self: pointer, value: pointer): pointer {.importc: "QScriptContext_throwValue".}
proc fcQScriptContext_throwError(self: pointer, error: cint, text: struct_miqt_string): pointer {.importc: "QScriptContext_throwError".}
proc fcQScriptContext_throwErrorWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QScriptContext_throwErrorWithText".}
proc fcQScriptContext_backtrace(self: pointer, ): struct_miqt_array {.importc: "QScriptContext_backtrace".}
proc fcQScriptContext_toString(self: pointer, ): struct_miqt_string {.importc: "QScriptContext_toString".}
proc fcQScriptContext_delete(self: pointer) {.importc: "QScriptContext_delete".}

proc parentContext*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptcontext_types.QScriptContext =
  gen_qscriptcontext_types.QScriptContext(h: fcQScriptContext_parentContext(self.h))

proc engine*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine(h: fcQScriptContext_engine(self.h))

proc state*(self: gen_qscriptcontext_types.QScriptContext, ): cint =
  cint(fcQScriptContext_state(self.h))

proc callee*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_callee(self.h))

proc argumentCount*(self: gen_qscriptcontext_types.QScriptContext, ): cint =
  fcQScriptContext_argumentCount(self.h)

proc argument*(self: gen_qscriptcontext_types.QScriptContext, index: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_argument(self.h, index))

proc argumentsObject*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_argumentsObject(self.h))

proc scopeChain*(self: gen_qscriptcontext_types.QScriptContext, ): seq[gen_qscriptvalue_types.QScriptValue] =
  var v_ma = fcQScriptContext_scopeChain(self.h)
  var vx_ret = newSeq[gen_qscriptvalue_types.QScriptValue](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qscriptvalue_types.QScriptValue(h: v_outCast[i])
  vx_ret

proc pushScope*(self: gen_qscriptcontext_types.QScriptContext, objectVal: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptContext_pushScope(self.h, objectVal.h)

proc popScope*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_popScope(self.h))

proc returnValue*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_returnValue(self.h))

proc setReturnValue*(self: gen_qscriptcontext_types.QScriptContext, resultVal: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptContext_setReturnValue(self.h, resultVal.h)

proc activationObject*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_activationObject(self.h))

proc setActivationObject*(self: gen_qscriptcontext_types.QScriptContext, activation: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptContext_setActivationObject(self.h, activation.h)

proc thisObject*(self: gen_qscriptcontext_types.QScriptContext, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_thisObject(self.h))

proc setThisObject*(self: gen_qscriptcontext_types.QScriptContext, thisObject: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptContext_setThisObject(self.h, thisObject.h)

proc isCalledAsConstructor*(self: gen_qscriptcontext_types.QScriptContext, ): bool =
  fcQScriptContext_isCalledAsConstructor(self.h)

proc throwValue*(self: gen_qscriptcontext_types.QScriptContext, value: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_throwValue(self.h, value.h))

proc throwError*(self: gen_qscriptcontext_types.QScriptContext, error: cint, text: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_throwError(self.h, cint(error), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc throwError*(self: gen_qscriptcontext_types.QScriptContext, text: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptContext_throwErrorWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc backtrace*(self: gen_qscriptcontext_types.QScriptContext, ): seq[string] =
  var v_ma = fcQScriptContext_backtrace(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc toString*(self: gen_qscriptcontext_types.QScriptContext, ): string =
  let v_ms = fcQScriptContext_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qscriptcontext_types.QScriptContext) =
  fcQScriptContext_delete(self.h)
