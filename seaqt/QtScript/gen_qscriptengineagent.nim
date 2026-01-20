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

proc fcQScriptEngineAgent_scriptLoad(self: pointer, id: clonglong, program: struct_seaqt_string, fileName: struct_seaqt_string, baseLineNumber: cint): void {.importc: "QScriptEngineAgent_scriptLoad".}
proc fcQScriptEngineAgent_scriptUnload(self: pointer, id: clonglong): void {.importc: "QScriptEngineAgent_scriptUnload".}
proc fcQScriptEngineAgent_contextPush(self: pointer): void {.importc: "QScriptEngineAgent_contextPush".}
proc fcQScriptEngineAgent_contextPop(self: pointer): void {.importc: "QScriptEngineAgent_contextPop".}
proc fcQScriptEngineAgent_functionEntry(self: pointer, scriptId: clonglong): void {.importc: "QScriptEngineAgent_functionEntry".}
proc fcQScriptEngineAgent_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void {.importc: "QScriptEngineAgent_functionExit".}
proc fcQScriptEngineAgent_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.importc: "QScriptEngineAgent_positionChange".}
proc fcQScriptEngineAgent_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.importc: "QScriptEngineAgent_exceptionThrow".}
proc fcQScriptEngineAgent_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void {.importc: "QScriptEngineAgent_exceptionCatch".}
proc fcQScriptEngineAgent_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptEngineAgent_supportsExtension".}
proc fcQScriptEngineAgent_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptEngineAgent_extension".}
proc fcQScriptEngineAgent_engine(self: pointer): pointer {.importc: "QScriptEngineAgent_engine".}
proc fcQScriptEngineAgent_vdata(self: pointer): ptr pointer {.importc: "QScriptEngineAgent_vdata".}
proc fvdata_cQScriptEngineAgent(self: pointer): pointer {.importc: "vdata_QScriptEngineAgent".}

type cQScriptEngineAgentVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  scriptLoad*: proc(self: pointer, id: clonglong, program: struct_seaqt_string, fileName: struct_seaqt_string, baseLineNumber: cint): void {.cdecl, raises: [], gcsafe.}
  scriptUnload*: proc(self: pointer, id: clonglong): void {.cdecl, raises: [], gcsafe.}
  contextPush*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  contextPop*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  functionEntry*: proc(self: pointer, scriptId: clonglong): void {.cdecl, raises: [], gcsafe.}
  functionExit*: proc(self: pointer, scriptId: clonglong, returnValue: pointer): void {.cdecl, raises: [], gcsafe.}
  positionChange*: proc(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.cdecl, raises: [], gcsafe.}
  exceptionThrow*: proc(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.cdecl, raises: [], gcsafe.}
  exceptionCatch*: proc(self: pointer, scriptId: clonglong, exception: pointer): void {.cdecl, raises: [], gcsafe.}
  supportsExtension*: proc(self: pointer, extension: cint): bool {.cdecl, raises: [], gcsafe.}
  extension*: proc(self: pointer, extension: cint, argument: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQScriptEngineAgent_virtualbase_scriptLoad(self: pointer, id: clonglong, program: struct_seaqt_string, fileName: struct_seaqt_string, baseLineNumber: cint): void {.importc: "QScriptEngineAgent_virtualbase_scriptLoad".}
proc fcQScriptEngineAgent_virtualbase_scriptUnload(self: pointer, id: clonglong): void {.importc: "QScriptEngineAgent_virtualbase_scriptUnload".}
proc fcQScriptEngineAgent_virtualbase_contextPush(self: pointer): void {.importc: "QScriptEngineAgent_virtualbase_contextPush".}
proc fcQScriptEngineAgent_virtualbase_contextPop(self: pointer): void {.importc: "QScriptEngineAgent_virtualbase_contextPop".}
proc fcQScriptEngineAgent_virtualbase_functionEntry(self: pointer, scriptId: clonglong): void {.importc: "QScriptEngineAgent_virtualbase_functionEntry".}
proc fcQScriptEngineAgent_virtualbase_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void {.importc: "QScriptEngineAgent_virtualbase_functionExit".}
proc fcQScriptEngineAgent_virtualbase_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.importc: "QScriptEngineAgent_virtualbase_positionChange".}
proc fcQScriptEngineAgent_virtualbase_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.importc: "QScriptEngineAgent_virtualbase_exceptionThrow".}
proc fcQScriptEngineAgent_virtualbase_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void {.importc: "QScriptEngineAgent_virtualbase_exceptionCatch".}
proc fcQScriptEngineAgent_virtualbase_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptEngineAgent_virtualbase_supportsExtension".}
proc fcQScriptEngineAgent_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptEngineAgent_virtualbase_extension".}
proc fcQScriptEngineAgent_new(vtbl: pointer, vdata: csize_t, engine: pointer): ptr cQScriptEngineAgent {.importc: "QScriptEngineAgent_new".}

