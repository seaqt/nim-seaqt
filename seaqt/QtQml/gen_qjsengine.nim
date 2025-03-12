import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qjsengine.cpp", cflags).}


type QJSEngineObjectOwnershipEnum* = distinct cint
template CppOwnership*(_: type QJSEngineObjectOwnershipEnum): untyped = 0
template JavaScriptOwnership*(_: type QJSEngineObjectOwnershipEnum): untyped = 1


type QJSEngineExtensionEnum* = distinct cint
template TranslationExtension*(_: type QJSEngineExtensionEnum): untyped = 1
template ConsoleExtension*(_: type QJSEngineExtensionEnum): untyped = 2
template GarbageCollectionExtension*(_: type QJSEngineExtensionEnum): untyped = 4
template AllExtensions*(_: type QJSEngineExtensionEnum): untyped = 4294967295


import ./gen_qjsengine_types
export gen_qjsengine_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qjsvalue_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qjsvalue_types

type cQJSEngine*{.exportc: "QJSEngine", incompleteStruct.} = object

proc fcQJSEngine_metaObject(self: pointer): pointer {.importc: "QJSEngine_metaObject".}
proc fcQJSEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QJSEngine_metacast".}
proc fcQJSEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QJSEngine_metacall".}
proc fcQJSEngine_tr(s: cstring): struct_miqt_string {.importc: "QJSEngine_tr".}
proc fcQJSEngine_globalObject(self: pointer): pointer {.importc: "QJSEngine_globalObject".}
proc fcQJSEngine_evaluate(self: pointer, program: struct_miqt_string): pointer {.importc: "QJSEngine_evaluate".}
proc fcQJSEngine_importModule(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QJSEngine_importModule".}
proc fcQJSEngine_registerModule(self: pointer, moduleName: struct_miqt_string, value: pointer): bool {.importc: "QJSEngine_registerModule".}
proc fcQJSEngine_newObject(self: pointer): pointer {.importc: "QJSEngine_newObject".}
proc fcQJSEngine_newSymbol(self: pointer, name: struct_miqt_string): pointer {.importc: "QJSEngine_newSymbol".}
proc fcQJSEngine_newArray(self: pointer): pointer {.importc: "QJSEngine_newArray".}
proc fcQJSEngine_newQObject(self: pointer, objectVal: pointer): pointer {.importc: "QJSEngine_newQObject".}
proc fcQJSEngine_newQMetaObject(self: pointer, metaObject: pointer): pointer {.importc: "QJSEngine_newQMetaObject".}
proc fcQJSEngine_newErrorObject(self: pointer, errorType: cint): pointer {.importc: "QJSEngine_newErrorObject".}
proc fcQJSEngine_collectGarbage(self: pointer): void {.importc: "QJSEngine_collectGarbage".}
proc fcQJSEngine_setObjectOwnership(param1: pointer, param2: cint): void {.importc: "QJSEngine_setObjectOwnership".}
proc fcQJSEngine_objectOwnership(param1: pointer): cint {.importc: "QJSEngine_objectOwnership".}
proc fcQJSEngine_installExtensions(self: pointer, extensions: cint): void {.importc: "QJSEngine_installExtensions".}
proc fcQJSEngine_setInterrupted(self: pointer, interrupted: bool): void {.importc: "QJSEngine_setInterrupted".}
proc fcQJSEngine_isInterrupted(self: pointer): bool {.importc: "QJSEngine_isInterrupted".}
proc fcQJSEngine_throwError(self: pointer, message: struct_miqt_string): void {.importc: "QJSEngine_throwError".}
proc fcQJSEngine_throwErrorWithErrorType(self: pointer, errorType: cint): void {.importc: "QJSEngine_throwErrorWithErrorType".}
proc fcQJSEngine_throwErrorWithError(self: pointer, error: pointer): void {.importc: "QJSEngine_throwErrorWithError".}
proc fcQJSEngine_hasError(self: pointer): bool {.importc: "QJSEngine_hasError".}
proc fcQJSEngine_catchError(self: pointer): pointer {.importc: "QJSEngine_catchError".}
proc fcQJSEngine_uiLanguage(self: pointer): struct_miqt_string {.importc: "QJSEngine_uiLanguage".}
proc fcQJSEngine_setUiLanguage(self: pointer, language: struct_miqt_string): void {.importc: "QJSEngine_setUiLanguage".}
proc fcQJSEngine_uiLanguageChanged(self: pointer): void {.importc: "QJSEngine_uiLanguageChanged".}
proc fcQJSEngine_connect_uiLanguageChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QJSEngine_connect_uiLanguageChanged".}
proc fcQJSEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QJSEngine_tr2".}
proc fcQJSEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QJSEngine_tr3".}
proc fcQJSEngine_evaluate2(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string): pointer {.importc: "QJSEngine_evaluate2".}
proc fcQJSEngine_evaluate3(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string, lineNumber: cint): pointer {.importc: "QJSEngine_evaluate3".}
proc fcQJSEngine_evaluate4(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string, lineNumber: cint, exceptionStackTrace: struct_miqt_array): pointer {.importc: "QJSEngine_evaluate4".}
proc fcQJSEngine_newArray1(self: pointer, length: cuint): pointer {.importc: "QJSEngine_newArray1".}
proc fcQJSEngine_newErrorObject2(self: pointer, errorType: cint, message: struct_miqt_string): pointer {.importc: "QJSEngine_newErrorObject2".}
proc fcQJSEngine_installExtensions2(self: pointer, extensions: cint, objectVal: pointer): void {.importc: "QJSEngine_installExtensions2".}
proc fcQJSEngine_throwError2(self: pointer, errorType: cint, message: struct_miqt_string): void {.importc: "QJSEngine_throwError2".}
proc fcQJSEngine_vtbl(self: pointer): pointer {.importc: "QJSEngine_vtbl".}
proc fcQJSEngine_vdata(self: pointer): pointer {.importc: "QJSEngine_vdata".}
type cQJSEngineVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQJSEngine_virtualbase_metaObject(self: pointer): pointer {.importc: "QJSEngine_virtualbase_metaObject".}
proc fcQJSEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QJSEngine_virtualbase_metacast".}
proc fcQJSEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QJSEngine_virtualbase_metacall".}
proc fcQJSEngine_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QJSEngine_virtualbase_event".}
proc fcQJSEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QJSEngine_virtualbase_eventFilter".}
proc fcQJSEngine_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QJSEngine_virtualbase_timerEvent".}
proc fcQJSEngine_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QJSEngine_virtualbase_childEvent".}
proc fcQJSEngine_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QJSEngine_virtualbase_customEvent".}
proc fcQJSEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QJSEngine_virtualbase_connectNotify".}
proc fcQJSEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QJSEngine_virtualbase_disconnectNotify".}
proc fcQJSEngine_protectedbase_sender(self: pointer): pointer {.importc: "QJSEngine_protectedbase_sender".}
proc fcQJSEngine_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QJSEngine_protectedbase_senderSignalIndex".}
proc fcQJSEngine_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QJSEngine_protectedbase_receivers".}
proc fcQJSEngine_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QJSEngine_protectedbase_isSignalConnected".}
proc fcQJSEngine_new(vtbl, vdata: pointer): ptr cQJSEngine {.importc: "QJSEngine_new".}
proc fcQJSEngine_new2(vtbl, vdata: pointer, parent: pointer): ptr cQJSEngine {.importc: "QJSEngine_new2".}
proc fcQJSEngine_staticMetaObject(): pointer {.importc: "QJSEngine_staticMetaObject".}

proc metaObject*(self: gen_qjsengine_types.QJSEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQJSEngine_metaObject(self.h), owned: false)

proc metacast*(self: gen_qjsengine_types.QJSEngine, param1: cstring): pointer =
  fcQJSEngine_metacast(self.h, param1)

proc metacall*(self: gen_qjsengine_types.QJSEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQJSEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qjsengine_types.QJSEngine, s: cstring): string =
  let v_ms = fcQJSEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc globalObject*(self: gen_qjsengine_types.QJSEngine): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_globalObject(self.h), owned: true)

