import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qtextobject.cpp", cflags).}


import ./gen_qtextobject_types
export gen_qtextobject_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qglyphrun_types,
  ./gen_qtextcursor_types,
  ./gen_qtextdocument_types,
  ./gen_qtextformat_types,
  ./gen_qtextlayout_types,
  ./gen_qtextlist_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qglyphrun_types,
  gen_qtextcursor_types,
  gen_qtextdocument_types,
  gen_qtextformat_types,
  gen_qtextlayout_types,
  gen_qtextlist_types

type cQTextObject*{.exportc: "QTextObject", incompleteStruct.} = object
type cQTextBlockGroup*{.exportc: "QTextBlockGroup", incompleteStruct.} = object
type cQTextFrameLayoutData*{.exportc: "QTextFrameLayoutData", incompleteStruct.} = object
type cQTextFrame*{.exportc: "QTextFrame", incompleteStruct.} = object
type cQTextBlockUserData*{.exportc: "QTextBlockUserData", incompleteStruct.} = object
type cQTextBlock*{.exportc: "QTextBlock", incompleteStruct.} = object
type cQTextFragment*{.exportc: "QTextFragment", incompleteStruct.} = object
type cQTextFrameiterator*{.exportc: "QTextFrame__iterator", incompleteStruct.} = object
type cQTextBlockiterator*{.exportc: "QTextBlock__iterator", incompleteStruct.} = object

