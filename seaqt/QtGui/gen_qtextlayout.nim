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
{.compile("gen_qtextlayout.cpp", cflags).}


type QTextLayoutCursorModeEnum* = distinct cint
template SkipCharacters*(_: type QTextLayoutCursorModeEnum): untyped = 0
template SkipWords*(_: type QTextLayoutCursorModeEnum): untyped = 1


type QTextLineEdgeEnum* = distinct cint
template Leading*(_: type QTextLineEdgeEnum): untyped = 0
template Trailing*(_: type QTextLineEdgeEnum): untyped = 1


type QTextLineCursorPositionEnum* = distinct cint
template CursorBetweenCharacters*(_: type QTextLineCursorPositionEnum): untyped = 0
template CursorOnCharacter*(_: type QTextLineCursorPositionEnum): untyped = 1


import ./gen_qtextlayout_types
export gen_qtextlayout_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ./gen_qfont_types,
  ./gen_qglyphrun_types,
  ./gen_qpaintdevice_types,
  ./gen_qpainter_types,
  ./gen_qrawfont_types,
  ./gen_qtextformat_types,
  ./gen_qtextobject_types,
  ./gen_qtextoption_types
export
  gen_qpoint_types,
  gen_qrect_types,
  gen_qfont_types,
  gen_qglyphrun_types,
  gen_qpaintdevice_types,
  gen_qpainter_types,
  gen_qrawfont_types,
  gen_qtextformat_types,
  gen_qtextobject_types,
  gen_qtextoption_types

type cQTextInlineObject*{.exportc: "QTextInlineObject", incompleteStruct.} = object
type cQTextLayout*{.exportc: "QTextLayout", incompleteStruct.} = object
type cQTextLine*{.exportc: "QTextLine", incompleteStruct.} = object
type cQTextLayoutFormatRange*{.exportc: "QTextLayout__FormatRange", incompleteStruct.} = object