proc evaluate*(self: gen_qjsengine_types.QJSEngine, program: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_evaluate(self.h, struct_miqt_string(data: program, len: csize_t(len(program)))), owned: true)

proc importModule*(self: gen_qjsengine_types.QJSEngine, fileName: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_importModule(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))), owned: true)

proc registerModule*(self: gen_qjsengine_types.QJSEngine, moduleName: string, value: gen_qjsvalue_types.QJSValue): bool =
  fcQJSEngine_registerModule(self.h, struct_miqt_string(data: moduleName, len: csize_t(len(moduleName))), value.h)

proc newObject*(self: gen_qjsengine_types.QJSEngine): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newObject(self.h), owned: true)

proc newSymbol*(self: gen_qjsengine_types.QJSEngine, name: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newSymbol(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))), owned: true)

proc newArray*(self: gen_qjsengine_types.QJSEngine): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newArray(self.h), owned: true)

proc newQObject*(self: gen_qjsengine_types.QJSEngine, objectVal: gen_qobject_types.QObject): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newQObject(self.h, objectVal.h), owned: true)

proc newQMetaObject*(self: gen_qjsengine_types.QJSEngine, metaObject: gen_qobjectdefs_types.QMetaObject): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newQMetaObject(self.h, metaObject.h), owned: true)

