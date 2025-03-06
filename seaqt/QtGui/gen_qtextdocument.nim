import ./Qt6Gui_libs

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


type QTextDocumentMetaInformationEnum* = distinct cint
template DocumentTitle*(_: type QTextDocumentMetaInformationEnum): untyped = 0
template DocumentUrl*(_: type QTextDocumentMetaInformationEnum): untyped = 1
template CssMedia*(_: type QTextDocumentMetaInformationEnum): untyped = 2


type QTextDocumentMarkdownFeatureEnum* = distinct cint
template MarkdownNoHTML*(_: type QTextDocumentMarkdownFeatureEnum): untyped = 96
template MarkdownDialectCommonMark*(_: type QTextDocumentMarkdownFeatureEnum): untyped = 0
template MarkdownDialectGitHub*(_: type QTextDocumentMarkdownFeatureEnum): untyped = 20236


type QTextDocumentFindFlagEnum* = distinct cint
template FindBackward*(_: type QTextDocumentFindFlagEnum): untyped = 1
template FindCaseSensitively*(_: type QTextDocumentFindFlagEnum): untyped = 2
template FindWholeWords*(_: type QTextDocumentFindFlagEnum): untyped = 4


type QTextDocumentResourceTypeEnum* = distinct cint
template UnknownResource*(_: type QTextDocumentResourceTypeEnum): untyped = 0
template HtmlResource*(_: type QTextDocumentResourceTypeEnum): untyped = 1
template ImageResource*(_: type QTextDocumentResourceTypeEnum): untyped = 2
template StyleSheetResource*(_: type QTextDocumentResourceTypeEnum): untyped = 3
template MarkdownResource*(_: type QTextDocumentResourceTypeEnum): untyped = 4
template UserResource*(_: type QTextDocumentResourceTypeEnum): untyped = 100


type QTextDocumentStacksEnum* = distinct cint
template UndoStack*(_: type QTextDocumentStacksEnum): untyped = 1
template RedoStack*(_: type QTextDocumentStacksEnum): untyped = 2
template UndoAndRedoStacks*(_: type QTextDocumentStacksEnum): untyped = 3


import ./gen_qtextdocument_types
export gen_qtextdocument_types

import
  ../QtCore/gen_qchar_types,
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qregularexpression_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qabstracttextdocumentlayout_types,
  ./gen_qfont_types,
  ./gen_qpagedpaintdevice_types,
  ./gen_qpainter_types,
  ./gen_qtextcursor_types,
  ./gen_qtextformat_types,
  ./gen_qtextobject_types,
  ./gen_qtextoption_types
export
  gen_qchar_types,
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qregularexpression_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qabstracttextdocumentlayout_types,
  gen_qfont_types,
  gen_qpagedpaintdevice_types,
  gen_qpainter_types,
  gen_qtextcursor_types,
  gen_qtextformat_types,
  gen_qtextobject_types,
  gen_qtextoption_types

type cQAbstractUndoItem*{.exportc: "QAbstractUndoItem", incompleteStruct.} = object
type cQTextDocument*{.exportc: "QTextDocument", incompleteStruct.} = object