proc fcQTextInlineObject_new(): ptr cQTextInlineObject {.importc: "QTextInlineObject_new".}
proc fcQTextInlineObject_isValid(self: pointer, ): bool {.importc: "QTextInlineObject_isValid".}
proc fcQTextInlineObject_rect(self: pointer, ): pointer {.importc: "QTextInlineObject_rect".}
proc fcQTextInlineObject_width(self: pointer, ): float64 {.importc: "QTextInlineObject_width".}
proc fcQTextInlineObject_ascent(self: pointer, ): float64 {.importc: "QTextInlineObject_ascent".}
proc fcQTextInlineObject_descent(self: pointer, ): float64 {.importc: "QTextInlineObject_descent".}
proc fcQTextInlineObject_height(self: pointer, ): float64 {.importc: "QTextInlineObject_height".}
proc fcQTextInlineObject_textDirection(self: pointer, ): cint {.importc: "QTextInlineObject_textDirection".}
proc fcQTextInlineObject_setWidth(self: pointer, w: float64): void {.importc: "QTextInlineObject_setWidth".}
proc fcQTextInlineObject_setAscent(self: pointer, a: float64): void {.importc: "QTextInlineObject_setAscent".}
proc fcQTextInlineObject_setDescent(self: pointer, d: float64): void {.importc: "QTextInlineObject_setDescent".}
proc fcQTextInlineObject_textPosition(self: pointer, ): cint {.importc: "QTextInlineObject_textPosition".}
proc fcQTextInlineObject_formatIndex(self: pointer, ): cint {.importc: "QTextInlineObject_formatIndex".}
proc fcQTextInlineObject_format(self: pointer, ): pointer {.importc: "QTextInlineObject_format".}
proc fcQTextInlineObject_delete(self: pointer) {.importc: "QTextInlineObject_delete".}
proc fcQTextLayout_new(): ptr cQTextLayout {.importc: "QTextLayout_new".}
proc fcQTextLayout_new2(text: struct_miqt_string): ptr cQTextLayout {.importc: "QTextLayout_new2".}
proc fcQTextLayout_new3(text: struct_miqt_string, font: pointer): ptr cQTextLayout {.importc: "QTextLayout_new3".}
proc fcQTextLayout_new4(b: pointer): ptr cQTextLayout {.importc: "QTextLayout_new4".}
proc fcQTextLayout_new5(text: struct_miqt_string, font: pointer, paintdevice: pointer): ptr cQTextLayout {.importc: "QTextLayout_new5".}
proc fcQTextLayout_setFont(self: pointer, f: pointer): void {.importc: "QTextLayout_setFont".}
proc fcQTextLayout_font(self: pointer, ): pointer {.importc: "QTextLayout_font".}
proc fcQTextLayout_setRawFont(self: pointer, rawFont: pointer): void {.importc: "QTextLayout_setRawFont".}
proc fcQTextLayout_setText(self: pointer, string: struct_miqt_string): void {.importc: "QTextLayout_setText".}
proc fcQTextLayout_text(self: pointer, ): struct_miqt_string {.importc: "QTextLayout_text".}
proc fcQTextLayout_setTextOption(self: pointer, option: pointer): void {.importc: "QTextLayout_setTextOption".}
proc fcQTextLayout_textOption(self: pointer, ): pointer {.importc: "QTextLayout_textOption".}
proc fcQTextLayout_setPreeditArea(self: pointer, position: cint, text: struct_miqt_string): void {.importc: "QTextLayout_setPreeditArea".}
proc fcQTextLayout_preeditAreaPosition(self: pointer, ): cint {.importc: "QTextLayout_preeditAreaPosition".}
proc fcQTextLayout_preeditAreaText(self: pointer, ): struct_miqt_string {.importc: "QTextLayout_preeditAreaText".}
proc fcQTextLayout_setAdditionalFormats(self: pointer, overrides: struct_miqt_array): void {.importc: "QTextLayout_setAdditionalFormats".}
proc fcQTextLayout_additionalFormats(self: pointer, ): struct_miqt_array {.importc: "QTextLayout_additionalFormats".}
proc fcQTextLayout_clearAdditionalFormats(self: pointer, ): void {.importc: "QTextLayout_clearAdditionalFormats".}
proc fcQTextLayout_setFormats(self: pointer, overrides: struct_miqt_array): void {.importc: "QTextLayout_setFormats".}
proc fcQTextLayout_formats(self: pointer, ): struct_miqt_array {.importc: "QTextLayout_formats".}
proc fcQTextLayout_clearFormats(self: pointer, ): void {.importc: "QTextLayout_clearFormats".}
proc fcQTextLayout_setCacheEnabled(self: pointer, enable: bool): void {.importc: "QTextLayout_setCacheEnabled".}
proc fcQTextLayout_cacheEnabled(self: pointer, ): bool {.importc: "QTextLayout_cacheEnabled".}
proc fcQTextLayout_setCursorMoveStyle(self: pointer, style: cint): void {.importc: "QTextLayout_setCursorMoveStyle".}
proc fcQTextLayout_cursorMoveStyle(self: pointer, ): cint {.importc: "QTextLayout_cursorMoveStyle".}
proc fcQTextLayout_beginLayout(self: pointer, ): void {.importc: "QTextLayout_beginLayout".}
proc fcQTextLayout_endLayout(self: pointer, ): void {.importc: "QTextLayout_endLayout".}
proc fcQTextLayout_clearLayout(self: pointer, ): void {.importc: "QTextLayout_clearLayout".}
proc fcQTextLayout_createLine(self: pointer, ): pointer {.importc: "QTextLayout_createLine".}
proc fcQTextLayout_lineCount(self: pointer, ): cint {.importc: "QTextLayout_lineCount".}
proc fcQTextLayout_lineAt(self: pointer, i: cint): pointer {.importc: "QTextLayout_lineAt".}
proc fcQTextLayout_lineForTextPosition(self: pointer, pos: cint): pointer {.importc: "QTextLayout_lineForTextPosition".}
proc fcQTextLayout_isValidCursorPosition(self: pointer, pos: cint): bool {.importc: "QTextLayout_isValidCursorPosition".}
proc fcQTextLayout_nextCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_nextCursorPosition".}
proc fcQTextLayout_previousCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_previousCursorPosition".}
proc fcQTextLayout_leftCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_leftCursorPosition".}
proc fcQTextLayout_rightCursorPosition(self: pointer, oldPos: cint): cint {.importc: "QTextLayout_rightCursorPosition".}
proc fcQTextLayout_draw(self: pointer, p: pointer, pos: pointer): void {.importc: "QTextLayout_draw".}
proc fcQTextLayout_drawCursor(self: pointer, p: pointer, pos: pointer, cursorPosition: cint): void {.importc: "QTextLayout_drawCursor".}
proc fcQTextLayout_drawCursor2(self: pointer, p: pointer, pos: pointer, cursorPosition: cint, width: cint): void {.importc: "QTextLayout_drawCursor2".}
proc fcQTextLayout_position(self: pointer, ): pointer {.importc: "QTextLayout_position".}
proc fcQTextLayout_setPosition(self: pointer, p: pointer): void {.importc: "QTextLayout_setPosition".}
proc fcQTextLayout_boundingRect(self: pointer, ): pointer {.importc: "QTextLayout_boundingRect".}
proc fcQTextLayout_minimumWidth(self: pointer, ): float64 {.importc: "QTextLayout_minimumWidth".}
proc fcQTextLayout_maximumWidth(self: pointer, ): float64 {.importc: "QTextLayout_maximumWidth".}
proc fcQTextLayout_glyphRuns(self: pointer, ): struct_miqt_array {.importc: "QTextLayout_glyphRuns".}
proc fcQTextLayout_setFlags(self: pointer, flags: cint): void {.importc: "QTextLayout_setFlags".}
proc fcQTextLayout_nextCursorPosition2(self: pointer, oldPos: cint, mode: cint): cint {.importc: "QTextLayout_nextCursorPosition2".}
proc fcQTextLayout_previousCursorPosition2(self: pointer, oldPos: cint, mode: cint): cint {.importc: "QTextLayout_previousCursorPosition2".}
proc fcQTextLayout_draw3(self: pointer, p: pointer, pos: pointer, selections: struct_miqt_array): void {.importc: "QTextLayout_draw3".}
proc fcQTextLayout_draw4(self: pointer, p: pointer, pos: pointer, selections: struct_miqt_array, clip: pointer): void {.importc: "QTextLayout_draw4".}
proc fcQTextLayout_glyphRuns1(self: pointer, fromVal: cint): struct_miqt_array {.importc: "QTextLayout_glyphRuns1".}
proc fcQTextLayout_glyphRuns2(self: pointer, fromVal: cint, length: cint): struct_miqt_array {.importc: "QTextLayout_glyphRuns2".}
proc fcQTextLayout_delete(self: pointer) {.importc: "QTextLayout_delete".}
proc fcQTextLine_new(): ptr cQTextLine {.importc: "QTextLine_new".}
proc fcQTextLine_isValid(self: pointer, ): bool {.importc: "QTextLine_isValid".}
proc fcQTextLine_rect(self: pointer, ): pointer {.importc: "QTextLine_rect".}
proc fcQTextLine_x(self: pointer, ): float64 {.importc: "QTextLine_x".}
proc fcQTextLine_y(self: pointer, ): float64 {.importc: "QTextLine_y".}
proc fcQTextLine_width(self: pointer, ): float64 {.importc: "QTextLine_width".}
proc fcQTextLine_ascent(self: pointer, ): float64 {.importc: "QTextLine_ascent".}
proc fcQTextLine_descent(self: pointer, ): float64 {.importc: "QTextLine_descent".}
proc fcQTextLine_height(self: pointer, ): float64 {.importc: "QTextLine_height".}
proc fcQTextLine_leading(self: pointer, ): float64 {.importc: "QTextLine_leading".}
proc fcQTextLine_setLeadingIncluded(self: pointer, included: bool): void {.importc: "QTextLine_setLeadingIncluded".}
proc fcQTextLine_leadingIncluded(self: pointer, ): bool {.importc: "QTextLine_leadingIncluded".}
proc fcQTextLine_naturalTextWidth(self: pointer, ): float64 {.importc: "QTextLine_naturalTextWidth".}
proc fcQTextLine_horizontalAdvance(self: pointer, ): float64 {.importc: "QTextLine_horizontalAdvance".}
proc fcQTextLine_naturalTextRect(self: pointer, ): pointer {.importc: "QTextLine_naturalTextRect".}
proc fcQTextLine_cursorToX(self: pointer, cursorPos: ptr cint): float64 {.importc: "QTextLine_cursorToX".}
proc fcQTextLine_cursorToXWithCursorPos(self: pointer, cursorPos: cint): float64 {.importc: "QTextLine_cursorToXWithCursorPos".}
proc fcQTextLine_xToCursor(self: pointer, x: float64): cint {.importc: "QTextLine_xToCursor".}
proc fcQTextLine_setLineWidth(self: pointer, width: float64): void {.importc: "QTextLine_setLineWidth".}
proc fcQTextLine_setNumColumns(self: pointer, columns: cint): void {.importc: "QTextLine_setNumColumns".}
proc fcQTextLine_setNumColumns2(self: pointer, columns: cint, alignmentWidth: float64): void {.importc: "QTextLine_setNumColumns2".}
proc fcQTextLine_setPosition(self: pointer, pos: pointer): void {.importc: "QTextLine_setPosition".}
proc fcQTextLine_position(self: pointer, ): pointer {.importc: "QTextLine_position".}
proc fcQTextLine_textStart(self: pointer, ): cint {.importc: "QTextLine_textStart".}
proc fcQTextLine_textLength(self: pointer, ): cint {.importc: "QTextLine_textLength".}
proc fcQTextLine_lineNumber(self: pointer, ): cint {.importc: "QTextLine_lineNumber".}
proc fcQTextLine_draw(self: pointer, p: pointer, point: pointer): void {.importc: "QTextLine_draw".}
proc fcQTextLine_glyphRuns(self: pointer, ): struct_miqt_array {.importc: "QTextLine_glyphRuns".}
proc fcQTextLine_cursorToX2(self: pointer, cursorPos: ptr cint, edge: cint): float64 {.importc: "QTextLine_cursorToX2".}
proc fcQTextLine_cursorToX22(self: pointer, cursorPos: cint, edge: cint): float64 {.importc: "QTextLine_cursorToX22".}
proc fcQTextLine_xToCursor2(self: pointer, x: float64, param2: cint): cint {.importc: "QTextLine_xToCursor2".}
proc fcQTextLine_draw3(self: pointer, p: pointer, point: pointer, selection: pointer): void {.importc: "QTextLine_draw3".}
proc fcQTextLine_glyphRuns1(self: pointer, fromVal: cint): struct_miqt_array {.importc: "QTextLine_glyphRuns1".}
proc fcQTextLine_glyphRuns2(self: pointer, fromVal: cint, length: cint): struct_miqt_array {.importc: "QTextLine_glyphRuns2".}
proc fcQTextLine_delete(self: pointer) {.importc: "QTextLine_delete".}
proc fcQTextLayoutFormatRange_delete(self: pointer) {.importc: "QTextLayout__FormatRange_delete".}