proc newErrorObject*(self: gen_qjsengine_types.QJSEngine, errorType: cint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newErrorObject(self.h, cint(errorType)), owned: true)

proc collectGarbage*(self: gen_qjsengine_types.QJSEngine): void =
  fcQJSEngine_collectGarbage(self.h)

proc setObjectOwnership*(_: type gen_qjsengine_types.QJSEngine, param1: gen_qobject_types.QObject, param2: cint): void =
  fcQJSEngine_setObjectOwnership(param1.h, cint(param2))

proc objectOwnership*(_: type gen_qjsengine_types.QJSEngine, param1: gen_qobject_types.QObject): cint =
  cint(fcQJSEngine_objectOwnership(param1.h))

proc installExtensions*(self: gen_qjsengine_types.QJSEngine, extensions: cint): void =
  fcQJSEngine_installExtensions(self.h, cint(extensions))

proc setInterrupted*(self: gen_qjsengine_types.QJSEngine, interrupted: bool): void =
  fcQJSEngine_setInterrupted(self.h, interrupted)

proc isInterrupted*(self: gen_qjsengine_types.QJSEngine): bool =
  fcQJSEngine_isInterrupted(self.h)

proc throwError*(self: gen_qjsengine_types.QJSEngine, message: string): void =
  fcQJSEngine_throwError(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc throwError*(self: gen_qjsengine_types.QJSEngine, errorType: cint): void =
  fcQJSEngine_throwErrorWithErrorType(self.h, cint(errorType))

proc throwError*(self: gen_qjsengine_types.QJSEngine, error: gen_qjsvalue_types.QJSValue): void =
  fcQJSEngine_throwErrorWithError(self.h, error.h)

proc hasError*(self: gen_qjsengine_types.QJSEngine): bool =
  fcQJSEngine_hasError(self.h)

proc catchError*(self: gen_qjsengine_types.QJSEngine): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_catchError(self.h), owned: true)

proc uiLanguage*(self: gen_qjsengine_types.QJSEngine): string =
  let v_ms = fcQJSEngine_uiLanguage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUiLanguage*(self: gen_qjsengine_types.QJSEngine, language: string): void =
  fcQJSEngine_setUiLanguage(self.h, struct_miqt_string(data: language, len: csize_t(len(language))))

proc uiLanguageChanged*(self: gen_qjsengine_types.QJSEngine): void =
  fcQJSEngine_uiLanguageChanged(self.h)

type QJSEngineuiLanguageChangedSlot* = proc()
proc cQJSEngine_slot_callback_uiLanguageChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QJSEngineuiLanguageChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQJSEngine_slot_callback_uiLanguageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QJSEngineuiLanguageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onuiLanguageChanged*(self: gen_qjsengine_types.QJSEngine, slot: QJSEngineuiLanguageChangedSlot) =
  var tmp = new QJSEngineuiLanguageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_connect_uiLanguageChanged(self.h, cast[int](addr tmp[]), cQJSEngine_slot_callback_uiLanguageChanged, cQJSEngine_slot_callback_uiLanguageChanged_release)

proc tr*(_: type gen_qjsengine_types.QJSEngine, s: cstring, c: cstring): string =
  let v_ms = fcQJSEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qjsengine_types.QJSEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQJSEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc evaluate*(self: gen_qjsengine_types.QJSEngine, program: string, fileName: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_evaluate2(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))), owned: true)

