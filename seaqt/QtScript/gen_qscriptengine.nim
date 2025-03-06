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
{.compile("gen_qscriptengine.cpp", cflags).}


type QScriptSyntaxCheckResultStateEnum* = distinct cint
template Error*(_: type QScriptSyntaxCheckResultStateEnum): untyped = 0
template Intermediate*(_: type QScriptSyntaxCheckResultStateEnum): untyped = 1
template Valid*(_: type QScriptSyntaxCheckResultStateEnum): untyped = 2


type QScriptEngineValueOwnershipEnum* = distinct cint
template QtOwnership*(_: type QScriptEngineValueOwnershipEnum): untyped = 0
template ScriptOwnership*(_: type QScriptEngineValueOwnershipEnum): untyped = 1
template AutoOwnership*(_: type QScriptEngineValueOwnershipEnum): untyped = 2


type QScriptEngineQObjectWrapOptionEnum* = distinct cint
template ExcludeChildObjects*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 1
template ExcludeSuperClassMethods*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 2
template ExcludeSuperClassProperties*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 4
template ExcludeSuperClassContents*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 6
template SkipMethodsInEnumeration*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 8
template ExcludeDeleteLater*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 16
template ExcludeSlots*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 32
template AutoCreateDynamicProperties*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 256
template PreferExistingWrapperObject*(_: type QScriptEngineQObjectWrapOptionEnum): untyped = 512


import ./gen_qscriptengine_types
export gen_qscriptengine_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qregexp_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qscriptclass_types,
  ./gen_qscriptcontext_types,
  ./gen_qscriptengineagent_types,
  ./gen_qscriptprogram_types,
  ./gen_qscriptstring_types,
  ./gen_qscriptvalue_types
export
  gen_qcoreevent_types,
  gen_qdatetime_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qregexp_types,
  gen_qvariant_types,
  gen_qscriptclass_types,
  gen_qscriptcontext_types,
  gen_qscriptengineagent_types,
  gen_qscriptprogram_types,
  gen_qscriptstring_types,
  gen_qscriptvalue_types

type cQScriptSyntaxCheckResult*{.exportc: "QScriptSyntaxCheckResult", incompleteStruct.} = object
type cQScriptEngine*{.exportc: "QScriptEngine", incompleteStruct.} = object