proc fcQAbstractUndoItem_undo(self: pointer, ): void {.importc: "QAbstractUndoItem_undo".}
proc fcQAbstractUndoItem_redo(self: pointer, ): void {.importc: "QAbstractUndoItem_redo".}
proc fcQAbstractUndoItem_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractUndoItem_operatorAssign".}
proc fcQTextDocument_metaObject(self: pointer, ): pointer {.importc: "QTextDocument_metaObject".}
proc fcQTextDocument_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextDocument_metacast".}
proc fcQTextDocument_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextDocument_metacall".}
proc fcQTextDocument_tr(s: cstring): struct_miqt_string {.importc: "QTextDocument_tr".}
proc fcQTextDocument_clone(self: pointer, ): pointer {.importc: "QTextDocument_clone".}
proc fcQTextDocument_isEmpty(self: pointer, ): bool {.importc: "QTextDocument_isEmpty".}
proc fcQTextDocument_clear(self: pointer, ): void {.importc: "QTextDocument_clear".}
proc fcQTextDocument_setUndoRedoEnabled(self: pointer, enable: bool): void {.importc: "QTextDocument_setUndoRedoEnabled".}
proc fcQTextDocument_isUndoRedoEnabled(self: pointer, ): bool {.importc: "QTextDocument_isUndoRedoEnabled".}
proc fcQTextDocument_isUndoAvailable(self: pointer, ): bool {.importc: "QTextDocument_isUndoAvailable".}
proc fcQTextDocument_isRedoAvailable(self: pointer, ): bool {.importc: "QTextDocument_isRedoAvailable".}
proc fcQTextDocument_availableUndoSteps(self: pointer, ): cint {.importc: "QTextDocument_availableUndoSteps".}
proc fcQTextDocument_availableRedoSteps(self: pointer, ): cint {.importc: "QTextDocument_availableRedoSteps".}
proc fcQTextDocument_revision(self: pointer, ): cint {.importc: "QTextDocument_revision".}
proc fcQTextDocument_setDocumentLayout(self: pointer, layout: pointer): void {.importc: "QTextDocument_setDocumentLayout".}
proc fcQTextDocument_documentLayout(self: pointer, ): pointer {.importc: "QTextDocument_documentLayout".}
proc fcQTextDocument_setMetaInformation(self: pointer, info: cint, param2: struct_miqt_string): void {.importc: "QTextDocument_setMetaInformation".}
proc fcQTextDocument_metaInformation(self: pointer, info: cint): struct_miqt_string {.importc: "QTextDocument_metaInformation".}
proc fcQTextDocument_toHtml(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toHtml".}
proc fcQTextDocument_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QTextDocument_setHtml".}
proc fcQTextDocument_toMarkdown(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toMarkdown".}
proc fcQTextDocument_setMarkdown(self: pointer, markdown: struct_miqt_string): void {.importc: "QTextDocument_setMarkdown".}
proc fcQTextDocument_toRawText(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toRawText".}
proc fcQTextDocument_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_toPlainText".}
proc fcQTextDocument_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QTextDocument_setPlainText".}
proc fcQTextDocument_characterAt(self: pointer, pos: cint): pointer {.importc: "QTextDocument_characterAt".}
proc fcQTextDocument_find(self: pointer, subString: struct_miqt_string): pointer {.importc: "QTextDocument_find".}
proc fcQTextDocument_find2(self: pointer, subString: struct_miqt_string, cursor: pointer): pointer {.importc: "QTextDocument_find2".}
proc fcQTextDocument_findWithExpr(self: pointer, expr: pointer): pointer {.importc: "QTextDocument_findWithExpr".}
proc fcQTextDocument_find3(self: pointer, expr: pointer, cursor: pointer): pointer {.importc: "QTextDocument_find3".}
proc fcQTextDocument_frameAt(self: pointer, pos: cint): pointer {.importc: "QTextDocument_frameAt".}
proc fcQTextDocument_rootFrame(self: pointer, ): pointer {.importc: "QTextDocument_rootFrame".}
proc fcQTextDocument_objectX(self: pointer, objectIndex: cint): pointer {.importc: "QTextDocument_object".}
proc fcQTextDocument_objectForFormat(self: pointer, param1: pointer): pointer {.importc: "QTextDocument_objectForFormat".}
proc fcQTextDocument_findBlock(self: pointer, pos: cint): pointer {.importc: "QTextDocument_findBlock".}
proc fcQTextDocument_findBlockByNumber(self: pointer, blockNumber: cint): pointer {.importc: "QTextDocument_findBlockByNumber".}
proc fcQTextDocument_findBlockByLineNumber(self: pointer, blockNumber: cint): pointer {.importc: "QTextDocument_findBlockByLineNumber".}
proc fcQTextDocument_begin(self: pointer, ): pointer {.importc: "QTextDocument_begin".}
proc fcQTextDocument_endX(self: pointer, ): pointer {.importc: "QTextDocument_end".}
proc fcQTextDocument_firstBlock(self: pointer, ): pointer {.importc: "QTextDocument_firstBlock".}
proc fcQTextDocument_lastBlock(self: pointer, ): pointer {.importc: "QTextDocument_lastBlock".}
proc fcQTextDocument_setPageSize(self: pointer, size: pointer): void {.importc: "QTextDocument_setPageSize".}
proc fcQTextDocument_pageSize(self: pointer, ): pointer {.importc: "QTextDocument_pageSize".}
proc fcQTextDocument_setDefaultFont(self: pointer, font: pointer): void {.importc: "QTextDocument_setDefaultFont".}
proc fcQTextDocument_defaultFont(self: pointer, ): pointer {.importc: "QTextDocument_defaultFont".}
proc fcQTextDocument_setSuperScriptBaseline(self: pointer, baseline: float64): void {.importc: "QTextDocument_setSuperScriptBaseline".}
proc fcQTextDocument_superScriptBaseline(self: pointer, ): float64 {.importc: "QTextDocument_superScriptBaseline".}
proc fcQTextDocument_setSubScriptBaseline(self: pointer, baseline: float64): void {.importc: "QTextDocument_setSubScriptBaseline".}
proc fcQTextDocument_subScriptBaseline(self: pointer, ): float64 {.importc: "QTextDocument_subScriptBaseline".}
proc fcQTextDocument_setBaselineOffset(self: pointer, baseline: float64): void {.importc: "QTextDocument_setBaselineOffset".}
proc fcQTextDocument_baselineOffset(self: pointer, ): float64 {.importc: "QTextDocument_baselineOffset".}
proc fcQTextDocument_pageCount(self: pointer, ): cint {.importc: "QTextDocument_pageCount".}
proc fcQTextDocument_isModified(self: pointer, ): bool {.importc: "QTextDocument_isModified".}
proc fcQTextDocument_print(self: pointer, printer: pointer): void {.importc: "QTextDocument_print".}
proc fcQTextDocument_resource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextDocument_resource".}
proc fcQTextDocument_addResource(self: pointer, typeVal: cint, name: pointer, resource: pointer): void {.importc: "QTextDocument_addResource".}
proc fcQTextDocument_allFormats(self: pointer, ): struct_miqt_array {.importc: "QTextDocument_allFormats".}
proc fcQTextDocument_markContentsDirty(self: pointer, fromVal: cint, length: cint): void {.importc: "QTextDocument_markContentsDirty".}
proc fcQTextDocument_setUseDesignMetrics(self: pointer, b: bool): void {.importc: "QTextDocument_setUseDesignMetrics".}
proc fcQTextDocument_useDesignMetrics(self: pointer, ): bool {.importc: "QTextDocument_useDesignMetrics".}
proc fcQTextDocument_setLayoutEnabled(self: pointer, b: bool): void {.importc: "QTextDocument_setLayoutEnabled".}
proc fcQTextDocument_isLayoutEnabled(self: pointer, ): bool {.importc: "QTextDocument_isLayoutEnabled".}
proc fcQTextDocument_drawContents(self: pointer, painter: pointer): void {.importc: "QTextDocument_drawContents".}
proc fcQTextDocument_setTextWidth(self: pointer, width: float64): void {.importc: "QTextDocument_setTextWidth".}
proc fcQTextDocument_textWidth(self: pointer, ): float64 {.importc: "QTextDocument_textWidth".}
proc fcQTextDocument_idealWidth(self: pointer, ): float64 {.importc: "QTextDocument_idealWidth".}
proc fcQTextDocument_indentWidth(self: pointer, ): float64 {.importc: "QTextDocument_indentWidth".}
proc fcQTextDocument_setIndentWidth(self: pointer, width: float64): void {.importc: "QTextDocument_setIndentWidth".}
proc fcQTextDocument_documentMargin(self: pointer, ): float64 {.importc: "QTextDocument_documentMargin".}
proc fcQTextDocument_setDocumentMargin(self: pointer, margin: float64): void {.importc: "QTextDocument_setDocumentMargin".}
proc fcQTextDocument_adjustSize(self: pointer, ): void {.importc: "QTextDocument_adjustSize".}
proc fcQTextDocument_size(self: pointer, ): pointer {.importc: "QTextDocument_size".}
proc fcQTextDocument_blockCount(self: pointer, ): cint {.importc: "QTextDocument_blockCount".}
proc fcQTextDocument_lineCount(self: pointer, ): cint {.importc: "QTextDocument_lineCount".}
proc fcQTextDocument_characterCount(self: pointer, ): cint {.importc: "QTextDocument_characterCount".}
proc fcQTextDocument_setDefaultStyleSheet(self: pointer, sheet: struct_miqt_string): void {.importc: "QTextDocument_setDefaultStyleSheet".}
proc fcQTextDocument_defaultStyleSheet(self: pointer, ): struct_miqt_string {.importc: "QTextDocument_defaultStyleSheet".}
proc fcQTextDocument_undo(self: pointer, cursor: pointer): void {.importc: "QTextDocument_undo".}
proc fcQTextDocument_redo(self: pointer, cursor: pointer): void {.importc: "QTextDocument_redo".}
proc fcQTextDocument_clearUndoRedoStacks(self: pointer, ): void {.importc: "QTextDocument_clearUndoRedoStacks".}
proc fcQTextDocument_maximumBlockCount(self: pointer, ): cint {.importc: "QTextDocument_maximumBlockCount".}
proc fcQTextDocument_setMaximumBlockCount(self: pointer, maximum: cint): void {.importc: "QTextDocument_setMaximumBlockCount".}
proc fcQTextDocument_defaultTextOption(self: pointer, ): pointer {.importc: "QTextDocument_defaultTextOption".}
proc fcQTextDocument_setDefaultTextOption(self: pointer, option: pointer): void {.importc: "QTextDocument_setDefaultTextOption".}
proc fcQTextDocument_baseUrl(self: pointer, ): pointer {.importc: "QTextDocument_baseUrl".}
proc fcQTextDocument_setBaseUrl(self: pointer, url: pointer): void {.importc: "QTextDocument_setBaseUrl".}
proc fcQTextDocument_defaultCursorMoveStyle(self: pointer, ): cint {.importc: "QTextDocument_defaultCursorMoveStyle".}
proc fcQTextDocument_setDefaultCursorMoveStyle(self: pointer, style: cint): void {.importc: "QTextDocument_setDefaultCursorMoveStyle".}
proc fcQTextDocument_contentsChange(self: pointer, fromVal: cint, charsRemoved: cint, charsAdded: cint): void {.importc: "QTextDocument_contentsChange".}
proc fcQTextDocument_connect_contentsChange(self: pointer, slot: int, callback: proc (slot: int, fromVal: cint, charsRemoved: cint, charsAdded: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_contentsChange".}
proc fcQTextDocument_contentsChanged(self: pointer, ): void {.importc: "QTextDocument_contentsChanged".}
proc fcQTextDocument_connect_contentsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_contentsChanged".}
proc fcQTextDocument_undoAvailable(self: pointer, param1: bool): void {.importc: "QTextDocument_undoAvailable".}
proc fcQTextDocument_connect_undoAvailable(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_undoAvailable".}
proc fcQTextDocument_redoAvailable(self: pointer, param1: bool): void {.importc: "QTextDocument_redoAvailable".}
proc fcQTextDocument_connect_redoAvailable(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_redoAvailable".}
proc fcQTextDocument_undoCommandAdded(self: pointer, ): void {.importc: "QTextDocument_undoCommandAdded".}
proc fcQTextDocument_connect_undoCommandAdded(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_undoCommandAdded".}
proc fcQTextDocument_modificationChanged(self: pointer, m: bool): void {.importc: "QTextDocument_modificationChanged".}
proc fcQTextDocument_connect_modificationChanged(self: pointer, slot: int, callback: proc (slot: int, m: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_modificationChanged".}
proc fcQTextDocument_cursorPositionChanged(self: pointer, cursor: pointer): void {.importc: "QTextDocument_cursorPositionChanged".}
proc fcQTextDocument_connect_cursorPositionChanged(self: pointer, slot: int, callback: proc (slot: int, cursor: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_cursorPositionChanged".}
proc fcQTextDocument_blockCountChanged(self: pointer, newBlockCount: cint): void {.importc: "QTextDocument_blockCountChanged".}
proc fcQTextDocument_connect_blockCountChanged(self: pointer, slot: int, callback: proc (slot: int, newBlockCount: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_blockCountChanged".}
proc fcQTextDocument_baseUrlChanged(self: pointer, url: pointer): void {.importc: "QTextDocument_baseUrlChanged".}
proc fcQTextDocument_connect_baseUrlChanged(self: pointer, slot: int, callback: proc (slot: int, url: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_baseUrlChanged".}
proc fcQTextDocument_documentLayoutChanged(self: pointer, ): void {.importc: "QTextDocument_documentLayoutChanged".}
proc fcQTextDocument_connect_documentLayoutChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QTextDocument_connect_documentLayoutChanged".}
proc fcQTextDocument_undo2(self: pointer, ): void {.importc: "QTextDocument_undo2".}
proc fcQTextDocument_redo2(self: pointer, ): void {.importc: "QTextDocument_redo2".}
proc fcQTextDocument_appendUndoItem(self: pointer, param1: pointer): void {.importc: "QTextDocument_appendUndoItem".}
proc fcQTextDocument_setModified(self: pointer, ): void {.importc: "QTextDocument_setModified".}
proc fcQTextDocument_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextDocument_tr2".}
proc fcQTextDocument_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextDocument_tr3".}
proc fcQTextDocument_clone1(self: pointer, parent: pointer): pointer {.importc: "QTextDocument_clone1".}
proc fcQTextDocument_toMarkdown1(self: pointer, features: cint): struct_miqt_string {.importc: "QTextDocument_toMarkdown1".}
proc fcQTextDocument_setMarkdown2(self: pointer, markdown: struct_miqt_string, features: cint): void {.importc: "QTextDocument_setMarkdown2".}
proc fcQTextDocument_find22(self: pointer, subString: struct_miqt_string, fromVal: cint): pointer {.importc: "QTextDocument_find22".}
proc fcQTextDocument_find32(self: pointer, subString: struct_miqt_string, fromVal: cint, options: cint): pointer {.importc: "QTextDocument_find32".}
proc fcQTextDocument_find33(self: pointer, subString: struct_miqt_string, cursor: pointer, options: cint): pointer {.importc: "QTextDocument_find33".}
proc fcQTextDocument_find23(self: pointer, expr: pointer, fromVal: cint): pointer {.importc: "QTextDocument_find23".}
proc fcQTextDocument_find34(self: pointer, expr: pointer, fromVal: cint, options: cint): pointer {.importc: "QTextDocument_find34".}
proc fcQTextDocument_find35(self: pointer, expr: pointer, cursor: pointer, options: cint): pointer {.importc: "QTextDocument_find35".}
proc fcQTextDocument_drawContents2(self: pointer, painter: pointer, rect: pointer): void {.importc: "QTextDocument_drawContents2".}
proc fcQTextDocument_clearUndoRedoStacks1(self: pointer, historyToClear: cint): void {.importc: "QTextDocument_clearUndoRedoStacks1".}
proc fcQTextDocument_setModified1(self: pointer, m: bool): void {.importc: "QTextDocument_setModified1".}
type cQTextDocumentVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQTextDocumentVTable, self: ptr cQTextDocument) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  clear*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  createObject*: proc(vtbl, self: pointer, f: pointer): pointer {.cdecl, raises: [], gcsafe.}
  loadResource*: proc(vtbl, self: pointer, typeVal: cint, name: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTextDocument_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTextDocument_virtualbase_metaObject".}
proc fcQTextDocument_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextDocument_virtualbase_metacast".}
proc fcQTextDocument_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextDocument_virtualbase_metacall".}
proc fcQTextDocument_virtualbase_clear(self: pointer, ): void {.importc: "QTextDocument_virtualbase_clear".}
proc fcQTextDocument_virtualbase_createObject(self: pointer, f: pointer): pointer {.importc: "QTextDocument_virtualbase_createObject".}
proc fcQTextDocument_virtualbase_loadResource(self: pointer, typeVal: cint, name: pointer): pointer {.importc: "QTextDocument_virtualbase_loadResource".}
proc fcQTextDocument_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTextDocument_virtualbase_event".}
proc fcQTextDocument_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTextDocument_virtualbase_eventFilter".}
proc fcQTextDocument_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTextDocument_virtualbase_timerEvent".}
proc fcQTextDocument_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTextDocument_virtualbase_childEvent".}
proc fcQTextDocument_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTextDocument_virtualbase_customEvent".}
proc fcQTextDocument_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTextDocument_virtualbase_connectNotify".}
proc fcQTextDocument_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTextDocument_virtualbase_disconnectNotify".}
proc fcQTextDocument_protectedbase_sender(self: pointer, ): pointer {.importc: "QTextDocument_protectedbase_sender".}
proc fcQTextDocument_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QTextDocument_protectedbase_senderSignalIndex".}
proc fcQTextDocument_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTextDocument_protectedbase_receivers".}
proc fcQTextDocument_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTextDocument_protectedbase_isSignalConnected".}
proc fcQTextDocument_new(vtbl: pointer, ): ptr cQTextDocument {.importc: "QTextDocument_new".}
proc fcQTextDocument_new2(vtbl: pointer, text: struct_miqt_string): ptr cQTextDocument {.importc: "QTextDocument_new2".}
proc fcQTextDocument_new3(vtbl: pointer, parent: pointer): ptr cQTextDocument {.importc: "QTextDocument_new3".}
proc fcQTextDocument_new4(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQTextDocument {.importc: "QTextDocument_new4".}
proc fcQTextDocument_staticMetaObject(): pointer {.importc: "QTextDocument_staticMetaObject".}

proc undo*(self: gen_qtextdocument_types.QAbstractUndoItem, ): void =
  fcQAbstractUndoItem_undo(self.h)

proc redo*(self: gen_qtextdocument_types.QAbstractUndoItem, ): void =
  fcQAbstractUndoItem_redo(self.h)

proc operatorAssign*(self: gen_qtextdocument_types.QAbstractUndoItem, param1: gen_qtextdocument_types.QAbstractUndoItem): void =
  fcQAbstractUndoItem_operatorAssign(self.h, param1.h)

proc metaObject*(self: gen_qtextdocument_types.QTextDocument, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextDocument_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtextdocument_types.QTextDocument, param1: cstring): pointer =
  fcQTextDocument_metacast(self.h, param1)

proc metacall*(self: gen_qtextdocument_types.QTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtextdocument_types.QTextDocument, s: cstring): string =
  let v_ms = fcQTextDocument_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clone*(self: gen_qtextdocument_types.QTextDocument, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQTextDocument_clone(self.h), owned: false)

proc isEmpty*(self: gen_qtextdocument_types.QTextDocument, ): bool =
  fcQTextDocument_isEmpty(self.h)

proc clear*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_clear(self.h)

proc setUndoRedoEnabled*(self: gen_qtextdocument_types.QTextDocument, enable: bool): void =
  fcQTextDocument_setUndoRedoEnabled(self.h, enable)

proc isUndoRedoEnabled*(self: gen_qtextdocument_types.QTextDocument, ): bool =
  fcQTextDocument_isUndoRedoEnabled(self.h)

proc isUndoAvailable*(self: gen_qtextdocument_types.QTextDocument, ): bool =
  fcQTextDocument_isUndoAvailable(self.h)

proc isRedoAvailable*(self: gen_qtextdocument_types.QTextDocument, ): bool =
  fcQTextDocument_isRedoAvailable(self.h)

proc availableUndoSteps*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_availableUndoSteps(self.h)

proc availableRedoSteps*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_availableRedoSteps(self.h)

proc revision*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_revision(self.h)

proc setDocumentLayout*(self: gen_qtextdocument_types.QTextDocument, layout: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout): void =
  fcQTextDocument_setDocumentLayout(self.h, layout.h)

proc documentLayout*(self: gen_qtextdocument_types.QTextDocument, ): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout(h: fcQTextDocument_documentLayout(self.h), owned: false)

proc setMetaInformation*(self: gen_qtextdocument_types.QTextDocument, info: cint, param2: string): void =
  fcQTextDocument_setMetaInformation(self.h, cint(info), struct_miqt_string(data: param2, len: csize_t(len(param2))))

proc metaInformation*(self: gen_qtextdocument_types.QTextDocument, info: cint): string =
  let v_ms = fcQTextDocument_metaInformation(self.h, cint(info))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: gen_qtextdocument_types.QTextDocument, ): string =
  let v_ms = fcQTextDocument_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: gen_qtextdocument_types.QTextDocument, html: string): void =
  fcQTextDocument_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc toMarkdown*(self: gen_qtextdocument_types.QTextDocument, ): string =
  let v_ms = fcQTextDocument_toMarkdown(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMarkdown*(self: gen_qtextdocument_types.QTextDocument, markdown: string): void =
  fcQTextDocument_setMarkdown(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))))

proc toRawText*(self: gen_qtextdocument_types.QTextDocument, ): string =
  let v_ms = fcQTextDocument_toRawText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toPlainText*(self: gen_qtextdocument_types.QTextDocument, ): string =
  let v_ms = fcQTextDocument_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPlainText*(self: gen_qtextdocument_types.QTextDocument, text: string): void =
  fcQTextDocument_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc characterAt*(self: gen_qtextdocument_types.QTextDocument, pos: cint): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQTextDocument_characterAt(self.h, pos), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, subString: string): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString)))), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, subString: string, cursor: gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find2(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cursor.h), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, expr: gen_qregularexpression_types.QRegularExpression): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_findWithExpr(self.h, expr.h), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, expr: gen_qregularexpression_types.QRegularExpression, cursor: gen_qtextcursor_types.QTextCursor): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find3(self.h, expr.h, cursor.h), owned: true)

proc frameAt*(self: gen_qtextdocument_types.QTextDocument, pos: cint): gen_qtextobject_types.QTextFrame =
  gen_qtextobject_types.QTextFrame(h: fcQTextDocument_frameAt(self.h, pos), owned: false)

proc rootFrame*(self: gen_qtextdocument_types.QTextDocument, ): gen_qtextobject_types.QTextFrame =
  gen_qtextobject_types.QTextFrame(h: fcQTextDocument_rootFrame(self.h), owned: false)

proc objectX*(self: gen_qtextdocument_types.QTextDocument, objectIndex: cint): gen_qtextobject_types.QTextObject =
  gen_qtextobject_types.QTextObject(h: fcQTextDocument_objectX(self.h, objectIndex), owned: false)

proc objectForFormat*(self: gen_qtextdocument_types.QTextDocument, param1: gen_qtextformat_types.QTextFormat): gen_qtextobject_types.QTextObject =
  gen_qtextobject_types.QTextObject(h: fcQTextDocument_objectForFormat(self.h, param1.h), owned: false)

proc findBlock*(self: gen_qtextdocument_types.QTextDocument, pos: cint): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextDocument_findBlock(self.h, pos), owned: true)

proc findBlockByNumber*(self: gen_qtextdocument_types.QTextDocument, blockNumber: cint): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextDocument_findBlockByNumber(self.h, blockNumber), owned: true)

proc findBlockByLineNumber*(self: gen_qtextdocument_types.QTextDocument, blockNumber: cint): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextDocument_findBlockByLineNumber(self.h, blockNumber), owned: true)

proc begin*(self: gen_qtextdocument_types.QTextDocument, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextDocument_begin(self.h), owned: true)

proc endX*(self: gen_qtextdocument_types.QTextDocument, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextDocument_endX(self.h), owned: true)

proc firstBlock*(self: gen_qtextdocument_types.QTextDocument, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextDocument_firstBlock(self.h), owned: true)

proc lastBlock*(self: gen_qtextdocument_types.QTextDocument, ): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQTextDocument_lastBlock(self.h), owned: true)

proc setPageSize*(self: gen_qtextdocument_types.QTextDocument, size: gen_qsize_types.QSizeF): void =
  fcQTextDocument_setPageSize(self.h, size.h)

proc pageSize*(self: gen_qtextdocument_types.QTextDocument, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQTextDocument_pageSize(self.h), owned: true)

proc setDefaultFont*(self: gen_qtextdocument_types.QTextDocument, font: gen_qfont_types.QFont): void =
  fcQTextDocument_setDefaultFont(self.h, font.h)

proc defaultFont*(self: gen_qtextdocument_types.QTextDocument, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTextDocument_defaultFont(self.h), owned: true)

proc setSuperScriptBaseline*(self: gen_qtextdocument_types.QTextDocument, baseline: float64): void =
  fcQTextDocument_setSuperScriptBaseline(self.h, baseline)

proc superScriptBaseline*(self: gen_qtextdocument_types.QTextDocument, ): float64 =
  fcQTextDocument_superScriptBaseline(self.h)

proc setSubScriptBaseline*(self: gen_qtextdocument_types.QTextDocument, baseline: float64): void =
  fcQTextDocument_setSubScriptBaseline(self.h, baseline)

proc subScriptBaseline*(self: gen_qtextdocument_types.QTextDocument, ): float64 =
  fcQTextDocument_subScriptBaseline(self.h)

proc setBaselineOffset*(self: gen_qtextdocument_types.QTextDocument, baseline: float64): void =
  fcQTextDocument_setBaselineOffset(self.h, baseline)

proc baselineOffset*(self: gen_qtextdocument_types.QTextDocument, ): float64 =
  fcQTextDocument_baselineOffset(self.h)

proc pageCount*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_pageCount(self.h)

proc isModified*(self: gen_qtextdocument_types.QTextDocument, ): bool =
  fcQTextDocument_isModified(self.h)

proc print*(self: gen_qtextdocument_types.QTextDocument, printer: gen_qpagedpaintdevice_types.QPagedPaintDevice): void =
  fcQTextDocument_print(self.h, printer.h)

proc resource*(self: gen_qtextdocument_types.QTextDocument, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextDocument_resource(self.h, typeVal, name.h), owned: true)

proc addResource*(self: gen_qtextdocument_types.QTextDocument, typeVal: cint, name: gen_qurl_types.QUrl, resource: gen_qvariant_types.QVariant): void =
  fcQTextDocument_addResource(self.h, typeVal, name.h, resource.h)

proc allFormats*(self: gen_qtextdocument_types.QTextDocument, ): seq[gen_qtextformat_types.QTextFormat] =
  var v_ma = fcQTextDocument_allFormats(self.h)
  var vx_ret = newSeq[gen_qtextformat_types.QTextFormat](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextformat_types.QTextFormat(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc markContentsDirty*(self: gen_qtextdocument_types.QTextDocument, fromVal: cint, length: cint): void =
  fcQTextDocument_markContentsDirty(self.h, fromVal, length)

proc setUseDesignMetrics*(self: gen_qtextdocument_types.QTextDocument, b: bool): void =
  fcQTextDocument_setUseDesignMetrics(self.h, b)

proc useDesignMetrics*(self: gen_qtextdocument_types.QTextDocument, ): bool =
  fcQTextDocument_useDesignMetrics(self.h)

proc setLayoutEnabled*(self: gen_qtextdocument_types.QTextDocument, b: bool): void =
  fcQTextDocument_setLayoutEnabled(self.h, b)

proc isLayoutEnabled*(self: gen_qtextdocument_types.QTextDocument, ): bool =
  fcQTextDocument_isLayoutEnabled(self.h)

proc drawContents*(self: gen_qtextdocument_types.QTextDocument, painter: gen_qpainter_types.QPainter): void =
  fcQTextDocument_drawContents(self.h, painter.h)

proc setTextWidth*(self: gen_qtextdocument_types.QTextDocument, width: float64): void =
  fcQTextDocument_setTextWidth(self.h, width)

proc textWidth*(self: gen_qtextdocument_types.QTextDocument, ): float64 =
  fcQTextDocument_textWidth(self.h)

proc idealWidth*(self: gen_qtextdocument_types.QTextDocument, ): float64 =
  fcQTextDocument_idealWidth(self.h)

proc indentWidth*(self: gen_qtextdocument_types.QTextDocument, ): float64 =
  fcQTextDocument_indentWidth(self.h)

proc setIndentWidth*(self: gen_qtextdocument_types.QTextDocument, width: float64): void =
  fcQTextDocument_setIndentWidth(self.h, width)

proc documentMargin*(self: gen_qtextdocument_types.QTextDocument, ): float64 =
  fcQTextDocument_documentMargin(self.h)

proc setDocumentMargin*(self: gen_qtextdocument_types.QTextDocument, margin: float64): void =
  fcQTextDocument_setDocumentMargin(self.h, margin)

proc adjustSize*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_adjustSize(self.h)

proc size*(self: gen_qtextdocument_types.QTextDocument, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQTextDocument_size(self.h), owned: true)

proc blockCount*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_blockCount(self.h)

proc lineCount*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_lineCount(self.h)

proc characterCount*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_characterCount(self.h)

proc setDefaultStyleSheet*(self: gen_qtextdocument_types.QTextDocument, sheet: string): void =
  fcQTextDocument_setDefaultStyleSheet(self.h, struct_miqt_string(data: sheet, len: csize_t(len(sheet))))

proc defaultStyleSheet*(self: gen_qtextdocument_types.QTextDocument, ): string =
  let v_ms = fcQTextDocument_defaultStyleSheet(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc undo*(self: gen_qtextdocument_types.QTextDocument, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextDocument_undo(self.h, cursor.h)

proc redo*(self: gen_qtextdocument_types.QTextDocument, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextDocument_redo(self.h, cursor.h)

proc clearUndoRedoStacks*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_clearUndoRedoStacks(self.h)

proc maximumBlockCount*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_maximumBlockCount(self.h)

proc setMaximumBlockCount*(self: gen_qtextdocument_types.QTextDocument, maximum: cint): void =
  fcQTextDocument_setMaximumBlockCount(self.h, maximum)

proc defaultTextOption*(self: gen_qtextdocument_types.QTextDocument, ): gen_qtextoption_types.QTextOption =
  gen_qtextoption_types.QTextOption(h: fcQTextDocument_defaultTextOption(self.h), owned: true)

proc setDefaultTextOption*(self: gen_qtextdocument_types.QTextDocument, option: gen_qtextoption_types.QTextOption): void =
  fcQTextDocument_setDefaultTextOption(self.h, option.h)

proc baseUrl*(self: gen_qtextdocument_types.QTextDocument, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQTextDocument_baseUrl(self.h), owned: true)

proc setBaseUrl*(self: gen_qtextdocument_types.QTextDocument, url: gen_qurl_types.QUrl): void =
  fcQTextDocument_setBaseUrl(self.h, url.h)

proc defaultCursorMoveStyle*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  cint(fcQTextDocument_defaultCursorMoveStyle(self.h))

proc setDefaultCursorMoveStyle*(self: gen_qtextdocument_types.QTextDocument, style: cint): void =
  fcQTextDocument_setDefaultCursorMoveStyle(self.h, cint(style))

proc contentsChange*(self: gen_qtextdocument_types.QTextDocument, fromVal: cint, charsRemoved: cint, charsAdded: cint): void =
  fcQTextDocument_contentsChange(self.h, fromVal, charsRemoved, charsAdded)

type QTextDocumentcontentsChangeSlot* = proc(fromVal: cint, charsRemoved: cint, charsAdded: cint)
proc miqt_exec_callback_cQTextDocument_contentsChange(slot: int, fromVal: cint, charsRemoved: cint, charsAdded: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentcontentsChangeSlot](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = charsRemoved

  let slotval3 = charsAdded

  nimfunc[](slotval1, slotval2, slotval3)

proc miqt_exec_callback_cQTextDocument_contentsChange_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentcontentsChangeSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontentsChange*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentcontentsChangeSlot) =
  var tmp = new QTextDocumentcontentsChangeSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_contentsChange(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_contentsChange, miqt_exec_callback_cQTextDocument_contentsChange_release)

proc contentsChanged*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_contentsChanged(self.h)

type QTextDocumentcontentsChangedSlot* = proc()
proc miqt_exec_callback_cQTextDocument_contentsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentcontentsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQTextDocument_contentsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentcontentsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontentsChanged*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentcontentsChangedSlot) =
  var tmp = new QTextDocumentcontentsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_contentsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_contentsChanged, miqt_exec_callback_cQTextDocument_contentsChanged_release)

proc undoAvailable*(self: gen_qtextdocument_types.QTextDocument, param1: bool): void =
  fcQTextDocument_undoAvailable(self.h, param1)

type QTextDocumentundoAvailableSlot* = proc(param1: bool)
proc miqt_exec_callback_cQTextDocument_undoAvailable(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentundoAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextDocument_undoAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentundoAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onundoAvailable*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentundoAvailableSlot) =
  var tmp = new QTextDocumentundoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_undoAvailable(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_undoAvailable, miqt_exec_callback_cQTextDocument_undoAvailable_release)

proc redoAvailable*(self: gen_qtextdocument_types.QTextDocument, param1: bool): void =
  fcQTextDocument_redoAvailable(self.h, param1)

type QTextDocumentredoAvailableSlot* = proc(param1: bool)
proc miqt_exec_callback_cQTextDocument_redoAvailable(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentredoAvailableSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextDocument_redoAvailable_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentredoAvailableSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onredoAvailable*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentredoAvailableSlot) =
  var tmp = new QTextDocumentredoAvailableSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_redoAvailable(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_redoAvailable, miqt_exec_callback_cQTextDocument_redoAvailable_release)

proc undoCommandAdded*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_undoCommandAdded(self.h)

type QTextDocumentundoCommandAddedSlot* = proc()
proc miqt_exec_callback_cQTextDocument_undoCommandAdded(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentundoCommandAddedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQTextDocument_undoCommandAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentundoCommandAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onundoCommandAdded*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentundoCommandAddedSlot) =
  var tmp = new QTextDocumentundoCommandAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_undoCommandAdded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_undoCommandAdded, miqt_exec_callback_cQTextDocument_undoCommandAdded_release)

proc modificationChanged*(self: gen_qtextdocument_types.QTextDocument, m: bool): void =
  fcQTextDocument_modificationChanged(self.h, m)

type QTextDocumentmodificationChangedSlot* = proc(m: bool)
proc miqt_exec_callback_cQTextDocument_modificationChanged(slot: int, m: bool) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentmodificationChangedSlot](cast[pointer](slot))
  let slotval1 = m

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextDocument_modificationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentmodificationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmodificationChanged*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentmodificationChangedSlot) =
  var tmp = new QTextDocumentmodificationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_modificationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_modificationChanged, miqt_exec_callback_cQTextDocument_modificationChanged_release)