proc evaluate*(self: gen_qjsengine_types.QJSEngine, program: string, fileName: string, lineNumber: cint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_evaluate3(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), lineNumber), owned: true)

proc evaluate*(self: gen_qjsengine_types.QJSEngine, program: string, fileName: string, lineNumber: cint, exceptionStackTrace: seq[string]): gen_qjsvalue_types.QJSValue =
  var exceptionStackTrace_CArray = newSeq[struct_miqt_string](len(exceptionStackTrace))
  for i in 0..<len(exceptionStackTrace):
    exceptionStackTrace_CArray[i] = struct_miqt_string(data: exceptionStackTrace[i], len: csize_t(len(exceptionStackTrace[i])))

  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_evaluate4(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), lineNumber, struct_miqt_array(len: csize_t(len(exceptionStackTrace)), data: if len(exceptionStackTrace) == 0: nil else: addr(exceptionStackTrace_CArray[0]))), owned: true)

proc newArray*(self: gen_qjsengine_types.QJSEngine, length: cuint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newArray1(self.h, length), owned: true)

proc newErrorObject*(self: gen_qjsengine_types.QJSEngine, errorType: cint, message: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newErrorObject2(self.h, cint(errorType), struct_miqt_string(data: message, len: csize_t(len(message)))), owned: true)

proc installExtensions*(self: gen_qjsengine_types.QJSEngine, extensions: cint, objectVal: gen_qjsvalue_types.QJSValue): void =
  fcQJSEngine_installExtensions2(self.h, cint(extensions), objectVal.h)

proc throwError*(self: gen_qjsengine_types.QJSEngine, errorType: cint, message: string): void =
  fcQJSEngine_throwError2(self.h, cint(errorType), struct_miqt_string(data: message, len: csize_t(len(message))))