proc fcQScriptSyntaxCheckResult_new(other: pointer): ptr cQScriptSyntaxCheckResult {.importc: "QScriptSyntaxCheckResult_new".}
proc fcQScriptSyntaxCheckResult_state(self: pointer, ): cint {.importc: "QScriptSyntaxCheckResult_state".}
proc fcQScriptSyntaxCheckResult_errorLineNumber(self: pointer, ): cint {.importc: "QScriptSyntaxCheckResult_errorLineNumber".}
proc fcQScriptSyntaxCheckResult_errorColumnNumber(self: pointer, ): cint {.importc: "QScriptSyntaxCheckResult_errorColumnNumber".}
proc fcQScriptSyntaxCheckResult_errorMessage(self: pointer, ): struct_miqt_string {.importc: "QScriptSyntaxCheckResult_errorMessage".}
proc fcQScriptSyntaxCheckResult_operatorAssign(self: pointer, other: pointer): void {.importc: "QScriptSyntaxCheckResult_operatorAssign".}
proc fcQScriptSyntaxCheckResult_delete(self: pointer) {.importc: "QScriptSyntaxCheckResult_delete".}
proc fcQScriptEngine_new(): ptr cQScriptEngine {.importc: "QScriptEngine_new".}
proc fcQScriptEngine_new2(parent: pointer): ptr cQScriptEngine {.importc: "QScriptEngine_new2".}
proc fcQScriptEngine_metaObject(self: pointer, ): pointer {.importc: "QScriptEngine_metaObject".}
proc fcQScriptEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QScriptEngine_metacast".}
proc fcQScriptEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScriptEngine_metacall".}
proc fcQScriptEngine_tr(s: cstring): struct_miqt_string {.importc: "QScriptEngine_tr".}
proc fcQScriptEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QScriptEngine_trUtf8".}
proc fcQScriptEngine_globalObject(self: pointer, ): pointer {.importc: "QScriptEngine_globalObject".}
proc fcQScriptEngine_setGlobalObject(self: pointer, objectVal: pointer): void {.importc: "QScriptEngine_setGlobalObject".}
proc fcQScriptEngine_currentContext(self: pointer, ): pointer {.importc: "QScriptEngine_currentContext".}
proc fcQScriptEngine_pushContext(self: pointer, ): pointer {.importc: "QScriptEngine_pushContext".}
proc fcQScriptEngine_popContext(self: pointer, ): void {.importc: "QScriptEngine_popContext".}
proc fcQScriptEngine_canEvaluate(self: pointer, program: struct_miqt_string): bool {.importc: "QScriptEngine_canEvaluate".}
proc fcQScriptEngine_checkSyntax(program: struct_miqt_string): pointer {.importc: "QScriptEngine_checkSyntax".}
proc fcQScriptEngine_evaluate(self: pointer, program: struct_miqt_string): pointer {.importc: "QScriptEngine_evaluate".}
proc fcQScriptEngine_evaluateWithProgram(self: pointer, program: pointer): pointer {.importc: "QScriptEngine_evaluateWithProgram".}
proc fcQScriptEngine_isEvaluating(self: pointer, ): bool {.importc: "QScriptEngine_isEvaluating".}
proc fcQScriptEngine_abortEvaluation(self: pointer, ): void {.importc: "QScriptEngine_abortEvaluation".}
proc fcQScriptEngine_hasUncaughtException(self: pointer, ): bool {.importc: "QScriptEngine_hasUncaughtException".}
proc fcQScriptEngine_uncaughtException(self: pointer, ): pointer {.importc: "QScriptEngine_uncaughtException".}
proc fcQScriptEngine_uncaughtExceptionLineNumber(self: pointer, ): cint {.importc: "QScriptEngine_uncaughtExceptionLineNumber".}
proc fcQScriptEngine_uncaughtExceptionBacktrace(self: pointer, ): struct_miqt_array {.importc: "QScriptEngine_uncaughtExceptionBacktrace".}
proc fcQScriptEngine_clearExceptions(self: pointer, ): void {.importc: "QScriptEngine_clearExceptions".}
proc fcQScriptEngine_nullValue(self: pointer, ): pointer {.importc: "QScriptEngine_nullValue".}
proc fcQScriptEngine_undefinedValue(self: pointer, ): pointer {.importc: "QScriptEngine_undefinedValue".}
proc fcQScriptEngine_newVariant(self: pointer, value: pointer): pointer {.importc: "QScriptEngine_newVariant".}
proc fcQScriptEngine_newVariant2(self: pointer, objectVal: pointer, value: pointer): pointer {.importc: "QScriptEngine_newVariant2".}
proc fcQScriptEngine_newRegExp(self: pointer, regexp: pointer): pointer {.importc: "QScriptEngine_newRegExp".}
proc fcQScriptEngine_newObject(self: pointer, ): pointer {.importc: "QScriptEngine_newObject".}
proc fcQScriptEngine_newObjectWithScriptClass(self: pointer, scriptClass: pointer): pointer {.importc: "QScriptEngine_newObjectWithScriptClass".}
proc fcQScriptEngine_newArray(self: pointer, ): pointer {.importc: "QScriptEngine_newArray".}
proc fcQScriptEngine_newRegExp2(self: pointer, pattern: struct_miqt_string, flags: struct_miqt_string): pointer {.importc: "QScriptEngine_newRegExp2".}
proc fcQScriptEngine_newDate(self: pointer, value: float64): pointer {.importc: "QScriptEngine_newDate".}
proc fcQScriptEngine_newDateWithValue(self: pointer, value: pointer): pointer {.importc: "QScriptEngine_newDateWithValue".}
proc fcQScriptEngine_newActivationObject(self: pointer, ): pointer {.importc: "QScriptEngine_newActivationObject".}
proc fcQScriptEngine_newQObject(self: pointer, objectVal: pointer): pointer {.importc: "QScriptEngine_newQObject".}
proc fcQScriptEngine_newQObject2(self: pointer, scriptObject: pointer, qtObject: pointer): pointer {.importc: "QScriptEngine_newQObject2".}
proc fcQScriptEngine_newQMetaObject(self: pointer, metaObject: pointer): pointer {.importc: "QScriptEngine_newQMetaObject".}
proc fcQScriptEngine_defaultPrototype(self: pointer, metaTypeId: cint): pointer {.importc: "QScriptEngine_defaultPrototype".}
proc fcQScriptEngine_setDefaultPrototype(self: pointer, metaTypeId: cint, prototype: pointer): void {.importc: "QScriptEngine_setDefaultPrototype".}
proc fcQScriptEngine_installTranslatorFunctions(self: pointer, ): void {.importc: "QScriptEngine_installTranslatorFunctions".}
proc fcQScriptEngine_importExtension(self: pointer, extension: struct_miqt_string): pointer {.importc: "QScriptEngine_importExtension".}
proc fcQScriptEngine_availableExtensions(self: pointer, ): struct_miqt_array {.importc: "QScriptEngine_availableExtensions".}
proc fcQScriptEngine_importedExtensions(self: pointer, ): struct_miqt_array {.importc: "QScriptEngine_importedExtensions".}
proc fcQScriptEngine_collectGarbage(self: pointer, ): void {.importc: "QScriptEngine_collectGarbage".}
proc fcQScriptEngine_reportAdditionalMemoryCost(self: pointer, size: cint): void {.importc: "QScriptEngine_reportAdditionalMemoryCost".}
proc fcQScriptEngine_setProcessEventsInterval(self: pointer, interval: cint): void {.importc: "QScriptEngine_setProcessEventsInterval".}
proc fcQScriptEngine_processEventsInterval(self: pointer, ): cint {.importc: "QScriptEngine_processEventsInterval".}
proc fcQScriptEngine_setAgent(self: pointer, agent: pointer): void {.importc: "QScriptEngine_setAgent".}
proc fcQScriptEngine_agent(self: pointer, ): pointer {.importc: "QScriptEngine_agent".}
proc fcQScriptEngine_toStringHandle(self: pointer, str: struct_miqt_string): pointer {.importc: "QScriptEngine_toStringHandle".}
proc fcQScriptEngine_toObject(self: pointer, value: pointer): pointer {.importc: "QScriptEngine_toObject".}
proc fcQScriptEngine_objectById(self: pointer, id: clonglong): pointer {.importc: "QScriptEngine_objectById".}
proc fcQScriptEngine_signalHandlerException(self: pointer, exception: pointer): void {.importc: "QScriptEngine_signalHandlerException".}
proc fcQScriptEngine_connect_signalHandlerException(self: pointer, slot: int) {.importc: "QScriptEngine_connect_signalHandlerException".}
proc fcQScriptEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScriptEngine_tr2".}
proc fcQScriptEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScriptEngine_tr3".}
proc fcQScriptEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScriptEngine_trUtf82".}
proc fcQScriptEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScriptEngine_trUtf83".}
proc fcQScriptEngine_evaluate2(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string): pointer {.importc: "QScriptEngine_evaluate2".}
proc fcQScriptEngine_evaluate3(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string, lineNumber: cint): pointer {.importc: "QScriptEngine_evaluate3".}
proc fcQScriptEngine_abortEvaluation1(self: pointer, resultVal: pointer): void {.importc: "QScriptEngine_abortEvaluation1".}
proc fcQScriptEngine_newObject2(self: pointer, scriptClass: pointer, data: pointer): pointer {.importc: "QScriptEngine_newObject2".}
proc fcQScriptEngine_newArray1(self: pointer, length: cuint): pointer {.importc: "QScriptEngine_newArray1".}
proc fcQScriptEngine_newQObject22(self: pointer, objectVal: pointer, ownership: cint): pointer {.importc: "QScriptEngine_newQObject22".}
proc fcQScriptEngine_newQObject3(self: pointer, objectVal: pointer, ownership: cint, options: ptr cint): pointer {.importc: "QScriptEngine_newQObject3".}
proc fcQScriptEngine_newQObject32(self: pointer, scriptObject: pointer, qtObject: pointer, ownership: cint): pointer {.importc: "QScriptEngine_newQObject32".}
proc fcQScriptEngine_newQObject4(self: pointer, scriptObject: pointer, qtObject: pointer, ownership: cint, options: ptr cint): pointer {.importc: "QScriptEngine_newQObject4".}
proc fcQScriptEngine_newQMetaObject2(self: pointer, metaObject: pointer, ctor: pointer): pointer {.importc: "QScriptEngine_newQMetaObject2".}
proc fcQScriptEngine_installTranslatorFunctions1(self: pointer, objectVal: pointer): void {.importc: "QScriptEngine_installTranslatorFunctions1".}
proc fQScriptEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QScriptEngine_virtualbase_metaObject".}
proc fcQScriptEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_metaObject".}
proc fQScriptEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QScriptEngine_virtualbase_metacast".}
proc fcQScriptEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_metacast".}
proc fQScriptEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QScriptEngine_virtualbase_metacall".}
proc fcQScriptEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_metacall".}
proc fQScriptEngine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QScriptEngine_virtualbase_event".}
proc fcQScriptEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_event".}
proc fQScriptEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QScriptEngine_virtualbase_eventFilter".}
proc fcQScriptEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_eventFilter".}
proc fQScriptEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QScriptEngine_virtualbase_timerEvent".}
proc fcQScriptEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_timerEvent".}
proc fQScriptEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QScriptEngine_virtualbase_childEvent".}
proc fcQScriptEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_childEvent".}
proc fQScriptEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QScriptEngine_virtualbase_customEvent".}
proc fcQScriptEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_customEvent".}
proc fQScriptEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QScriptEngine_virtualbase_connectNotify".}
proc fcQScriptEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_connectNotify".}
proc fQScriptEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QScriptEngine_virtualbase_disconnectNotify".}
proc fcQScriptEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QScriptEngine_override_virtual_disconnectNotify".}
proc fcQScriptEngine_staticMetaObject(): pointer {.importc: "QScriptEngine_staticMetaObject".}
proc fcQScriptEngine_delete(self: pointer) {.importc: "QScriptEngine_delete".}