proc fcQTextObject_metaObject(self: pointer, ): pointer {.importc: "QTextObject_metaObject".}
proc fcQTextObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextObject_metacast".}
proc fcQTextObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextObject_metacall".}
proc fcQTextObject_tr(s: cstring): struct_miqt_string {.importc: "QTextObject_tr".}
proc fcQTextObject_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextObject_trUtf8".}
proc fcQTextObject_format(self: pointer, ): pointer {.importc: "QTextObject_format".}
proc fcQTextObject_formatIndex(self: pointer, ): cint {.importc: "QTextObject_formatIndex".}
proc fcQTextObject_document(self: pointer, ): pointer {.importc: "QTextObject_document".}
proc fcQTextObject_objectIndex(self: pointer, ): cint {.importc: "QTextObject_objectIndex".}
proc fcQTextObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextObject_tr2".}
proc fcQTextObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextObject_tr3".}
proc fcQTextObject_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextObject_trUtf82".}
proc fcQTextObject_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextObject_trUtf83".}
proc fcQTextObject_protectedbase_setFormat(self: pointer, format: pointer): void {.importc: "QTextObject_protectedbase_setFormat".}
proc fcQTextObject_protectedbase_sender(self: pointer, ): pointer {.importc: "QTextObject_protectedbase_sender".}
proc fcQTextObject_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTextObject_protectedbase_senderSignalIndex".}
proc fcQTextObject_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextObject_protectedbase_receivers".}
proc fcQTextObject_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextObject_protectedbase_isSignalConnected".}
proc fcQTextObject_staticMetaObject(): pointer {.importc: "QTextObject_staticMetaObject".}
proc fcQTextBlockGroup_metaObject(self: pointer, ): pointer {.importc: "QTextBlockGroup_metaObject".}
proc fcQTextBlockGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextBlockGroup_metacast".}
proc fcQTextBlockGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextBlockGroup_metacall".}
proc fcQTextBlockGroup_tr(s: cstring): struct_miqt_string {.importc: "QTextBlockGroup_tr".}
proc fcQTextBlockGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextBlockGroup_trUtf8".}
proc fcQTextBlockGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBlockGroup_tr2".}
proc fcQTextBlockGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBlockGroup_tr3".}
proc fcQTextBlockGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBlockGroup_trUtf82".}
proc fcQTextBlockGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBlockGroup_trUtf83".}
proc fcQTextBlockGroup_protectedbase_blockList(self: pointer, ): struct_miqt_array {.importc: "QTextBlockGroup_protectedbase_blockList".}
proc fcQTextBlockGroup_protectedbase_setFormat(self: pointer, format: pointer): void {.importc: "QTextBlockGroup_protectedbase_setFormat".}
proc fcQTextBlockGroup_protectedbase_sender(self: pointer, ): pointer {.importc: "QTextBlockGroup_protectedbase_sender".}
proc fcQTextBlockGroup_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTextBlockGroup_protectedbase_senderSignalIndex".}
proc fcQTextBlockGroup_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextBlockGroup_protectedbase_receivers".}
proc fcQTextBlockGroup_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextBlockGroup_protectedbase_isSignalConnected".}
proc fcQTextBlockGroup_staticMetaObject(): pointer {.importc: "QTextBlockGroup_staticMetaObject".}
proc fcQTextFrameLayoutData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextFrameLayoutData_operatorAssign".}
proc fcQTextFrameLayoutData_delete(self: pointer) {.importc: "QTextFrameLayoutData_delete".}
proc fcQTextFrame_metaObject(self: pointer, ): pointer {.importc: "QTextFrame_metaObject".}
proc fcQTextFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextFrame_metacast".}
proc fcQTextFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextFrame_metacall".}
proc fcQTextFrame_tr(s: cstring): struct_miqt_string {.importc: "QTextFrame_tr".}
proc fcQTextFrame_trUtf8(s: cstring): struct_miqt_string {.importc: "QTextFrame_trUtf8".}
proc fcQTextFrame_setFrameFormat(self: pointer, format: pointer): void {.importc: "QTextFrame_setFrameFormat".}
proc fcQTextFrame_frameFormat(self: pointer, ): pointer {.importc: "QTextFrame_frameFormat".}
proc fcQTextFrame_firstCursorPosition(self: pointer, ): pointer {.importc: "QTextFrame_firstCursorPosition".}
proc fcQTextFrame_lastCursorPosition(self: pointer, ): pointer {.importc: "QTextFrame_lastCursorPosition".}
proc fcQTextFrame_firstPosition(self: pointer, ): cint {.importc: "QTextFrame_firstPosition".}
proc fcQTextFrame_lastPosition(self: pointer, ): cint {.importc: "QTextFrame_lastPosition".}
proc fcQTextFrame_layoutData(self: pointer, ): pointer {.importc: "QTextFrame_layoutData".}
proc fcQTextFrame_setLayoutData(self: pointer, data: pointer): void {.importc: "QTextFrame_setLayoutData".}
proc fcQTextFrame_childFrames(self: pointer, ): struct_miqt_array {.importc: "QTextFrame_childFrames".}
proc fcQTextFrame_parentFrame(self: pointer, ): pointer {.importc: "QTextFrame_parentFrame".}
proc fcQTextFrame_begin(self: pointer, ): pointer {.importc: "QTextFrame_begin".}
proc fcQTextFrame_endX(self: pointer, ): pointer {.importc: "QTextFrame_end".}
proc fcQTextFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextFrame_tr2".}
proc fcQTextFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextFrame_tr3".}
proc fcQTextFrame_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextFrame_trUtf82".}
proc fcQTextFrame_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextFrame_trUtf83".}
type cQTextFrameVTable = object
  destructor*: proc(vtbl: ptr cQTextFrameVTable, self: ptr cQTextFrame) {.cdecl, raises:[], gcsafe.}
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
proc fcQTextFrame_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTextFrame_virtualbase_metaObject".}
proc fcQTextFrame_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextFrame_virtualbase_metacast".}
proc fcQTextFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextFrame_virtualbase_metacall".}
proc fcQTextFrame_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTextFrame_virtualbase_event".}
proc fcQTextFrame_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTextFrame_virtualbase_eventFilter".}
proc fcQTextFrame_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTextFrame_virtualbase_timerEvent".}
proc fcQTextFrame_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTextFrame_virtualbase_childEvent".}
proc fcQTextFrame_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTextFrame_virtualbase_customEvent".}
proc fcQTextFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTextFrame_virtualbase_connectNotify".}
proc fcQTextFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTextFrame_virtualbase_disconnectNotify".}
proc fcQTextFrame_protectedbase_setFormat(self: pointer, format: pointer): void {.importc: "QTextFrame_protectedbase_setFormat".}
proc fcQTextFrame_protectedbase_sender(self: pointer, ): pointer {.importc: "QTextFrame_protectedbase_sender".}
proc fcQTextFrame_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTextFrame_protectedbase_senderSignalIndex".}
proc fcQTextFrame_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextFrame_protectedbase_receivers".}
proc fcQTextFrame_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextFrame_protectedbase_isSignalConnected".}
proc fcQTextFrame_new(vtbl: pointer, doc: pointer): ptr cQTextFrame {.importc: "QTextFrame_new".}
proc fcQTextFrame_staticMetaObject(): pointer {.importc: "QTextFrame_staticMetaObject".}
proc fcQTextFrame_delete(self: pointer) {.importc: "QTextFrame_delete".}
proc fcQTextBlockUserData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextBlockUserData_operatorAssign".}
proc fcQTextBlockUserData_delete(self: pointer) {.importc: "QTextBlockUserData_delete".}
proc fcQTextBlock_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextBlock_operatorAssign".}
proc fcQTextBlock_isValid(self: pointer, ): bool {.importc: "QTextBlock_isValid".}
proc fcQTextBlock_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock_operatorEqual".}
proc fcQTextBlock_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock_operatorNotEqual".}
proc fcQTextBlock_operatorLesser(self: pointer, o: pointer): bool {.importc: "QTextBlock_operatorLesser".}
proc fcQTextBlock_position(self: pointer, ): cint {.importc: "QTextBlock_position".}
proc fcQTextBlock_length(self: pointer, ): cint {.importc: "QTextBlock_length".}
proc fcQTextBlock_contains(self: pointer, position: cint): bool {.importc: "QTextBlock_contains".}
proc fcQTextBlock_layout(self: pointer, ): pointer {.importc: "QTextBlock_layout".}
proc fcQTextBlock_clearLayout(self: pointer, ): void {.importc: "QTextBlock_clearLayout".}
proc fcQTextBlock_blockFormat(self: pointer, ): pointer {.importc: "QTextBlock_blockFormat".}
proc fcQTextBlock_blockFormatIndex(self: pointer, ): cint {.importc: "QTextBlock_blockFormatIndex".}
proc fcQTextBlock_charFormat(self: pointer, ): pointer {.importc: "QTextBlock_charFormat".}
proc fcQTextBlock_charFormatIndex(self: pointer, ): cint {.importc: "QTextBlock_charFormatIndex".}
proc fcQTextBlock_textDirection(self: pointer, ): cint {.importc: "QTextBlock_textDirection".}
proc fcQTextBlock_text(self: pointer, ): struct_miqt_string {.importc: "QTextBlock_text".}
proc fcQTextBlock_textFormats(self: pointer, ): struct_miqt_array {.importc: "QTextBlock_textFormats".}
proc fcQTextBlock_document(self: pointer, ): pointer {.importc: "QTextBlock_document".}
proc fcQTextBlock_textList(self: pointer, ): pointer {.importc: "QTextBlock_textList".}
proc fcQTextBlock_userData(self: pointer, ): pointer {.importc: "QTextBlock_userData".}
proc fcQTextBlock_setUserData(self: pointer, data: pointer): void {.importc: "QTextBlock_setUserData".}
proc fcQTextBlock_userState(self: pointer, ): cint {.importc: "QTextBlock_userState".}
proc fcQTextBlock_setUserState(self: pointer, state: cint): void {.importc: "QTextBlock_setUserState".}
proc fcQTextBlock_revision(self: pointer, ): cint {.importc: "QTextBlock_revision".}
proc fcQTextBlock_setRevision(self: pointer, rev: cint): void {.importc: "QTextBlock_setRevision".}
proc fcQTextBlock_isVisible(self: pointer, ): bool {.importc: "QTextBlock_isVisible".}
proc fcQTextBlock_setVisible(self: pointer, visible: bool): void {.importc: "QTextBlock_setVisible".}
proc fcQTextBlock_blockNumber(self: pointer, ): cint {.importc: "QTextBlock_blockNumber".}
proc fcQTextBlock_firstLineNumber(self: pointer, ): cint {.importc: "QTextBlock_firstLineNumber".}
proc fcQTextBlock_setLineCount(self: pointer, count: cint): void {.importc: "QTextBlock_setLineCount".}
proc fcQTextBlock_lineCount(self: pointer, ): cint {.importc: "QTextBlock_lineCount".}
proc fcQTextBlock_begin(self: pointer, ): pointer {.importc: "QTextBlock_begin".}
proc fcQTextBlock_endX(self: pointer, ): pointer {.importc: "QTextBlock_end".}
proc fcQTextBlock_next(self: pointer, ): pointer {.importc: "QTextBlock_next".}
proc fcQTextBlock_previous(self: pointer, ): pointer {.importc: "QTextBlock_previous".}
proc fcQTextBlock_fragmentIndex(self: pointer, ): cint {.importc: "QTextBlock_fragmentIndex".}
proc fcQTextBlock_new(): ptr cQTextBlock {.importc: "QTextBlock_new".}
proc fcQTextBlock_new2(o: pointer): ptr cQTextBlock {.importc: "QTextBlock_new2".}
proc fcQTextBlock_delete(self: pointer) {.importc: "QTextBlock_delete".}
proc fcQTextFragment_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextFragment_operatorAssign".}
proc fcQTextFragment_isValid(self: pointer, ): bool {.importc: "QTextFragment_isValid".}
proc fcQTextFragment_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextFragment_operatorEqual".}
proc fcQTextFragment_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextFragment_operatorNotEqual".}
proc fcQTextFragment_operatorLesser(self: pointer, o: pointer): bool {.importc: "QTextFragment_operatorLesser".}
proc fcQTextFragment_position(self: pointer, ): cint {.importc: "QTextFragment_position".}
proc fcQTextFragment_length(self: pointer, ): cint {.importc: "QTextFragment_length".}
proc fcQTextFragment_contains(self: pointer, position: cint): bool {.importc: "QTextFragment_contains".}
proc fcQTextFragment_charFormat(self: pointer, ): pointer {.importc: "QTextFragment_charFormat".}
proc fcQTextFragment_charFormatIndex(self: pointer, ): cint {.importc: "QTextFragment_charFormatIndex".}
proc fcQTextFragment_text(self: pointer, ): struct_miqt_string {.importc: "QTextFragment_text".}
proc fcQTextFragment_glyphRuns(self: pointer, ): struct_miqt_array {.importc: "QTextFragment_glyphRuns".}
proc fcQTextFragment_glyphRuns1(self: pointer, fromVal: cint): struct_miqt_array {.importc: "QTextFragment_glyphRuns1".}
proc fcQTextFragment_glyphRuns2(self: pointer, fromVal: cint, length: cint): struct_miqt_array {.importc: "QTextFragment_glyphRuns2".}
proc fcQTextFragment_new(): ptr cQTextFragment {.importc: "QTextFragment_new".}
proc fcQTextFragment_new2(o: pointer): ptr cQTextFragment {.importc: "QTextFragment_new2".}
proc fcQTextFragment_delete(self: pointer) {.importc: "QTextFragment_delete".}
proc fcQTextFrameiterator_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextFrame__iterator_operatorAssign".}
proc fcQTextFrameiterator_parentFrame(self: pointer, ): pointer {.importc: "QTextFrame__iterator_parentFrame".}
proc fcQTextFrameiterator_currentFrame(self: pointer, ): pointer {.importc: "QTextFrame__iterator_currentFrame".}
proc fcQTextFrameiterator_currentBlock(self: pointer, ): pointer {.importc: "QTextFrame__iterator_currentBlock".}
proc fcQTextFrameiterator_atEnd(self: pointer, ): bool {.importc: "QTextFrame__iterator_atEnd".}
proc fcQTextFrameiterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextFrame__iterator_operatorEqual".}
proc fcQTextFrameiterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextFrame__iterator_operatorNotEqual".}
proc fcQTextFrameiterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QTextFrame__iterator_operatorPlusPlus".}
proc fcQTextFrameiterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextFrame__iterator_operatorPlusPlusWithInt".}
proc fcQTextFrameiterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QTextFrame__iterator_operatorMinusMinus".}
proc fcQTextFrameiterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextFrame__iterator_operatorMinusMinusWithInt".}
proc fcQTextFrameiterator_new(): ptr cQTextFrameiterator {.importc: "QTextFrame__iterator_new".}
proc fcQTextFrameiterator_new2(o: pointer): ptr cQTextFrameiterator {.importc: "QTextFrame__iterator_new2".}
proc fcQTextFrameiterator_delete(self: pointer) {.importc: "QTextFrame__iterator_delete".}
proc fcQTextBlockiterator_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextBlock__iterator_operatorAssign".}
proc fcQTextBlockiterator_fragment(self: pointer, ): pointer {.importc: "QTextBlock__iterator_fragment".}
proc fcQTextBlockiterator_atEnd(self: pointer, ): bool {.importc: "QTextBlock__iterator_atEnd".}
proc fcQTextBlockiterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock__iterator_operatorEqual".}
proc fcQTextBlockiterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock__iterator_operatorNotEqual".}
proc fcQTextBlockiterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QTextBlock__iterator_operatorPlusPlus".}
proc fcQTextBlockiterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextBlock__iterator_operatorPlusPlusWithInt".}
proc fcQTextBlockiterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QTextBlock__iterator_operatorMinusMinus".}
proc fcQTextBlockiterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextBlock__iterator_operatorMinusMinusWithInt".}
proc fcQTextBlockiterator_new(): ptr cQTextBlockiterator {.importc: "QTextBlock__iterator_new".}
proc fcQTextBlockiterator_new2(o: pointer): ptr cQTextBlockiterator {.importc: "QTextBlock__iterator_new2".}
proc fcQTextBlockiterator_delete(self: pointer) {.importc: "QTextBlock__iterator_delete".}