type QJSEnginemetaObjectProc* = proc(self: QJSEngine): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QJSEnginemetacastProc* = proc(self: QJSEngine, param1: cstring): pointer {.raises: [], gcsafe.}
type QJSEnginemetacallProc* = proc(self: QJSEngine, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QJSEngineeventProc* = proc(self: QJSEngine, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QJSEngineeventFilterProc* = proc(self: QJSEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QJSEnginetimerEventProc* = proc(self: QJSEngine, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QJSEnginechildEventProc* = proc(self: QJSEngine, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QJSEnginecustomEventProc* = proc(self: QJSEngine, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QJSEngineconnectNotifyProc* = proc(self: QJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QJSEnginedisconnectNotifyProc* = proc(self: QJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QJSEngineVTable* {.inheritable, pure.} = object
  vtbl: cQJSEngineVTable
  metaObject*: QJSEnginemetaObjectProc
  metacast*: QJSEnginemetacastProc
  metacall*: QJSEnginemetacallProc
  event*: QJSEngineeventProc
  eventFilter*: QJSEngineeventFilterProc
  timerEvent*: QJSEnginetimerEventProc
  childEvent*: QJSEnginechildEventProc
  customEvent*: QJSEnginecustomEventProc
  connectNotify*: QJSEngineconnectNotifyProc
  disconnectNotify*: QJSEnginedisconnectNotifyProc
proc QJSEnginemetaObject*(self: gen_qjsengine_types.QJSEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQJSEngine_virtualbase_metaObject(self.h), owned: false)

proc cQJSEngine_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QJSEnginemetacast*(self: gen_qjsengine_types.QJSEngine, param1: cstring): pointer =
  fcQJSEngine_virtualbase_metacast(self.h, param1)

proc cQJSEngine_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QJSEnginemetacall*(self: gen_qjsengine_types.QJSEngine, param1: cint, param2: cint, param3: pointer): cint =
  fcQJSEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQJSEngine_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QJSEngineevent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QEvent): bool =
  fcQJSEngine_virtualbase_event(self.h, event.h)

proc cQJSEngine_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QJSEngineeventFilter*(self: gen_qjsengine_types.QJSEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQJSEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQJSEngine_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QJSEnginetimerEvent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQJSEngine_virtualbase_timerEvent(self.h, event.h)

proc cQJSEngine_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QJSEnginechildEvent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fcQJSEngine_virtualbase_childEvent(self.h, event.h)

proc cQJSEngine_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QJSEnginecustomEvent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QEvent): void =
  fcQJSEngine_virtualbase_customEvent(self.h, event.h)

proc cQJSEngine_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QJSEngineconnectNotify*(self: gen_qjsengine_types.QJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQJSEngine_virtualbase_connectNotify(self.h, signal.h)

proc cQJSEngine_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QJSEnginedisconnectNotify*(self: gen_qjsengine_types.QJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQJSEngine_virtualbase_disconnectNotify(self.h, signal.h)

proc cQJSEngine_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QJSEngineVTable](fcQJSEngine_vdata(self))
  let self = QJSEngine(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQJSEngine* {.inheritable.} = ref object of QJSEngine
  vtbl*: cQJSEngineVTable
method metaObject*(self: VirtualQJSEngine): gen_qobjectdefs_types.QMetaObject {.base.} =
  QJSEnginemetaObject(self[])
proc cQJSEngine_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQJSEngine, param1: cstring): pointer {.base.} =
  QJSEnginemetacast(self[], param1)
proc cQJSEngine_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQJSEngine, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QJSEnginemetacall(self[], param1, param2, param3)
proc cQJSEngine_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQJSEngine, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QJSEngineevent(self[], event)
proc cQJSEngine_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQJSEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QJSEngineeventFilter(self[], watched, event)
proc cQJSEngine_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQJSEngine, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QJSEnginetimerEvent(self[], event)
proc cQJSEngine_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQJSEngine, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QJSEnginechildEvent(self[], event)
proc cQJSEngine_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQJSEngine, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QJSEnginecustomEvent(self[], event)
proc cQJSEngine_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QJSEngineconnectNotify(self[], signal)
proc cQJSEngine_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QJSEnginedisconnectNotify(self[], signal)
proc cQJSEngine_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQJSEngine](fcQJSEngine_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qjsengine_types.QJSEngine): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQJSEngine_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qjsengine_types.QJSEngine): cint =
  fcQJSEngine_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qjsengine_types.QJSEngine, signal: cstring): cint =
  fcQJSEngine_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qjsengine_types.QJSEngine, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQJSEngine_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qjsengine_types.QJSEngine,
    vtbl: ref QJSEngineVTable = nil): gen_qjsengine_types.QJSEngine =
  let vtbl = if vtbl == nil: new QJSEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QJSEngineVTable](fcQJSEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQJSEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQJSEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQJSEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQJSEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQJSEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQJSEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQJSEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQJSEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQJSEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQJSEngine_vtable_callback_disconnectNotify
  gen_qjsengine_types.QJSEngine(h: fcQJSEngine_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qjsengine_types.QJSEngine,
    parent: gen_qobject_types.QObject,
    vtbl: ref QJSEngineVTable = nil): gen_qjsengine_types.QJSEngine =
  let vtbl = if vtbl == nil: new QJSEngineVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QJSEngineVTable](fcQJSEngine_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQJSEngine_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQJSEngine_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQJSEngine_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQJSEngine_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQJSEngine_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQJSEngine_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQJSEngine_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQJSEngine_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQJSEngine_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQJSEngine_vtable_callback_disconnectNotify
  gen_qjsengine_types.QJSEngine(h: fcQJSEngine_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQJSEngine_mvtbl = cQJSEngineVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQJSEngine()[])](self.fcQJSEngine_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQJSEngine_method_callback_metaObject,
  metacast: cQJSEngine_method_callback_metacast,
  metacall: cQJSEngine_method_callback_metacall,
  event: cQJSEngine_method_callback_event,
  eventFilter: cQJSEngine_method_callback_eventFilter,
  timerEvent: cQJSEngine_method_callback_timerEvent,
  childEvent: cQJSEngine_method_callback_childEvent,
  customEvent: cQJSEngine_method_callback_customEvent,
  connectNotify: cQJSEngine_method_callback_connectNotify,
  disconnectNotify: cQJSEngine_method_callback_disconnectNotify,
)
proc create*(T: type gen_qjsengine_types.QJSEngine,
    inst: VirtualQJSEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQJSEngine_new(addr(cQJSEngine_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qjsengine_types.QJSEngine,
    parent: gen_qobject_types.QObject,
    inst: VirtualQJSEngine) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQJSEngine_new2(addr(cQJSEngine_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qjsengine_types.QJSEngine): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQJSEngine_staticMetaObject())