func init*(T: type gen_qtextlayout_types.QTextInlineObject, h: ptr cQTextInlineObject): gen_qtextlayout_types.QTextInlineObject =
  T(h: h)
proc create*(T: type gen_qtextlayout_types.QTextInlineObject, ): gen_qtextlayout_types.QTextInlineObject =
  gen_qtextlayout_types.QTextInlineObject.init(fcQTextInlineObject_new())

proc isValid*(self: gen_qtextlayout_types.QTextInlineObject, ): bool =
  fcQTextInlineObject_isValid(self.h)

proc rect*(self: gen_qtextlayout_types.QTextInlineObject, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTextInlineObject_rect(self.h))

proc width*(self: gen_qtextlayout_types.QTextInlineObject, ): float64 =
  fcQTextInlineObject_width(self.h)

proc ascent*(self: gen_qtextlayout_types.QTextInlineObject, ): float64 =
  fcQTextInlineObject_ascent(self.h)

proc descent*(self: gen_qtextlayout_types.QTextInlineObject, ): float64 =
  fcQTextInlineObject_descent(self.h)

proc height*(self: gen_qtextlayout_types.QTextInlineObject, ): float64 =
  fcQTextInlineObject_height(self.h)

proc textDirection*(self: gen_qtextlayout_types.QTextInlineObject, ): cint =
  cint(fcQTextInlineObject_textDirection(self.h))

