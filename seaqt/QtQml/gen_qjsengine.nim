import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qjsengine.cpp", cflags).}


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

proc fcQJSEngine_new(): ptr cQJSEngine {.importc: "QJSEngine_new".}
proc fcQJSEngine_new2(parent: pointer): ptr cQJSEngine {.importc: "QJSEngine_new2".}
proc fcQJSEngine_metaObject(self: pointer, ): pointer {.importc: "QJSEngine_metaObject".}
proc fcQJSEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QJSEngine_metacast".}
proc fcQJSEngine_tr(s: cstring): struct_miqt_string {.importc: "QJSEngine_tr".}
proc fcQJSEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QJSEngine_trUtf8".}
proc fcQJSEngine_globalObject(self: pointer, ): pointer {.importc: "QJSEngine_globalObject".}
proc fcQJSEngine_evaluate(self: pointer, program: struct_miqt_string): pointer {.importc: "QJSEngine_evaluate".}
proc fcQJSEngine_importModule(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QJSEngine_importModule".}
proc fcQJSEngine_newObject(self: pointer, ): pointer {.importc: "QJSEngine_newObject".}
proc fcQJSEngine_newArray(self: pointer, ): pointer {.importc: "QJSEngine_newArray".}
proc fcQJSEngine_newQObject(self: pointer, objectVal: pointer): pointer {.importc: "QJSEngine_newQObject".}
proc fcQJSEngine_newQMetaObject(self: pointer, metaObject: pointer): pointer {.importc: "QJSEngine_newQMetaObject".}
proc fcQJSEngine_newErrorObject(self: pointer, errorType: cint): pointer {.importc: "QJSEngine_newErrorObject".}
proc fcQJSEngine_collectGarbage(self: pointer, ): void {.importc: "QJSEngine_collectGarbage".}
proc fcQJSEngine_installTranslatorFunctions(self: pointer, ): void {.importc: "QJSEngine_installTranslatorFunctions".}
proc fcQJSEngine_installExtensions(self: pointer, extensions: cint): void {.importc: "QJSEngine_installExtensions".}
proc fcQJSEngine_setInterrupted(self: pointer, interrupted: bool): void {.importc: "QJSEngine_setInterrupted".}
proc fcQJSEngine_isInterrupted(self: pointer, ): bool {.importc: "QJSEngine_isInterrupted".}
proc fcQJSEngine_throwError(self: pointer, message: struct_miqt_string): void {.importc: "QJSEngine_throwError".}
proc fcQJSEngine_throwErrorWithErrorType(self: pointer, errorType: cint): void {.importc: "QJSEngine_throwErrorWithErrorType".}
proc fcQJSEngine_uiLanguage(self: pointer, ): struct_miqt_string {.importc: "QJSEngine_uiLanguage".}
proc fcQJSEngine_setUiLanguage(self: pointer, language: struct_miqt_string): void {.importc: "QJSEngine_setUiLanguage".}
proc fcQJSEngine_uiLanguageChanged(self: pointer, ): void {.importc: "QJSEngine_uiLanguageChanged".}
proc fcQJSEngine_connect_uiLanguageChanged(self: pointer, slot: int) {.importc: "QJSEngine_connect_uiLanguageChanged".}
proc fcQJSEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QJSEngine_tr2".}
proc fcQJSEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QJSEngine_tr3".}
proc fcQJSEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QJSEngine_trUtf82".}
proc fcQJSEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QJSEngine_trUtf83".}
proc fcQJSEngine_evaluate2(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string): pointer {.importc: "QJSEngine_evaluate2".}
proc fcQJSEngine_evaluate3(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string, lineNumber: cint): pointer {.importc: "QJSEngine_evaluate3".}
proc fcQJSEngine_newArray1(self: pointer, length: cuint): pointer {.importc: "QJSEngine_newArray1".}
proc fcQJSEngine_newErrorObject2(self: pointer, errorType: cint, message: struct_miqt_string): pointer {.importc: "QJSEngine_newErrorObject2".}
proc fcQJSEngine_installTranslatorFunctions1(self: pointer, objectVal: pointer): void {.importc: "QJSEngine_installTranslatorFunctions1".}
proc fcQJSEngine_installExtensions2(self: pointer, extensions: cint, objectVal: pointer): void {.importc: "QJSEngine_installExtensions2".}
proc fcQJSEngine_throwError2(self: pointer, errorType: cint, message: struct_miqt_string): void {.importc: "QJSEngine_throwError2".}
proc fQJSEngine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QJSEngine_virtualbase_event".}
proc fcQJSEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_event".}
proc fQJSEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QJSEngine_virtualbase_eventFilter".}
proc fcQJSEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_eventFilter".}
proc fQJSEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QJSEngine_virtualbase_timerEvent".}
proc fcQJSEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_timerEvent".}
proc fQJSEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QJSEngine_virtualbase_childEvent".}
proc fcQJSEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_childEvent".}
proc fQJSEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QJSEngine_virtualbase_customEvent".}
proc fcQJSEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_customEvent".}
proc fQJSEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QJSEngine_virtualbase_connectNotify".}
proc fcQJSEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_connectNotify".}
proc fQJSEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QJSEngine_virtualbase_disconnectNotify".}
proc fcQJSEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_disconnectNotify".}
proc fcQJSEngine_delete(self: pointer) {.importc: "QJSEngine_delete".}


func init*(T: type gen_qjsengine_types.QJSEngine, h: ptr cQJSEngine): gen_qjsengine_types.QJSEngine =
  T(h: h)
proc create*(T: type gen_qjsengine_types.QJSEngine, ): gen_qjsengine_types.QJSEngine =
  gen_qjsengine_types.QJSEngine.init(fcQJSEngine_new())

proc create*(T: type gen_qjsengine_types.QJSEngine, parent: gen_qobject_types.QObject): gen_qjsengine_types.QJSEngine =
  gen_qjsengine_types.QJSEngine.init(fcQJSEngine_new2(parent.h))

proc metaObject*(self: gen_qjsengine_types.QJSEngine, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQJSEngine_metaObject(self.h))

proc metacast*(self: gen_qjsengine_types.QJSEngine, param1: cstring): pointer =
  fcQJSEngine_metacast(self.h, param1)

proc tr*(_: type gen_qjsengine_types.QJSEngine, s: cstring): string =
  let v_ms = fcQJSEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qjsengine_types.QJSEngine, s: cstring): string =
  let v_ms = fcQJSEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc globalObject*(self: gen_qjsengine_types.QJSEngine, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_globalObject(self.h))