proc metaObject*(self: gen_qtextobject_types.QTextObject, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextObject_metaObject(self.h))

proc metacast*(self: gen_qtextobject_types.QTextObject, param1: cstring): pointer =
  fcQTextObject_metacast(self.h, param1)

proc metacall*(self: gen_qtextobject_types.QTextObject, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextobject_types.QTextObject, s: cstring): string =
  let v_ms = fcQTextObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextObject, s: cstring): string =
  let v_ms = fcQTextObject_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: gen_qtextobject_types.QTextObject, ): gen_qtextformat_types.QTextFormat =
  gen_qtextformat_types.QTextFormat(h: fcQTextObject_format(self.h))

proc formatIndex*(self: gen_qtextobject_types.QTextObject, ): cint =
  fcQTextObject_formatIndex(self.h)

proc document*(self: gen_qtextobject_types.QTextObject, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQTextObject_document(self.h))

proc objectIndex*(self: gen_qtextobject_types.QTextObject, ): cint =
  fcQTextObject_objectIndex(self.h)

proc tr*(_: type gen_qtextobject_types.QTextObject, s: cstring, c: cstring): string =
  let v_ms = fcQTextObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextobject_types.QTextObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextObject, s: cstring, c: cstring): string =
  let v_ms = fcQTextObject_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextObject, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextObject_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFormat*(self: gen_qtextobject_types.QTextObject, format: gen_qtextformat_types.QTextFormat): void =
  fcQTextObject_protectedbase_setFormat(self.h, format.h)