proc setWidth*(self: gen_qtextlayout_types.QTextInlineObject, w: float64): void =
  fcQTextInlineObject_setWidth(self.h, w)

proc setAscent*(self: gen_qtextlayout_types.QTextInlineObject, a: float64): void =
  fcQTextInlineObject_setAscent(self.h, a)

proc setDescent*(self: gen_qtextlayout_types.QTextInlineObject, d: float64): void =
  fcQTextInlineObject_setDescent(self.h, d)

proc textPosition*(self: gen_qtextlayout_types.QTextInlineObject, ): cint =
  fcQTextInlineObject_textPosition(self.h)

proc formatIndex*(self: gen_qtextlayout_types.QTextInlineObject, ): cint =
  fcQTextInlineObject_formatIndex(self.h)

proc format*(self: gen_qtextlayout_types.QTextInlineObject, ): gen_qtextformat_types.QTextFormat =
  gen_qtextformat_types.QTextFormat(h: fcQTextInlineObject_format(self.h))

proc delete*(self: gen_qtextlayout_types.QTextInlineObject) =
  fcQTextInlineObject_delete(self.h)

func init*(T: type gen_qtextlayout_types.QTextLayout, h: ptr cQTextLayout): gen_qtextlayout_types.QTextLayout =
  T(h: h)