func init*(T: type gen_qscriptengine_types.QScriptSyntaxCheckResult, h: ptr cQScriptSyntaxCheckResult): gen_qscriptengine_types.QScriptSyntaxCheckResult =
  T(h: h)
proc create*(T: type gen_qscriptengine_types.QScriptSyntaxCheckResult, other: gen_qscriptengine_types.QScriptSyntaxCheckResult): gen_qscriptengine_types.QScriptSyntaxCheckResult =
  gen_qscriptengine_types.QScriptSyntaxCheckResult.init(fcQScriptSyntaxCheckResult_new(other.h))

proc state*(self: gen_qscriptengine_types.QScriptSyntaxCheckResult, ): cint =
  cint(fcQScriptSyntaxCheckResult_state(self.h))

proc errorLineNumber*(self: gen_qscriptengine_types.QScriptSyntaxCheckResult, ): cint =
  fcQScriptSyntaxCheckResult_errorLineNumber(self.h)

proc errorColumnNumber*(self: gen_qscriptengine_types.QScriptSyntaxCheckResult, ): cint =
  fcQScriptSyntaxCheckResult_errorColumnNumber(self.h)

proc errorMessage*(self: gen_qscriptengine_types.QScriptSyntaxCheckResult, ): string =
  let v_ms = fcQScriptSyntaxCheckResult_errorMessage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: gen_qscriptengine_types.QScriptSyntaxCheckResult, other: gen_qscriptengine_types.QScriptSyntaxCheckResult): void =
  fcQScriptSyntaxCheckResult_operatorAssign(self.h, other.h)

