import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qsyntaxhighlighter.cpp", cflags).}


import ./gen_qsyntaxhighlighter_types
export gen_qsyntaxhighlighter_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qtextdocument_types,
  ./gen_qtextobject_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qtextdocument_types,
  gen_qtextobject_types

type cQSyntaxHighlighter*{.exportc: "QSyntaxHighlighter", incompleteStruct.} = object

proc fcQSyntaxHighlighter_metaObject(self: pointer, ): pointer {.importc: "QSyntaxHighlighter_metaObject".}
proc fcQSyntaxHighlighter_metacast(self: pointer, param1: cstring): pointer {.importc: "QSyntaxHighlighter_metacast".}
proc fcQSyntaxHighlighter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSyntaxHighlighter_metacall".}
proc fcQSyntaxHighlighter_tr(s: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_tr".}
proc fcQSyntaxHighlighter_setDocument(self: pointer, doc: pointer): void {.importc: "QSyntaxHighlighter_setDocument".}
proc fcQSyntaxHighlighter_document(self: pointer, ): pointer {.importc: "QSyntaxHighlighter_document".}
proc fcQSyntaxHighlighter_rehighlight(self: pointer, ): void {.importc: "QSyntaxHighlighter_rehighlight".}
proc fcQSyntaxHighlighter_rehighlightBlock(self: pointer, blockVal: pointer): void {.importc: "QSyntaxHighlighter_rehighlightBlock".}
proc fcQSyntaxHighlighter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_tr2".}
proc fcQSyntaxHighlighter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSyntaxHighlighter_tr3".}
type cQSyntaxHighlighterVTable = object
  destructor*: proc(vtbl: ptr cQSyntaxHighlighterVTable, self: ptr cQSyntaxHighlighter) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  highlightBlock*: proc(vtbl, self: pointer, text: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSyntaxHighlighter_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSyntaxHighlighter_virtualbase_metaObject".}
proc fcQSyntaxHighlighter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSyntaxHighlighter_virtualbase_metacast".}
proc fcQSyntaxHighlighter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSyntaxHighlighter_virtualbase_metacall".}
proc fcQSyntaxHighlighter_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSyntaxHighlighter_virtualbase_event".}
proc fcQSyntaxHighlighter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSyntaxHighlighter_virtualbase_eventFilter".}
proc fcQSyntaxHighlighter_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_timerEvent".}
proc fcQSyntaxHighlighter_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_childEvent".}
proc fcQSyntaxHighlighter_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_customEvent".}
proc fcQSyntaxHighlighter_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_connectNotify".}
proc fcQSyntaxHighlighter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_disconnectNotify".}
proc fcQSyntaxHighlighter_new(vtbl: pointer, parent: pointer): ptr cQSyntaxHighlighter {.importc: "QSyntaxHighlighter_new".}
proc fcQSyntaxHighlighter_new2(vtbl: pointer, parent: pointer): ptr cQSyntaxHighlighter {.importc: "QSyntaxHighlighter_new2".}
proc fcQSyntaxHighlighter_staticMetaObject(): pointer {.importc: "QSyntaxHighlighter_staticMetaObject".}
proc fcQSyntaxHighlighter_delete(self: pointer) {.importc: "QSyntaxHighlighter_delete".}

proc metaObject*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSyntaxHighlighter_metaObject(self.h))

proc metacast*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cstring): pointer =
  fcQSyntaxHighlighter_metacast(self.h, param1)

proc metacall*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSyntaxHighlighter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring): string =
  let v_ms = fcQSyntaxHighlighter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, doc: gen_qtextdocument_types.QTextDocument): void =
  fcQSyntaxHighlighter_setDocument(self.h, doc.h)

proc document*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQSyntaxHighlighter_document(self.h))

proc rehighlight*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): void =
  fcQSyntaxHighlighter_rehighlight(self.h)

proc rehighlightBlock*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQSyntaxHighlighter_rehighlightBlock(self.h, blockVal.h)

proc tr*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring): string =
  let v_ms = fcQSyntaxHighlighter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSyntaxHighlighter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSyntaxHighlightermetaObjectProc* = proc(self: QSyntaxHighlighter): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSyntaxHighlightermetacastProc* = proc(self: QSyntaxHighlighter, param1: cstring): pointer {.raises: [], gcsafe.}