proc sender*(self: gen_qtextobject_types.QTextObject, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextObject_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qtextobject_types.QTextObject, ): cint =
  fcQTextObject_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtextobject_types.QTextObject, signal: cstring): cint =
  fcQTextObject_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtextobject_types.QTextObject, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTextObject_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qtextobject_types.QTextObject): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextObject_staticMetaObject())
proc metaObject*(self: gen_qtextobject_types.QTextBlockGroup, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBlockGroup_metaObject(self.h))

proc metacast*(self: gen_qtextobject_types.QTextBlockGroup, param1: cstring): pointer =
  fcQTextBlockGroup_metacast(self.h, param1)

proc metacall*(self: gen_qtextobject_types.QTextBlockGroup, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextBlockGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextobject_types.QTextBlockGroup, s: cstring): string =
  let v_ms = fcQTextBlockGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextBlockGroup, s: cstring): string =
  let v_ms = fcQTextBlockGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextobject_types.QTextBlockGroup, s: cstring, c: cstring): string =
  let v_ms = fcQTextBlockGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextobject_types.QTextBlockGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextBlockGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextBlockGroup, s: cstring, c: cstring): string =
  let v_ms = fcQTextBlockGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextBlockGroup, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextBlockGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc blockList*(self: gen_qtextobject_types.QTextBlockGroup, ): seq[gen_qtextobject_types.QTextBlock] =
  var v_ma = fcQTextBlockGroup_protectedbase_blockList(self.h)
  var vx_ret = newSeq[gen_qtextobject_types.QTextBlock](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextobject_types.QTextBlock(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc setFormat*(self: gen_qtextobject_types.QTextBlockGroup, format: gen_qtextformat_types.QTextFormat): void =
  fcQTextBlockGroup_protectedbase_setFormat(self.h, format.h)

proc sender*(self: gen_qtextobject_types.QTextBlockGroup, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextBlockGroup_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qtextobject_types.QTextBlockGroup, ): cint =
  fcQTextBlockGroup_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtextobject_types.QTextBlockGroup, signal: cstring): cint =
  fcQTextBlockGroup_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtextobject_types.QTextBlockGroup, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTextBlockGroup_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qtextobject_types.QTextBlockGroup): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextBlockGroup_staticMetaObject())