proc delete*(self: gen_qscriptengine_types.QScriptSyntaxCheckResult) =
  fcQScriptSyntaxCheckResult_delete(self.h)

func init*(T: type gen_qscriptengine_types.QScriptEngine, h: ptr cQScriptEngine): gen_qscriptengine_types.QScriptEngine =
  T(h: h)
proc create*(T: type gen_qscriptengine_types.QScriptEngine, ): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine.init(fcQScriptEngine_new())

proc create*(T: type gen_qscriptengine_types.QScriptEngine, parent: gen_qobject_types.QObject): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine.init(fcQScriptEngine_new2(parent.h))

proc metaObject*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScriptEngine_metaObject(self.h))

proc metacast*(self: gen_qscriptengine_types.QScriptEngine, param1: cstring): pointer =
  fcQScriptEngine_metacast(self.h, param1)

proc metacall*(self: gen_qscriptengine_types.QScriptEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQScriptEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscriptengine_types.QScriptEngine, s: cstring): string =
  let v_ms = fcQScriptEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscriptengine_types.QScriptEngine, s: cstring): string =
  let v_ms = fcQScriptEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc globalObject*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_globalObject(self.h))

proc setGlobalObject*(self: gen_qscriptengine_types.QScriptEngine, objectVal: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngine_setGlobalObject(self.h, objectVal.h)

proc currentContext*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptcontext_types.QScriptContext =
  gen_qscriptcontext_types.QScriptContext(h: fcQScriptEngine_currentContext(self.h))

proc pushContext*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptcontext_types.QScriptContext =
  gen_qscriptcontext_types.QScriptContext(h: fcQScriptEngine_pushContext(self.h))

proc popContext*(self: gen_qscriptengine_types.QScriptEngine, ): void =
  fcQScriptEngine_popContext(self.h)

proc canEvaluate*(self: gen_qscriptengine_types.QScriptEngine, program: string): bool =
  fcQScriptEngine_canEvaluate(self.h, struct_miqt_string(data: program, len: csize_t(len(program))))

proc checkSyntax*(_: type gen_qscriptengine_types.QScriptEngine, program: string): gen_qscriptengine_types.QScriptSyntaxCheckResult =
  gen_qscriptengine_types.QScriptSyntaxCheckResult(h: fcQScriptEngine_checkSyntax(struct_miqt_string(data: program, len: csize_t(len(program)))))

proc evaluate*(self: gen_qscriptengine_types.QScriptEngine, program: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_evaluate(self.h, struct_miqt_string(data: program, len: csize_t(len(program)))))

proc evaluate*(self: gen_qscriptengine_types.QScriptEngine, program: gen_qscriptprogram_types.QScriptProgram): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_evaluateWithProgram(self.h, program.h))