proc cursorPositionChanged*(self: gen_qtextdocument_types.QTextDocument, cursor: gen_qtextcursor_types.QTextCursor): void =
  fcQTextDocument_cursorPositionChanged(self.h, cursor.h)

type QTextDocumentcursorPositionChangedSlot* = proc(cursor: gen_qtextcursor_types.QTextCursor)
proc miqt_exec_callback_cQTextDocument_cursorPositionChanged(slot: int, cursor: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentcursorPositionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qtextcursor_types.QTextCursor(h: cursor, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextDocument_cursorPositionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentcursorPositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncursorPositionChanged*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentcursorPositionChangedSlot) =
  var tmp = new QTextDocumentcursorPositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_cursorPositionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_cursorPositionChanged, miqt_exec_callback_cQTextDocument_cursorPositionChanged_release)

proc blockCountChanged*(self: gen_qtextdocument_types.QTextDocument, newBlockCount: cint): void =
  fcQTextDocument_blockCountChanged(self.h, newBlockCount)

type QTextDocumentblockCountChangedSlot* = proc(newBlockCount: cint)
proc miqt_exec_callback_cQTextDocument_blockCountChanged(slot: int, newBlockCount: cint) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentblockCountChangedSlot](cast[pointer](slot))
  let slotval1 = newBlockCount

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextDocument_blockCountChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentblockCountChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onblockCountChanged*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentblockCountChangedSlot) =
  var tmp = new QTextDocumentblockCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_blockCountChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_blockCountChanged, miqt_exec_callback_cQTextDocument_blockCountChanged_release)

