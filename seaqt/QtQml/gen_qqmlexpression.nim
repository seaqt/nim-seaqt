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
{.compile("gen_qqmlexpression.cpp", cflags).}


import ./gen_qqmlexpression_types
export gen_qqmlexpression_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qqmlcontext_types,
  ./gen_qqmlengine_types,
  ./gen_qqmlerror_types,
  ./gen_qqmlscriptstring_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qqmlcontext_types,
  gen_qqmlengine_types,
  gen_qqmlerror_types,
  gen_qqmlscriptstring_types

type cQQmlExpression*{.exportc: "QQmlExpression", incompleteStruct.} = object

proc fcQQmlExpression_metaObject(self: pointer, ): pointer {.importc: "QQmlExpression_metaObject".}
proc fcQQmlExpression_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExpression_metacast".}
proc fcQQmlExpression_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExpression_metacall".}
proc fcQQmlExpression_tr(s: cstring): struct_miqt_string {.importc: "QQmlExpression_tr".}
proc fcQQmlExpression_engine(self: pointer, ): pointer {.importc: "QQmlExpression_engine".}
proc fcQQmlExpression_context(self: pointer, ): pointer {.importc: "QQmlExpression_context".}
proc fcQQmlExpression_expression(self: pointer, ): struct_miqt_string {.importc: "QQmlExpression_expression".}
proc fcQQmlExpression_setExpression(self: pointer, expression: struct_miqt_string): void {.importc: "QQmlExpression_setExpression".}
proc fcQQmlExpression_notifyOnValueChanged(self: pointer, ): bool {.importc: "QQmlExpression_notifyOnValueChanged".}
proc fcQQmlExpression_setNotifyOnValueChanged(self: pointer, notifyOnValueChanged: bool): void {.importc: "QQmlExpression_setNotifyOnValueChanged".}
proc fcQQmlExpression_sourceFile(self: pointer, ): struct_miqt_string {.importc: "QQmlExpression_sourceFile".}
proc fcQQmlExpression_lineNumber(self: pointer, ): cint {.importc: "QQmlExpression_lineNumber".}
proc fcQQmlExpression_columnNumber(self: pointer, ): cint {.importc: "QQmlExpression_columnNumber".}
proc fcQQmlExpression_setSourceLocation(self: pointer, fileName: struct_miqt_string, line: cint): void {.importc: "QQmlExpression_setSourceLocation".}
proc fcQQmlExpression_scopeObject(self: pointer, ): pointer {.importc: "QQmlExpression_scopeObject".}
proc fcQQmlExpression_hasError(self: pointer, ): bool {.importc: "QQmlExpression_hasError".}
proc fcQQmlExpression_clearError(self: pointer, ): void {.importc: "QQmlExpression_clearError".}
proc fcQQmlExpression_error(self: pointer, ): pointer {.importc: "QQmlExpression_error".}
proc fcQQmlExpression_evaluate(self: pointer, ): pointer {.importc: "QQmlExpression_evaluate".}
proc fcQQmlExpression_valueChanged(self: pointer, ): void {.importc: "QQmlExpression_valueChanged".}
proc fcQQmlExpression_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlExpression_connect_valueChanged".}
proc fcQQmlExpression_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExpression_tr2".}
proc fcQQmlExpression_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExpression_tr3".}
proc fcQQmlExpression_setSourceLocation3(self: pointer, fileName: struct_miqt_string, line: cint, column: cint): void {.importc: "QQmlExpression_setSourceLocation3".}
proc fcQQmlExpression_evaluate1(self: pointer, valueIsUndefined: ptr bool): pointer {.importc: "QQmlExpression_evaluate1".}
type cQQmlExpressionVTable = object
  destructor*: proc(vtbl: ptr cQQmlExpressionVTable, self: ptr cQQmlExpression) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlExpression_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQmlExpression_virtualbase_metaObject".}