proc operatorAssign*(self: gen_qtextobject_types.QTextFrameLayoutData, param1: gen_qtextobject_types.QTextFrameLayoutData): void =
  fcQTextFrameLayoutData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qtextobject_types.QTextFrameLayoutData) =
  fcQTextFrameLayoutData_delete(self.h)
proc metaObject*(self: gen_qtextobject_types.QTextFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextFrame_metaObject(self.h))

proc metacast*(self: gen_qtextobject_types.QTextFrame, param1: cstring): pointer =
  fcQTextFrame_metacast(self.h, param1)

proc metacall*(self: gen_qtextobject_types.QTextFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextobject_types.QTextFrame, s: cstring): string =
  let v_ms = fcQTextFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextFrame, s: cstring): string =
  let v_ms = fcQTextFrame_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFrameFormat*(self: gen_qtextobject_types.QTextFrame, format: gen_qtextformat_types.QTextFrameFormat): void =
  fcQTextFrame_setFrameFormat(self.h, format.h)

proc frameFormat*(self: gen_qtextobject_types.QTextFrame, ): gen_qtextformat_types.QTextFrameFormat =
  gen_qtextformat_types.QTextFrameFormat(h: fcQTextFrame_frameFormat(self.h))

proc firstCursorPosition*(self: gen_qtextobject_types.QTextFrame, ): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextFrame_firstCursorPosition(self.h))

proc lastCursorPosition*(self: gen_qtextobject_types.QTextFrame, ): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextFrame_lastCursorPosition(self.h))

proc firstPosition*(self: gen_qtextobject_types.QTextFrame, ): cint =
  fcQTextFrame_firstPosition(self.h)

proc lastPosition*(self: gen_qtextobject_types.QTextFrame, ): cint =
  fcQTextFrame_lastPosition(self.h)

proc layoutData*(self: gen_qtextobject_types.QTextFrame, ): gen_qtextobject_types.QTextFrameLayoutData =
  gen_qtextobject_types.QTextFrameLayoutData(h: fcQTextFrame_layoutData(self.h))

proc setLayoutData*(self: gen_qtextobject_types.QTextFrame, data: gen_qtextobject_types.QTextFrameLayoutData): void =
  fcQTextFrame_setLayoutData(self.h, data.h)

proc childFrames*(self: gen_qtextobject_types.QTextFrame, ): seq[gen_qtextobject_types.QTextFrame] =
  var v_ma = fcQTextFrame_childFrames(self.h)
  var vx_ret = newSeq[gen_qtextobject_types.QTextFrame](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextobject_types.QTextFrame(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc parentFrame*(self: gen_qtextobject_types.QTextFrame, ): gen_qtextobject_types.QTextFrame =
  gen_qtextobject_types.QTextFrame(h: fcQTextFrame_parentFrame(self.h))

proc begin*(self: gen_qtextobject_types.QTextFrame, ): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrame_begin(self.h))

proc endX*(self: gen_qtextobject_types.QTextFrame, ): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrame_endX(self.h))

proc tr*(_: type gen_qtextobject_types.QTextFrame, s: cstring, c: cstring): string =
  let v_ms = fcQTextFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextobject_types.QTextFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextFrame, s: cstring, c: cstring): string =
  let v_ms = fcQTextFrame_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtextobject_types.QTextFrame, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextFrame_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTextFramemetaObjectProc* = proc(self: QTextFrame): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTextFramemetacastProc* = proc(self: QTextFrame, param1: cstring): pointer {.raises: [], gcsafe.}
