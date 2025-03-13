import ./Qt6Qml_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
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

proc fcQQmlExpression_metaObject(self: pointer): pointer {.importc: "QQmlExpression_metaObject".}
proc fcQQmlExpression_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExpression_metacast".}
proc fcQQmlExpression_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExpression_metacall".}
proc fcQQmlExpression_tr(s: cstring): struct_miqt_string {.importc: "QQmlExpression_tr".}
proc fcQQmlExpression_engine(self: pointer): pointer {.importc: "QQmlExpression_engine".}
proc fcQQmlExpression_context(self: pointer): pointer {.importc: "QQmlExpression_context".}
proc fcQQmlExpression_expression(self: pointer): struct_miqt_string {.importc: "QQmlExpression_expression".}
proc fcQQmlExpression_setExpression(self: pointer, expression: struct_miqt_string): void {.importc: "QQmlExpression_setExpression".}
proc fcQQmlExpression_notifyOnValueChanged(self: pointer): bool {.importc: "QQmlExpression_notifyOnValueChanged".}
proc fcQQmlExpression_setNotifyOnValueChanged(self: pointer, notifyOnValueChanged: bool): void {.importc: "QQmlExpression_setNotifyOnValueChanged".}
proc fcQQmlExpression_sourceFile(self: pointer): struct_miqt_string {.importc: "QQmlExpression_sourceFile".}
proc fcQQmlExpression_lineNumber(self: pointer): cint {.importc: "QQmlExpression_lineNumber".}
proc fcQQmlExpression_columnNumber(self: pointer): cint {.importc: "QQmlExpression_columnNumber".}
proc fcQQmlExpression_setSourceLocation(self: pointer, fileName: struct_miqt_string, line: cint): void {.importc: "QQmlExpression_setSourceLocation".}
proc fcQQmlExpression_scopeObject(self: pointer): pointer {.importc: "QQmlExpression_scopeObject".}
proc fcQQmlExpression_hasError(self: pointer): bool {.importc: "QQmlExpression_hasError".}
proc fcQQmlExpression_clearError(self: pointer): void {.importc: "QQmlExpression_clearError".}
proc fcQQmlExpression_error(self: pointer): pointer {.importc: "QQmlExpression_error".}
proc fcQQmlExpression_evaluate(self: pointer): pointer {.importc: "QQmlExpression_evaluate".}
proc fcQQmlExpression_valueChanged(self: pointer): void {.importc: "QQmlExpression_valueChanged".}
proc fcQQmlExpression_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QQmlExpression_connect_valueChanged".}
proc fcQQmlExpression_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExpression_tr2".}
proc fcQQmlExpression_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExpression_tr3".}
proc fcQQmlExpression_setSourceLocation3(self: pointer, fileName: struct_miqt_string, line: cint, column: cint): void {.importc: "QQmlExpression_setSourceLocation3".}
proc fcQQmlExpression_evaluate1(self: pointer, valueIsUndefined: ptr bool): pointer {.importc: "QQmlExpression_evaluate1".}
proc fcQQmlExpression_vtbl(self: pointer): pointer {.importc: "QQmlExpression_vtbl".}
proc fcQQmlExpression_vdata(self: pointer): pointer {.importc: "QQmlExpression_vdata".}
type cQQmlExpressionVTable {.pure.} = object
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
proc fcQQmlExpression_virtualbase_metaObject(self: pointer): pointer {.importc: "QQmlExpression_virtualbase_metaObject".}
proc fcQQmlExpression_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExpression_virtualbase_metacast".}
proc fcQQmlExpression_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExpression_virtualbase_metacall".}
proc fcQQmlExpression_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQmlExpression_virtualbase_event".}
proc fcQQmlExpression_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQmlExpression_virtualbase_eventFilter".}
proc fcQQmlExpression_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QQmlExpression_virtualbase_timerEvent".}
proc fcQQmlExpression_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQmlExpression_virtualbase_childEvent".}
proc fcQQmlExpression_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQmlExpression_virtualbase_customEvent".}
proc fcQQmlExpression_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExpression_virtualbase_connectNotify".}
proc fcQQmlExpression_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQmlExpression_virtualbase_disconnectNotify".}
proc fcQQmlExpression_protectedbase_sender(self: pointer): pointer {.importc: "QQmlExpression_protectedbase_sender".}
proc fcQQmlExpression_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QQmlExpression_protectedbase_senderSignalIndex".}
proc fcQQmlExpression_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQmlExpression_protectedbase_receivers".}
proc fcQQmlExpression_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQmlExpression_protectedbase_isSignalConnected".}
proc fcQQmlExpression_new(vtbl, vdata: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new".}
proc fcQQmlExpression_new2(vtbl, vdata: pointer, param1: pointer, param2: pointer, param3: struct_miqt_string): ptr cQQmlExpression {.importc: "QQmlExpression_new2".}
proc fcQQmlExpression_new3(vtbl, vdata: pointer, param1: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new3".}
proc fcQQmlExpression_new4(vtbl, vdata: pointer, param1: pointer, param2: pointer, param3: struct_miqt_string, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new4".}
proc fcQQmlExpression_new5(vtbl, vdata: pointer, param1: pointer, param2: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new5".}
proc fcQQmlExpression_new6(vtbl, vdata: pointer, param1: pointer, param2: pointer, param3: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new6".}
proc fcQQmlExpression_new7(vtbl, vdata: pointer, param1: pointer, param2: pointer, param3: pointer, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new7".}
proc fcQQmlExpression_staticMetaObject(): pointer {.importc: "QQmlExpression_staticMetaObject".}

proc metaObject*(self: gen_qqmlexpression_types.QQmlExpression): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExpression_metaObject(self.h), owned: false)

proc metacast*(self: gen_qqmlexpression_types.QQmlExpression, param1: cstring): pointer =
  fcQQmlExpression_metacast(self.h, param1)

proc metacall*(self: gen_qqmlexpression_types.QQmlExpression, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExpression_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring): string =
  let v_ms = fcQQmlExpression_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc engine*(self: gen_qqmlexpression_types.QQmlExpression): gen_qqmlengine_types.QQmlEngine =
  gen_qqmlengine_types.QQmlEngine(h: fcQQmlExpression_engine(self.h), owned: false)

proc context*(self: gen_qqmlexpression_types.QQmlExpression): gen_qqmlcontext_types.QQmlContext =
  gen_qqmlcontext_types.QQmlContext(h: fcQQmlExpression_context(self.h), owned: false)

proc expression*(self: gen_qqmlexpression_types.QQmlExpression): string =
  let v_ms = fcQQmlExpression_expression(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setExpression*(self: gen_qqmlexpression_types.QQmlExpression, expression: openArray[char]): void =
  fcQQmlExpression_setExpression(self.h, struct_miqt_string(data: if len(expression) > 0: addr expression[0] else: nil, len: csize_t(len(expression))))

proc notifyOnValueChanged*(self: gen_qqmlexpression_types.QQmlExpression): bool =
  fcQQmlExpression_notifyOnValueChanged(self.h)

proc setNotifyOnValueChanged*(self: gen_qqmlexpression_types.QQmlExpression, notifyOnValueChanged: bool): void =
  fcQQmlExpression_setNotifyOnValueChanged(self.h, notifyOnValueChanged)

proc sourceFile*(self: gen_qqmlexpression_types.QQmlExpression): string =
  let v_ms = fcQQmlExpression_sourceFile(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lineNumber*(self: gen_qqmlexpression_types.QQmlExpression): cint =
  fcQQmlExpression_lineNumber(self.h)

proc columnNumber*(self: gen_qqmlexpression_types.QQmlExpression): cint =
  fcQQmlExpression_columnNumber(self.h)

proc setSourceLocation*(self: gen_qqmlexpression_types.QQmlExpression, fileName: openArray[char], line: cint): void =
  fcQQmlExpression_setSourceLocation(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), line)

proc scopeObject*(self: gen_qqmlexpression_types.QQmlExpression): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlExpression_scopeObject(self.h), owned: false)

proc hasError*(self: gen_qqmlexpression_types.QQmlExpression): bool =
  fcQQmlExpression_hasError(self.h)

proc clearError*(self: gen_qqmlexpression_types.QQmlExpression): void =
  fcQQmlExpression_clearError(self.h)

proc error*(self: gen_qqmlexpression_types.QQmlExpression): gen_qqmlerror_types.QQmlError =
  gen_qqmlerror_types.QQmlError(h: fcQQmlExpression_error(self.h), owned: true)

proc evaluate*(self: gen_qqmlexpression_types.QQmlExpression): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlExpression_evaluate(self.h), owned: true)

proc valueChanged*(self: gen_qqmlexpression_types.QQmlExpression): void =
  fcQQmlExpression_valueChanged(self.h)

type QQmlExpressionvalueChangedSlot* = proc()
proc cQQmlExpression_slot_callback_valueChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QQmlExpressionvalueChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQQmlExpression_slot_callback_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QQmlExpressionvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvalueChanged*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionvalueChangedSlot) =
  var tmp = new QQmlExpressionvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_connect_valueChanged(self.h, cast[int](addr tmp[]), cQQmlExpression_slot_callback_valueChanged, cQQmlExpression_slot_callback_valueChanged_release)

proc tr*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring, c: cstring): string =
  let v_ms = fcQQmlExpression_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlExpression_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSourceLocation*(self: gen_qqmlexpression_types.QQmlExpression, fileName: openArray[char], line: cint, column: cint): void =
  fcQQmlExpression_setSourceLocation3(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), line, column)

proc evaluate*(self: gen_qqmlexpression_types.QQmlExpression, valueIsUndefined: ptr bool): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlExpression_evaluate1(self.h, valueIsUndefined), owned: true)

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
type QQmlExpressionVTable* {.inheritable, pure.} = object
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
proc QQmlExpressionmetaObject*(self: gen_qqmlexpression_types.QQmlExpression): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExpression_virtualbase_metaObject(self.h), owned: false)