proc create*(T: type gen_qtextlayout_types.QTextLayout, ): gen_qtextlayout_types.QTextLayout =
  gen_qtextlayout_types.QTextLayout.init(fcQTextLayout_new())

proc create*(T: type gen_qtextlayout_types.QTextLayout, text: string): gen_qtextlayout_types.QTextLayout =
  gen_qtextlayout_types.QTextLayout.init(fcQTextLayout_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qtextlayout_types.QTextLayout, text: string, font: gen_qfont_types.QFont): gen_qtextlayout_types.QTextLayout =
  gen_qtextlayout_types.QTextLayout.init(fcQTextLayout_new3(struct_miqt_string(data: text, len: csize_t(len(text))), font.h))

proc create*(T: type gen_qtextlayout_types.QTextLayout, b: gen_qtextobject_types.QTextBlock): gen_qtextlayout_types.QTextLayout =
  gen_qtextlayout_types.QTextLayout.init(fcQTextLayout_new4(b.h))

proc create*(T: type gen_qtextlayout_types.QTextLayout, text: string, font: gen_qfont_types.QFont, paintdevice: gen_qpaintdevice_types.QPaintDevice): gen_qtextlayout_types.QTextLayout =
  gen_qtextlayout_types.QTextLayout.init(fcQTextLayout_new5(struct_miqt_string(data: text, len: csize_t(len(text))), font.h, paintdevice.h))

proc setFont*(self: gen_qtextlayout_types.QTextLayout, f: gen_qfont_types.QFont): void =
  fcQTextLayout_setFont(self.h, f.h)

proc font*(self: gen_qtextlayout_types.QTextLayout, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTextLayout_font(self.h))

proc setRawFont*(self: gen_qtextlayout_types.QTextLayout, rawFont: gen_qrawfont_types.QRawFont): void =
  fcQTextLayout_setRawFont(self.h, rawFont.h)

proc setText*(self: gen_qtextlayout_types.QTextLayout, string: string): void =
  fcQTextLayout_setText(self.h, struct_miqt_string(data: string, len: csize_t(len(string))))

proc text*(self: gen_qtextlayout_types.QTextLayout, ): string =
  let v_ms = fcQTextLayout_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextOption*(self: gen_qtextlayout_types.QTextLayout, option: gen_qtextoption_types.QTextOption): void =
  fcQTextLayout_setTextOption(self.h, option.h)

proc textOption*(self: gen_qtextlayout_types.QTextLayout, ): gen_qtextoption_types.QTextOption =
  gen_qtextoption_types.QTextOption(h: fcQTextLayout_textOption(self.h))

proc setPreeditArea*(self: gen_qtextlayout_types.QTextLayout, position: cint, text: string): void =
  fcQTextLayout_setPreeditArea(self.h, position, struct_miqt_string(data: text, len: csize_t(len(text))))

proc preeditAreaPosition*(self: gen_qtextlayout_types.QTextLayout, ): cint =
  fcQTextLayout_preeditAreaPosition(self.h)

proc preeditAreaText*(self: gen_qtextlayout_types.QTextLayout, ): string =
  let v_ms = fcQTextLayout_preeditAreaText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAdditionalFormats*(self: gen_qtextlayout_types.QTextLayout, overrides: seq[gen_qtextlayout_types.QTextLayoutFormatRange]): void =
  var overrides_CArray = newSeq[pointer](len(overrides))
  for i in 0..<len(overrides):
    overrides_CArray[i] = overrides[i].h

  fcQTextLayout_setAdditionalFormats(self.h, struct_miqt_array(len: csize_t(len(overrides)), data: if len(overrides) == 0: nil else: addr(overrides_CArray[0])))

