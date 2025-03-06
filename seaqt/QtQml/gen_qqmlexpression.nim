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

proc fcQQmlExpression_new(): ptr cQQmlExpression {.importc: "QQmlExpression_new".}
proc fcQQmlExpression_new2(param1: pointer, param2: pointer, param3: struct_miqt_string): ptr cQQmlExpression {.importc: "QQmlExpression_new2".}
proc fcQQmlExpression_new3(param1: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new3".}
proc fcQQmlExpression_new4(param1: pointer, param2: pointer, param3: struct_miqt_string, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new4".}
proc fcQQmlExpression_new5(param1: pointer, param2: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new5".}
proc fcQQmlExpression_new6(param1: pointer, param2: pointer, param3: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new6".}
proc fcQQmlExpression_new7(param1: pointer, param2: pointer, param3: pointer, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new7".}
proc fcQQmlExpression_metaObject(self: pointer, ): pointer {.importc: "QQmlExpression_metaObject".}
proc fcQQmlExpression_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExpression_metacast".}
proc fcQQmlExpression_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExpression_metacall".}
proc fcQQmlExpression_tr(s: cstring): struct_miqt_string {.importc: "QQmlExpression_tr".}
proc fcQQmlExpression_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlExpression_trUtf8".}
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
proc fcQQmlExpression_connect_valueChanged(self: pointer, slot: int) {.importc: "QQmlExpression_connect_valueChanged".}
proc fcQQmlExpression_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExpression_tr2".}
proc fcQQmlExpression_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExpression_tr3".}
proc fcQQmlExpression_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExpression_trUtf82".}
proc fcQQmlExpression_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExpression_trUtf83".}
proc fcQQmlExpression_setSourceLocation3(self: pointer, fileName: struct_miqt_string, line: cint, column: cint): void {.importc: "QQmlExpression_setSourceLocation3".}
proc fcQQmlExpression_evaluate1(self: pointer, valueIsUndefined: ptr bool): pointer {.importc: "QQmlExpression_evaluate1".}
proc fQQmlExpression_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQmlExpression_virtualbase_metaObject".}
proc fcQQmlExpression_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_metaObject".}
proc fQQmlExpression_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQmlExpression_virtualbase_metacast".}
proc fcQQmlExpression_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_metacast".}
proc fQQmlExpression_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlExpression_virtualbase_metacall".}
proc fcQQmlExpression_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_metacall".}
proc fQQmlExpression_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlExpression_virtualbase_event".}
proc fcQQmlExpression_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_event".}
proc fQQmlExpression_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlExpression_virtualbase_eventFilter".}
proc fcQQmlExpression_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_eventFilter".}
proc fQQmlExpression_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlExpression_virtualbase_timerEvent".}
proc fcQQmlExpression_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_timerEvent".}
proc fQQmlExpression_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlExpression_virtualbase_childEvent".}
proc fcQQmlExpression_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_childEvent".}
proc fQQmlExpression_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlExpression_virtualbase_customEvent".}
proc fcQQmlExpression_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_customEvent".}
proc fQQmlExpression_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExpression_virtualbase_connectNotify".}
proc fcQQmlExpression_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_connectNotify".}
proc fQQmlExpression_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExpression_virtualbase_disconnectNotify".}
proc fcQQmlExpression_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_disconnectNotify".}
proc fcQQmlExpression_staticMetaObject(): pointer {.importc: "QQmlExpression_staticMetaObject".}
proc fcQQmlExpression_delete(self: pointer) {.importc: "QQmlExpression_delete".}


func init*(T: type gen_qqmlexpression_types.QQmlExpression, h: ptr cQQmlExpression): gen_qqmlexpression_types.QQmlExpression =
  T(h: h)
proc create*(T: type gen_qqmlexpression_types.QQmlExpression, ): gen_qqmlexpression_types.QQmlExpression =
  gen_qqmlexpression_types.QQmlExpression.init(fcQQmlExpression_new())

proc create*(T: type gen_qqmlexpression_types.QQmlExpression, param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: string): gen_qqmlexpression_types.QQmlExpression =
  gen_qqmlexpression_types.QQmlExpression.init(fcQQmlExpression_new2(param1.h, param2.h, struct_miqt_string(data: param3, len: csize_t(len(param3)))))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression, param1: gen_qqmlscriptstring_types.QQmlScriptString): gen_qqmlexpression_types.QQmlExpression =
  gen_qqmlexpression_types.QQmlExpression.init(fcQQmlExpression_new3(param1.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression, param1: gen_qqmlcontext_types.QQmlContext, param2: gen_qobject_types.QObject, param3: string, param4: gen_qobject_types.QObject): gen_qqmlexpression_types.QQmlExpression =
  gen_qqmlexpression_types.QQmlExpression.init(fcQQmlExpression_new4(param1.h, param2.h, struct_miqt_string(data: param3, len: csize_t(len(param3))), param4.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression, param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext): gen_qqmlexpression_types.QQmlExpression =
  gen_qqmlexpression_types.QQmlExpression.init(fcQQmlExpression_new5(param1.h, param2.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression, param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject): gen_qqmlexpression_types.QQmlExpression =
  gen_qqmlexpression_types.QQmlExpression.init(fcQQmlExpression_new6(param1.h, param2.h, param3.h))

proc create*(T: type gen_qqmlexpression_types.QQmlExpression, param1: gen_qqmlscriptstring_types.QQmlScriptString, param2: gen_qqmlcontext_types.QQmlContext, param3: gen_qobject_types.QObject, param4: gen_qobject_types.QObject): gen_qqmlexpression_types.QQmlExpression =
  gen_qqmlexpression_types.QQmlExpression.init(fcQQmlExpression_new7(param1.h, param2.h, param3.h, param4.h))

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

proc trUtf8*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring): string =
  let v_ms = fcQQmlExpression_trUtf8(s)
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
proc miqt_exec_callback_QQmlExpression_valueChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QQmlExpressionvalueChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvalueChanged*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionvalueChangedSlot) =
  var tmp = new QQmlExpressionvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_connect_valueChanged(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring, c: cstring): string =
  let v_ms = fcQQmlExpression_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qqmlexpression_types.QQmlExpression, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQmlExpression_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceLocation*(self: gen_qqmlexpression_types.QQmlExpression, fileName: string, line: cint, column: cint): void =
  fcQQmlExpression_setSourceLocation3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), line, column)

proc evaluate*(self: gen_qqmlexpression_types.QQmlExpression, valueIsUndefined: ptr bool): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQmlExpression_evaluate1(self.h, valueIsUndefined))

proc QQmlExpressionmetaObject*(self: gen_qqmlexpression_types.QQmlExpression, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQmlExpression_virtualbase_metaObject(self.h))

type QQmlExpressionmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQmlExpressionmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_metaObject(self: ptr cQQmlExpression, slot: int): pointer {.exportc: "miqt_exec_callback_QQmlExpression_metaObject ".} =
  var nimfunc = cast[ptr QQmlExpressionmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQmlExpressionmetacast*(self: gen_qqmlexpression_types.QQmlExpression, param1: cstring): pointer =
  fQQmlExpression_virtualbase_metacast(self.h, param1)

type QQmlExpressionmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionmetacastProc) =
  # TODO check subclass
  var tmp = new QQmlExpressionmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_metacast(self: ptr cQQmlExpression, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQmlExpression_metacast ".} =
  var nimfunc = cast[ptr QQmlExpressionmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlExpressionmetacall*(self: gen_qqmlexpression_types.QQmlExpression, param1: cint, param2: cint, param3: pointer): cint =
  fQQmlExpression_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlExpressionmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionmetacallProc) =
  # TODO check subclass
  var tmp = new QQmlExpressionmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_metacall(self: ptr cQQmlExpression, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlExpression_metacall ".} =
  var nimfunc = cast[ptr QQmlExpressionmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQmlExpressionevent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlExpression_virtualbase_event(self.h, event.h)

type QQmlExpressioneventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressioneventProc) =
  # TODO check subclass
  var tmp = new QQmlExpressioneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_event(self: ptr cQQmlExpression, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExpression_event ".} =
  var nimfunc = cast[ptr QQmlExpressioneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQmlExpressioneventFilter*(self: gen_qqmlexpression_types.QQmlExpression, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQmlExpression_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlExpressioneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressioneventFilterProc) =
  # TODO check subclass
  var tmp = new QQmlExpressioneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_eventFilter(self: ptr cQQmlExpression, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExpression_eventFilter ".} =
  var nimfunc = cast[ptr QQmlExpressioneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQmlExpressiontimerEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQmlExpression_virtualbase_timerEvent(self.h, event.h)

type QQmlExpressiontimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressiontimerEventProc) =
  # TODO check subclass
  var tmp = new QQmlExpressiontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_timerEvent(self: ptr cQQmlExpression, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_timerEvent ".} =
  var nimfunc = cast[ptr QQmlExpressiontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQmlExpressionchildEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QChildEvent): void =
  fQQmlExpression_virtualbase_childEvent(self.h, event.h)

type QQmlExpressionchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionchildEventProc) =
  # TODO check subclass
  var tmp = new QQmlExpressionchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_childEvent(self: ptr cQQmlExpression, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_childEvent ".} =
  var nimfunc = cast[ptr QQmlExpressionchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQmlExpressioncustomEvent*(self: gen_qqmlexpression_types.QQmlExpression, event: gen_qcoreevent_types.QEvent): void =
  fQQmlExpression_virtualbase_customEvent(self.h, event.h)

type QQmlExpressioncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressioncustomEventProc) =
  # TODO check subclass
  var tmp = new QQmlExpressioncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_customEvent(self: ptr cQQmlExpression, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_customEvent ".} =
  var nimfunc = cast[ptr QQmlExpressioncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQmlExpressionconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlExpression_virtualbase_connectNotify(self.h, signal.h)

type QQmlExpressionconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressionconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlExpressionconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_connectNotify(self: ptr cQQmlExpression, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_connectNotify ".} =
  var nimfunc = cast[ptr QQmlExpressionconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQmlExpressiondisconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQmlExpression_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlExpressiondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qqmlexpression_types.QQmlExpression, slot: QQmlExpressiondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQmlExpressiondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_disconnectNotify(self: ptr cQQmlExpression, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_disconnectNotify ".} =
  var nimfunc = cast[ptr QQmlExpressiondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qqmlexpression_types.QQmlExpression): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQmlExpression_staticMetaObject())
proc delete*(self: gen_qqmlexpression_types.QQmlExpression) =
  fcQQmlExpression_delete(self.h)
