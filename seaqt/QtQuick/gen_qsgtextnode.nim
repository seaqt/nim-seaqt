import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qsgtextnode.cpp", QtQuickCFlags).}


type QSGTextNodeTextStyleEnum* = distinct uint8
template Normal*(_: type QSGTextNodeTextStyleEnum): untyped = 0
template Outline*(_: type QSGTextNodeTextStyleEnum): untyped = 1
template Raised*(_: type QSGTextNodeTextStyleEnum): untyped = 2
template Sunken*(_: type QSGTextNodeTextStyleEnum): untyped = 3


type QSGTextNodeRenderTypeEnum* = distinct uint8
template QtRendering*(_: type QSGTextNodeRenderTypeEnum): untyped = 0
template NativeRendering*(_: type QSGTextNodeRenderTypeEnum): untyped = 1
template CurveRendering*(_: type QSGTextNodeRenderTypeEnum): untyped = 2


import ./gen_qsgtextnode_types
export gen_qsgtextnode_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qtextdocument_types,
  ../QtGui/gen_qtextlayout_types,
  ./gen_qsgnode
export
  gen_qpoint_types,
  gen_qrect_types,
  gen_qcolor_types,
  gen_qtextdocument_types,
  gen_qtextlayout_types,
  gen_qsgnode

type cQSGTextNode*{.exportc: "QSGTextNode", incompleteStruct.} = object

proc fcQSGTextNode_setColor(self: pointer, color: pointer): void {.importc: "QSGTextNode_setColor".}
proc fcQSGTextNode_color(self: pointer): pointer {.importc: "QSGTextNode_color".}
proc fcQSGTextNode_setTextStyle(self: pointer, textStyle: cint): void {.importc: "QSGTextNode_setTextStyle".}
proc fcQSGTextNode_textStyle(self: pointer): cint {.importc: "QSGTextNode_textStyle".}
proc fcQSGTextNode_setStyleColor(self: pointer, styleColor: pointer): void {.importc: "QSGTextNode_setStyleColor".}
proc fcQSGTextNode_styleColor(self: pointer): pointer {.importc: "QSGTextNode_styleColor".}
proc fcQSGTextNode_setLinkColor(self: pointer, linkColor: pointer): void {.importc: "QSGTextNode_setLinkColor".}
proc fcQSGTextNode_linkColor(self: pointer): pointer {.importc: "QSGTextNode_linkColor".}
proc fcQSGTextNode_setSelectionColor(self: pointer, selectionColor: pointer): void {.importc: "QSGTextNode_setSelectionColor".}
proc fcQSGTextNode_selectionColor(self: pointer): pointer {.importc: "QSGTextNode_selectionColor".}
proc fcQSGTextNode_setSelectionTextColor(self: pointer, selectionTextColor: pointer): void {.importc: "QSGTextNode_setSelectionTextColor".}
proc fcQSGTextNode_selectionTextColor(self: pointer): pointer {.importc: "QSGTextNode_selectionTextColor".}
proc fcQSGTextNode_setRenderType(self: pointer, renderType: cint): void {.importc: "QSGTextNode_setRenderType".}
proc fcQSGTextNode_renderType(self: pointer): cint {.importc: "QSGTextNode_renderType".}
proc fcQSGTextNode_setRenderTypeQuality(self: pointer, renderTypeQuality: cint): void {.importc: "QSGTextNode_setRenderTypeQuality".}
proc fcQSGTextNode_renderTypeQuality(self: pointer): cint {.importc: "QSGTextNode_renderTypeQuality".}
proc fcQSGTextNode_setFiltering(self: pointer, filtering: cint): void {.importc: "QSGTextNode_setFiltering".}
proc fcQSGTextNode_filtering(self: pointer): cint {.importc: "QSGTextNode_filtering".}
proc fcQSGTextNode_clear(self: pointer): void {.importc: "QSGTextNode_clear".}
proc fcQSGTextNode_setViewport(self: pointer, viewport: pointer): void {.importc: "QSGTextNode_setViewport".}
proc fcQSGTextNode_viewport(self: pointer): pointer {.importc: "QSGTextNode_viewport".}
proc fcQSGTextNode_addTextLayoutPositionLayout(self: pointer, position: pointer, layout: pointer): void {.importc: "QSGTextNode_addTextLayout_position_layout".}
proc fcQSGTextNode_addTextDocumentPositionDocument(self: pointer, position: pointer, document: pointer): void {.importc: "QSGTextNode_addTextDocument_position_document".}
proc fcQSGTextNode_addTextLayoutPositionLayoutSelectionStart(self: pointer, position: pointer, layout: pointer, selectionStart: cint): void {.importc: "QSGTextNode_addTextLayout_position_layout_selectionStart".}
proc fcQSGTextNode_addTextLayoutPositionLayoutSelectionStartSelectionCount(self: pointer, position: pointer, layout: pointer, selectionStart: cint, selectionCount: cint): void {.importc: "QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount".}
proc fcQSGTextNode_addTextLayoutPositionLayoutSelectionStartSelectionCountLineStart(self: pointer, position: pointer, layout: pointer, selectionStart: cint, selectionCount: cint, lineStart: cint): void {.importc: "QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount_lineStart".}
proc fcQSGTextNode_addTextLayoutPositionLayoutSelectionStartSelectionCountLineStartLineCount(self: pointer, position: pointer, layout: pointer, selectionStart: cint, selectionCount: cint, lineStart: cint, lineCount: cint): void {.importc: "QSGTextNode_addTextLayout_position_layout_selectionStart_selectionCount_lineStart_lineCount".}
proc fcQSGTextNode_addTextDocumentPositionDocumentSelectionStart(self: pointer, position: pointer, document: pointer, selectionStart: cint): void {.importc: "QSGTextNode_addTextDocument_position_document_selectionStart".}
proc fcQSGTextNode_addTextDocumentPositionDocumentSelectionStartSelectionCount(self: pointer, position: pointer, document: pointer, selectionStart: cint, selectionCount: cint): void {.importc: "QSGTextNode_addTextDocument_position_document_selectionStart_selectionCount".}

