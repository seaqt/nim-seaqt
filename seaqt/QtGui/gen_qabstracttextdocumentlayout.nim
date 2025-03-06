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
{.compile("gen_qabstracttextdocumentlayout.cpp", cflags).}


import ./gen_qabstracttextdocumentlayout_types
export gen_qabstracttextdocumentlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qpaintdevice_types,
  ./gen_qpainter_types,
  ./gen_qtextdocument_types,
  ./gen_qtextformat_types,
  ./gen_qtextlayout_types,
  ./gen_qtextobject_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qpaintdevice_types,
  gen_qpainter_types,
  gen_qtextdocument_types,
  gen_qtextformat_types,
  gen_qtextlayout_types,
  gen_qtextobject_types

type cQAbstractTextDocumentLayout*{.exportc: "QAbstractTextDocumentLayout", incompleteStruct.} = object
type cQTextObjectInterface*{.exportc: "QTextObjectInterface", incompleteStruct.} = object
type cQAbstractTextDocumentLayoutSelection*{.exportc: "QAbstractTextDocumentLayout__Selection", incompleteStruct.} = object
type cQAbstractTextDocumentLayoutPaintContext*{.exportc: "QAbstractTextDocumentLayout__PaintContext", incompleteStruct.} = object

proc fcQAbstractTextDocumentLayout_metaObject(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_metaObject".}
proc fcQAbstractTextDocumentLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTextDocumentLayout_metacast".}
proc fcQAbstractTextDocumentLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTextDocumentLayout_metacall".}
proc fcQAbstractTextDocumentLayout_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_tr".}
proc fcQAbstractTextDocumentLayout_draw(self: pointer, painter: pointer, context: pointer): void {.importc: "QAbstractTextDocumentLayout_draw".}
proc fcQAbstractTextDocumentLayout_hitTest(self: pointer, point: pointer, accuracy: cint): cint {.importc: "QAbstractTextDocumentLayout_hitTest".}
proc fcQAbstractTextDocumentLayout_anchorAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_anchorAt".}
proc fcQAbstractTextDocumentLayout_imageAt(self: pointer, pos: pointer): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_imageAt".}
proc fcQAbstractTextDocumentLayout_formatAt(self: pointer, pos: pointer): pointer {.importc: "QAbstractTextDocumentLayout_formatAt".}
proc fcQAbstractTextDocumentLayout_blockWithMarkerAt(self: pointer, pos: pointer): pointer {.importc: "QAbstractTextDocumentLayout_blockWithMarkerAt".}
proc fcQAbstractTextDocumentLayout_pageCount(self: pointer, ): cint {.importc: "QAbstractTextDocumentLayout_pageCount".}
proc fcQAbstractTextDocumentLayout_documentSize(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_documentSize".}
proc fcQAbstractTextDocumentLayout_frameBoundingRect(self: pointer, frame: pointer): pointer {.importc: "QAbstractTextDocumentLayout_frameBoundingRect".}
proc fcQAbstractTextDocumentLayout_blockBoundingRect(self: pointer, blockVal: pointer): pointer {.importc: "QAbstractTextDocumentLayout_blockBoundingRect".}
proc fcQAbstractTextDocumentLayout_setPaintDevice(self: pointer, device: pointer): void {.importc: "QAbstractTextDocumentLayout_setPaintDevice".}
proc fcQAbstractTextDocumentLayout_paintDevice(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_paintDevice".}
proc fcQAbstractTextDocumentLayout_document(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_document".}
proc fcQAbstractTextDocumentLayout_registerHandler(self: pointer, objectType: cint, component: pointer): void {.importc: "QAbstractTextDocumentLayout_registerHandler".}
proc fcQAbstractTextDocumentLayout_unregisterHandler(self: pointer, objectType: cint): void {.importc: "QAbstractTextDocumentLayout_unregisterHandler".}
proc fcQAbstractTextDocumentLayout_handlerForObject(self: pointer, objectType: cint): pointer {.importc: "QAbstractTextDocumentLayout_handlerForObject".}
proc fcQAbstractTextDocumentLayout_update(self: pointer, ): void {.importc: "QAbstractTextDocumentLayout_update".}
proc fcQAbstractTextDocumentLayout_connect_update(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_update".}
proc fcQAbstractTextDocumentLayout_updateBlock(self: pointer, blockVal: pointer): void {.importc: "QAbstractTextDocumentLayout_updateBlock".}
proc fcQAbstractTextDocumentLayout_connect_updateBlock(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_updateBlock".}
proc fcQAbstractTextDocumentLayout_documentSizeChanged(self: pointer, newSize: pointer): void {.importc: "QAbstractTextDocumentLayout_documentSizeChanged".}
proc fcQAbstractTextDocumentLayout_connect_documentSizeChanged(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_documentSizeChanged".}
proc fcQAbstractTextDocumentLayout_pageCountChanged(self: pointer, newPages: cint): void {.importc: "QAbstractTextDocumentLayout_pageCountChanged".}
proc fcQAbstractTextDocumentLayout_connect_pageCountChanged(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_pageCountChanged".}
proc fcQAbstractTextDocumentLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_tr2".}
proc fcQAbstractTextDocumentLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_tr3".}
proc fcQAbstractTextDocumentLayout_unregisterHandler2(self: pointer, objectType: cint, component: pointer): void {.importc: "QAbstractTextDocumentLayout_unregisterHandler2".}
proc fcQAbstractTextDocumentLayout_update1(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout_update1".}
proc fcQAbstractTextDocumentLayout_connect_update1(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_update1".}
type cQAbstractTextDocumentLayoutVTable = object
  destructor*: proc(vtbl: ptr cQAbstractTextDocumentLayoutVTable, self: ptr cQAbstractTextDocumentLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  draw*: proc(vtbl, self: pointer, painter: pointer, context: pointer): void {.cdecl, raises: [], gcsafe.}
  hitTest*: proc(vtbl, self: pointer, point: pointer, accuracy: cint): cint {.cdecl, raises: [], gcsafe.}
  pageCount*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  documentSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  frameBoundingRect*: proc(vtbl, self: pointer, frame: pointer): pointer {.cdecl, raises: [], gcsafe.}
  blockBoundingRect*: proc(vtbl, self: pointer, blockVal: pointer): pointer {.cdecl, raises: [], gcsafe.}
  documentChanged*: proc(vtbl, self: pointer, fromVal: cint, charsRemoved: cint, charsAdded: cint): void {.cdecl, raises: [], gcsafe.}
  resizeInlineObject*: proc(vtbl, self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl, raises: [], gcsafe.}
  positionInlineObject*: proc(vtbl, self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl, raises: [], gcsafe.}
  drawInlineObject*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractTextDocumentLayout_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_virtualbase_metaObject".}
proc fcQAbstractTextDocumentLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTextDocumentLayout_virtualbase_metacast".}
proc fcQAbstractTextDocumentLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTextDocumentLayout_virtualbase_metacall".}
proc fcQAbstractTextDocumentLayout_virtualbase_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_resizeInlineObject".}
proc fcQAbstractTextDocumentLayout_virtualbase_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_positionInlineObject".}
proc fcQAbstractTextDocumentLayout_virtualbase_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_drawInlineObject".}
proc fcQAbstractTextDocumentLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractTextDocumentLayout_virtualbase_event".}
proc fcQAbstractTextDocumentLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractTextDocumentLayout_virtualbase_eventFilter".}
proc fcQAbstractTextDocumentLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_timerEvent".}
proc fcQAbstractTextDocumentLayout_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_childEvent".}
proc fcQAbstractTextDocumentLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_customEvent".}
proc fcQAbstractTextDocumentLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_connectNotify".}
proc fcQAbstractTextDocumentLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractTextDocumentLayout_virtualbase_disconnectNotify".}
proc fcQAbstractTextDocumentLayout_new(vtbl: pointer, doc: pointer): ptr cQAbstractTextDocumentLayout {.importc: "QAbstractTextDocumentLayout_new".}
proc fcQAbstractTextDocumentLayout_staticMetaObject(): pointer {.importc: "QAbstractTextDocumentLayout_staticMetaObject".}
proc fcQAbstractTextDocumentLayout_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout_delete".}
proc fcQTextObjectInterface_intrinsicSize(self: pointer, doc: pointer, posInDocument: cint, format: pointer): pointer {.importc: "QTextObjectInterface_intrinsicSize".}
proc fcQTextObjectInterface_drawObject(self: pointer, painter: pointer, rect: pointer, doc: pointer, posInDocument: cint, format: pointer): void {.importc: "QTextObjectInterface_drawObject".}
proc fcQTextObjectInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextObjectInterface_operatorAssign".}
proc fcQTextObjectInterface_delete(self: pointer) {.importc: "QTextObjectInterface_delete".}
proc fcQAbstractTextDocumentLayoutSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout__Selection_operatorAssign".}
proc fcQAbstractTextDocumentLayoutSelection_new(param1: pointer): ptr cQAbstractTextDocumentLayoutSelection {.importc: "QAbstractTextDocumentLayout__Selection_new".}
proc fcQAbstractTextDocumentLayoutSelection_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__Selection_delete".}
proc fcQAbstractTextDocumentLayoutPaintContext_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout__PaintContext_operatorAssign".}
proc fcQAbstractTextDocumentLayoutPaintContext_new(): ptr cQAbstractTextDocumentLayoutPaintContext {.importc: "QAbstractTextDocumentLayout__PaintContext_new".}
proc fcQAbstractTextDocumentLayoutPaintContext_new2(param1: pointer): ptr cQAbstractTextDocumentLayoutPaintContext {.importc: "QAbstractTextDocumentLayout__PaintContext_new2".}
proc fcQAbstractTextDocumentLayoutPaintContext_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__PaintContext_delete".}

proc metaObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTextDocumentLayout_metaObject(self.h))

proc metacast*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: cstring): pointer =
  fcQAbstractTextDocumentLayout_metacast(self.h, param1)

proc metacall*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTextDocumentLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, s: cstring): string =
  let v_ms = fcQAbstractTextDocumentLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc draw*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, painter: gen_qpainter_types.QPainter, context: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void =
  fcQAbstractTextDocumentLayout_draw(self.h, painter.h, context.h)

proc hitTest*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, point: gen_qpoint_types.QPointF, accuracy: cint): cint =
  fcQAbstractTextDocumentLayout_hitTest(self.h, point.h, cint(accuracy))

proc anchorAt*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, pos: gen_qpoint_types.QPointF): string =
  let v_ms = fcQAbstractTextDocumentLayout_anchorAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc imageAt*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, pos: gen_qpoint_types.QPointF): string =
  let v_ms = fcQAbstractTextDocumentLayout_imageAt(self.h, pos.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc formatAt*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, pos: gen_qpoint_types.QPointF): gen_qtextformat_types.QTextFormat =
  gen_qtextformat_types.QTextFormat(h: fcQAbstractTextDocumentLayout_formatAt(self.h, pos.h))

proc blockWithMarkerAt*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, pos: gen_qpoint_types.QPointF): gen_qtextobject_types.QTextBlock =
  gen_qtextobject_types.QTextBlock(h: fcQAbstractTextDocumentLayout_blockWithMarkerAt(self.h, pos.h))

proc pageCount*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): cint =
  fcQAbstractTextDocumentLayout_pageCount(self.h)

proc documentSize*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQAbstractTextDocumentLayout_documentSize(self.h))

proc frameBoundingRect*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, frame: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQAbstractTextDocumentLayout_frameBoundingRect(self.h, frame.h))

proc blockBoundingRect*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQAbstractTextDocumentLayout_blockBoundingRect(self.h, blockVal.h))