type QTextFramemetacallProc* = proc(self: QTextFrame, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTextFrameeventProc* = proc(self: QTextFrame, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextFrameeventFilterProc* = proc(self: QTextFrame, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextFrametimerEventProc* = proc(self: QTextFrame, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTextFramechildEventProc* = proc(self: QTextFrame, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTextFramecustomEventProc* = proc(self: QTextFrame, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextFrameconnectNotifyProc* = proc(self: QTextFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextFramedisconnectNotifyProc* = proc(self: QTextFrame, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextFrameVTable* = object
  vtbl: cQTextFrameVTable
  metaObject*: QTextFramemetaObjectProc
  metacast*: QTextFramemetacastProc
  metacall*: QTextFramemetacallProc
  event*: QTextFrameeventProc
  eventFilter*: QTextFrameeventFilterProc
  timerEvent*: QTextFrametimerEventProc
  childEvent*: QTextFramechildEventProc
  customEvent*: QTextFramecustomEventProc
  connectNotify*: QTextFrameconnectNotifyProc
  disconnectNotify*: QTextFramedisconnectNotifyProc
proc QTextFramemetaObject*(self: gen_qtextobject_types.QTextFrame, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextFrame_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTextFrame_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTextFramemetacast*(self: gen_qtextobject_types.QTextFrame, param1: cstring): pointer =
  fcQTextFrame_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTextFrame_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTextFramemetacall*(self: gen_qtextobject_types.QTextFrame, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTextFrame_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextFrameevent*(self: gen_qtextobject_types.QTextFrame, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextFrame_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTextFrame_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTextFrameeventFilter*(self: gen_qtextobject_types.QTextFrame, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextFrame_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTextFrame_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTextFrametimerEvent*(self: gen_qtextobject_types.QTextFrame, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextFrame_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTextFrame_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTextFramechildEvent*(self: gen_qtextobject_types.QTextFrame, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextFrame_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTextFrame_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTextFramecustomEvent*(self: gen_qtextobject_types.QTextFrame, event: gen_qcoreevent_types.QEvent): void =
  fcQTextFrame_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTextFrame_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTextFrameconnectNotify*(self: gen_qtextobject_types.QTextFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextFrame_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextFrame_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTextFramedisconnectNotify*(self: gen_qtextobject_types.QTextFrame, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextFrame_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextFrame_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextFrameVTable](vtbl)
  let self = QTextFrame(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setFormat*(self: gen_qtextobject_types.QTextFrame, format: gen_qtextformat_types.QTextFormat): void =
  fcQTextFrame_protectedbase_setFormat(self.h, format.h)

proc sender*(self: gen_qtextobject_types.QTextFrame, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextFrame_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qtextobject_types.QTextFrame, ): cint =
  fcQTextFrame_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtextobject_types.QTextFrame, signal: cstring): cint =
  fcQTextFrame_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtextobject_types.QTextFrame, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTextFrame_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtextobject_types.QTextFrame,
    doc: gen_qtextdocument_types.QTextDocument,
    vtbl: ref QTextFrameVTable = nil): gen_qtextobject_types.QTextFrame =
  let vtbl = if vtbl == nil: new QTextFrameVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTextFrameVTable, _: ptr cQTextFrame) {.cdecl.} =
    let vtbl = cast[ref QTextFrameVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextFrame_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextFrame_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextFrame_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextFrame_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextFrame_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextFrame_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextFrame_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextFrame_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextFrame_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextFrame_disconnectNotify
  gen_qtextobject_types.QTextFrame(h: fcQTextFrame_new(addr(vtbl[]), doc.h))

proc staticMetaObject*(_: type gen_qtextobject_types.QTextFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextFrame_staticMetaObject())
proc delete*(self: gen_qtextobject_types.QTextFrame) =
  fcQTextFrame_delete(self.h)
proc operatorAssign*(self: gen_qtextobject_types.QTextBlockUserData, param1: gen_qtextobject_types.QTextBlockUserData): void =
  fcQTextBlockUserData_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qtextobject_types.QTextBlockUserData) =
  fcQTextBlockUserData_delete(self.h)
proc operatorAssign*(self: gen_qtextobject_types.QTextBlock, o: gen_qtextobject_types.QTextBlock): void =
  fcQTextBlock_operatorAssign(self.h, o.h)

proc isValid*(self: gen_qtextobject_types.QTextBlock, ): bool =
  fcQTextBlock_isValid(self.h)

proc operatorEqual*(self: gen_qtextobject_types.QTextBlock, o: gen_qtextobject_types.QTextBlock): bool =
  fcQTextBlock_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qtextobject_types.QTextBlock, o: gen_qtextobject_types.QTextBlock): bool =
  fcQTextBlock_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qtextobject_types.QTextBlock, o: gen_qtextobject_types.QTextBlock): bool =
  fcQTextBlock_operatorLesser(self.h, o.h)

proc position*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_position(self.h)

proc length*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_length(self.h)

proc contains*(self: gen_qtextobject_types.QTextBlock, position: cint): bool =
  fcQTextBlock_contains(self.h, position)

proc layout*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextlayout_types.QTextLayout =
  gen_qtextlayout_types.QTextLayout(h: fcQTextBlock_layout(self.h))

proc clearLayout*(self: gen_qtextobject_types.QTextBlock, ): void =
  fcQTextBlock_clearLayout(self.h)

proc blockFormat*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextformat_types.QTextBlockFormat =
  gen_qtextformat_types.QTextBlockFormat(h: fcQTextBlock_blockFormat(self.h))

proc blockFormatIndex*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_blockFormatIndex(self.h)

proc charFormat*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextBlock_charFormat(self.h))

proc charFormatIndex*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_charFormatIndex(self.h)

proc textDirection*(self: gen_qtextobject_types.QTextBlock, ): cint =
  cint(fcQTextBlock_textDirection(self.h))

proc text*(self: gen_qtextobject_types.QTextBlock, ): string =
  let v_ms = fcQTextBlock_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textFormats*(self: gen_qtextobject_types.QTextBlock, ): seq[gen_qtextlayout_types.QTextLayoutFormatRange] =
  var v_ma = fcQTextBlock_textFormats(self.h)
  var vx_ret = newSeq[gen_qtextlayout_types.QTextLayoutFormatRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextlayout_types.QTextLayoutFormatRange(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc document*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQTextBlock_document(self.h))

proc textList*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextlist_types.QTextList =
  gen_qtextlist_types.QTextList(h: fcQTextBlock_textList(self.h))

proc userData*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextobject_types.QTextBlockUserData =
  gen_qtextobject_types.QTextBlockUserData(h: fcQTextBlock_userData(self.h))

proc setUserData*(self: gen_qtextobject_types.QTextBlock, data: gen_qtextobject_types.QTextBlockUserData): void =
  fcQTextBlock_setUserData(self.h, data.h)

proc userState*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_userState(self.h)

proc setUserState*(self: gen_qtextobject_types.QTextBlock, state: cint): void =
  fcQTextBlock_setUserState(self.h, state)

proc revision*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_revision(self.h)

proc setRevision*(self: gen_qtextobject_types.QTextBlock, rev: cint): void =
  fcQTextBlock_setRevision(self.h, rev)

proc isVisible*(self: gen_qtextobject_types.QTextBlock, ): bool =
  fcQTextBlock_isVisible(self.h)

proc setVisible*(self: gen_qtextobject_types.QTextBlock, visible: bool): void =
  fcQTextBlock_setVisible(self.h, visible)

proc blockNumber*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_blockNumber(self.h)

proc firstLineNumber*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_firstLineNumber(self.h)

proc setLineCount*(self: gen_qtextobject_types.QTextBlock, count: cint): void =
  fcQTextBlock_setLineCount(self.h, count)

proc lineCount*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_lineCount(self.h)

proc begin*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlock_begin(self.h))

proc endX*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlock_endX(self.h))

proc next*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextBlock_next(self.h))

proc previous*(self: gen_qtextobject_types.QTextBlock, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextBlock_previous(self.h))

proc fragmentIndex*(self: gen_qtextobject_types.QTextBlock, ): cint =
  fcQTextBlock_fragmentIndex(self.h)

proc create*(T: type gen_qtextobject_types.QTextBlock): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextBlock_new())

proc create*(T: type gen_qtextobject_types.QTextBlock,
    o: gen_qtextobject_types.QTextBlock): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextBlock_new2(o.h))

proc delete*(self: gen_qtextobject_types.QTextBlock) =
  fcQTextBlock_delete(self.h)
proc operatorAssign*(self: gen_qtextobject_types.QTextFragment, o: gen_qtextobject_types.QTextFragment): void =
  fcQTextFragment_operatorAssign(self.h, o.h)

proc isValid*(self: gen_qtextobject_types.QTextFragment, ): bool =
  fcQTextFragment_isValid(self.h)

proc operatorEqual*(self: gen_qtextobject_types.QTextFragment, o: gen_qtextobject_types.QTextFragment): bool =
  fcQTextFragment_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qtextobject_types.QTextFragment, o: gen_qtextobject_types.QTextFragment): bool =
  fcQTextFragment_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qtextobject_types.QTextFragment, o: gen_qtextobject_types.QTextFragment): bool =
  fcQTextFragment_operatorLesser(self.h, o.h)

proc position*(self: gen_qtextobject_types.QTextFragment, ): cint =
  fcQTextFragment_position(self.h)

proc length*(self: gen_qtextobject_types.QTextFragment, ): cint =
  fcQTextFragment_length(self.h)

proc contains*(self: gen_qtextobject_types.QTextFragment, position: cint): bool =
  fcQTextFragment_contains(self.h, position)

proc charFormat*(self: gen_qtextobject_types.QTextFragment, ): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextFragment_charFormat(self.h))

proc charFormatIndex*(self: gen_qtextobject_types.QTextFragment, ): cint =
  fcQTextFragment_charFormatIndex(self.h)

proc text*(self: gen_qtextobject_types.QTextFragment, ): string =
  let v_ms = fcQTextFragment_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc glyphRuns*(self: gen_qtextobject_types.QTextFragment, ): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextFragment_glyphRuns(self.h)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc glyphRuns*(self: gen_qtextobject_types.QTextFragment, fromVal: cint): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextFragment_glyphRuns1(self.h, fromVal)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc glyphRuns*(self: gen_qtextobject_types.QTextFragment, fromVal: cint, length: cint): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextFragment_glyphRuns2(self.h, fromVal, length)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qtextobject_types.QTextFragment): gen_qtextobject_types.QTextFragment =
  gen_qtextobject_types.QTextFragment(h: fcQTextFragment_new())

proc create*(T: type gen_qtextobject_types.QTextFragment,
    o: gen_qtextobject_types.QTextFragment): gen_qtextobject_types.QTextFragment =
  gen_qtextobject_types.QTextFragment(h: fcQTextFragment_new2(o.h))

proc delete*(self: gen_qtextobject_types.QTextFragment) =
  fcQTextFragment_delete(self.h)
proc operatorAssign*(self: gen_qtextobject_types.QTextFrameiterator, o: gen_qtextobject_types.QTextFrameiterator): void =
  fcQTextFrameiterator_operatorAssign(self.h, o.h)

proc parentFrame*(self: gen_qtextobject_types.QTextFrameiterator, ): gen_qtextobject_types.QTextFrame =
  gen_qtextobject_types.QTextFrame(h: fcQTextFrameiterator_parentFrame(self.h))

proc currentFrame*(self: gen_qtextobject_types.QTextFrameiterator, ): gen_qtextobject_types.QTextFrame =
  gen_qtextobject_types.QTextFrame(h: fcQTextFrameiterator_currentFrame(self.h))

proc currentBlock*(self: gen_qtextobject_types.QTextFrameiterator, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextFrameiterator_currentBlock(self.h))

proc atEnd*(self: gen_qtextobject_types.QTextFrameiterator, ): bool =
  fcQTextFrameiterator_atEnd(self.h)

proc operatorEqual*(self: gen_qtextobject_types.QTextFrameiterator, o: gen_qtextobject_types.QTextFrameiterator): bool =
  fcQTextFrameiterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qtextobject_types.QTextFrameiterator, o: gen_qtextobject_types.QTextFrameiterator): bool =
  fcQTextFrameiterator_operatorNotEqual(self.h, o.h)

proc operatorPlusPlus*(self: gen_qtextobject_types.QTextFrameiterator, ): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrameiterator_operatorPlusPlus(self.h))