proc setColor*(self: gen_qsgtextnode_types.QSGTextNode, color: gen_qcolor_types.QColor): void =
  fcQSGTextNode_setColor(self.h, color.h)

proc color*(self: gen_qsgtextnode_types.QSGTextNode): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGTextNode_color(self.h), owned: true)

proc setTextStyle*(self: gen_qsgtextnode_types.QSGTextNode, textStyle: cint): void =
  fcQSGTextNode_setTextStyle(self.h, cint(textStyle))

proc textStyle*(self: gen_qsgtextnode_types.QSGTextNode): cint =
  cint(fcQSGTextNode_textStyle(self.h))

proc setStyleColor*(self: gen_qsgtextnode_types.QSGTextNode, styleColor: gen_qcolor_types.QColor): void =
  fcQSGTextNode_setStyleColor(self.h, styleColor.h)

proc styleColor*(self: gen_qsgtextnode_types.QSGTextNode): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGTextNode_styleColor(self.h), owned: true)

proc setLinkColor*(self: gen_qsgtextnode_types.QSGTextNode, linkColor: gen_qcolor_types.QColor): void =
  fcQSGTextNode_setLinkColor(self.h, linkColor.h)

proc linkColor*(self: gen_qsgtextnode_types.QSGTextNode): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGTextNode_linkColor(self.h), owned: true)

proc setSelectionColor*(self: gen_qsgtextnode_types.QSGTextNode, selectionColor: gen_qcolor_types.QColor): void =
  fcQSGTextNode_setSelectionColor(self.h, selectionColor.h)

proc selectionColor*(self: gen_qsgtextnode_types.QSGTextNode): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGTextNode_selectionColor(self.h), owned: true)

proc setSelectionTextColor*(self: gen_qsgtextnode_types.QSGTextNode, selectionTextColor: gen_qcolor_types.QColor): void =
  fcQSGTextNode_setSelectionTextColor(self.h, selectionTextColor.h)