proc isEvaluating*(self: gen_qscriptengine_types.QScriptEngine, ): bool =
  fcQScriptEngine_isEvaluating(self.h)

proc abortEvaluation*(self: gen_qscriptengine_types.QScriptEngine, ): void =
  fcQScriptEngine_abortEvaluation(self.h)

proc hasUncaughtException*(self: gen_qscriptengine_types.QScriptEngine, ): bool =
  fcQScriptEngine_hasUncaughtException(self.h)

proc uncaughtException*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_uncaughtException(self.h))

proc uncaughtExceptionLineNumber*(self: gen_qscriptengine_types.QScriptEngine, ): cint =
  fcQScriptEngine_uncaughtExceptionLineNumber(self.h)

proc uncaughtExceptionBacktrace*(self: gen_qscriptengine_types.QScriptEngine, ): seq[string] =
  var v_ma = fcQScriptEngine_uncaughtExceptionBacktrace(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc clearExceptions*(self: gen_qscriptengine_types.QScriptEngine, ): void =
  fcQScriptEngine_clearExceptions(self.h)

proc nullValue*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_nullValue(self.h))

proc undefinedValue*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_undefinedValue(self.h))

proc newVariant*(self: gen_qscriptengine_types.QScriptEngine, value: gen_qvariant_types.QVariant): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newVariant(self.h, value.h))

proc newVariant*(self: gen_qscriptengine_types.QScriptEngine, objectVal: gen_qscriptvalue_types.QScriptValue, value: gen_qvariant_types.QVariant): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newVariant2(self.h, objectVal.h, value.h))