proc baseUrlChanged*(self: gen_qtextdocument_types.QTextDocument, url: gen_qurl_types.QUrl): void =
  fcQTextDocument_baseUrlChanged(self.h, url.h)

type QTextDocumentbaseUrlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQTextDocument_baseUrlChanged(slot: int, url: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentbaseUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQTextDocument_baseUrlChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentbaseUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbaseUrlChanged*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentbaseUrlChangedSlot) =
  var tmp = new QTextDocumentbaseUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_baseUrlChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_baseUrlChanged, miqt_exec_callback_cQTextDocument_baseUrlChanged_release)

proc documentLayoutChanged*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_documentLayoutChanged(self.h)

type QTextDocumentdocumentLayoutChangedSlot* = proc()
proc miqt_exec_callback_cQTextDocument_documentLayoutChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QTextDocumentdocumentLayoutChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQTextDocument_documentLayoutChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QTextDocumentdocumentLayoutChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondocumentLayoutChanged*(self: gen_qtextdocument_types.QTextDocument, slot: QTextDocumentdocumentLayoutChangedSlot) =
  var tmp = new QTextDocumentdocumentLayoutChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQTextDocument_connect_documentLayoutChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQTextDocument_documentLayoutChanged, miqt_exec_callback_cQTextDocument_documentLayoutChanged_release)