proc setPaintDevice*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, device: gen_qpaintdevice_types.QPaintDevice): void =
  fcQAbstractTextDocumentLayout_setPaintDevice(self.h, device.h)

proc paintDevice*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractTextDocumentLayout_paintDevice(self.h))

proc document*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQAbstractTextDocumentLayout_document(self.h))

proc registerHandler*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, objectType: cint, component: gen_qobject_types.QObject): void =
  fcQAbstractTextDocumentLayout_registerHandler(self.h, objectType, component.h)

proc unregisterHandler*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, objectType: cint): void =
  fcQAbstractTextDocumentLayout_unregisterHandler(self.h, objectType)

proc handlerForObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, objectType: cint): gen_qabstracttextdocumentlayout_types.QTextObjectInterface =
  gen_qabstracttextdocumentlayout_types.QTextObjectInterface(h: fcQAbstractTextDocumentLayout_handlerForObject(self.h, objectType))

proc update*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): void =
  fcQAbstractTextDocumentLayout_update(self.h)

type QAbstractTextDocumentLayoutupdateSlot* = proc()
proc miqt_exec_callback_cQAbstractTextDocumentLayout_update(slot: int) {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_update".} =
  let nimfunc = cast[ptr QAbstractTextDocumentLayoutupdateSlot](cast[pointer](slot))
  nimfunc[]()

proc onupdate*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutupdateSlot) =
  var tmp = new QAbstractTextDocumentLayoutupdateSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_connect_update(self.h, cast[int](addr tmp[]))