proc evaluate*(self: gen_qjsengine_types.QJSEngine, program: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_evaluate(self.h, struct_miqt_string(data: program, len: csize_t(len(program)))))

proc importModule*(self: gen_qjsengine_types.QJSEngine, fileName: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_importModule(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc newObject*(self: gen_qjsengine_types.QJSEngine, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newObject(self.h))

proc newArray*(self: gen_qjsengine_types.QJSEngine, ): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newArray(self.h))

proc newQObject*(self: gen_qjsengine_types.QJSEngine, objectVal: gen_qobject_types.QObject): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newQObject(self.h, objectVal.h))

proc newQMetaObject*(self: gen_qjsengine_types.QJSEngine, metaObject: gen_qobjectdefs_types.QMetaObject): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newQMetaObject(self.h, metaObject.h))

proc newErrorObject*(self: gen_qjsengine_types.QJSEngine, errorType: cint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newErrorObject(self.h, cint(errorType)))

proc collectGarbage*(self: gen_qjsengine_types.QJSEngine, ): void =
  fcQJSEngine_collectGarbage(self.h)

proc installTranslatorFunctions*(self: gen_qjsengine_types.QJSEngine, ): void =
  fcQJSEngine_installTranslatorFunctions(self.h)

proc installExtensions*(self: gen_qjsengine_types.QJSEngine, extensions: cint): void =
  fcQJSEngine_installExtensions(self.h, cint(extensions))

proc setInterrupted*(self: gen_qjsengine_types.QJSEngine, interrupted: bool): void =
  fcQJSEngine_setInterrupted(self.h, interrupted)

proc isInterrupted*(self: gen_qjsengine_types.QJSEngine, ): bool =
  fcQJSEngine_isInterrupted(self.h)