proc newRegExp*(self: gen_qscriptengine_types.QScriptEngine, regexp: gen_qregexp_types.QRegExp): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newRegExp(self.h, regexp.h))

proc newObject*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newObject(self.h))

proc newObject*(self: gen_qscriptengine_types.QScriptEngine, scriptClass: gen_qscriptclass_types.QScriptClass): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newObjectWithScriptClass(self.h, scriptClass.h))

proc newArray*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newArray(self.h))

proc newRegExp*(self: gen_qscriptengine_types.QScriptEngine, pattern: string, flags: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newRegExp2(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))), struct_miqt_string(data: flags, len: csize_t(len(flags)))))

proc newDate*(self: gen_qscriptengine_types.QScriptEngine, value: float64): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newDate(self.h, value))

proc newDate*(self: gen_qscriptengine_types.QScriptEngine, value: gen_qdatetime_types.QDateTime): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newDateWithValue(self.h, value.h))

proc newActivationObject*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newActivationObject(self.h))

proc newQObject*(self: gen_qscriptengine_types.QScriptEngine, objectVal: gen_qobject_types.QObject): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQObject(self.h, objectVal.h))

proc newQObject*(self: gen_qscriptengine_types.QScriptEngine, scriptObject: gen_qscriptvalue_types.QScriptValue, qtObject: gen_qobject_types.QObject): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQObject2(self.h, scriptObject.h, qtObject.h))

proc newQMetaObject*(self: gen_qscriptengine_types.QScriptEngine, metaObject: gen_qobjectdefs_types.QMetaObject): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQMetaObject(self.h, metaObject.h))

proc defaultPrototype*(self: gen_qscriptengine_types.QScriptEngine, metaTypeId: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_defaultPrototype(self.h, metaTypeId))