proc updateBlock*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): void =
  fcQAbstractTextDocumentLayout_updateBlock(self.h, blockVal.h)

type QAbstractTextDocumentLayoutupdateBlockSlot* = proc(blockVal: gen_qtextobject_types.QTextBlock)
proc miqt_exec_callback_cQAbstractTextDocumentLayout_updateBlock(slot: int, blockVal: pointer) {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_updateBlock".} =
  let nimfunc = cast[ptr QAbstractTextDocumentLayoutupdateBlockSlot](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)

  nimfunc[](slotval1)

proc onupdateBlock*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutupdateBlockSlot) =
  var tmp = new QAbstractTextDocumentLayoutupdateBlockSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_connect_updateBlock(self.h, cast[int](addr tmp[]))

proc documentSizeChanged*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, newSize: gen_qsize_types.QSizeF): void =
  fcQAbstractTextDocumentLayout_documentSizeChanged(self.h, newSize.h)

type QAbstractTextDocumentLayoutdocumentSizeChangedSlot* = proc(newSize: gen_qsize_types.QSizeF)
proc miqt_exec_callback_cQAbstractTextDocumentLayout_documentSizeChanged(slot: int, newSize: pointer) {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_documentSizeChanged".} =
  let nimfunc = cast[ptr QAbstractTextDocumentLayoutdocumentSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSizeF(h: newSize)

  nimfunc[](slotval1)

proc ondocumentSizeChanged*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutdocumentSizeChangedSlot) =
  var tmp = new QAbstractTextDocumentLayoutdocumentSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_connect_documentSizeChanged(self.h, cast[int](addr tmp[]))

proc pageCountChanged*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, newPages: cint): void =
  fcQAbstractTextDocumentLayout_pageCountChanged(self.h, newPages)