proc throwError*(self: gen_qjsengine_types.QJSEngine, message: string): void =
  fcQJSEngine_throwError(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc throwError*(self: gen_qjsengine_types.QJSEngine, errorType: cint): void =
  fcQJSEngine_throwErrorWithErrorType(self.h, cint(errorType))

proc uiLanguage*(self: gen_qjsengine_types.QJSEngine, ): string =
  let v_ms = fcQJSEngine_uiLanguage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUiLanguage*(self: gen_qjsengine_types.QJSEngine, language: string): void =
  fcQJSEngine_setUiLanguage(self.h, struct_miqt_string(data: language, len: csize_t(len(language))))

proc uiLanguageChanged*(self: gen_qjsengine_types.QJSEngine, ): void =
  fcQJSEngine_uiLanguageChanged(self.h)

type QJSEngineuiLanguageChangedSlot* = proc()
proc miqt_exec_callback_QJSEngine_uiLanguageChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QJSEngineuiLanguageChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onuiLanguageChanged*(self: gen_qjsengine_types.QJSEngine, slot: QJSEngineuiLanguageChangedSlot) =
  var tmp = new QJSEngineuiLanguageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_connect_uiLanguageChanged(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qjsengine_types.QJSEngine, s: cstring, c: cstring): string =
  let v_ms = fcQJSEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qjsengine_types.QJSEngine, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQJSEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc evaluate*(self: gen_qjsengine_types.QJSEngine, program: string, fileName: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_evaluate2(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc evaluate*(self: gen_qjsengine_types.QJSEngine, program: string, fileName: string, lineNumber: cint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_evaluate3(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), lineNumber))

proc newArray*(self: gen_qjsengine_types.QJSEngine, length: cuint): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newArray1(self.h, length))

proc newErrorObject*(self: gen_qjsengine_types.QJSEngine, errorType: cint, message: string): gen_qjsvalue_types.QJSValue =
  gen_qjsvalue_types.QJSValue(h: fcQJSEngine_newErrorObject2(self.h, cint(errorType), struct_miqt_string(data: message, len: csize_t(len(message)))))

proc installTranslatorFunctions*(self: gen_qjsengine_types.QJSEngine, objectVal: gen_qjsvalue_types.QJSValue): void =
  fcQJSEngine_installTranslatorFunctions1(self.h, objectVal.h)

proc installExtensions*(self: gen_qjsengine_types.QJSEngine, extensions: cint, objectVal: gen_qjsvalue_types.QJSValue): void =
  fcQJSEngine_installExtensions2(self.h, cint(extensions), objectVal.h)

proc throwError*(self: gen_qjsengine_types.QJSEngine, errorType: cint, message: string): void =
  fcQJSEngine_throwError2(self.h, cint(errorType), struct_miqt_string(data: message, len: csize_t(len(message))))

proc QJSEngineevent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QEvent): bool =
  fQJSEngine_virtualbase_event(self.h, event.h)

type QJSEngineeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qjsengine_types.QJSEngine, slot: QJSEngineeventProc) =
  # TODO check subclass
  var tmp = new QJSEngineeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_event(self: ptr cQJSEngine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QJSEngine_event ".} =
  var nimfunc = cast[ptr QJSEngineeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QJSEngineeventFilter*(self: gen_qjsengine_types.QJSEngine, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQJSEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QJSEngineeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qjsengine_types.QJSEngine, slot: QJSEngineeventFilterProc) =
  # TODO check subclass
  var tmp = new QJSEngineeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_eventFilter(self: ptr cQJSEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QJSEngine_eventFilter ".} =
  var nimfunc = cast[ptr QJSEngineeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QJSEnginetimerEvent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QTimerEvent): void =
  fQJSEngine_virtualbase_timerEvent(self.h, event.h)

type QJSEnginetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qjsengine_types.QJSEngine, slot: QJSEnginetimerEventProc) =
  # TODO check subclass
  var tmp = new QJSEnginetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_timerEvent(self: ptr cQJSEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_timerEvent ".} =
  var nimfunc = cast[ptr QJSEnginetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QJSEnginechildEvent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QChildEvent): void =
  fQJSEngine_virtualbase_childEvent(self.h, event.h)

type QJSEnginechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qjsengine_types.QJSEngine, slot: QJSEnginechildEventProc) =
  # TODO check subclass
  var tmp = new QJSEnginechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_childEvent(self: ptr cQJSEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_childEvent ".} =
  var nimfunc = cast[ptr QJSEnginechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QJSEnginecustomEvent*(self: gen_qjsengine_types.QJSEngine, event: gen_qcoreevent_types.QEvent): void =
  fQJSEngine_virtualbase_customEvent(self.h, event.h)

type QJSEnginecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qjsengine_types.QJSEngine, slot: QJSEnginecustomEventProc) =
  # TODO check subclass
  var tmp = new QJSEnginecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_customEvent(self: ptr cQJSEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_customEvent ".} =
  var nimfunc = cast[ptr QJSEnginecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QJSEngineconnectNotify*(self: gen_qjsengine_types.QJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQJSEngine_virtualbase_connectNotify(self.h, signal.h)

type QJSEngineconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qjsengine_types.QJSEngine, slot: QJSEngineconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QJSEngineconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_connectNotify(self: ptr cQJSEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_connectNotify ".} =
  var nimfunc = cast[ptr QJSEngineconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QJSEnginedisconnectNotify*(self: gen_qjsengine_types.QJSEngine, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQJSEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QJSEnginedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qjsengine_types.QJSEngine, slot: QJSEnginedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QJSEnginedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_disconnectNotify(self: ptr cQJSEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_disconnectNotify ".} =
  var nimfunc = cast[ptr QJSEnginedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qjsengine_types.QJSEngine) =
  fcQJSEngine_delete(self.h)