proc operatorPlusPlus*(self: gen_qtextobject_types.QTextFrameiterator, param1: cint): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrameiterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: gen_qtextobject_types.QTextFrameiterator, ): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrameiterator_operatorMinusMinus(self.h))

proc operatorMinusMinus*(self: gen_qtextobject_types.QTextFrameiterator, param1: cint): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrameiterator_operatorMinusMinusWithInt(self.h, param1))

proc create*(T: type gen_qtextobject_types.QTextFrameiterator): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrameiterator_new())

proc create*(T: type gen_qtextobject_types.QTextFrameiterator,
    o: gen_qtextobject_types.QTextFrameiterator): gen_qtextobject_types.QTextFrameiterator =
  gen_qtextobject_types.QTextFrameiterator(h: fcQTextFrameiterator_new2(o.h))

proc delete*(self: gen_qtextobject_types.QTextFrameiterator) =
  fcQTextFrameiterator_delete(self.h)
proc operatorAssign*(self: gen_qtextobject_types.QTextBlockiterator, o: gen_qtextobject_types.QTextBlockiterator): void =
  fcQTextBlockiterator_operatorAssign(self.h, o.h)

proc fragment*(self: gen_qtextobject_types.QTextBlockiterator, ): gen_qtextobject_types.QTextFragment =
  gen_qtextobject_types.QTextFragment(h: fcQTextBlockiterator_fragment(self.h))