proc setDefaultPrototype*(self: gen_qscriptengine_types.QScriptEngine, metaTypeId: cint, prototype: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngine_setDefaultPrototype(self.h, metaTypeId, prototype.h)

proc installTranslatorFunctions*(self: gen_qscriptengine_types.QScriptEngine, ): void =
  fcQScriptEngine_installTranslatorFunctions(self.h)

proc importExtension*(self: gen_qscriptengine_types.QScriptEngine, extension: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_importExtension(self.h, struct_miqt_string(data: extension, len: csize_t(len(extension)))))

proc availableExtensions*(self: gen_qscriptengine_types.QScriptEngine, ): seq[string] =
  var v_ma = fcQScriptEngine_availableExtensions(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc importedExtensions*(self: gen_qscriptengine_types.QScriptEngine, ): seq[string] =
  var v_ma = fcQScriptEngine_importedExtensions(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc collectGarbage*(self: gen_qscriptengine_types.QScriptEngine, ): void =
  fcQScriptEngine_collectGarbage(self.h)

proc reportAdditionalMemoryCost*(self: gen_qscriptengine_types.QScriptEngine, size: cint): void =
  fcQScriptEngine_reportAdditionalMemoryCost(self.h, size)

proc setProcessEventsInterval*(self: gen_qscriptengine_types.QScriptEngine, interval: cint): void =
  fcQScriptEngine_setProcessEventsInterval(self.h, interval)

proc processEventsInterval*(self: gen_qscriptengine_types.QScriptEngine, ): cint =
  fcQScriptEngine_processEventsInterval(self.h)

proc setAgent*(self: gen_qscriptengine_types.QScriptEngine, agent: gen_qscriptengineagent_types.QScriptEngineAgent): void =
  fcQScriptEngine_setAgent(self.h, agent.h)

proc agent*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qscriptengineagent_types.QScriptEngineAgent =
  gen_qscriptengineagent_types.QScriptEngineAgent(h: fcQScriptEngine_agent(self.h))

proc toStringHandle*(self: gen_qscriptengine_types.QScriptEngine, str: string): gen_qscriptstring_types.QScriptString =
  gen_qscriptstring_types.QScriptString(h: fcQScriptEngine_toStringHandle(self.h, struct_miqt_string(data: str, len: csize_t(len(str)))))

proc toObject*(self: gen_qscriptengine_types.QScriptEngine, value: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_toObject(self.h, value.h))

proc objectById*(self: gen_qscriptengine_types.QScriptEngine, id: clonglong): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_objectById(self.h, id))

proc signalHandlerException*(self: gen_qscriptengine_types.QScriptEngine, exception: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngine_signalHandlerException(self.h, exception.h)

type QScriptEnginesignalHandlerExceptionSlot* = proc(exception: gen_qscriptvalue_types.QScriptValue)
proc miqt_exec_callback_QScriptEngine_signalHandlerException(slot: int, exception: pointer) {.exportc.} =
  let nimfunc = cast[ptr QScriptEnginesignalHandlerExceptionSlot](cast[pointer](slot))
  let slotval1 = gen_qscriptvalue_types.QScriptValue(h: exception)

  nimfunc[](slotval1)

proc onsignalHandlerException*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginesignalHandlerExceptionSlot) =
  var tmp = new QScriptEnginesignalHandlerExceptionSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_connect_signalHandlerException(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qscriptengine_types.QScriptEngine, s: cstring, c: cstring): string =
  let v_ms = fcQScriptEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscriptengine_types.QScriptEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScriptEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscriptengine_types.QScriptEngine, s: cstring, c: cstring): string =
  let v_ms = fcQScriptEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscriptengine_types.QScriptEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScriptEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc evaluate*(self: gen_qscriptengine_types.QScriptEngine, program: string, fileName: string): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_evaluate2(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc evaluate*(self: gen_qscriptengine_types.QScriptEngine, program: string, fileName: string, lineNumber: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_evaluate3(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), lineNumber))

proc abortEvaluation*(self: gen_qscriptengine_types.QScriptEngine, resultVal: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngine_abortEvaluation1(self.h, resultVal.h)

proc newObject*(self: gen_qscriptengine_types.QScriptEngine, scriptClass: gen_qscriptclass_types.QScriptClass, data: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newObject2(self.h, scriptClass.h, data.h))

proc newArray*(self: gen_qscriptengine_types.QScriptEngine, length: cuint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newArray1(self.h, length))

proc newQObject*(self: gen_qscriptengine_types.QScriptEngine, objectVal: gen_qobject_types.QObject, ownership: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQObject22(self.h, objectVal.h, cint(ownership)))

proc newQObject*(self: gen_qscriptengine_types.QScriptEngine, objectVal: gen_qobject_types.QObject, ownership: cint, options: ptr cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQObject3(self.h, objectVal.h, cint(ownership), options))

proc newQObject*(self: gen_qscriptengine_types.QScriptEngine, scriptObject: gen_qscriptvalue_types.QScriptValue, qtObject: gen_qobject_types.QObject, ownership: cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQObject32(self.h, scriptObject.h, qtObject.h, cint(ownership)))

proc newQObject*(self: gen_qscriptengine_types.QScriptEngine, scriptObject: gen_qscriptvalue_types.QScriptValue, qtObject: gen_qobject_types.QObject, ownership: cint, options: ptr cint): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQObject4(self.h, scriptObject.h, qtObject.h, cint(ownership), options))

proc newQMetaObject*(self: gen_qscriptengine_types.QScriptEngine, metaObject: gen_qobjectdefs_types.QMetaObject, ctor: gen_qscriptvalue_types.QScriptValue): gen_qscriptvalue_types.QScriptValue =
  gen_qscriptvalue_types.QScriptValue(h: fcQScriptEngine_newQMetaObject2(self.h, metaObject.h, ctor.h))

proc installTranslatorFunctions*(self: gen_qscriptengine_types.QScriptEngine, objectVal: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngine_installTranslatorFunctions1(self.h, objectVal.h)

proc QScriptEnginemetaObject*(self: gen_qscriptengine_types.QScriptEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQScriptEngine_virtualbase_metaObject(self.h))

type QScriptEnginemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginemetaObjectProc) =
  # TODO check subclass
  var tmp = new QScriptEnginemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_metaObject(self: ptr cQScriptEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QScriptEngine_metaObject ".} =
  var nimfunc = cast[ptr QScriptEnginemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScriptEnginemetacast*(self: gen_qscriptengine_types.QScriptEngine, param1: cstring): pointer =
  fQScriptEngine_virtualbase_metacast(self.h, param1)

type QScriptEnginemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginemetacastProc) =
  # TODO check subclass
  var tmp = new QScriptEnginemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_metacast(self: ptr cQScriptEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QScriptEngine_metacast ".} =
  var nimfunc = cast[ptr QScriptEnginemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScriptEnginemetacall*(self: gen_qscriptengine_types.QScriptEngine, param1: cint, param2: cint, param3: pointer): cint =
  fQScriptEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QScriptEnginemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginemetacallProc) =
  # TODO check subclass
  var tmp = new QScriptEnginemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_metacall(self: ptr cQScriptEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QScriptEngine_metacall ".} =
  var nimfunc = cast[ptr QScriptEnginemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QScriptEngineevent*(self: gen_qscriptengine_types.QScriptEngine, event: gen_qcoreevent_types.QEvent): bool =
  fQScriptEngine_virtualbase_event(self.h, event.h)

type QScriptEngineeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEngineeventProc) =
  # TODO check subclass
  var tmp = new QScriptEngineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_event(self: ptr cQScriptEngine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QScriptEngine_event ".} =
  var nimfunc = cast[ptr QScriptEngineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScriptEngineeventFilter*(self: gen_qscriptengine_types.QScriptEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQScriptEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QScriptEngineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEngineeventFilterProc) =
  # TODO check subclass
  var tmp = new QScriptEngineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_eventFilter(self: ptr cQScriptEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QScriptEngine_eventFilter ".} =
  var nimfunc = cast[ptr QScriptEngineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QScriptEnginetimerEvent*(self: gen_qscriptengine_types.QScriptEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQScriptEngine_virtualbase_timerEvent(self.h, event.h)

type QScriptEnginetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginetimerEventProc) =
  # TODO check subclass
  var tmp = new QScriptEnginetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_timerEvent(self: ptr cQScriptEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScriptEngine_timerEvent ".} =
  var nimfunc = cast[ptr QScriptEnginetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QScriptEnginechildEvent*(self: gen_qscriptengine_types.QScriptEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fQScriptEngine_virtualbase_childEvent(self.h, event.h)

type QScriptEnginechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginechildEventProc) =
  # TODO check subclass
  var tmp = new QScriptEnginechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_childEvent(self: ptr cQScriptEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScriptEngine_childEvent ".} =
  var nimfunc = cast[ptr QScriptEnginechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QScriptEnginecustomEvent*(self: gen_qscriptengine_types.QScriptEngine, event: gen_qcoreevent_types.QEvent): void =
  fQScriptEngine_virtualbase_customEvent(self.h, event.h)

type QScriptEnginecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginecustomEventProc) =
  # TODO check subclass
  var tmp = new QScriptEnginecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_customEvent(self: ptr cQScriptEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScriptEngine_customEvent ".} =
  var nimfunc = cast[ptr QScriptEnginecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QScriptEngineconnectNotify*(self: gen_qscriptengine_types.QScriptEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQScriptEngine_virtualbase_connectNotify(self.h, signal.h)

type QScriptEngineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEngineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScriptEngineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_connectNotify(self: ptr cQScriptEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScriptEngine_connectNotify ".} =
  var nimfunc = cast[ptr QScriptEngineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QScriptEnginedisconnectNotify*(self: gen_qscriptengine_types.QScriptEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQScriptEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QScriptEnginedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscriptengine_types.QScriptEngine, slot: QScriptEnginedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScriptEnginedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngine_disconnectNotify(self: ptr cQScriptEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScriptEngine_disconnectNotify ".} =
  var nimfunc = cast[ptr QScriptEnginedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscriptengine_types.QScriptEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScriptEngine_staticMetaObject())
proc delete*(self: gen_qscriptengine_types.QScriptEngine) =
  fcQScriptEngine_delete(self.h)