proc additionalFormats*(self: gen_qtextlayout_types.QTextLayout, ): seq[gen_qtextlayout_types.QTextLayoutFormatRange] =
  var v_ma = fcQTextLayout_additionalFormats(self.h)
  var vx_ret = newSeq[gen_qtextlayout_types.QTextLayoutFormatRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextlayout_types.QTextLayoutFormatRange(h: v_outCast[i])
  vx_ret

proc clearAdditionalFormats*(self: gen_qtextlayout_types.QTextLayout, ): void =
  fcQTextLayout_clearAdditionalFormats(self.h)

proc setFormats*(self: gen_qtextlayout_types.QTextLayout, overrides: seq[gen_qtextlayout_types.QTextLayoutFormatRange]): void =
  var overrides_CArray = newSeq[pointer](len(overrides))
  for i in 0..<len(overrides):
    overrides_CArray[i] = overrides[i].h

  fcQTextLayout_setFormats(self.h, struct_miqt_array(len: csize_t(len(overrides)), data: if len(overrides) == 0: nil else: addr(overrides_CArray[0])))

proc formats*(self: gen_qtextlayout_types.QTextLayout, ): seq[gen_qtextlayout_types.QTextLayoutFormatRange] =
  var v_ma = fcQTextLayout_formats(self.h)
  var vx_ret = newSeq[gen_qtextlayout_types.QTextLayoutFormatRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextlayout_types.QTextLayoutFormatRange(h: v_outCast[i])
  vx_ret

proc clearFormats*(self: gen_qtextlayout_types.QTextLayout, ): void =
  fcQTextLayout_clearFormats(self.h)

proc setCacheEnabled*(self: gen_qtextlayout_types.QTextLayout, enable: bool): void =
  fcQTextLayout_setCacheEnabled(self.h, enable)

proc cacheEnabled*(self: gen_qtextlayout_types.QTextLayout, ): bool =
  fcQTextLayout_cacheEnabled(self.h)

proc setCursorMoveStyle*(self: gen_qtextlayout_types.QTextLayout, style: cint): void =
  fcQTextLayout_setCursorMoveStyle(self.h, cint(style))

proc cursorMoveStyle*(self: gen_qtextlayout_types.QTextLayout, ): cint =
  cint(fcQTextLayout_cursorMoveStyle(self.h))

proc beginLayout*(self: gen_qtextlayout_types.QTextLayout, ): void =
  fcQTextLayout_beginLayout(self.h)

proc endLayout*(self: gen_qtextlayout_types.QTextLayout, ): void =
  fcQTextLayout_endLayout(self.h)

proc clearLayout*(self: gen_qtextlayout_types.QTextLayout, ): void =
  fcQTextLayout_clearLayout(self.h)

proc createLine*(self: gen_qtextlayout_types.QTextLayout, ): gen_qtextlayout_types.QTextLine =
  gen_qtextlayout_types.QTextLine(h: fcQTextLayout_createLine(self.h))

proc lineCount*(self: gen_qtextlayout_types.QTextLayout, ): cint =
  fcQTextLayout_lineCount(self.h)

proc lineAt*(self: gen_qtextlayout_types.QTextLayout, i: cint): gen_qtextlayout_types.QTextLine =
  gen_qtextlayout_types.QTextLine(h: fcQTextLayout_lineAt(self.h, i))

proc lineForTextPosition*(self: gen_qtextlayout_types.QTextLayout, pos: cint): gen_qtextlayout_types.QTextLine =
  gen_qtextlayout_types.QTextLine(h: fcQTextLayout_lineForTextPosition(self.h, pos))

proc isValidCursorPosition*(self: gen_qtextlayout_types.QTextLayout, pos: cint): bool =
  fcQTextLayout_isValidCursorPosition(self.h, pos)

proc nextCursorPosition*(self: gen_qtextlayout_types.QTextLayout, oldPos: cint): cint =
  fcQTextLayout_nextCursorPosition(self.h, oldPos)

proc previousCursorPosition*(self: gen_qtextlayout_types.QTextLayout, oldPos: cint): cint =
  fcQTextLayout_previousCursorPosition(self.h, oldPos)

proc leftCursorPosition*(self: gen_qtextlayout_types.QTextLayout, oldPos: cint): cint =
  fcQTextLayout_leftCursorPosition(self.h, oldPos)

proc rightCursorPosition*(self: gen_qtextlayout_types.QTextLayout, oldPos: cint): cint =
  fcQTextLayout_rightCursorPosition(self.h, oldPos)

proc draw*(self: gen_qtextlayout_types.QTextLayout, p: gen_qpainter_types.QPainter, pos: gen_qpoint_types.QPointF): void =
  fcQTextLayout_draw(self.h, p.h, pos.h)

proc drawCursor*(self: gen_qtextlayout_types.QTextLayout, p: gen_qpainter_types.QPainter, pos: gen_qpoint_types.QPointF, cursorPosition: cint): void =
  fcQTextLayout_drawCursor(self.h, p.h, pos.h, cursorPosition)

proc drawCursor*(self: gen_qtextlayout_types.QTextLayout, p: gen_qpainter_types.QPainter, pos: gen_qpoint_types.QPointF, cursorPosition: cint, width: cint): void =
  fcQTextLayout_drawCursor2(self.h, p.h, pos.h, cursorPosition, width)

proc position*(self: gen_qtextlayout_types.QTextLayout, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTextLayout_position(self.h))

proc setPosition*(self: gen_qtextlayout_types.QTextLayout, p: gen_qpoint_types.QPointF): void =
  fcQTextLayout_setPosition(self.h, p.h)

proc boundingRect*(self: gen_qtextlayout_types.QTextLayout, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTextLayout_boundingRect(self.h))

proc minimumWidth*(self: gen_qtextlayout_types.QTextLayout, ): float64 =
  fcQTextLayout_minimumWidth(self.h)

proc maximumWidth*(self: gen_qtextlayout_types.QTextLayout, ): float64 =
  fcQTextLayout_maximumWidth(self.h)

proc glyphRuns*(self: gen_qtextlayout_types.QTextLayout, ): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextLayout_glyphRuns(self.h)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  vx_ret

proc setFlags*(self: gen_qtextlayout_types.QTextLayout, flags: cint): void =
  fcQTextLayout_setFlags(self.h, flags)

proc nextCursorPosition*(self: gen_qtextlayout_types.QTextLayout, oldPos: cint, mode: cint): cint =
  fcQTextLayout_nextCursorPosition2(self.h, oldPos, cint(mode))

proc previousCursorPosition*(self: gen_qtextlayout_types.QTextLayout, oldPos: cint, mode: cint): cint =
  fcQTextLayout_previousCursorPosition2(self.h, oldPos, cint(mode))

proc draw*(self: gen_qtextlayout_types.QTextLayout, p: gen_qpainter_types.QPainter, pos: gen_qpoint_types.QPointF, selections: seq[gen_qtextlayout_types.QTextLayoutFormatRange]): void =
  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQTextLayout_draw3(self.h, p.h, pos.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])))