type QAbstractTextDocumentLayoutpageCountChangedSlot* = proc(newPages: cint)
proc miqt_exec_callback_cQAbstractTextDocumentLayout_pageCountChanged(slot: int, newPages: cint) {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_pageCountChanged".} =
  let nimfunc = cast[ptr QAbstractTextDocumentLayoutpageCountChangedSlot](cast[pointer](slot))
  let slotval1 = newPages

  nimfunc[](slotval1)

proc onpageCountChanged*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutpageCountChangedSlot) =
  var tmp = new QAbstractTextDocumentLayoutpageCountChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_connect_pageCountChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTextDocumentLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTextDocumentLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc unregisterHandler*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, objectType: cint, component: gen_qobject_types.QObject): void =
  fcQAbstractTextDocumentLayout_unregisterHandler2(self.h, objectType, component.h)

proc update*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: gen_qrect_types.QRectF): void =
  fcQAbstractTextDocumentLayout_update1(self.h, param1.h)

type QAbstractTextDocumentLayoutupdate1Slot* = proc(param1: gen_qrect_types.QRectF)
proc miqt_exec_callback_cQAbstractTextDocumentLayout_update1(slot: int, param1: pointer) {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_update1".} =
  let nimfunc = cast[ptr QAbstractTextDocumentLayoutupdate1Slot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: param1)

  nimfunc[](slotval1)

proc onupdate*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutupdate1Slot) =
  var tmp = new QAbstractTextDocumentLayoutupdate1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_connect_update1(self.h, cast[int](addr tmp[]))