proc scriptLoad*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong, program: openArray[char], fileName: openArray[char], baseLineNumber: cint): void =
  fcQScriptEngineAgent_scriptLoad(self.h, id, struct_seaqt_string(data: if len(program) > 0: addr program[0] else: nil, len: csize_t(len(program))), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), baseLineNumber)

proc scriptUnload*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong): void =
  fcQScriptEngineAgent_scriptUnload(self.h, id)

proc contextPush*(self: gen_qscriptengineagent_types.QScriptEngineAgent): void =
  fcQScriptEngineAgent_contextPush(self.h)

proc contextPop*(self: gen_qscriptengineagent_types.QScriptEngineAgent): void =
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

proc engine*(self: gen_qscriptengineagent_types.QScriptEngineAgent): gen_qscriptengine_types.QScriptEngine =
  gen_qscriptengine_types.QScriptEngine(h: fcQScriptEngineAgent_engine(self.h), owned: false)

type QScriptEngineAgentscriptLoadProc* = proc(self: QScriptEngineAgent, id: clonglong, program: openArray[char], fileName: openArray[char], baseLineNumber: cint): void {.raises: [], gcsafe.}
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

proc QScriptEngineAgentscriptLoad*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong, program: openArray[char], fileName: openArray[char], baseLineNumber: cint): void =
  fcQScriptEngineAgent_virtualbase_scriptLoad(self.h, id, struct_seaqt_string(data: if len(program) > 0: addr program[0] else: nil, len: csize_t(len(program))), struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), baseLineNumber)

proc QScriptEngineAgentscriptUnload*(self: gen_qscriptengineagent_types.QScriptEngineAgent, id: clonglong): void =
  fcQScriptEngineAgent_virtualbase_scriptUnload(self.h, id)

proc QScriptEngineAgentcontextPush*(self: gen_qscriptengineagent_types.QScriptEngineAgent): void =
  fcQScriptEngineAgent_virtualbase_contextPush(self.h)

proc QScriptEngineAgentcontextPop*(self: gen_qscriptengineagent_types.QScriptEngineAgent): void =
  fcQScriptEngineAgent_virtualbase_contextPop(self.h)

proc QScriptEngineAgentfunctionEntry*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong): void =
  fcQScriptEngineAgent_virtualbase_functionEntry(self.h, scriptId)

proc QScriptEngineAgentfunctionExit*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngineAgent_virtualbase_functionExit(self.h, scriptId, returnValue.h)

proc QScriptEngineAgentpositionChange*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void =
  fcQScriptEngineAgent_virtualbase_positionChange(self.h, scriptId, lineNumber, columnNumber)

proc QScriptEngineAgentexceptionThrow*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void =
  fcQScriptEngineAgent_virtualbase_exceptionThrow(self.h, scriptId, exception.h, hasHandler)

proc QScriptEngineAgentexceptionCatch*(self: gen_qscriptengineagent_types.QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void =
  fcQScriptEngineAgent_virtualbase_exceptionCatch(self.h, scriptId, exception.h)

proc QScriptEngineAgentsupportsExtension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint): bool =
  fcQScriptEngineAgent_virtualbase_supportsExtension(self.h, cint(extension))

proc QScriptEngineAgentextension*(self: gen_qscriptengineagent_types.QScriptEngineAgent, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScriptEngineAgent_virtualbase_extension(self.h, cint(extension), argument.h), owned: true)


