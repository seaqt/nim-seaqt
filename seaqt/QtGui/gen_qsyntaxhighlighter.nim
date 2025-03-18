import ./qtgui_pkg

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


{.compile("gen_qsyntaxhighlighter.cpp", QtGuiCFlags).}


import ./gen_qsyntaxhighlighter_types
export gen_qsyntaxhighlighter_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qcolor_types,
  ./gen_qfont_types,
  ./gen_qtextdocument_types,
  ./gen_qtextformat_types,
  ./gen_qtextobject_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qcolor_types,
  gen_qfont_types,
  gen_qtextdocument_types,
  gen_qtextformat_types,
  gen_qtextobject_types

type cQSyntaxHighlighter*{.exportc: "QSyntaxHighlighter", incompleteStruct.} = object

proc fcQSyntaxHighlighter_metaObject(self: pointer): pointer {.importc: "QSyntaxHighlighter_metaObject".}
proc fcQSyntaxHighlighter_metacast(self: pointer, param1: cstring): pointer {.importc: "QSyntaxHighlighter_metacast".}
proc fcQSyntaxHighlighter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSyntaxHighlighter_metacall".}
proc fcQSyntaxHighlighter_tr(s: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_tr".}
proc fcQSyntaxHighlighter_trUtf8(s: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_trUtf8".}
proc fcQSyntaxHighlighter_setDocument(self: pointer, doc: pointer): void {.importc: "QSyntaxHighlighter_setDocument".}
proc fcQSyntaxHighlighter_document(self: pointer): pointer {.importc: "QSyntaxHighlighter_document".}
proc fcQSyntaxHighlighter_rehighlight(self: pointer): void {.importc: "QSyntaxHighlighter_rehighlight".}
proc fcQSyntaxHighlighter_rehighlightBlock(self: pointer, blockVal: pointer): void {.importc: "QSyntaxHighlighter_rehighlightBlock".}
proc fcQSyntaxHighlighter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_tr2".}
proc fcQSyntaxHighlighter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSyntaxHighlighter_tr3".}
proc fcQSyntaxHighlighter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSyntaxHighlighter_trUtf82".}
proc fcQSyntaxHighlighter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSyntaxHighlighter_trUtf83".}
proc fcQSyntaxHighlighter_vtbl(self: pointer): pointer {.importc: "QSyntaxHighlighter_vtbl".}
proc fcQSyntaxHighlighter_vdata(self: pointer): pointer {.importc: "QSyntaxHighlighter_vdata".}

type cQSyntaxHighlighterVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  highlightBlock*: proc(self: pointer, text: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSyntaxHighlighter_virtualbase_metaObject(self: pointer): pointer {.importc: "QSyntaxHighlighter_virtualbase_metaObject".}
proc fcQSyntaxHighlighter_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSyntaxHighlighter_virtualbase_metacast".}
proc fcQSyntaxHighlighter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSyntaxHighlighter_virtualbase_metacall".}
proc fcQSyntaxHighlighter_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSyntaxHighlighter_virtualbase_event".}
proc fcQSyntaxHighlighter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSyntaxHighlighter_virtualbase_eventFilter".}
proc fcQSyntaxHighlighter_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_timerEvent".}
proc fcQSyntaxHighlighter_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_childEvent".}
proc fcQSyntaxHighlighter_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_customEvent".}
proc fcQSyntaxHighlighter_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_connectNotify".}
proc fcQSyntaxHighlighter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSyntaxHighlighter_virtualbase_disconnectNotify".}
proc fcQSyntaxHighlighter_protectedbase_setFormat(self: pointer, start: cint, count: cint, format: pointer): void {.importc: "QSyntaxHighlighter_protectedbase_setFormat".}
proc fcQSyntaxHighlighter_protectedbase_setFormat2(self: pointer, start: cint, count: cint, color: pointer): void {.importc: "QSyntaxHighlighter_protectedbase_setFormat2".}
proc fcQSyntaxHighlighter_protectedbase_setFormat3(self: pointer, start: cint, count: cint, font: pointer): void {.importc: "QSyntaxHighlighter_protectedbase_setFormat3".}
proc fcQSyntaxHighlighter_protectedbase_format(self: pointer, pos: cint): pointer {.importc: "QSyntaxHighlighter_protectedbase_format".}
proc fcQSyntaxHighlighter_protectedbase_previousBlockState(self: pointer): cint {.importc: "QSyntaxHighlighter_protectedbase_previousBlockState".}
proc fcQSyntaxHighlighter_protectedbase_currentBlockState(self: pointer): cint {.importc: "QSyntaxHighlighter_protectedbase_currentBlockState".}
proc fcQSyntaxHighlighter_protectedbase_setCurrentBlockState(self: pointer, newState: cint): void {.importc: "QSyntaxHighlighter_protectedbase_setCurrentBlockState".}
proc fcQSyntaxHighlighter_protectedbase_setCurrentBlockUserData(self: pointer, data: pointer): void {.importc: "QSyntaxHighlighter_protectedbase_setCurrentBlockUserData".}
proc fcQSyntaxHighlighter_protectedbase_currentBlockUserData(self: pointer): pointer {.importc: "QSyntaxHighlighter_protectedbase_currentBlockUserData".}
proc fcQSyntaxHighlighter_protectedbase_currentBlock(self: pointer): pointer {.importc: "QSyntaxHighlighter_protectedbase_currentBlock".}
proc fcQSyntaxHighlighter_protectedbase_sender(self: pointer): pointer {.importc: "QSyntaxHighlighter_protectedbase_sender".}
proc fcQSyntaxHighlighter_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSyntaxHighlighter_protectedbase_senderSignalIndex".}
proc fcQSyntaxHighlighter_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSyntaxHighlighter_protectedbase_receivers".}
proc fcQSyntaxHighlighter_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSyntaxHighlighter_protectedbase_isSignalConnected".}
proc fcQSyntaxHighlighter_new(vtbl, vdata: pointer, parent: pointer): ptr cQSyntaxHighlighter {.importc: "QSyntaxHighlighter_new".}
proc fcQSyntaxHighlighter_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSyntaxHighlighter {.importc: "QSyntaxHighlighter_new2".}
proc fcQSyntaxHighlighter_staticMetaObject(): pointer {.importc: "QSyntaxHighlighter_staticMetaObject".}

proc metaObject*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSyntaxHighlighter_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cstring): pointer =
  fcQSyntaxHighlighter_metacast(self.h, param1)

proc metacall*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSyntaxHighlighter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring): string =
  let v_ms = fcQSyntaxHighlighter_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring): string =
  let v_ms = fcQSyntaxHighlighter_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDocument*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, doc: gen_qtextdocument_types.QTextDocument): void =
  fcQSyntaxHighlighter_setDocument(self.h, doc.h)

