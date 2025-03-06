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
type cQScriptEngineAgentVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQScriptEngineAgentVTable, self: ptr cQScriptEngineAgent) {.cdecl, raises:[], gcsafe.}
  scriptLoad*: proc(vtbl, self: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.cdecl, raises: [], gcsafe.}
  scriptUnload*: proc(vtbl, self: pointer, id: clonglong): void {.cdecl, raises: [], gcsafe.}
  contextPush*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  contextPop*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  functionEntry*: proc(vtbl, self: pointer, scriptId: clonglong): void {.cdecl, raises: [], gcsafe.}
  functionExit*: proc(vtbl, self: pointer, scriptId: clonglong, returnValue: pointer): void {.cdecl, raises: [], gcsafe.}
  positionChange*: proc(vtbl, self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.cdecl, raises: [], gcsafe.}
  exceptionThrow*: proc(vtbl, self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.cdecl, raises: [], gcsafe.}
  exceptionCatch*: proc(vtbl, self: pointer, scriptId: clonglong, exception: pointer): void {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(vtbl, self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  extension*: proc(vtbl, self: pointer, extension: cint, argument: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQScriptEngineAgent_virtualbase_scriptLoad(self: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.importc: "QScriptEngineAgent_virtualbase_scriptLoad".}
proc fcQScriptEngineAgent_virtualbase_scriptUnload(self: pointer, id: clonglong): void {.importc: "QScriptEngineAgent_virtualbase_scriptUnload".}
proc fcQScriptEngineAgent_virtualbase_contextPush(self: pointer, ): void {.importc: "QScriptEngineAgent_virtualbase_contextPush".}
proc fcQScriptEngineAgent_virtualbase_contextPop(self: pointer, ): void {.importc: "QScriptEngineAgent_virtualbase_contextPop".}
proc fcQScriptEngineAgent_virtualbase_functionEntry(self: pointer, scriptId: clonglong): void {.importc: "QScriptEngineAgent_virtualbase_functionEntry".}
proc fcQScriptEngineAgent_virtualbase_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void {.importc: "QScriptEngineAgent_virtualbase_functionExit".}
proc fcQScriptEngineAgent_virtualbase_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.importc: "QScriptEngineAgent_virtualbase_positionChange".}
proc fcQScriptEngineAgent_virtualbase_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.importc: "QScriptEngineAgent_virtualbase_exceptionThrow".}
proc fcQScriptEngineAgent_virtualbase_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void {.importc: "QScriptEngineAgent_virtualbase_exceptionCatch".}
proc fcQScriptEngineAgent_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptEngineAgent_virtualbase_supportsExtension".}
proc fcQScriptEngineAgent_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptEngineAgent_virtualbase_extension".}
proc fcQScriptEngineAgent_new(vtbl: pointer, engine: pointer): ptr cQScriptEngineAgent {.importc: "QScriptEngineAgent_new".}

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
  gen_qvariant_types.QVariant(h: fcQScriptEngineAgent_extension(self.h, cint(extension), argument.h), owned: true)

proc engine*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine(h: fcQScriptEngineAgent_engine(self.h), owned: false)

type QScriptEngineAgentscriptLoadProc* = proc(self: QScriptEngineAgent, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void {.raises: [], gcsafe.}
type QScriptEngineAgentscriptUnloadProc* = proc(self: QScriptEngineAgent, id: clonglong): void {.raises: [], gcsafe.}
type QScriptEngineAgentcontextPushProc* = proc(self: QScriptEngineAgent): void {.raises: [], gcsafe.}
type QScriptEngineAgentcontextPopProc* = proc(self: QScriptEngineAgent): void {.raises: [], gcsafe.}
type QScriptEngineAgentfunctionEntryProc* = proc(self: QScriptEngineAgent, scriptId: clonglong): void {.raises: [], gcsafe.}
type QScriptEngineAgentfunctionExitProc* = proc(self: QScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void {.raises: [], gcsafe.}
type QScriptEngineAgentpositionChangeProc* = proc(self: QScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.raises: [], gcsafe.}
type QScriptEngineAgentexceptionThrowProc* = proc(self: QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void {.raises: [], gcsafe.}
type QScriptEngineAgentexceptionCatchProc* = proc(self: QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void {.raises: [], gcsafe.}
type QScriptEngineAgentsupportsExtensionProc* = proc(self: QScriptEngineAgent, extension: cint): bool {.raises: [], gcsafe.}
type QScriptEngineAgentextensionProc* = proc(self: QScriptEngineAgent, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QScriptEngineAgentVTable* {.inheritable, pure.} = object
  vtbl: cQScriptEngineAgentVTable
  scriptLoad*: QScriptEngineAgentscriptLoadProc
  scriptUnload*: QScriptEngineAgentscriptUnloadProc
  contextPush*: QScriptEngineAgentcontextPushProc
  contextPop*: QScriptEngineAgentcontextPopProc
  functionEntry*: QScriptEngineAgentfunctionEntryProc
  functionExit*: QScriptEngineAgentfunctionExitProc
  positionChange*: QScriptEngineAgentpositionChangeProc
  exceptionThrow*: QScriptEngineAgentexceptionThrowProc
  exceptionCatch*: QScriptEngineAgentexceptionCatchProc
  supportsExtension*: QScriptEngineAgentsupportsExtensionProc
  extension*: QScriptEngineAgentextensionProc
proc QScriptEngineAgentscriptLoad*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void =
  fcQScriptEngineAgent_virtualbase_scriptLoad(self.h, id, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), baseLineNumber)

proc miqt_exec_callback_cQScriptEngineAgent_scriptLoad(vtbl: pointer, self: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
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
  vtbl[].scriptLoad(self, slotval1, slotval2, slotval3, slotval4)

proc QScriptEngineAgentscriptUnload*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong): void =
  fcQScriptEngineAgent_virtualbase_scriptUnload(self.h, id)

proc miqt_exec_callback_cQScriptEngineAgent_scriptUnload(vtbl: pointer, self: pointer, id: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = id
  vtbl[].scriptUnload(self, slotval1)

proc QScriptEngineAgentcontextPush*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): void =
  fcQScriptEngineAgent_virtualbase_contextPush(self.h)

proc miqt_exec_callback_cQScriptEngineAgent_contextPush(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  vtbl[].contextPush(self)

proc QScriptEngineAgentcontextPop*(self: gen_qscriptengineagent_types.QScriptEngineAgent, ): void =
  fcQScriptEngineAgent_virtualbase_contextPop(self.h)

proc miqt_exec_callback_cQScriptEngineAgent_contextPop(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  vtbl[].contextPop(self)

proc QScriptEngineAgentfunctionEntry*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong): void =
  fcQScriptEngineAgent_virtualbase_functionEntry(self.h, scriptId)

proc miqt_exec_callback_cQScriptEngineAgent_functionEntry(vtbl: pointer, self: pointer, scriptId: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  vtbl[].functionEntry(self, slotval1)

proc QScriptEngineAgentfunctionExit*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngineAgent_virtualbase_functionExit(self.h, scriptId, returnValue.h)

proc miqt_exec_callback_cQScriptEngineAgent_functionExit(vtbl: pointer, self: pointer, scriptId: clonglong, returnValue: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: returnValue, owned: false)
  vtbl[].functionExit(self, slotval1, slotval2)

proc QScriptEngineAgentpositionChange*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void =
  fcQScriptEngineAgent_virtualbase_positionChange(self.h, scriptId, lineNumber, columnNumber)

proc miqt_exec_callback_cQScriptEngineAgent_positionChange(vtbl: pointer, self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = lineNumber
  let slotval3 = columnNumber
  vtbl[].positionChange(self, slotval1, slotval2, slotval3)

proc QScriptEngineAgentexceptionThrow*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void =
  fcQScriptEngineAgent_virtualbase_exceptionThrow(self.h, scriptId, exception.h, hasHandler)

proc miqt_exec_callback_cQScriptEngineAgent_exceptionThrow(vtbl: pointer, self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  let slotval3 = hasHandler
  vtbl[].exceptionThrow(self, slotval1, slotval2, slotval3)

proc QScriptEngineAgentexceptionCatch*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngineAgent_virtualbase_exceptionCatch(self.h, scriptId, exception.h)

proc miqt_exec_callback_cQScriptEngineAgent_exceptionCatch(vtbl: pointer, self: pointer, scriptId: clonglong, exception: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  vtbl[].exceptionCatch(self, slotval1, slotval2)

proc QScriptEngineAgentsupportsExtension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint): bool =
  fcQScriptEngineAgent_virtualbase_supportsExtension(self.h, cint(extension))

proc miqt_exec_callback_cQScriptEngineAgent_supportsExtension(vtbl: pointer, self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc QScriptEngineAgentextension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScriptEngineAgent_virtualbase_extension(self.h, cint(extension), argument.h), owned: true)

proc miqt_exec_callback_cQScriptEngineAgent_extension(vtbl: pointer, self: pointer, extension: cint, argument: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](vtbl)
  let self = QScriptEngineAgent(h: self)
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: argument, owned: false)
  var virtualReturn = vtbl[].extension(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQScriptEngineAgent* {.inheritable.} = ref object of QScriptEngineAgent
  vtbl*: cQScriptEngineAgentVTable
method scriptLoad*(self: VirtualQScriptEngineAgent, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void {.base.} =
  QScriptEngineAgentscriptLoad(self[], id, program, fileName, baseLineNumber)
proc miqt_exec_method_cQScriptEngineAgent_scriptLoad(vtbl: pointer, inst: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
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
  vtbl.scriptLoad(slotval1, slotval2, slotval3, slotval4)

method scriptUnload*(self: VirtualQScriptEngineAgent, id: clonglong): void {.base.} =
  QScriptEngineAgentscriptUnload(self[], id)
proc miqt_exec_method_cQScriptEngineAgent_scriptUnload(vtbl: pointer, inst: pointer, id: clonglong): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = id
  vtbl.scriptUnload(slotval1)

method contextPush*(self: VirtualQScriptEngineAgent, ): void {.base.} =
  QScriptEngineAgentcontextPush(self[])
proc miqt_exec_method_cQScriptEngineAgent_contextPush(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  vtbl.contextPush()

method contextPop*(self: VirtualQScriptEngineAgent, ): void {.base.} =
  QScriptEngineAgentcontextPop(self[])
proc miqt_exec_method_cQScriptEngineAgent_contextPop(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  vtbl.contextPop()

method functionEntry*(self: VirtualQScriptEngineAgent, scriptId: clonglong): void {.base.} =
  QScriptEngineAgentfunctionEntry(self[], scriptId)
proc miqt_exec_method_cQScriptEngineAgent_functionEntry(vtbl: pointer, inst: pointer, scriptId: clonglong): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = scriptId
  vtbl.functionEntry(slotval1)

method functionExit*(self: VirtualQScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void {.base.} =
  QScriptEngineAgentfunctionExit(self[], scriptId, returnValue)
proc miqt_exec_method_cQScriptEngineAgent_functionExit(vtbl: pointer, inst: pointer, scriptId: clonglong, returnValue: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: returnValue, owned: false)
  vtbl.functionExit(slotval1, slotval2)

method positionChange*(self: VirtualQScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.base.} =
  QScriptEngineAgentpositionChange(self[], scriptId, lineNumber, columnNumber)
proc miqt_exec_method_cQScriptEngineAgent_positionChange(vtbl: pointer, inst: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = scriptId
  let slotval2 = lineNumber
  let slotval3 = columnNumber
  vtbl.positionChange(slotval1, slotval2, slotval3)

method exceptionThrow*(self: VirtualQScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void {.base.} =
  QScriptEngineAgentexceptionThrow(self[], scriptId, exception, hasHandler)
proc miqt_exec_method_cQScriptEngineAgent_exceptionThrow(vtbl: pointer, inst: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  let slotval3 = hasHandler
  vtbl.exceptionThrow(slotval1, slotval2, slotval3)

method exceptionCatch*(self: VirtualQScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void {.base.} =
  QScriptEngineAgentexceptionCatch(self[], scriptId, exception)
proc miqt_exec_method_cQScriptEngineAgent_exceptionCatch(vtbl: pointer, inst: pointer, scriptId: clonglong, exception: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  vtbl.exceptionCatch(slotval1, slotval2)

method supportsExtension*(self: VirtualQScriptEngineAgent, extension: cint): bool {.base.} =
  QScriptEngineAgentsupportsExtension(self[], extension)
proc miqt_exec_method_cQScriptEngineAgent_supportsExtension(vtbl: pointer, inst: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = cint(extension)
  var virtualReturn = vtbl.supportsExtension(slotval1)
  virtualReturn

method extension*(self: VirtualQScriptEngineAgent, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QScriptEngineAgentextension(self[], extension, argument)
proc miqt_exec_method_cQScriptEngineAgent_extension(vtbl: pointer, inst: pointer, extension: cint, argument: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQScriptEngineAgent](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: argument, owned: false)
  var virtualReturn = vtbl.extension(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qscriptengineagent_types.QScriptEngineAgent,
    engine: gen_qscriptengine_types.QScriptEngine,
    vtbl: ref QScriptEngineAgentVTable = nil): gen_qscriptengineagent_types.QScriptEngineAgent =
  let vtbl = if vtbl == nil: new QScriptEngineAgentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQScriptEngineAgentVTable, _: ptr cQScriptEngineAgent) {.cdecl.} =
    let vtbl = cast[ref QScriptEngineAgentVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].scriptLoad):
    vtbl[].vtbl.scriptLoad = miqt_exec_callback_cQScriptEngineAgent_scriptLoad
  if not isNil(vtbl[].scriptUnload):
    vtbl[].vtbl.scriptUnload = miqt_exec_callback_cQScriptEngineAgent_scriptUnload
  if not isNil(vtbl[].contextPush):
    vtbl[].vtbl.contextPush = miqt_exec_callback_cQScriptEngineAgent_contextPush
  if not isNil(vtbl[].contextPop):
    vtbl[].vtbl.contextPop = miqt_exec_callback_cQScriptEngineAgent_contextPop
  if not isNil(vtbl[].functionEntry):
    vtbl[].vtbl.functionEntry = miqt_exec_callback_cQScriptEngineAgent_functionEntry
  if not isNil(vtbl[].functionExit):
    vtbl[].vtbl.functionExit = miqt_exec_callback_cQScriptEngineAgent_functionExit
  if not isNil(vtbl[].positionChange):
    vtbl[].vtbl.positionChange = miqt_exec_callback_cQScriptEngineAgent_positionChange
  if not isNil(vtbl[].exceptionThrow):
    vtbl[].vtbl.exceptionThrow = miqt_exec_callback_cQScriptEngineAgent_exceptionThrow
  if not isNil(vtbl[].exceptionCatch):
    vtbl[].vtbl.exceptionCatch = miqt_exec_callback_cQScriptEngineAgent_exceptionCatch
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = miqt_exec_callback_cQScriptEngineAgent_supportsExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = miqt_exec_callback_cQScriptEngineAgent_extension
  gen_qscriptengineagent_types.QScriptEngineAgent(h: fcQScriptEngineAgent_new(addr(vtbl[].vtbl), engine.h), owned: true)

proc create*(T: type gen_qscriptengineagent_types.QScriptEngineAgent,
    engine: gen_qscriptengine_types.QScriptEngine,
    vtbl: VirtualQScriptEngineAgent) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQScriptEngineAgentVTable, _: ptr cQScriptEngineAgent) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQScriptEngineAgent()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQScriptEngineAgent, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.scriptLoad = miqt_exec_method_cQScriptEngineAgent_scriptLoad
  vtbl[].vtbl.scriptUnload = miqt_exec_method_cQScriptEngineAgent_scriptUnload
  vtbl[].vtbl.contextPush = miqt_exec_method_cQScriptEngineAgent_contextPush
  vtbl[].vtbl.contextPop = miqt_exec_method_cQScriptEngineAgent_contextPop
  vtbl[].vtbl.functionEntry = miqt_exec_method_cQScriptEngineAgent_functionEntry
  vtbl[].vtbl.functionExit = miqt_exec_method_cQScriptEngineAgent_functionExit
  vtbl[].vtbl.positionChange = miqt_exec_method_cQScriptEngineAgent_positionChange
  vtbl[].vtbl.exceptionThrow = miqt_exec_method_cQScriptEngineAgent_exceptionThrow
  vtbl[].vtbl.exceptionCatch = miqt_exec_method_cQScriptEngineAgent_exceptionCatch
  vtbl[].vtbl.supportsExtension = miqt_exec_method_cQScriptEngineAgent_supportsExtension
  vtbl[].vtbl.extension = miqt_exec_method_cQScriptEngineAgent_extension
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQScriptEngineAgent_new(addr(vtbl[].vtbl), engine.h)
  vtbl[].owned = true