proc cQQmlExpression_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QQmlExpressionmetacast*(self: gen_qqmlexpression_types.QQmlExpression, param1: cstring): pointer =
  fcQQmlExpression_virtualbase_metacast(self.h, param1)

proc cQQmlExpression_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQmlExpressionmetacall*(self: gen_qqmlexpression_types.QQmlExpression, param1: cint, param2: cint, param3: pointer): cint =
  fcQQmlExpression_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQQmlExpression_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQmlExpressionevent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExpression_virtualbase_event(self.h, event.h)

proc cQQmlExpression_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQmlExpressioneventFilter*(self: gen_qqmlexpression_types.QQmlExpression, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQmlExpression_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQQmlExpression_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQmlExpressiontimerEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQQmlExpression_virtualbase_timerEvent(self.h, event.h)

proc cQQmlExpression_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QQmlExpressionchildEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQmlExpression_virtualbase_childEvent(self.h, event.h)

proc cQQmlExpression_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QQmlExpressioncustomEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QEvent): void =
  fcQQmlExpression_virtualbase_customEvent(self.h, event.h)

proc cQQmlExpression_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QQmlExpressionconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExpression_virtualbase_connectNotify(self.h, signal.h)

proc cQQmlExpression_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QQmlExpressiondisconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQmlExpression_virtualbase_disconnectNotify(self.h, signal.h)