proc selectionTextColor*(self: gen_qsgtextnode_types.QSGTextNode): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGTextNode_selectionTextColor(self.h), owned: true)

proc setRenderType*(self: gen_qsgtextnode_types.QSGTextNode, renderType: cint): void =
  fcQSGTextNode_setRenderType(self.h, cint(renderType))

proc renderType*(self: gen_qsgtextnode_types.QSGTextNode): cint =
  cint(fcQSGTextNode_renderType(self.h))

proc setRenderTypeQuality*(self: gen_qsgtextnode_types.QSGTextNode, renderTypeQuality: cint): void =
  fcQSGTextNode_setRenderTypeQuality(self.h, renderTypeQuality)

proc renderTypeQuality*(self: gen_qsgtextnode_types.QSGTextNode): cint =
  fcQSGTextNode_renderTypeQuality(self.h)

proc setFiltering*(self: gen_qsgtextnode_types.QSGTextNode, filtering: cint): void =
  fcQSGTextNode_setFiltering(self.h, cint(filtering))

proc filtering*(self: gen_qsgtextnode_types.QSGTextNode): cint =
  cint(fcQSGTextNode_filtering(self.h))

proc clear*(self: gen_qsgtextnode_types.QSGTextNode): void =
  fcQSGTextNode_clear(self.h)

proc setViewport*(self: gen_qsgtextnode_types.QSGTextNode, viewport: gen_qrect_types.QRectF): void =
  fcQSGTextNode_setViewport(self.h, viewport.h)

proc viewport*(self: gen_qsgtextnode_types.QSGTextNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGTextNode_viewport(self.h), owned: true)

proc addTextLayout*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, layout: gen_qtextlayout_types.QTextLayout): void =
  fcQSGTextNode_addTextLayoutPositionLayout(self.h, position.h, layout.h)

proc addTextDocument*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, document: gen_qtextdocument_types.QTextDocument): void =
  fcQSGTextNode_addTextDocumentPositionDocument(self.h, position.h, document.h)

proc addTextLayout*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, layout: gen_qtextlayout_types.QTextLayout, selectionStart: cint): void =
  fcQSGTextNode_addTextLayoutPositionLayoutSelectionStart(self.h, position.h, layout.h, selectionStart)

proc addTextLayout*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, layout: gen_qtextlayout_types.QTextLayout, selectionStart: cint, selectionCount: cint): void =
  fcQSGTextNode_addTextLayoutPositionLayoutSelectionStartSelectionCount(self.h, position.h, layout.h, selectionStart, selectionCount)

proc addTextLayout*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, layout: gen_qtextlayout_types.QTextLayout, selectionStart: cint, selectionCount: cint, lineStart: cint): void =
  fcQSGTextNode_addTextLayoutPositionLayoutSelectionStartSelectionCountLineStart(self.h, position.h, layout.h, selectionStart, selectionCount, lineStart)

proc addTextLayout*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, layout: gen_qtextlayout_types.QTextLayout, selectionStart: cint, selectionCount: cint, lineStart: cint, lineCount: cint): void =
  fcQSGTextNode_addTextLayoutPositionLayoutSelectionStartSelectionCountLineStartLineCount(self.h, position.h, layout.h, selectionStart, selectionCount, lineStart, lineCount)

proc addTextDocument*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, document: gen_qtextdocument_types.QTextDocument, selectionStart: cint): void =
  fcQSGTextNode_addTextDocumentPositionDocumentSelectionStart(self.h, position.h, document.h, selectionStart)

proc addTextDocument*(self: gen_qsgtextnode_types.QSGTextNode, position: gen_qpoint_types.QPointF, document: gen_qtextdocument_types.QTextDocument, selectionStart: cint, selectionCount: cint): void =
  fcQSGTextNode_addTextDocumentPositionDocumentSelectionStartSelectionCount(self.h, position.h, document.h, selectionStart, selectionCount)