type QSyntaxHighlightermetacallProc* = proc(self: QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSyntaxHighlighterhighlightBlockProc* = proc(self: QSyntaxHighlighter, text: string): void {.raises: [], gcsafe.}
type QSyntaxHighlightereventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSyntaxHighlightereventFilterProc* = proc(self: QSyntaxHighlighter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSyntaxHighlightertimerEventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSyntaxHighlighterchildEventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSyntaxHighlightercustomEventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSyntaxHighlighterconnectNotifyProc* = proc(self: QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSyntaxHighlighterdisconnectNotifyProc* = proc(self: QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSyntaxHighlighterVTable* = object
  vtbl: cQSyntaxHighlighterVTable
  metaObject*: QSyntaxHighlightermetaObjectProc
  metacast*: QSyntaxHighlightermetacastProc
  metacall*: QSyntaxHighlightermetacallProc
  highlightBlock*: QSyntaxHighlighterhighlightBlockProc
  event*: QSyntaxHighlightereventProc
  eventFilter*: QSyntaxHighlightereventFilterProc
  timerEvent*: QSyntaxHighlightertimerEventProc
  childEvent*: QSyntaxHighlighterchildEventProc
  customEvent*: QSyntaxHighlightercustomEventProc
  connectNotify*: QSyntaxHighlighterconnectNotifyProc
  disconnectNotify*: QSyntaxHighlighterdisconnectNotifyProc
proc QSyntaxHighlightermetaObject*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSyntaxHighlighter_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSyntaxHighlighter_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSyntaxHighlightermetacast*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cstring): pointer =
  fcQSyntaxHighlighter_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSyntaxHighlighter_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSyntaxHighlightermetacall*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSyntaxHighlighter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSyntaxHighlighter_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQSyntaxHighlighter_highlightBlock(vtbl: pointer, self: pointer, text: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  vtbl[].highlightBlock(self, slotval1)

proc QSyntaxHighlighterevent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): bool =
  fcQSyntaxHighlighter_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSyntaxHighlighter_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSyntaxHighlightereventFilter*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSyntaxHighlighter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSyntaxHighlighter_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSyntaxHighlightertimerEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSyntaxHighlighter_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSyntaxHighlighter_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSyntaxHighlighterchildEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSyntaxHighlighter_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSyntaxHighlighter_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSyntaxHighlightercustomEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): void =
  fcQSyntaxHighlighter_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSyntaxHighlighter_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSyntaxHighlighterconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSyntaxHighlighter_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSyntaxHighlighter_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSyntaxHighlighterdisconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSyntaxHighlighter_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSyntaxHighlighter_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](vtbl)
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSyntaxHighlighterVTable = nil): gen_qsyntaxhighlighter_types.QSyntaxHighlighter =
  let vtbl = if vtbl == nil: new QSyntaxHighlighterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSyntaxHighlighterVTable, _: ptr cQSyntaxHighlighter) {.cdecl.} =
    let vtbl = cast[ref QSyntaxHighlighterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSyntaxHighlighter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSyntaxHighlighter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSyntaxHighlighter_metacall
  if not isNil(vtbl.highlightBlock):
    vtbl[].vtbl.highlightBlock = miqt_exec_callback_cQSyntaxHighlighter_highlightBlock
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSyntaxHighlighter_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSyntaxHighlighter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSyntaxHighlighter_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSyntaxHighlighter_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSyntaxHighlighter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSyntaxHighlighter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSyntaxHighlighter_disconnectNotify
  gen_qsyntaxhighlighter_types.QSyntaxHighlighter(h: fcQSyntaxHighlighter_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter,
    parent: gen_qtextdocument_types.QTextDocument,
    vtbl: ref QSyntaxHighlighterVTable = nil): gen_qsyntaxhighlighter_types.QSyntaxHighlighter =
  let vtbl = if vtbl == nil: new QSyntaxHighlighterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSyntaxHighlighterVTable, _: ptr cQSyntaxHighlighter) {.cdecl.} =
    let vtbl = cast[ref QSyntaxHighlighterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSyntaxHighlighter_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSyntaxHighlighter_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSyntaxHighlighter_metacall
  if not isNil(vtbl.highlightBlock):
    vtbl[].vtbl.highlightBlock = miqt_exec_callback_cQSyntaxHighlighter_highlightBlock
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSyntaxHighlighter_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSyntaxHighlighter_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSyntaxHighlighter_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSyntaxHighlighter_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSyntaxHighlighter_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSyntaxHighlighter_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSyntaxHighlighter_disconnectNotify
  gen_qsyntaxhighlighter_types.QSyntaxHighlighter(h: fcQSyntaxHighlighter_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSyntaxHighlighter_staticMetaObject())
proc delete*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter) =
  fcQSyntaxHighlighter_delete(self.h)