proc draw*(self: gen_qtextlayout_types.QTextLayout, p: gen_qpainter_types.QPainter, pos: gen_qpoint_types.QPointF, selections: seq[gen_qtextlayout_types.QTextLayoutFormatRange], clip: gen_qrect_types.QRectF): void =
  var selections_CArray = newSeq[pointer](len(selections))
  for i in 0..<len(selections):
    selections_CArray[i] = selections[i].h

  fcQTextLayout_draw4(self.h, p.h, pos.h, struct_miqt_array(len: csize_t(len(selections)), data: if len(selections) == 0: nil else: addr(selections_CArray[0])), clip.h)

proc glyphRuns*(self: gen_qtextlayout_types.QTextLayout, fromVal: cint): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextLayout_glyphRuns1(self.h, fromVal)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  vx_ret

proc glyphRuns*(self: gen_qtextlayout_types.QTextLayout, fromVal: cint, length: cint): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextLayout_glyphRuns2(self.h, fromVal, length)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  vx_ret

proc delete*(self: gen_qtextlayout_types.QTextLayout) =
  fcQTextLayout_delete(self.h)

func init*(T: type gen_qtextlayout_types.QTextLine, h: ptr cQTextLine): gen_qtextlayout_types.QTextLine =
  T(h: h)
proc create*(T: type gen_qtextlayout_types.QTextLine, ): gen_qtextlayout_types.QTextLine =
  gen_qtextlayout_types.QTextLine.init(fcQTextLine_new())

proc isValid*(self: gen_qtextlayout_types.QTextLine, ): bool =
  fcQTextLine_isValid(self.h)

proc rect*(self: gen_qtextlayout_types.QTextLine, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTextLine_rect(self.h))

proc x*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_x(self.h)

proc y*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_y(self.h)

proc width*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_width(self.h)

proc ascent*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_ascent(self.h)

proc descent*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_descent(self.h)

proc height*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_height(self.h)

proc leading*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_leading(self.h)

proc setLeadingIncluded*(self: gen_qtextlayout_types.QTextLine, included: bool): void =
  fcQTextLine_setLeadingIncluded(self.h, included)

proc leadingIncluded*(self: gen_qtextlayout_types.QTextLine, ): bool =
  fcQTextLine_leadingIncluded(self.h)