proc cQQmlExpression_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExpressionVTable](fcQQmlExpression_vdata(self))
  let self = QQmlExpression(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQQmlExpression* {.inheritable.} = ref object of QQmlExpression
  vtbl*: cQQmlExpressionVTable
method metaObject*(self: VirtualQQmlExpression): gen_qobjectdefs_types.QMetaObject {.base.} =
  QQmlExpressionmetaObject(self[])
proc cQQmlExpression_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQQmlExpression, param1: cstring): pointer {.base.} =
  QQmlExpressionmetacast(self[], param1)
proc cQQmlExpression_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQQmlExpression, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QQmlExpressionmetacall(self[], param1, param2, param3)
proc cQQmlExpression_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQQmlExpression, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlExpressionevent(self[], event)
proc cQQmlExpression_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQQmlExpression, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QQmlExpressioneventFilter(self[], watched, event)
proc cQQmlExpression_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQQmlExpression, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QQmlExpressiontimerEvent(self[], event)
proc cQQmlExpression_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQQmlExpression, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QQmlExpressionchildEvent(self[], event)
proc cQQmlExpression_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQQmlExpression, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QQmlExpressioncustomEvent(self[], event)
proc cQQmlExpression_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlExpressionconnectNotify(self[], signal)
proc cQQmlExpression_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QQmlExpressiondisconnectNotify(self[], signal)
proc cQQmlExpression_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQQmlExpression](fcQQmlExpression_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qqmlexpression_types.QQmlExpression): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQmlExpression_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qqmlexpression_types.QQmlExpression): cint =
  fcQQmlExpression_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qqmlexpression_types.QQmlExpression, signal: cstring): cint =
  fcQQmlExpression_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQmlExpression_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](fcQQmlExpression_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExpression_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExpression_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExpression_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExpression_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExpression_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExpression_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExpression_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExpression_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExpression_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExpression_vtable_callback_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: openArray[char],
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](fcQQmlExpression_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExpression_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExpression_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExpression_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExpression_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExpression_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExpression_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExpression_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExpression_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExpression_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExpression_vtable_callback_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, param2.h, struct_miqt_string(data: if len(param3) > 0: addr param3[0] else: nil, len: csize_t(len(param3)))), owned: true)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](fcQQmlExpression_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExpression_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExpression_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExpression_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExpression_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExpression_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExpression_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExpression_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExpression_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExpression_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExpression_vtable_callback_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new3(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: openArray[char], param4: gen_qobject_types.QObject,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](fcQQmlExpression_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExpression_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExpression_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExpression_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExpression_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExpression_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExpression_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExpression_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExpression_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExpression_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExpression_vtable_callback_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new4(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, param2.h, struct_miqt_string(data: if len(param3) > 0: addr param3[0] else: nil, len: csize_t(len(param3))), param4.h), owned: true)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](fcQQmlExpression_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExpression_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExpression_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExpression_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExpression_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExpression_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExpression_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExpression_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExpression_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExpression_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExpression_vtable_callback_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new5(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, param2.h), owned: true)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](fcQQmlExpression_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExpression_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExpression_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExpression_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExpression_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExpression_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExpression_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExpression_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExpression_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExpression_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExpression_vtable_callback_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new6(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, param2.h, param3.h), owned: true)

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject, param4: gen_qobject_types.QObject,
    vtbl: ref QQmlExpressionVTable = nil): gen_qqmlexpression_types.QQmlExpression =
  let vtbl = if vtbl == nil: new QQmlExpressionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExpressionVTable](fcQQmlExpression_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQQmlExpression_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQQmlExpression_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQQmlExpression_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQQmlExpression_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQQmlExpression_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQQmlExpression_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQQmlExpression_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQQmlExpression_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQQmlExpression_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQQmlExpression_vtable_callback_disconnectNotify
  gen_qqmlexpression_types.QQmlExpression(h: fcQQmlExpression_new7(addr(vtbl[].vtbl), addr(vtbl[]), param1.h, param2.h, param3.h, param4.h), owned: true)

const cQQmlExpression_mvtbl = cQQmlExpressionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlExpression()[])](self.fcQQmlExpression_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQQmlExpression_method_callback_metaObject,
  metacast: cQQmlExpression_method_callback_metacast,
  metacall: cQQmlExpression_method_callback_metacall,
  event: cQQmlExpression_method_callback_event,
  eventFilter: cQQmlExpression_method_callback_eventFilter,
  timerEvent: cQQmlExpression_method_callback_timerEvent,
  childEvent: cQQmlExpression_method_callback_childEvent,
  customEvent: cQQmlExpression_method_callback_customEvent,
  connectNotify: cQQmlExpression_method_callback_connectNotify,
  disconnectNotify: cQQmlExpression_method_callback_disconnectNotify,
)
proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    inst: VirtualQQmlExpression) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExpression_new(addr(cQQmlExpression_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: openArray[char],
    inst: VirtualQQmlExpression) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExpression_new2(addr(cQQmlExpression_mvtbl), addr(inst[]), param1.h, param2.h, struct_miqt_string(data: if len(param3) > 0: addr param3[0] else: nil, len: csize_t(len(param3))))
  inst[].owned = true

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString,
    inst: VirtualQQmlExpression) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExpression_new3(addr(cQQmlExpression_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: openArray[char], param4: gen_qobject_types.QObject,
    inst: VirtualQQmlExpression) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExpression_new4(addr(cQQmlExpression_mvtbl), addr(inst[]), param1.h, param2.h, struct_miqt_string(data: if len(param3) > 0: addr param3[0] else: nil, len: csize_t(len(param3))), param4.h)
  inst[].owned = true

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext,
    inst: VirtualQQmlExpression) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExpression_new5(addr(cQQmlExpression_mvtbl), addr(inst[]), param1.h, param2.h)
  inst[].owned = true

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject,
    inst: VirtualQQmlExpression) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExpression_new6(addr(cQQmlExpression_mvtbl), addr(inst[]), param1.h, param2.h, param3.h)
  inst[].owned = true

proc create*(T: type gen_qqmlexpression_types.QQmlExpression,
    param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject, param4: gen_qobject_types.QObject,
    inst: VirtualQQmlExpression) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExpression_new7(addr(cQQmlExpression_mvtbl), addr(inst[]), param1.h, param2.h, param3.h, param4.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qqmlexpression_types.QQmlExpression): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExpression_staticMetaObject())