proc atEnd*(self: gen_qtextobject_types.QTextBlockiterator, ): bool =
  fcQTextBlockiterator_atEnd(self.h)

proc operatorEqual*(self: gen_qtextobject_types.QTextBlockiterator, o: gen_qtextobject_types.QTextBlockiterator): bool =
  fcQTextBlockiterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qtextobject_types.QTextBlockiterator, o: gen_qtextobject_types.QTextBlockiterator): bool =
  fcQTextBlockiterator_operatorNotEqual(self.h, o.h)

proc operatorPlusPlus*(self: gen_qtextobject_types.QTextBlockiterator, ): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlockiterator_operatorPlusPlus(self.h))

proc operatorPlusPlus*(self: gen_qtextobject_types.QTextBlockiterator, param1: cint): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlockiterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: gen_qtextobject_types.QTextBlockiterator, ): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlockiterator_operatorMinusMinus(self.h))

proc operatorMinusMinus*(self: gen_qtextobject_types.QTextBlockiterator, param1: cint): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlockiterator_operatorMinusMinusWithInt(self.h, param1))

proc create*(T: type gen_qtextobject_types.QTextBlockiterator): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlockiterator_new())

proc create*(T: type gen_qtextobject_types.QTextBlockiterator,
    o: gen_qtextobject_types.QTextBlockiterator): gen_qtextobject_types.QTextBlockiterator =
  gen_qtextobject_types.QTextBlockiterator(h: fcQTextBlockiterator_new2(o.h))

proc delete*(self: gen_qtextobject_types.QTextBlockiterator) =
  fcQTextBlockiterator_delete(self.h)