type QAbstractTextDocumentLayoutmetaObjectProc* = proc(self: QAbstractTextDocumentLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutmetacastProc* = proc(self: QAbstractTextDocumentLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutmetacallProc* = proc(self: QAbstractTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutdrawProc* = proc(self: QAbstractTextDocumentLayout, painter: gen_qpainter_types.QPainter, context: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayouthitTestProc* = proc(self: QAbstractTextDocumentLayout, point: gen_qpoint_types.QPointF, accuracy: cint): cint {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutpageCountProc* = proc(self: QAbstractTextDocumentLayout): cint {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutdocumentSizeProc* = proc(self: QAbstractTextDocumentLayout): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutframeBoundingRectProc* = proc(self: QAbstractTextDocumentLayout, frame: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutblockBoundingRectProc* = proc(self: QAbstractTextDocumentLayout, blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutdocumentChangedProc* = proc(self: QAbstractTextDocumentLayout, fromVal: cint, charsRemoved: cint, charsAdded: cint): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutresizeInlineObjectProc* = proc(self: QAbstractTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutpositionInlineObjectProc* = proc(self: QAbstractTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutdrawInlineObjectProc* = proc(self: QAbstractTextDocumentLayout, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayouteventProc* = proc(self: QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractTextDocumentLayouteventFilterProc* = proc(self: QAbstractTextDocumentLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractTextDocumentLayouttimerEventProc* = proc(self: QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutchildEventProc* = proc(self: QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutcustomEventProc* = proc(self: QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutconnectNotifyProc* = proc(self: QAbstractTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutdisconnectNotifyProc* = proc(self: QAbstractTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractTextDocumentLayoutVTable* = object
  vtbl: cQAbstractTextDocumentLayoutVTable
  metaObject*: QAbstractTextDocumentLayoutmetaObjectProc
  metacast*: QAbstractTextDocumentLayoutmetacastProc
  metacall*: QAbstractTextDocumentLayoutmetacallProc
  draw*: QAbstractTextDocumentLayoutdrawProc
  hitTest*: QAbstractTextDocumentLayouthitTestProc
  pageCount*: QAbstractTextDocumentLayoutpageCountProc
  documentSize*: QAbstractTextDocumentLayoutdocumentSizeProc
  frameBoundingRect*: QAbstractTextDocumentLayoutframeBoundingRectProc
  blockBoundingRect*: QAbstractTextDocumentLayoutblockBoundingRectProc
  documentChanged*: QAbstractTextDocumentLayoutdocumentChangedProc
  resizeInlineObject*: QAbstractTextDocumentLayoutresizeInlineObjectProc
  positionInlineObject*: QAbstractTextDocumentLayoutpositionInlineObjectProc
  drawInlineObject*: QAbstractTextDocumentLayoutdrawInlineObjectProc
  event*: QAbstractTextDocumentLayouteventProc
  eventFilter*: QAbstractTextDocumentLayouteventFilterProc
  timerEvent*: QAbstractTextDocumentLayouttimerEventProc
  childEvent*: QAbstractTextDocumentLayoutchildEventProc
  customEvent*: QAbstractTextDocumentLayoutcustomEventProc
  connectNotify*: QAbstractTextDocumentLayoutconnectNotifyProc
  disconnectNotify*: QAbstractTextDocumentLayoutdisconnectNotifyProc
proc QAbstractTextDocumentLayoutmetaObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTextDocumentLayout_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractTextDocumentLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractTextDocumentLayoutmetacast*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: cstring): pointer =
  fcQAbstractTextDocumentLayout_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractTextDocumentLayoutmetacall*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractTextDocumentLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQAbstractTextDocumentLayout_draw(vtbl: pointer, self: pointer, painter: pointer, context: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: context)
  vtbl[].draw(self, slotval1, slotval2)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_hitTest(vtbl: pointer, self: pointer, point: pointer, accuracy: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qpoint_types.QPointF(h: point)
  let slotval2 = cint(accuracy)
  var virtualReturn = vtbl[].hitTest(self, slotval1, slotval2)
  virtualReturn

proc miqt_exec_callback_cQAbstractTextDocumentLayout_pageCount(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  var virtualReturn = vtbl[].pageCount(self)
  virtualReturn

proc miqt_exec_callback_cQAbstractTextDocumentLayout_documentSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  var virtualReturn = vtbl[].documentSize(self)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractTextDocumentLayout_frameBoundingRect(vtbl: pointer, self: pointer, frame: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qtextobject_types.QTextFrame(h: frame)
  var virtualReturn = vtbl[].frameBoundingRect(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractTextDocumentLayout_blockBoundingRect(vtbl: pointer, self: pointer, blockVal: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)
  var virtualReturn = vtbl[].blockBoundingRect(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractTextDocumentLayout_documentChanged(vtbl: pointer, self: pointer, fromVal: cint, charsRemoved: cint, charsAdded: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = fromVal
  let slotval2 = charsRemoved
  let slotval3 = charsAdded
  vtbl[].documentChanged(self, slotval1, slotval2, slotval3)

proc QAbstractTextDocumentLayoutresizeInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQAbstractTextDocumentLayout_virtualbase_resizeInlineObject(self.h, item.h, posInDocument, format.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_resizeInlineObject(vtbl: pointer, self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item)
  let slotval2 = posInDocument
  let slotval3 = gen_qtextformat_types.QTextFormat(h: format)
  vtbl[].resizeInlineObject(self, slotval1, slotval2, slotval3)

proc QAbstractTextDocumentLayoutpositionInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQAbstractTextDocumentLayout_virtualbase_positionInlineObject(self.h, item.h, posInDocument, format.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_positionInlineObject(vtbl: pointer, self: pointer, item: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item)
  let slotval2 = posInDocument
  let slotval3 = gen_qtextformat_types.QTextFormat(h: format)
  vtbl[].positionInlineObject(self, slotval1, slotval2, slotval3)

proc QAbstractTextDocumentLayoutdrawInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQAbstractTextDocumentLayout_virtualbase_drawInlineObject(self.h, painter.h, rect.h, objectVal.h, posInDocument, format.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_drawInlineObject(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRectF(h: rect)
  let slotval3 = gen_qtextlayout_types.QTextInlineObject(h: objectVal)
  let slotval4 = posInDocument
  let slotval5 = gen_qtextformat_types.QTextFormat(h: format)
  vtbl[].drawInlineObject(self, slotval1, slotval2, slotval3, slotval4, slotval5)

proc QAbstractTextDocumentLayoutevent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractTextDocumentLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractTextDocumentLayouteventFilter*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractTextDocumentLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractTextDocumentLayouttimerEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractTextDocumentLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractTextDocumentLayoutchildEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractTextDocumentLayout_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractTextDocumentLayoutcustomEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractTextDocumentLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractTextDocumentLayoutconnectNotify*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractTextDocumentLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractTextDocumentLayoutdisconnectNotify*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractTextDocumentLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractTextDocumentLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractTextDocumentLayoutVTable](vtbl)
  let self = QAbstractTextDocumentLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout,
    doc: gen_qtextdocument_types.QTextDocument,
    vtbl: ref QAbstractTextDocumentLayoutVTable = nil): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout =
  let vtbl = if vtbl == nil: new QAbstractTextDocumentLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractTextDocumentLayoutVTable, _: ptr cQAbstractTextDocumentLayout) {.cdecl.} =
    let vtbl = cast[ref QAbstractTextDocumentLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractTextDocumentLayout_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractTextDocumentLayout_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractTextDocumentLayout_metacall
  if not isNil(vtbl.draw):
    vtbl[].vtbl.draw = miqt_exec_callback_cQAbstractTextDocumentLayout_draw
  if not isNil(vtbl.hitTest):
    vtbl[].vtbl.hitTest = miqt_exec_callback_cQAbstractTextDocumentLayout_hitTest
  if not isNil(vtbl.pageCount):
    vtbl[].vtbl.pageCount = miqt_exec_callback_cQAbstractTextDocumentLayout_pageCount
  if not isNil(vtbl.documentSize):
    vtbl[].vtbl.documentSize = miqt_exec_callback_cQAbstractTextDocumentLayout_documentSize
  if not isNil(vtbl.frameBoundingRect):
    vtbl[].vtbl.frameBoundingRect = miqt_exec_callback_cQAbstractTextDocumentLayout_frameBoundingRect
  if not isNil(vtbl.blockBoundingRect):
    vtbl[].vtbl.blockBoundingRect = miqt_exec_callback_cQAbstractTextDocumentLayout_blockBoundingRect
  if not isNil(vtbl.documentChanged):
    vtbl[].vtbl.documentChanged = miqt_exec_callback_cQAbstractTextDocumentLayout_documentChanged
  if not isNil(vtbl.resizeInlineObject):
    vtbl[].vtbl.resizeInlineObject = miqt_exec_callback_cQAbstractTextDocumentLayout_resizeInlineObject
  if not isNil(vtbl.positionInlineObject):
    vtbl[].vtbl.positionInlineObject = miqt_exec_callback_cQAbstractTextDocumentLayout_positionInlineObject
  if not isNil(vtbl.drawInlineObject):
    vtbl[].vtbl.drawInlineObject = miqt_exec_callback_cQAbstractTextDocumentLayout_drawInlineObject
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractTextDocumentLayout_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractTextDocumentLayout_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractTextDocumentLayout_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractTextDocumentLayout_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractTextDocumentLayout_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractTextDocumentLayout_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractTextDocumentLayout_disconnectNotify
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout(h: fcQAbstractTextDocumentLayout_new(addr(vtbl[]), doc.h))

proc staticMetaObject*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTextDocumentLayout_staticMetaObject())
proc delete*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout) =
  fcQAbstractTextDocumentLayout_delete(self.h)
proc intrinsicSize*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface, doc: gen_qtextdocument_types.QTextDocument, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQTextObjectInterface_intrinsicSize(self.h, doc.h, posInDocument, format.h))

proc drawObject*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, doc: gen_qtextdocument_types.QTextDocument, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQTextObjectInterface_drawObject(self.h, painter.h, rect.h, doc.h, posInDocument, format.h)

proc operatorAssign*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface, param1: gen_qabstracttextdocumentlayout_types.QTextObjectInterface): void =
  fcQTextObjectInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface) =
  fcQTextObjectInterface_delete(self.h)
proc operatorAssign*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection, param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection): void =
  fcQAbstractTextDocumentLayoutSelection_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection,
    param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection(h: fcQAbstractTextDocumentLayoutSelection_new(param1.h))

proc delete*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection) =
  fcQAbstractTextDocumentLayoutSelection_delete(self.h)
proc operatorAssign*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext, param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void =
  fcQAbstractTextDocumentLayoutPaintContext_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: fcQAbstractTextDocumentLayoutPaintContext_new())

proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext,
    param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: fcQAbstractTextDocumentLayoutPaintContext_new2(param1.h))

proc delete*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext) =
  fcQAbstractTextDocumentLayoutPaintContext_delete(self.h)