proc fcQQmlExpression_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExpression_virtualbase_metacast".}
proc fcQQmlExpression_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExpression_virtualbase_metacall".}
proc fcQQmlExpression_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlExpression_virtualbase_event".}
proc fcQQmlExpression_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlExpression_virtualbase_eventFilter".}
proc fcQQmlExpression_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlExpression_virtualbase_timerEvent".}
proc fcQQmlExpression_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlExpression_virtualbase_childEvent".}
proc fcQQmlExpression_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlExpression_virtualbase_customEvent".}
proc fcQQmlExpression_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExpression_virtualbase_connectNotify".}
proc fcQQmlExpression_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExpression_virtualbase_disconnectNotify".}
proc fcQQmlExpression_protectedbase_sender(self: pointer, ): pointer {.importc: "QQmlExpression_protectedbase_sender".}
proc fcQQmlExpression_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQmlExpression_protectedbase_senderSignalIndex".}
proc fcQQmlExpression_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlExpression_protectedbase_receivers".}
proc fcQQmlExpression_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlExpression_protectedbase_isSignalConnected".}
proc fcQQmlExpression_new(vtbl: pointer, ): ptr cQQmlExpression {.importc: "QQmlExpression_new".}
proc fcQQmlExpression_new2(vtbl: pointer, param1: pointer, param2: pointer, param3: struct_miqt_string): ptr cQQmlExpression {.importc: "QQmlExpression_new2".}
proc fcQQmlExpression_new3(vtbl: pointer, param1: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new3".}
proc fcQQmlExpression_new4(vtbl: pointer, param1: pointer, param2: pointer, param3: struct_miqt_string, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new4".}
proc fcQQmlExpression_new5(vtbl: pointer, param1: pointer, param2: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new5".}
proc fcQQmlExpression_new6(vtbl: pointer, param1: pointer, param2: pointer, param3: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new6".}
proc fcQQmlExpression_new7(vtbl: pointer, param1: pointer, param2: pointer, param3: pointer, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new7".}
proc fcQQmlExpression_staticMetaObject(): pointer {.importc: "QQmlExpression_staticMetaObject".}
proc fcQQmlExpression_delete(self: pointer) {.importc: "QQmlExpression_delete".}

proc metaObject*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExpression_metaObject(self.h))

proc metacast*(self: gen_qqmlexpression_types.QQmlExpression, param1: cstring): pointer =
  fcQQmlExpression_metacast(self.h, param1)

proc metacall*(self: gen_qqmlexpression_types.QQmlExpression, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExpression_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring): string =
  let v_ms = fcQQmlExpression_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc engine*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlExpression_engine(self.h))

proc context*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlExpression_context(self.h))

proc expression*(self: gen_qqmlexpression_types.QQmlExpression, ): string =
  let v_ms = fcQQmlExpression_expression(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setExpression*(self: gen_qqmlexpression_types.QQmlExpression, expression: string): void =
  fcQQmlExpression_setExpression(self.h, struct_miqt_string(data: expression, len: csize_t(len(expression))))

proc notifyOnValueChanged*(self: gen_qqmlexpression_types.QQmlExpression, ): bool =
  fcQQmlExpression_notifyOnValueChanged(self.h)

proc setNotifyOnValueChanged*(self: gen_qqmlexpression_types.QQmlExpression, notifyOnValueChanged: bool): void =
  fcQQmlExpression_setNotifyOnValueChanged(self.h, notifyOnValueChanged)

proc sourceFile*(self: gen_qqmlexpression_types.QQmlExpression, ): string =
  let v_ms = fcQQmlExpression_sourceFile(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lineNumber*(self: gen_qqmlexpression_types.QQmlExpression, ): cint =
  fcQQmlExpression_lineNumber(self.h)

proc columnNumber*(self: gen_qqmlexpression_types.QQmlExpression, ): cint =
  fcQQmlExpression_columnNumber(self.h)

proc setSourceLocation*(self: gen_qqmlexpression_types.QQmlExpression, fileName: string, line: cint): void =
  fcQQmlExpression_setSourceLocation(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), line)

proc scopeObject*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlExpression_scopeObject(self.h))

proc hasError*(self: gen_qqmlexpression_types.QQmlExpression, ): bool =
  fcQQmlExpression_hasError(self.h)

proc clearError*(self: gen_qqmlexpression_types.QQmlExpression, ): void =
  fcQQmlExpression_clearError(self.h)

proc error*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qqmlerror_types.QQmlError =
  gen_qqmlerror_types.QQmlError(h: fcQQmlExpression_error(self.h))

proc evaluate*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlExpression_evaluate(self.h))

proc valueChanged*(self: gen_qqmlexpression_types.QQmlExpression, ): void =
  fcQQmlExpression_valueChanged(self.h)

type QQmlExpressionvalueChangedSlot* = proc()
proc miqt_exec_callback_cQQmlExpression_valueChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQmlExpressionvalueChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQQmlExpression_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlExpressionvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvalueChanged*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionvalueChangedSlot) =
  var tmp = new QQmlExpressionvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_connect_valueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQQmlExpression_valueChanged, miqt_exec_callback_cQQmlExpression_valueChanged_release)

proc tr*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring, c: cstring): string =
  let v_ms = fcQQmlExpression_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlExpression_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceLocation*(self: gen_qqmlexpression_types.QQmlExpression, fileName: string, line: cint, column: cint): void =
  fcQQmlExpression_setSourceLocation3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), line, column)

proc evaluate*(self: gen_qqmlexpression_types.QQmlExpression, valueIsUndefined: ptr bool): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlExpression_evaluate1(self.h, valueIsUndefined))