proc fcQScriptEngineAgent_vtable_callback_scriptLoad(self: pointer, id: clonglong, program: struct_seaqt_string, fileName: struct_seaqt_string, baseLineNumber: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = id
  let vprogram_ms = program
  let vprogramx_ret = string.fromBytes(vprogram_ms)
  c_free(vprogram_ms.data)
  let slotval2 = vprogramx_ret
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(vfileName_ms)
  c_free(vfileName_ms.data)
  let slotval3 = vfileNamex_ret
  let slotval4 = baseLineNumber
  vtbl[].scriptLoad(self, slotval1, slotval2, slotval3, slotval4)

proc fcQScriptEngineAgent_vtable_callback_scriptUnload(self: pointer, id: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = id
  vtbl[].scriptUnload(self, slotval1)

proc fcQScriptEngineAgent_vtable_callback_contextPush(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  vtbl[].contextPush(self)

proc fcQScriptEngineAgent_vtable_callback_contextPop(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  vtbl[].contextPop(self)

proc fcQScriptEngineAgent_vtable_callback_functionEntry(self: pointer, scriptId: clonglong): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  vtbl[].functionEntry(self, slotval1)

proc fcQScriptEngineAgent_vtable_callback_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: returnValue, owned: false)
  vtbl[].functionExit(self, slotval1, slotval2)

proc fcQScriptEngineAgent_vtable_callback_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = lineNumber
  let slotval3 = columnNumber
  vtbl[].positionChange(self, slotval1, slotval2, slotval3)

proc fcQScriptEngineAgent_vtable_callback_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  let slotval3 = hasHandler
  vtbl[].exceptionThrow(self, slotval1, slotval2, slotval3)

proc fcQScriptEngineAgent_vtable_callback_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  vtbl[].exceptionCatch(self, slotval1, slotval2)

proc fcQScriptEngineAgent_vtable_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
  let self = QScriptEngineAgent(h: self)
  let slotval1 = cint(extension)
  var virtualReturn = vtbl[].supportsExtension(self, slotval1)
  virtualReturn

proc fcQScriptEngineAgent_vtable_callback_extension(self: pointer, extension: cint, argument: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
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

method scriptLoad*(self: VirtualQScriptEngineAgent, id: clonglong, program: openArray[char], fileName: openArray[char], baseLineNumber: cint): void {.base.} =
  QScriptEngineAgentscriptLoad(self[], id, program, fileName, baseLineNumber)
method scriptUnload*(self: VirtualQScriptEngineAgent, id: clonglong): void {.base.} =
  QScriptEngineAgentscriptUnload(self[], id)
method contextPush*(self: VirtualQScriptEngineAgent): void {.base.} =
  QScriptEngineAgentcontextPush(self[])
method contextPop*(self: VirtualQScriptEngineAgent): void {.base.} =
  QScriptEngineAgentcontextPop(self[])
method functionEntry*(self: VirtualQScriptEngineAgent, scriptId: clonglong): void {.base.} =
  QScriptEngineAgentfunctionEntry(self[], scriptId)
method functionExit*(self: VirtualQScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue_types.QScriptValue): void {.base.} =
  QScriptEngineAgentfunctionExit(self[], scriptId, returnValue)
method positionChange*(self: VirtualQScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.base.} =
  QScriptEngineAgentpositionChange(self[], scriptId, lineNumber, columnNumber)
method exceptionThrow*(self: VirtualQScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue, hasHandler: bool): void {.base.} =
  QScriptEngineAgentexceptionThrow(self[], scriptId, exception, hasHandler)
method exceptionCatch*(self: VirtualQScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue_types.QScriptValue): void {.base.} =
  QScriptEngineAgentexceptionCatch(self[], scriptId, exception)
method supportsExtension*(self: VirtualQScriptEngineAgent, extension: cint): bool {.base.} =
  QScriptEngineAgentsupportsExtension(self[], extension)
method extension*(self: VirtualQScriptEngineAgent, extension: cint, argument: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  QScriptEngineAgentextension(self[], extension, argument)

proc fcQScriptEngineAgent_method_callback_scriptLoad(self: pointer, id: clonglong, program: struct_seaqt_string, fileName: struct_seaqt_string, baseLineNumber: cint): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = id
  let vprogram_ms = program
  let vprogramx_ret = string.fromBytes(vprogram_ms)
  c_free(vprogram_ms.data)
  let slotval2 = vprogramx_ret
  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(vfileName_ms)
  c_free(vfileName_ms.data)
  let slotval3 = vfileNamex_ret
  let slotval4 = baseLineNumber
  inst.scriptLoad(slotval1, slotval2, slotval3, slotval4)

proc fcQScriptEngineAgent_method_callback_scriptUnload(self: pointer, id: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = id
  inst.scriptUnload(slotval1)

proc fcQScriptEngineAgent_method_callback_contextPush(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  inst.contextPush()

proc fcQScriptEngineAgent_method_callback_contextPop(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  inst.contextPop()

proc fcQScriptEngineAgent_method_callback_functionEntry(self: pointer, scriptId: clonglong): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = scriptId
  inst.functionEntry(slotval1)

proc fcQScriptEngineAgent_method_callback_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: returnValue, owned: false)
  inst.functionExit(slotval1, slotval2)

proc fcQScriptEngineAgent_method_callback_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = scriptId
  let slotval2 = lineNumber
  let slotval3 = columnNumber
  inst.positionChange(slotval1, slotval2, slotval3)

proc fcQScriptEngineAgent_method_callback_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  let slotval3 = hasHandler
  inst.exceptionThrow(slotval1, slotval2, slotval3)

proc fcQScriptEngineAgent_method_callback_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = scriptId
  let slotval2 = gen_qscriptvalue_types.QScriptValue(h: exception, owned: false)
  inst.exceptionCatch(slotval1, slotval2)

proc fcQScriptEngineAgent_method_callback_supportsExtension(self: pointer, extension: cint): bool {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = cint(extension)
  var virtualReturn = inst.supportsExtension(slotval1)
  virtualReturn

proc fcQScriptEngineAgent_method_callback_extension(self: pointer, extension: cint, argument: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQScriptEngineAgent](fcQScriptEngineAgent_vdata(self)[])
  let slotval1 = cint(extension)
  let slotval2 = gen_qvariant_types.QVariant(h: argument, owned: false)
  var virtualReturn = inst.extension(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qscriptengineagent_types.QScriptEngineAgent,
    engine: gen_qscriptengine_types.QScriptEngine,
    vtbl: ref QScriptEngineAgentVTable = nil): gen_qscriptengineagent_types.QScriptEngineAgent =
  let vtbl = if vtbl == nil: new QScriptEngineAgentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScriptEngineAgentVTable](fcQScriptEngineAgent_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].scriptLoad):
    vtbl[].vtbl.scriptLoad = fcQScriptEngineAgent_vtable_callback_scriptLoad
  if not isNil(vtbl[].scriptUnload):
    vtbl[].vtbl.scriptUnload = fcQScriptEngineAgent_vtable_callback_scriptUnload
  if not isNil(vtbl[].contextPush):
    vtbl[].vtbl.contextPush = fcQScriptEngineAgent_vtable_callback_contextPush
  if not isNil(vtbl[].contextPop):
    vtbl[].vtbl.contextPop = fcQScriptEngineAgent_vtable_callback_contextPop
  if not isNil(vtbl[].functionEntry):
    vtbl[].vtbl.functionEntry = fcQScriptEngineAgent_vtable_callback_functionEntry
  if not isNil(vtbl[].functionExit):
    vtbl[].vtbl.functionExit = fcQScriptEngineAgent_vtable_callback_functionExit
  if not isNil(vtbl[].positionChange):
    vtbl[].vtbl.positionChange = fcQScriptEngineAgent_vtable_callback_positionChange
  if not isNil(vtbl[].exceptionThrow):
    vtbl[].vtbl.exceptionThrow = fcQScriptEngineAgent_vtable_callback_exceptionThrow
  if not isNil(vtbl[].exceptionCatch):
    vtbl[].vtbl.exceptionCatch = fcQScriptEngineAgent_vtable_callback_exceptionCatch
  if not isNil(vtbl[].supportsExtension):
    vtbl[].vtbl.supportsExtension = fcQScriptEngineAgent_vtable_callback_supportsExtension
  if not isNil(vtbl[].extension):
    vtbl[].vtbl.extension = fcQScriptEngineAgent_vtable_callback_extension
  let tmp = gen_qscriptengineagent_types.QScriptEngineAgent(h: fcQScriptEngineAgent_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), engine.h), owned: true)
  fcQScriptEngineAgent_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQScriptEngineAgent_mvtbl = cQScriptEngineAgentVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScriptEngineAgent()[])](self.fcQScriptEngineAgent_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  scriptLoad: fcQScriptEngineAgent_method_callback_scriptLoad,
  scriptUnload: fcQScriptEngineAgent_method_callback_scriptUnload,
  contextPush: fcQScriptEngineAgent_method_callback_contextPush,
  contextPop: fcQScriptEngineAgent_method_callback_contextPop,
  functionEntry: fcQScriptEngineAgent_method_callback_functionEntry,
  functionExit: fcQScriptEngineAgent_method_callback_functionExit,
  positionChange: fcQScriptEngineAgent_method_callback_positionChange,
  exceptionThrow: fcQScriptEngineAgent_method_callback_exceptionThrow,
  exceptionCatch: fcQScriptEngineAgent_method_callback_exceptionCatch,
  supportsExtension: fcQScriptEngineAgent_method_callback_supportsExtension,
  extension: fcQScriptEngineAgent_method_callback_extension,
)
proc create*(T: type gen_qscriptengineagent_types.QScriptEngineAgent,
    engine: gen_qscriptengine_types.QScriptEngine,
    inst: VirtualQScriptEngineAgent) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScriptEngineAgent_new(addr(cQScriptEngineAgent_mvtbl), csize_t(sizeof(pointer)), engine.h)
  fcQScriptEngineAgent_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

