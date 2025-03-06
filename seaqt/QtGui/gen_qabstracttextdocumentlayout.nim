import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
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

proc fcQAbstractTextDocumentLayout_new(doc: pointer): ptr cQAbstractTextDocumentLayout {.importc: "QAbstractTextDocumentLayout_new".}
proc fcQAbstractTextDocumentLayout_metaObject(self: pointer, ): pointer {.importc: "QAbstractTextDocumentLayout_metaObject".}
proc fcQAbstractTextDocumentLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTextDocumentLayout_metacast".}
proc fcQAbstractTextDocumentLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTextDocumentLayout_metacall".}
proc fcQAbstractTextDocumentLayout_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_tr".}
proc fcQAbstractTextDocumentLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_trUtf8".}
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
proc fcQAbstractTextDocumentLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_trUtf82".}
proc fcQAbstractTextDocumentLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTextDocumentLayout_trUtf83".}
proc fcQAbstractTextDocumentLayout_unregisterHandler2(self: pointer, objectType: cint, component: pointer): void {.importc: "QAbstractTextDocumentLayout_unregisterHandler2".}
proc fcQAbstractTextDocumentLayout_update1(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout_update1".}
proc fcQAbstractTextDocumentLayout_connect_update1(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_connect_update1".}
proc fQAbstractTextDocumentLayout_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractTextDocumentLayout_virtualbase_metaObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_metaObject".}
proc fQAbstractTextDocumentLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractTextDocumentLayout_virtualbase_metacast".}
proc fcQAbstractTextDocumentLayout_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_metacast".}
proc fQAbstractTextDocumentLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractTextDocumentLayout_virtualbase_metacall".}
proc fcQAbstractTextDocumentLayout_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_metacall".}
proc fcQAbstractTextDocumentLayout_override_virtual_draw(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_draw".}
proc fcQAbstractTextDocumentLayout_override_virtual_hitTest(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_hitTest".}
proc fcQAbstractTextDocumentLayout_override_virtual_pageCount(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_pageCount".}
proc fcQAbstractTextDocumentLayout_override_virtual_documentSize(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_documentSize".}
proc fcQAbstractTextDocumentLayout_override_virtual_frameBoundingRect(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_frameBoundingRect".}
proc fcQAbstractTextDocumentLayout_override_virtual_blockBoundingRect(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_blockBoundingRect".}
proc fcQAbstractTextDocumentLayout_override_virtual_documentChanged(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_documentChanged".}
proc fQAbstractTextDocumentLayout_virtualbase_resizeInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_resizeInlineObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_resizeInlineObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_resizeInlineObject".}
proc fQAbstractTextDocumentLayout_virtualbase_positionInlineObject(self: pointer, item: pointer, posInDocument: cint, format: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_positionInlineObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_positionInlineObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_positionInlineObject".}
proc fQAbstractTextDocumentLayout_virtualbase_drawInlineObject(self: pointer, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_drawInlineObject".}
proc fcQAbstractTextDocumentLayout_override_virtual_drawInlineObject(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_drawInlineObject".}
proc fQAbstractTextDocumentLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractTextDocumentLayout_virtualbase_event".}
proc fcQAbstractTextDocumentLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_event".}
proc fQAbstractTextDocumentLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractTextDocumentLayout_virtualbase_eventFilter".}
proc fcQAbstractTextDocumentLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_eventFilter".}
proc fQAbstractTextDocumentLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_timerEvent".}
proc fcQAbstractTextDocumentLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_timerEvent".}
proc fQAbstractTextDocumentLayout_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_childEvent".}
proc fcQAbstractTextDocumentLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_childEvent".}
proc fQAbstractTextDocumentLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_customEvent".}
proc fcQAbstractTextDocumentLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_customEvent".}
proc fQAbstractTextDocumentLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_connectNotify".}
proc fcQAbstractTextDocumentLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_connectNotify".}
proc fQAbstractTextDocumentLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTextDocumentLayout_virtualbase_disconnectNotify".}
proc fcQAbstractTextDocumentLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractTextDocumentLayout_override_virtual_disconnectNotify".}
proc fcQAbstractTextDocumentLayout_staticMetaObject(): pointer {.importc: "QAbstractTextDocumentLayout_staticMetaObject".}
proc fcQAbstractTextDocumentLayout_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout_delete".}
proc fcQTextObjectInterface_intrinsicSize(self: pointer, doc: pointer, posInDocument: cint, format: pointer): pointer {.importc: "QTextObjectInterface_intrinsicSize".}
proc fcQTextObjectInterface_drawObject(self: pointer, painter: pointer, rect: pointer, doc: pointer, posInDocument: cint, format: pointer): void {.importc: "QTextObjectInterface_drawObject".}
proc fcQTextObjectInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextObjectInterface_operatorAssign".}
proc fcQTextObjectInterface_delete(self: pointer) {.importc: "QTextObjectInterface_delete".}
proc fcQAbstractTextDocumentLayoutSelection_new(param1: pointer): ptr cQAbstractTextDocumentLayoutSelection {.importc: "QAbstractTextDocumentLayout__Selection_new".}
proc fcQAbstractTextDocumentLayoutSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout__Selection_operatorAssign".}
proc fcQAbstractTextDocumentLayoutSelection_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__Selection_delete".}
proc fcQAbstractTextDocumentLayoutPaintContext_new(): ptr cQAbstractTextDocumentLayoutPaintContext {.importc: "QAbstractTextDocumentLayout__PaintContext_new".}
proc fcQAbstractTextDocumentLayoutPaintContext_new2(param1: pointer): ptr cQAbstractTextDocumentLayoutPaintContext {.importc: "QAbstractTextDocumentLayout__PaintContext_new2".}
proc fcQAbstractTextDocumentLayoutPaintContext_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractTextDocumentLayout__PaintContext_operatorAssign".}
proc fcQAbstractTextDocumentLayoutPaintContext_delete(self: pointer) {.importc: "QAbstractTextDocumentLayout__PaintContext_delete".}


func init*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, h: ptr cQAbstractTextDocumentLayout): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout =
  T(h: h)
proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, doc: gen_qtextdocument_types.QTextDocument): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout.init(fcQAbstractTextDocumentLayout_new(doc.h))

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

proc trUtf8*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, s: cstring): string =
  let v_ms = fcQAbstractTextDocumentLayout_trUtf8(s)
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
proc miqt_exec_callback_QAbstractTextDocumentLayout_update(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QAbstractTextDocumentLayout_updateBlock(slot: int, blockVal: pointer) {.exportc.} =
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
proc miqt_exec_callback_QAbstractTextDocumentLayout_documentSizeChanged(slot: int, newSize: pointer) {.exportc.} =
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
proc miqt_exec_callback_QAbstractTextDocumentLayout_pageCountChanged(slot: int, newPages: cint) {.exportc.} =
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

proc trUtf8*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractTextDocumentLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractTextDocumentLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc unregisterHandler*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, objectType: cint, component: gen_qobject_types.QObject): void =
  fcQAbstractTextDocumentLayout_unregisterHandler2(self.h, objectType, component.h)

proc update*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: gen_qrect_types.QRectF): void =
  fcQAbstractTextDocumentLayout_update1(self.h, param1.h)

type QAbstractTextDocumentLayoutupdate1Slot* = proc(param1: gen_qrect_types.QRectF)
proc miqt_exec_callback_QAbstractTextDocumentLayout_update1(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractTextDocumentLayoutupdate1Slot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: param1)

  nimfunc[](slotval1)

proc onupdate*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutupdate1Slot) =
  var tmp = new QAbstractTextDocumentLayoutupdate1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_connect_update1(self.h, cast[int](addr tmp[]))

proc QAbstractTextDocumentLayoutmetaObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractTextDocumentLayout_virtualbase_metaObject(self.h))

type QAbstractTextDocumentLayoutmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_metaObject(self: ptr cQAbstractTextDocumentLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_metaObject ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractTextDocumentLayoutmetacast*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: cstring): pointer =
  fQAbstractTextDocumentLayout_virtualbase_metacast(self.h, param1)

type QAbstractTextDocumentLayoutmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_metacast(self: ptr cQAbstractTextDocumentLayout, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_metacast ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTextDocumentLayoutmetacall*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractTextDocumentLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractTextDocumentLayoutmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_metacall(self: ptr cQAbstractTextDocumentLayout, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_metacall ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractTextDocumentLayoutdrawProc* = proc(painter: gen_qpainter_types.QPainter, context: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void
proc ondraw*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutdrawProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutdrawProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_draw(self: ptr cQAbstractTextDocumentLayout, slot: int, painter: pointer, context: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_draw ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutdrawProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext(h: context)


  nimfunc[](slotval1, slotval2)
type QAbstractTextDocumentLayouthitTestProc* = proc(point: gen_qpoint_types.QPointF, accuracy: cint): cint
proc onhitTest*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayouthitTestProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayouthitTestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_hitTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_hitTest(self: ptr cQAbstractTextDocumentLayout, slot: int, point: pointer, accuracy: cint): cint {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_hitTest ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayouthitTestProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPointF(h: point)

  let slotval2 = cint(accuracy)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
type QAbstractTextDocumentLayoutpageCountProc* = proc(): cint
proc onpageCount*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutpageCountProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutpageCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_pageCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_pageCount(self: ptr cQAbstractTextDocumentLayout, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_pageCount ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutpageCountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAbstractTextDocumentLayoutdocumentSizeProc* = proc(): gen_qsize_types.QSizeF
proc ondocumentSize*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutdocumentSizeProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutdocumentSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_documentSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_documentSize(self: ptr cQAbstractTextDocumentLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_documentSize ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutdocumentSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QAbstractTextDocumentLayoutframeBoundingRectProc* = proc(frame: gen_qtextobject_types.QTextFrame): gen_qrect_types.QRectF
proc onframeBoundingRect*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutframeBoundingRectProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutframeBoundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_frameBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_frameBoundingRect(self: ptr cQAbstractTextDocumentLayout, slot: int, frame: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_frameBoundingRect ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutframeBoundingRectProc](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextFrame(h: frame)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractTextDocumentLayoutblockBoundingRectProc* = proc(blockVal: gen_qtextobject_types.QTextBlock): gen_qrect_types.QRectF
proc onblockBoundingRect*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutblockBoundingRectProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutblockBoundingRectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_blockBoundingRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_blockBoundingRect(self: ptr cQAbstractTextDocumentLayout, slot: int, blockVal: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_blockBoundingRect ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutblockBoundingRectProc](cast[pointer](slot))
  let slotval1 = gen_qtextobject_types.QTextBlock(h: blockVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractTextDocumentLayoutdocumentChangedProc* = proc(fromVal: cint, charsRemoved: cint, charsAdded: cint): void
proc ondocumentChanged*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutdocumentChangedProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutdocumentChangedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_documentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_documentChanged(self: ptr cQAbstractTextDocumentLayout, slot: int, fromVal: cint, charsRemoved: cint, charsAdded: cint): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_documentChanged ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutdocumentChangedProc](cast[pointer](slot))
  let slotval1 = fromVal

  let slotval2 = charsRemoved

  let slotval3 = charsAdded


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractTextDocumentLayoutresizeInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fQAbstractTextDocumentLayout_virtualbase_resizeInlineObject(self.h, item.h, posInDocument, format.h)

type QAbstractTextDocumentLayoutresizeInlineObjectProc* = proc(item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void
proc onresizeInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutresizeInlineObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutresizeInlineObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_resizeInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_resizeInlineObject(self: ptr cQAbstractTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_resizeInlineObject ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutresizeInlineObjectProc](cast[pointer](slot))
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat_types.QTextFormat(h: format)


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractTextDocumentLayoutpositionInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fQAbstractTextDocumentLayout_virtualbase_positionInlineObject(self.h, item.h, posInDocument, format.h)

type QAbstractTextDocumentLayoutpositionInlineObjectProc* = proc(item: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void
proc onpositionInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutpositionInlineObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutpositionInlineObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_positionInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_positionInlineObject(self: ptr cQAbstractTextDocumentLayout, slot: int, item: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_positionInlineObject ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutpositionInlineObjectProc](cast[pointer](slot))
  let slotval1 = gen_qtextlayout_types.QTextInlineObject(h: item)

  let slotval2 = posInDocument

  let slotval3 = gen_qtextformat_types.QTextFormat(h: format)


  nimfunc[](slotval1, slotval2, slotval3)
proc QAbstractTextDocumentLayoutdrawInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fQAbstractTextDocumentLayout_virtualbase_drawInlineObject(self.h, painter.h, rect.h, objectVal.h, posInDocument, format.h)

type QAbstractTextDocumentLayoutdrawInlineObjectProc* = proc(painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, objectVal: gen_qtextlayout_types.QTextInlineObject, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void
proc ondrawInlineObject*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutdrawInlineObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutdrawInlineObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_drawInlineObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_drawInlineObject(self: ptr cQAbstractTextDocumentLayout, slot: int, painter: pointer, rect: pointer, objectVal: pointer, posInDocument: cint, format: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_drawInlineObject ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutdrawInlineObjectProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)

  let slotval2 = gen_qrect_types.QRectF(h: rect)

  let slotval3 = gen_qtextlayout_types.QTextInlineObject(h: objectVal)

  let slotval4 = posInDocument

  let slotval5 = gen_qtextformat_types.QTextFormat(h: format)


  nimfunc[](slotval1, slotval2, slotval3, slotval4, slotval5)
proc QAbstractTextDocumentLayoutevent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractTextDocumentLayout_virtualbase_event(self.h, event.h)

type QAbstractTextDocumentLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayouteventProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_event(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_event ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractTextDocumentLayouteventFilter*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractTextDocumentLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractTextDocumentLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_eventFilter(self: ptr cQAbstractTextDocumentLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractTextDocumentLayouttimerEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractTextDocumentLayout_virtualbase_timerEvent(self.h, event.h)

type QAbstractTextDocumentLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_timerEvent(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTextDocumentLayoutchildEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractTextDocumentLayout_virtualbase_childEvent(self.h, event.h)

type QAbstractTextDocumentLayoutchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_childEvent(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_childEvent ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTextDocumentLayoutcustomEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractTextDocumentLayout_virtualbase_customEvent(self.h, event.h)

type QAbstractTextDocumentLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_customEvent(self: ptr cQAbstractTextDocumentLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_customEvent ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractTextDocumentLayoutconnectNotify*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractTextDocumentLayout_virtualbase_connectNotify(self.h, signal.h)

type QAbstractTextDocumentLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_connectNotify(self: ptr cQAbstractTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractTextDocumentLayoutdisconnectNotify*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractTextDocumentLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractTextDocumentLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout, slot: QAbstractTextDocumentLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractTextDocumentLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTextDocumentLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTextDocumentLayout_disconnectNotify(self: ptr cQAbstractTextDocumentLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTextDocumentLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractTextDocumentLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractTextDocumentLayout_staticMetaObject())
proc delete*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayout) =
  fcQAbstractTextDocumentLayout_delete(self.h)

func init*(T: type gen_qabstracttextdocumentlayout_types.QTextObjectInterface, h: ptr cQTextObjectInterface): gen_qabstracttextdocumentlayout_types.QTextObjectInterface =
  T(h: h)
proc intrinsicSize*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface, doc: gen_qtextdocument_types.QTextDocument, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQTextObjectInterface_intrinsicSize(self.h, doc.h, posInDocument, format.h))

proc drawObject*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRectF, doc: gen_qtextdocument_types.QTextDocument, posInDocument: cint, format: gen_qtextformat_types.QTextFormat): void =
  fcQTextObjectInterface_drawObject(self.h, painter.h, rect.h, doc.h, posInDocument, format.h)

proc operatorAssign*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface, param1: gen_qabstracttextdocumentlayout_types.QTextObjectInterface): void =
  fcQTextObjectInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qabstracttextdocumentlayout_types.QTextObjectInterface) =
  fcQTextObjectInterface_delete(self.h)

func init*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection, h: ptr cQAbstractTextDocumentLayoutSelection): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection =
  T(h: h)
proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection, param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection.init(fcQAbstractTextDocumentLayoutSelection_new(param1.h))

proc operatorAssign*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection, param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection): void =
  fcQAbstractTextDocumentLayoutSelection_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutSelection) =
  fcQAbstractTextDocumentLayoutSelection_delete(self.h)

func init*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext, h: ptr cQAbstractTextDocumentLayoutPaintContext): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext =
  T(h: h)
proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext, ): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext.init(fcQAbstractTextDocumentLayoutPaintContext_new())

proc create*(T: type gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext, param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext =
  gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext.init(fcQAbstractTextDocumentLayoutPaintContext_new2(param1.h))

proc operatorAssign*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext, param1: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext): void =
  fcQAbstractTextDocumentLayoutPaintContext_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qabstracttextdocumentlayout_types.QAbstractTextDocumentLayoutPaintContext) =
  fcQAbstractTextDocumentLayoutPaintContext_delete(self.h)