type QQmlExpressionmetaObjectProc* = proc(self: QQmlExpression): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQmlExpressionmetacastProc* = proc(self: QQmlExpression, param1: cstring): pointer {.raises: [], gcsafe.}
type QQmlExpressionmetacallProc* = proc(self: QQmlExpression, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQmlExpressioneventProc* = proc(self: QQmlExpression, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlExpressioneventFilterProc* = proc(self: QQmlExpression, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQmlExpressiontimerEventProc* = proc(self: QQmlExpression, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQmlExpressionchildEventProc* = proc(self: QQmlExpression, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQmlExpressioncustomEventProc* = proc(self: QQmlExpression, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQmlExpressionconnectNotifyProc* = proc(self: QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlExpressiondisconnectNotifyProc* = proc(self: QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQmlExpressionVTable* = object
  vtbl: cQQmlExpressionVTable
  metaObject*: QQmlExpressionmetaObjectProc
  metacast*: QQmlExpressionmetacastProc
  metacall*: QQmlExpressionmetacallProc
  event*: QQmlExpressioneventProc
  eventFilter*: QQmlExpressioneventFilterProc
  timerEvent*: QQmlExpressiontimerEventProc
  childEvent*: QQmlExpressionchildEventProc
  customEvent*: QQmlExpressioncustomEventProc
  connectNotify*: QQmlExpressionconnectNotifyProc
  disconnectNotify*: QQmlExpressiondisconnectNotifyProc
proc QQmlExpressionmetaObject*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExpression_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQmlExpression_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQmlExpressionmetacast*(self: gen_qqmlexpression_types.QQmlExpression, param1: cstring): pointer =
  fcQQmlExpression_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQmlExpression_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlExpressionmetacall*(self: gen_qqmlexpression_types.QQmlExpression, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExpression_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQmlExpression_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlExpressionevent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExpression_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQmlExpression_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlExpressioneventFilter*(self: gen_qqmlexpression_types.QQmlExpression, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExpression_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQmlExpression_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlExpressiontimerEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlExpression_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlExpression_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QQmlExpressionchildEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlExpression_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlExpression_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQmlExpressioncustomEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlExpression_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQmlExpression_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQmlExpressionconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExpression_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlExpression_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQmlExpressiondisconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExpression_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQmlExpression_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](vtbl)
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlExpression_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qqmlexpression_types.QQmlExpression, ): cint =
  fcQQmlExpression_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlexpression_types.QQmlExpression, signal: cstring): cint =
  fcQQmlExpression_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlExpression_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExpressionVTable, _: ptr cQQmlExpression) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExpression_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExpression_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExpression_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExpression_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExpression_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExpression_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExpression_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExpression_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExpression_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExpression_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new(addr(vtbl[]), ))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: string,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExpressionVTable, _: ptr cQQmlExpression) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExpression_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExpression_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExpression_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExpression_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExpression_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExpression_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExpression_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExpression_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExpression_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExpression_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new2(addr(vtbl[]), param1.h, param2.h, struct_miqt_string(data: param3, len: csize_t(len(param3)))))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExpressionVTable, _: ptr cQQmlExpression) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExpression_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExpression_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExpression_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExpression_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExpression_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExpression_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExpression_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExpression_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExpression_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExpression_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new3(addr(vtbl[]), param1.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: string, param4: gen_qobject_types.QObject,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExpressionVTable, _: ptr cQQmlExpression) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExpression_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExpression_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExpression_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExpression_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExpression_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExpression_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExpression_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExpression_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExpression_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExpression_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new4(addr(vtbl[]), param1.h, param2.h, struct_miqt_string(data: param3, len: csize_t(len(param3))), param4.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExpressionVTable, _: ptr cQQmlExpression) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExpression_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExpression_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExpression_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExpression_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExpression_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExpression_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExpression_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExpression_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExpression_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExpression_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new5(addr(vtbl[]), param1.h, param2.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExpressionVTable, _: ptr cQQmlExpression) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExpression_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExpression_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExpression_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExpression_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExpression_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExpression_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExpression_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExpression_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExpression_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExpression_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new6(addr(vtbl[]), param1.h, param2.h, param3.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject, param4: gen_qobject_types.QObject,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExpressionVTable, _: ptr cQQmlExpression) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQmlExpression_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQmlExpression_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQmlExpression_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQmlExpression_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQmlExpression_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQmlExpression_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQmlExpression_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQmlExpression_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQmlExpression_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQmlExpression_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new7(addr(vtbl[]), param1.h, param2.h, param3.h, param4.h))

proc staticMetaObject*(_: type gen_qqmlexpression_types.QQmlExpression): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExpression_staticMetaObject())
proc delete*(self: gen_qqmlexpression_types.QQmlExpression) =
  fcQQmlExpression_delete(self.h)