proc undo*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_undo2(self.h)

proc redo*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_redo2(self.h)

proc appendUndoItem*(self: gen_qtextdocument_types.QTextDocument, param1: gen_qtextdocument_types.QAbstractUndoItem): void =
  fcQTextDocument_appendUndoItem(self.h, param1.h)

proc setModified*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_setModified(self.h)

proc tr*(_: type gen_qtextdocument_types.QTextDocument, s: cstring, c: cstring): string =
  let v_ms = fcQTextDocument_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtextdocument_types.QTextDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTextDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clone*(self: gen_qtextdocument_types.QTextDocument, parent: gen_qobject_types.QObject): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQTextDocument_clone1(self.h, parent.h), owned: false)

proc toMarkdown*(self: gen_qtextdocument_types.QTextDocument, features: cint): string =
  let v_ms = fcQTextDocument_toMarkdown1(self.h, cint(features))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMarkdown*(self: gen_qtextdocument_types.QTextDocument, markdown: string, features: cint): void =
  fcQTextDocument_setMarkdown2(self.h, struct_miqt_string(data: markdown, len: csize_t(len(markdown))), cint(features))

proc find*(self: gen_qtextdocument_types.QTextDocument, subString: string, fromVal: cint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find22(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), fromVal), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, subString: string, fromVal: cint, options: cint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find32(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), fromVal, cint(options)), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, subString: string, cursor: gen_qtextcursor_types.QTextCursor, options: cint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find33(self.h, struct_miqt_string(data: subString, len: csize_t(len(subString))), cursor.h, cint(options)), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, expr: gen_qregularexpression_types.QRegularExpression, fromVal: cint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find23(self.h, expr.h, fromVal), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, expr: gen_qregularexpression_types.QRegularExpression, fromVal: cint, options: cint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find34(self.h, expr.h, fromVal, cint(options)), owned: true)

