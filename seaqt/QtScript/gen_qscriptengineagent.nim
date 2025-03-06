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
{.compile("gen_qscriptengineagent.cpp", cflags).}


type QScriptEngineAgentExtensionEnum* = distinct cint
template DebuggerInvocationRequest*(_: type QScriptEngineAgentExtensionEnum): untyped = 0


import ./gen_qscriptengineagent_types
export gen_qscriptengineagent_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qscriptengine_types,
  ./gen_qscriptvalue_types
export
  gen_qvariant_types,
  gen_qscriptengine_types,
  gen_qscriptvalue_types

type cQScriptEngineAgent*{.exportc: "QScriptEngineAgent", incompleteStruct.} = object

proc fcQScriptEngineAgent_new(engine: pointer): ptr cQScriptEngineAgent {.importc: "QScriptEngineAgent_new".}
proc fcQScriptEngineAgent_scriptLoad(self: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.importc: "QScriptEngineAgent_scriptLoad".}
proc fcQScriptEngineAgent_scriptUnload(self: pointer, id: clonglong): void {.importc: "QScriptEngineAgent_scriptUnload".}
proc fcQScriptEngineAgent_contextPush(self: pointer, ): void {.importc: "QScriptEngineAgent_contextPush".}
proc fcQScriptEngineAgent_contextPop(self: pointer, ): void {.importc: "QScriptEngineAgent_contextPop".}
proc fcQScriptEngineAgent_functionEntry(self: pointer, scriptId: clonglong): void {.importc: "QScriptEngineAgent_functionEntry".}
proc fcQScriptEngineAgent_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void {.importc: "QScriptEngineAgent_functionExit".}
proc fcQScriptEngineAgent_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.importc: "QScriptEngineAgent_positionChange".}
proc fcQScriptEngineAgent_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.importc: "QScriptEngineAgent_exceptionThrow".}
proc fcQScriptEngineAgent_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void {.importc: "QScriptEngineAgent_exceptionCatch".}
proc fcQScriptEngineAgent_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptEngineAgent_supportsExtension".}
proc fcQScriptEngineAgent_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptEngineAgent_extension".}
proc fcQScriptEngineAgent_engine(self: pointer, ): pointer {.importc: "QScriptEngineAgent_engine".}
proc fQScriptEngineAgent_virtualbase_scriptLoad(self: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void{.importc: "QScriptEngineAgent_virtualbase_scriptLoad".}
proc fcQScriptEngineAgent_override_virtual_scriptLoad(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_scriptLoad".}
proc fQScriptEngineAgent_virtualbase_scriptUnload(self: pointer, id: clonglong): void{.importc: "QScriptEngineAgent_virtualbase_scriptUnload".}
proc fcQScriptEngineAgent_override_virtual_scriptUnload(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_scriptUnload".}
proc fQScriptEngineAgent_virtualbase_contextPush(self: pointer, ): void{.importc: "QScriptEngineAgent_virtualbase_contextPush".}
proc fcQScriptEngineAgent_override_virtual_contextPush(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_contextPush".}
proc fQScriptEngineAgent_virtualbase_contextPop(self: pointer, ): void{.importc: "QScriptEngineAgent_virtualbase_contextPop".}
proc fcQScriptEngineAgent_override_virtual_contextPop(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_contextPop".}
proc fQScriptEngineAgent_virtualbase_functionEntry(self: pointer, scriptId: clonglong): void{.importc: "QScriptEngineAgent_virtualbase_functionEntry".}
proc fcQScriptEngineAgent_override_virtual_functionEntry(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_functionEntry".}
proc fQScriptEngineAgent_virtualbase_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void{.importc: "QScriptEngineAgent_virtualbase_functionExit".}
proc fcQScriptEngineAgent_override_virtual_functionExit(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_functionExit".}
proc fQScriptEngineAgent_virtualbase_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void{.importc: "QScriptEngineAgent_virtualbase_positionChange".}
proc fcQScriptEngineAgent_override_virtual_positionChange(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_positionChange".}
proc fQScriptEngineAgent_virtualbase_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void{.importc: "QScriptEngineAgent_virtualbase_exceptionThrow".}
proc fcQScriptEngineAgent_override_virtual_exceptionThrow(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_exceptionThrow".}
proc fQScriptEngineAgent_virtualbase_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void{.importc: "QScriptEngineAgent_virtualbase_exceptionCatch".}
proc fcQScriptEngineAgent_override_virtual_exceptionCatch(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_exceptionCatch".}
proc fQScriptEngineAgent_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QScriptEngineAgent_virtualbase_supportsExtension".}
proc fcQScriptEngineAgent_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_supportsExtension".}
proc fQScriptEngineAgent_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer{.importc: "QScriptEngineAgent_virtualbase_extension".}
proc fcQScriptEngineAgent_override_virtual_extension(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_extension".}
proc fcQScriptEngineAgent_delete(self: pointer) {.importc: "QScriptEngineAgent_delete".}


func init*(T: type gen_qscriptengineagent_types.QScriptEngineAgent, h: ptr cQScriptEngineAgent): gen_qscriptengineagent_types.QScriptEngineAgent =
  T(h: h)
proc create*(T: type gen_qscriptengineagent_types.QScriptEngineAgent, engine: gen_qscriptengine_types.QScriptEngine): gen_qscriptengineagent_types.QScriptEngineAgent =
  gen_qscriptengineagent_types.QScriptEngineAgent.init(fcQScriptEngineAgent_new(engine.h))

proc scriptLoad*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void =
  fcQScriptEngineAgent_scriptLoad(self.h, id, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), baseLineNumber)

proc scriptUnload*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong): void =
  fcQScriptEngineAgent_scriptUnload(self.h, id)

proc contextPush*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): void =
  fcQScriptEngineAgent_contextPush(self.h)

proc contextPop*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): void =
  fcQScriptEngineAgent_contextPop(self.h)

proc functionEntry*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong): void =
  fcQScriptEngineAgent_functionEntry(self.h, scriptId)

proc functionExit*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngineAgent_functionExit(self.h, scriptId, returnValue.h)

proc positionChange*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void =
  fcQScriptEngineAgent_positionChange(self.h, scriptId, lineNumber, columnNumber)

proc exceptionThrow*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void =
  fcQScriptEngineAgent_exceptionThrow(self.h, scriptId, exception.h, hasHandler)

proc exceptionCatch*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngineAgent_exceptionCatch(self.h, scriptId, exception.h)

proc supportsExtension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint): bool =
  fcQScriptEngineAgent_supportsExtension(self.h, cint(extension))

proc extension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScriptEngineAgent_extension(self.h, cint(extension), argument.h))

proc engine*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine(h: fcQScriptEngineAgent_engine(self.h))

proc QScriptEngineAgentscriptLoad*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void =
  fQScriptEngineAgent_virtualbase_scriptLoad(self.h, id, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), baseLineNumber)

type QScriptEngineAgentscriptLoadProc* = proc(id: clonglong, program: string, fileName: string, baseLineNumber: cint): void
proc onscriptLoad*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentscriptLoadProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentscriptLoadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_scriptLoad(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_scriptLoad(self: ptr cQScriptEngineAgent, slot: int, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_scriptLoad ".} =
  var nimfunc = cast[ptr QScriptEngineAgentscriptLoadProc](cast[pointer](slot))
  let slotval1 = id

  let vprogram_ms = program
  let vprogramx_ret = string.fromBytes(toOpenArrayByte(vprogram_ms.data, 0, int(vprogram_ms.len)-1))
  c_free(vprogram_ms.data)
  let slotval2 = vprogramx_ret

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval3 = vfileNamex_ret

  let slotval4 = baseLineNumber


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QScriptEngineAgentscriptUnload*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong): void =
  fQScriptEngineAgent_virtualbase_scriptUnload(self.h, id)

type QScriptEngineAgentscriptUnloadProc* = proc(id: clonglong): void
proc onscriptUnload*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentscriptUnloadProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentscriptUnloadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_scriptUnload(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_scriptUnload(self: ptr cQScriptEngineAgent, slot: int, id: clonglong): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_scriptUnload ".} =
  var nimfunc = cast[ptr QScriptEngineAgentscriptUnloadProc](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)
proc QScriptEngineAgentcontextPush*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): void =
  fQScriptEngineAgent_virtualbase_contextPush(self.h)

type QScriptEngineAgentcontextPushProc* = proc(): void
proc oncontextPush*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentcontextPushProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentcontextPushProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_contextPush(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_contextPush(self: ptr cQScriptEngineAgent, slot: int): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_contextPush ".} =
  var nimfunc = cast[ptr QScriptEngineAgentcontextPushProc](cast[pointer](slot))

  nimfunc[]()
proc QScriptEngineAgentcontextPop*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): void =
  fQScriptEngineAgent_virtualbase_contextPop(self.h)

type QScriptEngineAgentcontextPopProc* = proc(): void
proc oncontextPop*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentcontextPopProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentcontextPopProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_contextPop(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_contextPop(self: ptr cQScriptEngineAgent, slot: int): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_contextPop ".} =
  var nimfunc = cast[ptr QScriptEngineAgentcontextPopProc](cast[pointer](slot))

  nimfunc[]()
proc QScriptEngineAgentfunctionEntry*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong): void =
  fQScriptEngineAgent_virtualbase_functionEntry(self.h, scriptId)

type QScriptEngineAgentfunctionEntryProc* = proc(scriptId: clonglong): void
proc onfunctionEntry*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentfunctionEntryProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentfunctionEntryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_functionEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_functionEntry(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_functionEntry ".} =
  var nimfunc = cast[ptr QScriptEngineAgentfunctionEntryProc](cast[pointer](slot))
  let slotval1 = scriptId


  nimfunc[](slotval1)
proc QScriptEngineAgentfunctionExit*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void =
  fQScriptEngineAgent_virtualbase_functionExit(self.h, scriptId, returnValue.h)

type QScriptEngineAgentfunctionExitProc* = proc(scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void
proc onfunctionExit*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentfunctionExitProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentfunctionExitProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_functionExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_functionExit(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, returnValue: pointer): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_functionExit ".} =
  var nimfunc = cast[ptr QScriptEngineAgentfunctionExitProc](cast[pointer](slot))
  let slotval1 = scriptId

  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: returnValue)


  nimfunc[](slotval1, slotval2)
proc QScriptEngineAgentpositionChange*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void =
  fQScriptEngineAgent_virtualbase_positionChange(self.h, scriptId, lineNumber, columnNumber)

type QScriptEngineAgentpositionChangeProc* = proc(scriptId: clonglong, lineNumber: cint, columnNumber: cint): void
proc onpositionChange*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentpositionChangeProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentpositionChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_positionChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_positionChange(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_positionChange ".} =
  var nimfunc = cast[ptr QScriptEngineAgentpositionChangeProc](cast[pointer](slot))
  let slotval1 = scriptId

  let slotval2 = lineNumber

  let slotval3 = columnNumber


  nimfunc[](slotval1, slotval2, slotval3)
proc QScriptEngineAgentexceptionThrow*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void =
  fQScriptEngineAgent_virtualbase_exceptionThrow(self.h, scriptId, exception.h, hasHandler)

type QScriptEngineAgentexceptionThrowProc* = proc(scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void
proc onexceptionThrow*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentexceptionThrowProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentexceptionThrowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_exceptionThrow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_exceptionThrow(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_exceptionThrow ".} =
  var nimfunc = cast[ptr QScriptEngineAgentexceptionThrowProc](cast[pointer](slot))
  let slotval1 = scriptId

  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception)

  let slotval3 = hasHandler


  nimfunc[](slotval1, slotval2, slotval3)
proc QScriptEngineAgentexceptionCatch*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void =
  fQScriptEngineAgent_virtualbase_exceptionCatch(self.h, scriptId, exception.h)

type QScriptEngineAgentexceptionCatchProc* = proc(scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void
proc onexceptionCatch*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentexceptionCatchProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentexceptionCatchProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_exceptionCatch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_exceptionCatch(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, exception: pointer): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_exceptionCatch ".} =
  var nimfunc = cast[ptr QScriptEngineAgentexceptionCatchProc](cast[pointer](slot))
  let slotval1 = scriptId

  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception)


  nimfunc[](slotval1, slotval2)
proc QScriptEngineAgentsupportsExtension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint): bool =
  fQScriptEngineAgent_virtualbase_supportsExtension(self.h, cint(extension))

type QScriptEngineAgentsupportsExtensionProc* = proc(extension: cint): bool
proc onsupportsExtension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentsupportsExtensionProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentsupportsExtensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_supportsExtension(self: ptr cQScriptEngineAgent, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QScriptEngineAgent_supportsExtension ".} =
  var nimfunc = cast[ptr QScriptEngineAgentsupportsExtensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScriptEngineAgentextension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQScriptEngineAgent_virtualbase_extension(self.h, cint(extension), argument.h))

type QScriptEngineAgentextensionProc* = proc(extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant
proc onextension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, slot: QScriptEngineAgentextensionProc) =
  # TODO check subclass
  var tmp = new QScriptEngineAgentextensionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_extension(self: ptr cQScriptEngineAgent, slot: int, extension: cint, argument: pointer): pointer {.exportc: "miqt_exec_callback_QScriptEngineAgent_extension ".} =
  var nimfunc = cast[ptr QScriptEngineAgentextensionProc](cast[pointer](slot))
  let slotval1 = cint(extension)

  let slotval2 = gen_qvariant_types.QVariant(h: argument)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qscriptengineagent_types.QScriptEngineAgent) =
  fcQScriptEngineAgent_delete(self.h)