proc document*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQSyntaxHighlighter_document(self.h), owned: false)

proc rehighlight*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): void =
  fcQSyntaxHighlighter_rehighlight(self.h)

proc rehighlightBlock*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQSyntaxHighlighter_rehighlightBlock(self.h, blockVal.h)

proc tr*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring): string =
  let v_ms = fcQSyntaxHighlighter_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSyntaxHighlighter_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring): string =
  let v_ms = fcQSyntaxHighlighter_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSyntaxHighlighter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSyntaxHighlightermetaObjectProc* = proc(self: QSyntaxHighlighter): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSyntaxHighlightermetacastProc* = proc(self: QSyntaxHighlighter, param1: cstring): pointer {.raises: [], gcsafe.}
type QSyntaxHighlightermetacallProc* = proc(self: QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSyntaxHighlighterhighlightBlockProc* = proc(self: QSyntaxHighlighter, text: openArray[char]): void {.raises: [], gcsafe.}
type QSyntaxHighlightereventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSyntaxHighlightereventFilterProc* = proc(self: QSyntaxHighlighter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSyntaxHighlightertimerEventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSyntaxHighlighterchildEventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSyntaxHighlightercustomEventProc* = proc(self: QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSyntaxHighlighterconnectNotifyProc* = proc(self: QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSyntaxHighlighterdisconnectNotifyProc* = proc(self: QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSyntaxHighlighterVTable* {.inheritable, pure.} = object
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

proc QSyntaxHighlightermetaObject*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSyntaxHighlighter_virtualbase_metaObject(self.h), owned: false)

proc QSyntaxHighlightermetacast*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cstring): pointer =
  fcQSyntaxHighlighter_virtualbase_metacast(self.h, param1)

proc QSyntaxHighlightermetacall*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint =
  fcQSyntaxHighlighter_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSyntaxHighlighterevent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): bool =
  fcQSyntaxHighlighter_virtualbase_event(self.h, event.h)

proc QSyntaxHighlightereventFilter*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSyntaxHighlighter_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSyntaxHighlightertimerEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSyntaxHighlighter_virtualbase_timerEvent(self.h, event.h)

proc QSyntaxHighlighterchildEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSyntaxHighlighter_virtualbase_childEvent(self.h, event.h)

proc QSyntaxHighlightercustomEvent*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): void =
  fcQSyntaxHighlighter_virtualbase_customEvent(self.h, event.h)

proc QSyntaxHighlighterconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSyntaxHighlighter_virtualbase_connectNotify(self.h, signal.h)

proc QSyntaxHighlighterdisconnectNotify*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSyntaxHighlighter_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSyntaxHighlighter_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSyntaxHighlighter_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSyntaxHighlighter_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSyntaxHighlighter_vtable_callback_highlightBlock(self: pointer, text: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  vtbl[].highlightBlock(self, slotval1)

proc fcQSyntaxHighlighter_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSyntaxHighlighter_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSyntaxHighlighter_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSyntaxHighlighter_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSyntaxHighlighter_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSyntaxHighlighter_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSyntaxHighlighter_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
  let self = QSyntaxHighlighter(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSyntaxHighlighter* {.inheritable.} = ref object of QSyntaxHighlighter
  vtbl*: cQSyntaxHighlighterVTable

method metaObject*(self: VirtualQSyntaxHighlighter): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSyntaxHighlightermetaObject(self[])
method metacast*(self: VirtualQSyntaxHighlighter, param1: cstring): pointer {.base.} =
  QSyntaxHighlightermetacast(self[], param1)
method metacall*(self: VirtualQSyntaxHighlighter, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSyntaxHighlightermetacall(self[], param1, param2, param3)
method highlightBlock*(self: VirtualQSyntaxHighlighter, text: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QSyntaxHighlighter.highlightBlock")
method event*(self: VirtualQSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSyntaxHighlighterevent(self[], event)
method eventFilter*(self: VirtualQSyntaxHighlighter, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSyntaxHighlightereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSyntaxHighlighter, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSyntaxHighlightertimerEvent(self[], event)
method childEvent*(self: VirtualQSyntaxHighlighter, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSyntaxHighlighterchildEvent(self[], event)
method customEvent*(self: VirtualQSyntaxHighlighter, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSyntaxHighlightercustomEvent(self[], event)
method connectNotify*(self: VirtualQSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSyntaxHighlighterconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSyntaxHighlighterdisconnectNotify(self[], signal)

proc fcQSyntaxHighlighter_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSyntaxHighlighter_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSyntaxHighlighter_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSyntaxHighlighter_method_callback_highlightBlock(self: pointer, text: struct_miqt_string): void {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret
  inst.highlightBlock(slotval1)

proc fcQSyntaxHighlighter_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSyntaxHighlighter_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSyntaxHighlighter_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSyntaxHighlighter_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSyntaxHighlighter_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSyntaxHighlighter_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSyntaxHighlighter_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSyntaxHighlighter](fcQSyntaxHighlighter_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setFormat*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, start: cint, count: cint, format: gen_qtextformat_types.QTextCharFormat): void =
  fcQSyntaxHighlighter_protectedbase_setFormat(self.h, start, count, format.h)

proc setFormat*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, start: cint, count: cint, color: gen_qcolor_types.QColor): void =
  fcQSyntaxHighlighter_protectedbase_setFormat2(self.h, start, count, color.h)

proc setFormat*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, start: cint, count: cint, font: gen_qfont_types.QFont): void =
  fcQSyntaxHighlighter_protectedbase_setFormat3(self.h, start, count, font.h)

proc format*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, pos: cint): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQSyntaxHighlighter_protectedbase_format(self.h, pos), owned: true)

proc previousBlockState*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): cint =
  fcQSyntaxHighlighter_protectedbase_previousBlockState(self.h)

proc currentBlockState*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): cint =
  fcQSyntaxHighlighter_protectedbase_currentBlockState(self.h)

proc setCurrentBlockState*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, newState: cint): void =
  fcQSyntaxHighlighter_protectedbase_setCurrentBlockState(self.h, newState)

proc setCurrentBlockUserData*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, data: gen_qtextobject_types.QTextBlockUserData): void =
  fcQSyntaxHighlighter_protectedbase_setCurrentBlockUserData(self.h, data.h)

proc currentBlockUserData*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qtextobject_types.QTextBlockUserData =
  gen_qtextobject_types.QTextBlockUserData(h: fcQSyntaxHighlighter_protectedbase_currentBlockUserData(self.h), owned: false)

proc currentBlock*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQSyntaxHighlighter_protectedbase_currentBlock(self.h), owned: true)

proc sender*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSyntaxHighlighter_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter): cint =
  fcQSyntaxHighlighter_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: cstring): cint =
  fcQSyntaxHighlighter_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsyntaxhighlighter_types.QSyntaxHighlighter, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSyntaxHighlighter_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSyntaxHighlighterVTable = nil): gen_qsyntaxhighlighter_types.QSyntaxHighlighter =
  let vtbl = if vtbl == nil: new QSyntaxHighlighterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSyntaxHighlighter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSyntaxHighlighter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSyntaxHighlighter_vtable_callback_metacall
  if not isNil(vtbl[].highlightBlock):
    vtbl[].vtbl.highlightBlock = fcQSyntaxHighlighter_vtable_callback_highlightBlock
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSyntaxHighlighter_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSyntaxHighlighter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSyntaxHighlighter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSyntaxHighlighter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSyntaxHighlighter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSyntaxHighlighter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSyntaxHighlighter_vtable_callback_disconnectNotify
  gen_qsyntaxhighlighter_types.QSyntaxHighlighter(h: fcQSyntaxHighlighter_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter,
    parent: gen_qtextdocument_types.QTextDocument,
    vtbl: ref QSyntaxHighlighterVTable = nil): gen_qsyntaxhighlighter_types.QSyntaxHighlighter =
  let vtbl = if vtbl == nil: new QSyntaxHighlighterVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSyntaxHighlighterVTable](fcQSyntaxHighlighter_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSyntaxHighlighter_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSyntaxHighlighter_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSyntaxHighlighter_vtable_callback_metacall
  if not isNil(vtbl[].highlightBlock):
    vtbl[].vtbl.highlightBlock = fcQSyntaxHighlighter_vtable_callback_highlightBlock
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSyntaxHighlighter_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSyntaxHighlighter_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSyntaxHighlighter_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSyntaxHighlighter_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSyntaxHighlighter_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSyntaxHighlighter_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSyntaxHighlighter_vtable_callback_disconnectNotify
  gen_qsyntaxhighlighter_types.QSyntaxHighlighter(h: fcQSyntaxHighlighter_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSyntaxHighlighter_mvtbl = cQSyntaxHighlighterVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSyntaxHighlighter()[])](self.fcQSyntaxHighlighter_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSyntaxHighlighter_method_callback_metaObject,
  metacast: fcQSyntaxHighlighter_method_callback_metacast,
  metacall: fcQSyntaxHighlighter_method_callback_metacall,
  highlightBlock: fcQSyntaxHighlighter_method_callback_highlightBlock,
  event: fcQSyntaxHighlighter_method_callback_event,
  eventFilter: fcQSyntaxHighlighter_method_callback_eventFilter,
  timerEvent: fcQSyntaxHighlighter_method_callback_timerEvent,
  childEvent: fcQSyntaxHighlighter_method_callback_childEvent,
  customEvent: fcQSyntaxHighlighter_method_callback_customEvent,
  connectNotify: fcQSyntaxHighlighter_method_callback_connectNotify,
  disconnectNotify: fcQSyntaxHighlighter_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSyntaxHighlighter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSyntaxHighlighter_new(addr(cQSyntaxHighlighter_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter,
    parent: gen_qtextdocument_types.QTextDocument,
    inst: VirtualQSyntaxHighlighter) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSyntaxHighlighter_new2(addr(cQSyntaxHighlighter_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsyntaxhighlighter_types.QSyntaxHighlighter): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSyntaxHighlighter_staticMetaObject())