proc find*(self: gen_qtextdocument_types.QTextDocument, expr: gen_qregularexpression_types.QRegularExpression, cursor: gen_qtextcursor_types.QTextCursor, options: cint): gen_qtextcursor_types.QTextCursor =
  gen_qtextcursor_types.QTextCursor(h: fcQTextDocument_find35(self.h, expr.h, cursor.h, cint(options)), owned: true)

proc drawContents*(self: gen_qtextdocument_types.QTextDocument, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF): void =
  fcQTextDocument_drawContents2(self.h, painter.h, rect.h)

proc clearUndoRedoStacks*(self: gen_qtextdocument_types.QTextDocument, historyToClear: cint): void =
  fcQTextDocument_clearUndoRedoStacks1(self.h, cint(historyToClear))

proc setModified*(self: gen_qtextdocument_types.QTextDocument, m: bool): void =
  fcQTextDocument_setModified1(self.h, m)

type QTextDocumentmetaObjectProc* = proc(self: QTextDocument): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTextDocumentmetacastProc* = proc(self: QTextDocument, param1: cstring): pointer {.raises: [], gcsafe.}
type QTextDocumentmetacallProc* = proc(self: QTextDocument, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTextDocumentclearProc* = proc(self: QTextDocument): void {.raises: [], gcsafe.}
type QTextDocumentcreateObjectProc* = proc(self: QTextDocument, f: gen_qtextformat_types.QTextFormat): gen_qtextobject_types.QTextObject {.raises: [], gcsafe.}
type QTextDocumentloadResourceProc* = proc(self: QTextDocument, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QTextDocumenteventProc* = proc(self: QTextDocument, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextDocumenteventFilterProc* = proc(self: QTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTextDocumenttimerEventProc* = proc(self: QTextDocument, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTextDocumentchildEventProc* = proc(self: QTextDocument, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTextDocumentcustomEventProc* = proc(self: QTextDocument, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTextDocumentconnectNotifyProc* = proc(self: QTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextDocumentdisconnectNotifyProc* = proc(self: QTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTextDocumentVTable* {.inheritable, pure.} = object
  vtbl: cQTextDocumentVTable
  metaObject*: QTextDocumentmetaObjectProc
  metacast*: QTextDocumentmetacastProc
  metacall*: QTextDocumentmetacallProc
  clear*: QTextDocumentclearProc
  createObject*: QTextDocumentcreateObjectProc
  loadResource*: QTextDocumentloadResourceProc
  event*: QTextDocumenteventProc
  eventFilter*: QTextDocumenteventFilterProc
  timerEvent*: QTextDocumenttimerEventProc
  childEvent*: QTextDocumentchildEventProc
  customEvent*: QTextDocumentcustomEventProc
  connectNotify*: QTextDocumentconnectNotifyProc
  disconnectNotify*: QTextDocumentdisconnectNotifyProc
proc QTextDocumentmetaObject*(self: gen_qtextdocument_types.QTextDocument, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextDocument_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQTextDocument_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTextDocumentmetacast*(self: gen_qtextdocument_types.QTextDocument, param1: cstring): pointer =
  fcQTextDocument_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTextDocument_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTextDocumentmetacall*(self: gen_qtextdocument_types.QTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQTextDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTextDocument_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTextDocumentclear*(self: gen_qtextdocument_types.QTextDocument, ): void =
  fcQTextDocument_virtualbase_clear(self.h)

proc miqt_exec_callback_cQTextDocument_clear(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  vtbl[].clear(self)

proc QTextDocumentcreateObject*(self: gen_qtextdocument_types.QTextDocument, f: gen_qtextformat_types.QTextFormat): gen_qtextobject_types.QTextObject =
  gen_qtextobject_types.QTextObject(h: fcQTextDocument_virtualbase_createObject(self.h, f.h), owned: false)

proc miqt_exec_callback_cQTextDocument_createObject(vtbl: pointer, self: pointer, f: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qtextformat_types.QTextFormat(h: f, owned: false)
  var virtualReturn = vtbl[].createObject(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTextDocumentloadResource*(self: gen_qtextdocument_types.QTextDocument, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextDocument_virtualbase_loadResource(self.h, typeVal, name.h), owned: true)

proc miqt_exec_callback_cQTextDocument_loadResource(vtbl: pointer, self: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name, owned: false)
  var virtualReturn = vtbl[].loadResource(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTextDocumentevent*(self: gen_qtextdocument_types.QTextDocument, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextDocument_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTextDocument_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTextDocumenteventFilter*(self: gen_qtextdocument_types.QTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTextDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTextDocument_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTextDocumenttimerEvent*(self: gen_qtextdocument_types.QTextDocument, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTextDocument_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTextDocument_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTextDocumentchildEvent*(self: gen_qtextdocument_types.QTextDocument, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTextDocument_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTextDocument_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTextDocumentcustomEvent*(self: gen_qtextdocument_types.QTextDocument, event: gen_qcoreevent_types.QEvent): void =
  fcQTextDocument_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTextDocument_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTextDocumentconnectNotify*(self: gen_qtextdocument_types.QTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextDocument_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextDocument_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTextDocumentdisconnectNotify*(self: gen_qtextdocument_types.QTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTextDocument_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTextDocument_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTextDocumentVTable](vtbl)
  let self = QTextDocument(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTextDocument* {.inheritable.} = ref object of QTextDocument
  vtbl*: cQTextDocumentVTable
method metaObject*(self: VirtualQTextDocument, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTextDocumentmetaObject(self[])
proc miqt_exec_method_cQTextDocument_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTextDocument, param1: cstring): pointer {.base.} =
  QTextDocumentmetacast(self[], param1)
proc miqt_exec_method_cQTextDocument_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTextDocument, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTextDocumentmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQTextDocument_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method clear*(self: VirtualQTextDocument, ): void {.base.} =
  QTextDocumentclear(self[])
proc miqt_exec_method_cQTextDocument_clear(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  vtbl.clear()

method createObject*(self: VirtualQTextDocument, f: gen_qtextformat_types.QTextFormat): gen_qtextobject_types.QTextObject {.base.} =
  QTextDocumentcreateObject(self[], f)
proc miqt_exec_method_cQTextDocument_createObject(vtbl: pointer, inst: pointer, f: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qtextformat_types.QTextFormat(h: f, owned: false)
  var virtualReturn = vtbl.createObject(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method loadResource*(self: VirtualQTextDocument, typeVal: cint, name: gen_qurl_types.QUrl): gen_qvariant_types.QVariant {.base.} =
  QTextDocumentloadResource(self[], typeVal, name)
proc miqt_exec_method_cQTextDocument_loadResource(vtbl: pointer, inst: pointer, typeVal: cint, name: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = typeVal
  let slotval2 = gen_qurl_types.QUrl(h: name, owned: false)
  var virtualReturn = vtbl.loadResource(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQTextDocument, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextDocumentevent(self[], event)
proc miqt_exec_method_cQTextDocument_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTextDocumenteventFilter(self[], watched, event)
proc miqt_exec_method_cQTextDocument_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTextDocument, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTextDocumenttimerEvent(self[], event)
proc miqt_exec_method_cQTextDocument_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQTextDocument, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTextDocumentchildEvent(self[], event)
proc miqt_exec_method_cQTextDocument_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQTextDocument, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTextDocumentcustomEvent(self[], event)
proc miqt_exec_method_cQTextDocument_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextDocumentconnectNotify(self[], signal)
proc miqt_exec_method_cQTextDocument_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTextDocumentdisconnectNotify(self[], signal)
proc miqt_exec_method_cQTextDocument_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQTextDocument](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qtextdocument_types.QTextDocument, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTextDocument_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtextdocument_types.QTextDocument, ): cint =
  fcQTextDocument_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtextdocument_types.QTextDocument, signal: cstring): cint =
  fcQTextDocument_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtextdocument_types.QTextDocument, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTextDocument_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    vtbl: ref QTextDocumentVTable = nil): gen_qtextdocument_types.QTextDocument =
  let vtbl = if vtbl == nil: new QTextDocumentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ref QTextDocumentVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextDocument_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextDocument_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextDocument_metacall
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQTextDocument_clear
  if not isNil(vtbl[].createObject):
    vtbl[].vtbl.createObject = miqt_exec_callback_cQTextDocument_createObject
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextDocument_loadResource
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextDocument_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextDocument_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextDocument_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextDocument_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextDocument_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextDocument_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextDocument_disconnectNotify
  gen_qtextdocument_types.QTextDocument(h: fcQTextDocument_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    text: string,
    vtbl: ref QTextDocumentVTable = nil): gen_qtextdocument_types.QTextDocument =
  let vtbl = if vtbl == nil: new QTextDocumentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ref QTextDocumentVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextDocument_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextDocument_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextDocument_metacall
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQTextDocument_clear
  if not isNil(vtbl[].createObject):
    vtbl[].vtbl.createObject = miqt_exec_callback_cQTextDocument_createObject
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextDocument_loadResource
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextDocument_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextDocument_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextDocument_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextDocument_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextDocument_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextDocument_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextDocument_disconnectNotify
  gen_qtextdocument_types.QTextDocument(h: fcQTextDocument_new2(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTextDocumentVTable = nil): gen_qtextdocument_types.QTextDocument =
  let vtbl = if vtbl == nil: new QTextDocumentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ref QTextDocumentVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextDocument_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextDocument_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextDocument_metacall
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQTextDocument_clear
  if not isNil(vtbl[].createObject):
    vtbl[].vtbl.createObject = miqt_exec_callback_cQTextDocument_createObject
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextDocument_loadResource
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextDocument_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextDocument_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextDocument_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextDocument_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextDocument_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextDocument_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextDocument_disconnectNotify
  gen_qtextdocument_types.QTextDocument(h: fcQTextDocument_new3(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    text: string, parent: gen_qobject_types.QObject,
    vtbl: ref QTextDocumentVTable = nil): gen_qtextdocument_types.QTextDocument =
  let vtbl = if vtbl == nil: new QTextDocumentVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ref QTextDocumentVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTextDocument_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTextDocument_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTextDocument_metacall
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQTextDocument_clear
  if not isNil(vtbl[].createObject):
    vtbl[].vtbl.createObject = miqt_exec_callback_cQTextDocument_createObject
  if not isNil(vtbl[].loadResource):
    vtbl[].vtbl.loadResource = miqt_exec_callback_cQTextDocument_loadResource
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTextDocument_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTextDocument_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTextDocument_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTextDocument_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTextDocument_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTextDocument_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTextDocument_disconnectNotify
  gen_qtextdocument_types.QTextDocument(h: fcQTextDocument_new4(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h), owned: true)

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    vtbl: VirtualQTextDocument) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTextDocument()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTextDocument_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTextDocument_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTextDocument_metacall
  vtbl[].vtbl.clear = miqt_exec_method_cQTextDocument_clear
  vtbl[].vtbl.createObject = miqt_exec_method_cQTextDocument_createObject
  vtbl[].vtbl.loadResource = miqt_exec_method_cQTextDocument_loadResource
  vtbl[].vtbl.event = miqt_exec_method_cQTextDocument_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTextDocument_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTextDocument_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTextDocument_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTextDocument_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTextDocument_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTextDocument_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTextDocument_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    text: string,
    vtbl: VirtualQTextDocument) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTextDocument()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTextDocument_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTextDocument_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTextDocument_metacall
  vtbl[].vtbl.clear = miqt_exec_method_cQTextDocument_clear
  vtbl[].vtbl.createObject = miqt_exec_method_cQTextDocument_createObject
  vtbl[].vtbl.loadResource = miqt_exec_method_cQTextDocument_loadResource
  vtbl[].vtbl.event = miqt_exec_method_cQTextDocument_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTextDocument_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTextDocument_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTextDocument_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTextDocument_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTextDocument_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTextDocument_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTextDocument_new2(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))))
  vtbl[].owned = true

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQTextDocument) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTextDocument()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTextDocument_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTextDocument_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTextDocument_metacall
  vtbl[].vtbl.clear = miqt_exec_method_cQTextDocument_clear
  vtbl[].vtbl.createObject = miqt_exec_method_cQTextDocument_createObject
  vtbl[].vtbl.loadResource = miqt_exec_method_cQTextDocument_loadResource
  vtbl[].vtbl.event = miqt_exec_method_cQTextDocument_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTextDocument_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTextDocument_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTextDocument_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTextDocument_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTextDocument_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTextDocument_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTextDocument_new3(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qtextdocument_types.QTextDocument,
    text: string, parent: gen_qobject_types.QObject,
    vtbl: VirtualQTextDocument) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQTextDocumentVTable, _: ptr cQTextDocument) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQTextDocument()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQTextDocument, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQTextDocument_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQTextDocument_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQTextDocument_metacall
  vtbl[].vtbl.clear = miqt_exec_method_cQTextDocument_clear
  vtbl[].vtbl.createObject = miqt_exec_method_cQTextDocument_createObject
  vtbl[].vtbl.loadResource = miqt_exec_method_cQTextDocument_loadResource
  vtbl[].vtbl.event = miqt_exec_method_cQTextDocument_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQTextDocument_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQTextDocument_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQTextDocument_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQTextDocument_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQTextDocument_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQTextDocument_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQTextDocument_new4(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qtextdocument_types.QTextDocument): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextDocument_staticMetaObject())