proc naturalTextWidth*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_naturalTextWidth(self.h)

proc horizontalAdvance*(self: gen_qtextlayout_types.QTextLine, ): float64 =
  fcQTextLine_horizontalAdvance(self.h)

proc naturalTextRect*(self: gen_qtextlayout_types.QTextLine, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTextLine_naturalTextRect(self.h))

proc cursorToX*(self: gen_qtextlayout_types.QTextLine, cursorPos: ptr cint): float64 =
  fcQTextLine_cursorToX(self.h, cursorPos)

proc cursorToX*(self: gen_qtextlayout_types.QTextLine, cursorPos: cint): float64 =
  fcQTextLine_cursorToXWithCursorPos(self.h, cursorPos)

proc xToCursor*(self: gen_qtextlayout_types.QTextLine, x: float64): cint =
  fcQTextLine_xToCursor(self.h, x)

proc setLineWidth*(self: gen_qtextlayout_types.QTextLine, width: float64): void =
  fcQTextLine_setLineWidth(self.h, width)

proc setNumColumns*(self: gen_qtextlayout_types.QTextLine, columns: cint): void =
  fcQTextLine_setNumColumns(self.h, columns)

proc setNumColumns*(self: gen_qtextlayout_types.QTextLine, columns: cint, alignmentWidth: float64): void =
  fcQTextLine_setNumColumns2(self.h, columns, alignmentWidth)

proc setPosition*(self: gen_qtextlayout_types.QTextLine, pos: gen_qpoint_types.QPointF): void =
  fcQTextLine_setPosition(self.h, pos.h)

proc position*(self: gen_qtextlayout_types.QTextLine, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTextLine_position(self.h))

proc textStart*(self: gen_qtextlayout_types.QTextLine, ): cint =
  fcQTextLine_textStart(self.h)

proc textLength*(self: gen_qtextlayout_types.QTextLine, ): cint =
  fcQTextLine_textLength(self.h)

proc lineNumber*(self: gen_qtextlayout_types.QTextLine, ): cint =
  fcQTextLine_lineNumber(self.h)

proc draw*(self: gen_qtextlayout_types.QTextLine, p: gen_qpainter_types.QPainter, point: gen_qpoint_types.QPointF): void =
  fcQTextLine_draw(self.h, p.h, point.h)

proc glyphRuns*(self: gen_qtextlayout_types.QTextLine, ): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextLine_glyphRuns(self.h)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  vx_ret

proc cursorToX*(self: gen_qtextlayout_types.QTextLine, cursorPos: ptr cint, edge: cint): float64 =
  fcQTextLine_cursorToX2(self.h, cursorPos, cint(edge))

proc cursorToX*(self: gen_qtextlayout_types.QTextLine, cursorPos: cint, edge: cint): float64 =
  fcQTextLine_cursorToX22(self.h, cursorPos, cint(edge))

proc xToCursor*(self: gen_qtextlayout_types.QTextLine, x: float64, param2: cint): cint =
  fcQTextLine_xToCursor2(self.h, x, cint(param2))

proc draw*(self: gen_qtextlayout_types.QTextLine, p: gen_qpainter_types.QPainter, point: gen_qpoint_types.QPointF, selection: gen_qtextlayout_types.QTextLayoutFormatRange): void =
  fcQTextLine_draw3(self.h, p.h, point.h, selection.h)

proc glyphRuns*(self: gen_qtextlayout_types.QTextLine, fromVal: cint): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextLine_glyphRuns1(self.h, fromVal)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  vx_ret

proc glyphRuns*(self: gen_qtextlayout_types.QTextLine, fromVal: cint, length: cint): seq[gen_qglyphrun_types.QGlyphRun] =
  var v_ma = fcQTextLine_glyphRuns2(self.h, fromVal, length)
  var vx_ret = newSeq[gen_qglyphrun_types.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun_types.QGlyphRun(h: v_outCast[i])
  vx_ret

proc delete*(self: gen_qtextlayout_types.QTextLine) =
  fcQTextLine_delete(self.h)

func init*(T: type gen_qtextlayout_types.QTextLayoutFormatRange, h: ptr cQTextLayoutFormatRange): gen_qtextlayout_types.QTextLayoutFormatRange =
  T(h: h)
proc delete*(self: gen_qtextlayout_types.QTextLayoutFormatRange) =
  fcQTextLayoutFormatRange_delete(self.h)
