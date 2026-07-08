import ./qtgui_pkg

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


import ./gen_qfontmetrics_types
export gen_qfontmetrics_types

import
  ../QtCore/gen_qchar_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qfont_types,
  ./gen_qpaintdevice_types,
  ./gen_qtextoption_types
export
  gen_qchar_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qfont_types,
  gen_qpaintdevice_types,
  gen_qtextoption_types

type cQFontMetrics*{.exportc: "QFontMetrics", incompleteStruct.} = object
type cQFontMetricsF*{.exportc: "QFontMetricsF", incompleteStruct.} = object

proc fcQFontMetrics_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QFontMetrics_operatorAssign".}
proc fcQFontMetrics_swap(self: pointer, other: pointer): void {.importc: "QFontMetrics_swap".}
proc fcQFontMetrics_ascent(self: pointer): cint {.importc: "QFontMetrics_ascent".}
proc fcQFontMetrics_capHeight(self: pointer): cint {.importc: "QFontMetrics_capHeight".}
proc fcQFontMetrics_descent(self: pointer): cint {.importc: "QFontMetrics_descent".}
proc fcQFontMetrics_height(self: pointer): cint {.importc: "QFontMetrics_height".}
proc fcQFontMetrics_leading(self: pointer): cint {.importc: "QFontMetrics_leading".}
proc fcQFontMetrics_lineSpacing(self: pointer): cint {.importc: "QFontMetrics_lineSpacing".}
proc fcQFontMetrics_minLeftBearing(self: pointer): cint {.importc: "QFontMetrics_minLeftBearing".}
proc fcQFontMetrics_minRightBearing(self: pointer): cint {.importc: "QFontMetrics_minRightBearing".}
proc fcQFontMetrics_maxWidth(self: pointer): cint {.importc: "QFontMetrics_maxWidth".}
proc fcQFontMetrics_xHeight(self: pointer): cint {.importc: "QFontMetrics_xHeight".}
proc fcQFontMetrics_averageCharWidth(self: pointer): cint {.importc: "QFontMetrics_averageCharWidth".}
proc fcQFontMetrics_inFont(self: pointer, param1: pointer): bool {.importc: "QFontMetrics_inFont".}
proc fcQFontMetrics_inFontUcs4(self: pointer, ucs4: cuint): bool {.importc: "QFontMetrics_inFontUcs4".}
proc fcQFontMetrics_leftBearing(self: pointer, param1: pointer): cint {.importc: "QFontMetrics_leftBearing".}
proc fcQFontMetrics_rightBearing(self: pointer, param1: pointer): cint {.importc: "QFontMetrics_rightBearing".}
proc fcQFontMetrics_horizontalAdvance_QString(self: pointer, param1: struct_seaqt_string): cint {.importc: "QFontMetrics_horizontalAdvance_QString".}
proc fcQFontMetrics_horizontalAdvance_QString_QTextOption(self: pointer, param1: struct_seaqt_string, textOption: pointer): cint {.importc: "QFontMetrics_horizontalAdvance_QString_QTextOption".}
proc fcQFontMetrics_horizontalAdvance_QChar(self: pointer, param1: pointer): cint {.importc: "QFontMetrics_horizontalAdvance_QChar".}
proc fcQFontMetrics_boundingRect_QChar(self: pointer, param1: pointer): pointer {.importc: "QFontMetrics_boundingRect_QChar".}
proc fcQFontMetrics_boundingRect_QString(self: pointer, text: struct_seaqt_string): pointer {.importc: "QFontMetrics_boundingRect_QString".}
proc fcQFontMetrics_boundingRect_QString_QTextOption(self: pointer, text: struct_seaqt_string, textOption: pointer): pointer {.importc: "QFontMetrics_boundingRect_QString_QTextOption".}
proc fcQFontMetrics_boundingRect_QRectInt_QString(self: pointer, r: pointer, flags: cint, text: struct_seaqt_string): pointer {.importc: "QFontMetrics_boundingRect_QRect_int_QString".}
proc fcQFontMetrics_boundingRectIntIntIntIntInt_QString(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_seaqt_string): pointer {.importc: "QFontMetrics_boundingRect_int_int_int_int_int_QString".}
proc fcQFontMetrics_sizeFlagsStr(self: pointer, flags: cint, str: struct_seaqt_string): pointer {.importc: "QFontMetrics_size_flags_str".}
proc fcQFontMetrics_tightBoundingRectText(self: pointer, text: struct_seaqt_string): pointer {.importc: "QFontMetrics_tightBoundingRect_text".}
proc fcQFontMetrics_tightBoundingRectTextTextOption(self: pointer, text: struct_seaqt_string, textOption: pointer): pointer {.importc: "QFontMetrics_tightBoundingRect_text_textOption".}
proc fcQFontMetrics_elidedTextTextModeWidth(self: pointer, text: struct_seaqt_string, mode: cint, width: cint): struct_seaqt_string {.importc: "QFontMetrics_elidedText_text_mode_width".}
proc fcQFontMetrics_underlinePos(self: pointer): cint {.importc: "QFontMetrics_underlinePos".}
proc fcQFontMetrics_overlinePos(self: pointer): cint {.importc: "QFontMetrics_overlinePos".}
proc fcQFontMetrics_strikeOutPos(self: pointer): cint {.importc: "QFontMetrics_strikeOutPos".}
proc fcQFontMetrics_lineWidth(self: pointer): cint {.importc: "QFontMetrics_lineWidth".}
proc fcQFontMetrics_fontDpi(self: pointer): float64 {.importc: "QFontMetrics_fontDpi".}
proc fcQFontMetrics_operatorEqual(self: pointer, other: pointer): bool {.importc: "QFontMetrics_operatorEqual".}
proc fcQFontMetrics_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QFontMetrics_operatorNotEqual".}
proc fcQFontMetrics_horizontalAdvance_QStringInt(self: pointer, param1: struct_seaqt_string, len: cint): cint {.importc: "QFontMetrics_horizontalAdvance_QString_int".}
proc fcQFontMetrics_boundingRect_QRectInt_QStringInt(self: pointer, r: pointer, flags: cint, text: struct_seaqt_string, tabstops: cint): pointer {.importc: "QFontMetrics_boundingRect_QRect_int_QString_int".}
proc fcQFontMetrics_boundingRect_QRectInt_QStringIntInt(self: pointer, r: pointer, flags: cint, text: struct_seaqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetrics_boundingRect_QRect_int_QString_int_int".}
proc fcQFontMetrics_boundingRectIntIntIntIntInt_QStringInt(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_seaqt_string, tabstops: cint): pointer {.importc: "QFontMetrics_boundingRect_int_int_int_int_int_QString_int".}
proc fcQFontMetrics_boundingRectIntIntIntIntInt_QStringIntInt(self: pointer, x: cint, y: cint, w: cint, h: cint, flags: cint, text: struct_seaqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetrics_boundingRect_int_int_int_int_int_QString_int_int".}
proc fcQFontMetrics_sizeFlagsStrTabstops(self: pointer, flags: cint, str: struct_seaqt_string, tabstops: cint): pointer {.importc: "QFontMetrics_size_flags_str_tabstops".}
proc fcQFontMetrics_sizeFlagsStrTabstopsTabarray(self: pointer, flags: cint, str: struct_seaqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetrics_size_flags_str_tabstops_tabarray".}
proc fcQFontMetrics_elidedTextTextModeWidthFlags(self: pointer, text: struct_seaqt_string, mode: cint, width: cint, flags: cint): struct_seaqt_string {.importc: "QFontMetrics_elidedText_text_mode_width_flags".}
proc fcQFontMetrics_new(param1: pointer): ptr cQFontMetrics {.importc: "QFontMetrics_new_QFont".}
proc fcQFontMetrics_new2(font: pointer, pd: pointer): ptr cQFontMetrics {.importc: "QFontMetrics_new_QFont_QPaintDevice".}
proc fcQFontMetrics_new3(fromVal: pointer): ptr cQFontMetrics {.importc: "QFontMetrics_new_QFontMetrics".}
proc fcQFontMetricsF_operatorAssign_QFontMetricsF(self: pointer, fromVal: pointer): void {.importc: "QFontMetricsF_operatorAssign_QFontMetricsF".}
proc fcQFontMetricsF_operatorAssign_QFontMetrics(self: pointer, param1: pointer): void {.importc: "QFontMetricsF_operatorAssign_QFontMetrics".}
proc fcQFontMetricsF_swap(self: pointer, other: pointer): void {.importc: "QFontMetricsF_swap".}
proc fcQFontMetricsF_ascent(self: pointer): float64 {.importc: "QFontMetricsF_ascent".}
proc fcQFontMetricsF_capHeight(self: pointer): float64 {.importc: "QFontMetricsF_capHeight".}
proc fcQFontMetricsF_descent(self: pointer): float64 {.importc: "QFontMetricsF_descent".}
proc fcQFontMetricsF_height(self: pointer): float64 {.importc: "QFontMetricsF_height".}
proc fcQFontMetricsF_leading(self: pointer): float64 {.importc: "QFontMetricsF_leading".}
proc fcQFontMetricsF_lineSpacing(self: pointer): float64 {.importc: "QFontMetricsF_lineSpacing".}
proc fcQFontMetricsF_minLeftBearing(self: pointer): float64 {.importc: "QFontMetricsF_minLeftBearing".}
proc fcQFontMetricsF_minRightBearing(self: pointer): float64 {.importc: "QFontMetricsF_minRightBearing".}
proc fcQFontMetricsF_maxWidth(self: pointer): float64 {.importc: "QFontMetricsF_maxWidth".}
proc fcQFontMetricsF_xHeight(self: pointer): float64 {.importc: "QFontMetricsF_xHeight".}
proc fcQFontMetricsF_averageCharWidth(self: pointer): float64 {.importc: "QFontMetricsF_averageCharWidth".}
proc fcQFontMetricsF_inFont(self: pointer, param1: pointer): bool {.importc: "QFontMetricsF_inFont".}
proc fcQFontMetricsF_inFontUcs4(self: pointer, ucs4: cuint): bool {.importc: "QFontMetricsF_inFontUcs4".}
proc fcQFontMetricsF_leftBearing(self: pointer, param1: pointer): float64 {.importc: "QFontMetricsF_leftBearing".}
proc fcQFontMetricsF_rightBearing(self: pointer, param1: pointer): float64 {.importc: "QFontMetricsF_rightBearing".}
proc fcQFontMetricsF_horizontalAdvance_QString(self: pointer, stringVal: struct_seaqt_string): float64 {.importc: "QFontMetricsF_horizontalAdvance_QString".}
proc fcQFontMetricsF_horizontalAdvance_QChar(self: pointer, param1: pointer): float64 {.importc: "QFontMetricsF_horizontalAdvance_QChar".}
proc fcQFontMetricsF_horizontalAdvance_QString_QTextOption(self: pointer, stringVal: struct_seaqt_string, textOption: pointer): float64 {.importc: "QFontMetricsF_horizontalAdvance_QString_QTextOption".}
proc fcQFontMetricsF_boundingRect_QString(self: pointer, stringVal: struct_seaqt_string): pointer {.importc: "QFontMetricsF_boundingRect_QString".}
proc fcQFontMetricsF_boundingRect_QString_QTextOption(self: pointer, text: struct_seaqt_string, textOption: pointer): pointer {.importc: "QFontMetricsF_boundingRect_QString_QTextOption".}
proc fcQFontMetricsF_boundingRect_QChar(self: pointer, param1: pointer): pointer {.importc: "QFontMetricsF_boundingRect_QChar".}
proc fcQFontMetricsF_boundingRect_QRectFInt_QString(self: pointer, r: pointer, flags: cint, stringVal: struct_seaqt_string): pointer {.importc: "QFontMetricsF_boundingRect_QRectF_int_QString".}
proc fcQFontMetricsF_sizeFlagsStr(self: pointer, flags: cint, str: struct_seaqt_string): pointer {.importc: "QFontMetricsF_size_flags_str".}
proc fcQFontMetricsF_tightBoundingRectText(self: pointer, text: struct_seaqt_string): pointer {.importc: "QFontMetricsF_tightBoundingRect_text".}
proc fcQFontMetricsF_tightBoundingRectTextTextOption(self: pointer, text: struct_seaqt_string, textOption: pointer): pointer {.importc: "QFontMetricsF_tightBoundingRect_text_textOption".}
proc fcQFontMetricsF_elidedTextTextModeWidth(self: pointer, text: struct_seaqt_string, mode: cint, width: float64): struct_seaqt_string {.importc: "QFontMetricsF_elidedText_text_mode_width".}
proc fcQFontMetricsF_underlinePos(self: pointer): float64 {.importc: "QFontMetricsF_underlinePos".}
proc fcQFontMetricsF_overlinePos(self: pointer): float64 {.importc: "QFontMetricsF_overlinePos".}
proc fcQFontMetricsF_strikeOutPos(self: pointer): float64 {.importc: "QFontMetricsF_strikeOutPos".}
proc fcQFontMetricsF_lineWidth(self: pointer): float64 {.importc: "QFontMetricsF_lineWidth".}
proc fcQFontMetricsF_fontDpi(self: pointer): float64 {.importc: "QFontMetricsF_fontDpi".}
proc fcQFontMetricsF_operatorEqual(self: pointer, other: pointer): bool {.importc: "QFontMetricsF_operatorEqual".}
proc fcQFontMetricsF_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QFontMetricsF_operatorNotEqual".}
proc fcQFontMetricsF_horizontalAdvance_QStringInt(self: pointer, stringVal: struct_seaqt_string, length: cint): float64 {.importc: "QFontMetricsF_horizontalAdvance_QString_int".}
proc fcQFontMetricsF_boundingRect_QRectFInt_QStringInt(self: pointer, r: pointer, flags: cint, stringVal: struct_seaqt_string, tabstops: cint): pointer {.importc: "QFontMetricsF_boundingRect_QRectF_int_QString_int".}
proc fcQFontMetricsF_boundingRect_QRectFInt_QStringIntInt(self: pointer, r: pointer, flags: cint, stringVal: struct_seaqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetricsF_boundingRect_QRectF_int_QString_int_int".}
proc fcQFontMetricsF_sizeFlagsStrTabstops(self: pointer, flags: cint, str: struct_seaqt_string, tabstops: cint): pointer {.importc: "QFontMetricsF_size_flags_str_tabstops".}
proc fcQFontMetricsF_sizeFlagsStrTabstopsTabarray(self: pointer, flags: cint, str: struct_seaqt_string, tabstops: cint, tabarray: ptr cint): pointer {.importc: "QFontMetricsF_size_flags_str_tabstops_tabarray".}
proc fcQFontMetricsF_elidedTextTextModeWidthFlags(self: pointer, text: struct_seaqt_string, mode: cint, width: float64, flags: cint): struct_seaqt_string {.importc: "QFontMetricsF_elidedText_text_mode_width_flags".}
proc fcQFontMetricsF_new(font: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new_QFont".}
proc fcQFontMetricsF_new2(font: pointer, pd: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new_QFont_QPaintDevice".}
proc fcQFontMetricsF_new3(param1: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new_QFontMetrics".}
proc fcQFontMetricsF_new4(fromVal: pointer): ptr cQFontMetricsF {.importc: "QFontMetricsF_new_QFontMetricsF".}

proc operatorAssign*(self: gen_qfontmetrics_types.QFontMetrics, fromVal: gen_qfontmetrics_types.QFontMetrics): void =
  fcQFontMetrics_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qfontmetrics_types.QFontMetrics, other: gen_qfontmetrics_types.QFontMetrics): void =
  fcQFontMetrics_swap(self.h, other.h)

proc ascent*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_ascent(self.h)

proc capHeight*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_capHeight(self.h)

proc descent*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_descent(self.h)

proc height*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_height(self.h)

proc leading*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_leading(self.h)

proc lineSpacing*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_lineSpacing(self.h)

proc minLeftBearing*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_minLeftBearing(self.h)

proc minRightBearing*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_minRightBearing(self.h)

proc maxWidth*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_maxWidth(self.h)

proc xHeight*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_xHeight(self.h)

proc averageCharWidth*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_averageCharWidth(self.h)

proc inFont*(self: gen_qfontmetrics_types.QFontMetrics, param1: gen_qchar_types.QChar): bool =
  fcQFontMetrics_inFont(self.h, param1.h)

proc inFontUcs4*(self: gen_qfontmetrics_types.QFontMetrics, ucs4: cuint): bool =
  fcQFontMetrics_inFontUcs4(self.h, ucs4)

proc leftBearing*(self: gen_qfontmetrics_types.QFontMetrics, param1: gen_qchar_types.QChar): cint =
  fcQFontMetrics_leftBearing(self.h, param1.h)

proc rightBearing*(self: gen_qfontmetrics_types.QFontMetrics, param1: gen_qchar_types.QChar): cint =
  fcQFontMetrics_rightBearing(self.h, param1.h)

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetrics, param1: openArray[char]): cint =
  fcQFontMetrics_horizontalAdvance_QString(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetrics, param1: openArray[char], textOption: gen_qtextoption_types.QTextOption): cint =
  fcQFontMetrics_horizontalAdvance_QString_QTextOption(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), textOption.h)

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetrics, param1: gen_qchar_types.QChar): cint =
  fcQFontMetrics_horizontalAdvance_QChar(self.h, param1.h)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, param1: gen_qchar_types.QChar): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRect_QChar(self.h, param1.h), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRect_QString(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, text: openArray[char], textOption: gen_qtextoption_types.QTextOption): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRect_QString_QTextOption(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), textOption.h), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRect_QRectInt_QString(self.h, r.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRectIntIntIntIntInt_QString(self.h, x, y, w, h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc size*(self: gen_qfontmetrics_types.QFontMetrics, flags: cint, str: openArray[char]): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontMetrics_sizeFlagsStr(self.h, flags, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str)))), owned: true)

proc tightBoundingRect*(self: gen_qfontmetrics_types.QFontMetrics, text: openArray[char]): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_tightBoundingRectText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc tightBoundingRect*(self: gen_qfontmetrics_types.QFontMetrics, text: openArray[char], textOption: gen_qtextoption_types.QTextOption): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_tightBoundingRectTextTextOption(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), textOption.h), owned: true)

proc elidedText*(self: gen_qfontmetrics_types.QFontMetrics, text: openArray[char], mode: cint, width: cint): string =
  let v_ms = fcQFontMetrics_elidedTextTextModeWidth(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(mode), width)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc underlinePos*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_underlinePos(self.h)

proc overlinePos*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_overlinePos(self.h)

proc strikeOutPos*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_strikeOutPos(self.h)

proc lineWidth*(self: gen_qfontmetrics_types.QFontMetrics): cint =
  fcQFontMetrics_lineWidth(self.h)

proc fontDpi*(self: gen_qfontmetrics_types.QFontMetrics): float64 =
  fcQFontMetrics_fontDpi(self.h)

proc operatorEqual*(self: gen_qfontmetrics_types.QFontMetrics, other: gen_qfontmetrics_types.QFontMetrics): bool =
  fcQFontMetrics_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qfontmetrics_types.QFontMetrics, other: gen_qfontmetrics_types.QFontMetrics): bool =
  fcQFontMetrics_operatorNotEqual(self.h, other.h)

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetrics, param1: openArray[char], len: cint): cint =
  fcQFontMetrics_horizontalAdvance_QStringInt(self.h, struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), len)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, text: openArray[char], tabstops: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRect_QRectInt_QStringInt(self.h, r.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), tabstops), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, text: openArray[char], tabstops: cint, tabarray: ptr cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRect_QRectInt_QStringIntInt(self.h, r.h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), tabstops, tabarray), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: openArray[char], tabstops: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRectIntIntIntIntInt_QStringInt(self.h, x, y, w, h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), tabstops), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetrics, x: cint, y: cint, w: cint, h: cint, flags: cint, text: openArray[char], tabstops: cint, tabarray: ptr cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFontMetrics_boundingRectIntIntIntIntInt_QStringIntInt(self.h, x, y, w, h, flags, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), tabstops, tabarray), owned: true)

proc size*(self: gen_qfontmetrics_types.QFontMetrics, flags: cint, str: openArray[char], tabstops: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontMetrics_sizeFlagsStrTabstops(self.h, flags, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), tabstops), owned: true)

proc size*(self: gen_qfontmetrics_types.QFontMetrics, flags: cint, str: openArray[char], tabstops: cint, tabarray: ptr cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontMetrics_sizeFlagsStrTabstopsTabarray(self.h, flags, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), tabstops, tabarray), owned: true)

proc elidedText*(self: gen_qfontmetrics_types.QFontMetrics, text: openArray[char], mode: cint, width: cint, flags: cint): string =
  let v_ms = fcQFontMetrics_elidedTextTextModeWidthFlags(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(mode), width, flags)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qfontmetrics_types.QFontMetrics,
    param1: gen_qfont_types.QFont): gen_qfontmetrics_types.QFontMetrics =
  let tmp = gen_qfontmetrics_types.QFontMetrics(h: fcQFontMetrics_new(param1.h), owned: true)
  tmp
proc create*(T: type gen_qfontmetrics_types.QFontMetrics,
    font: gen_qfont_types.QFont, pd: gen_qpaintdevice_types.QPaintDevice): gen_qfontmetrics_types.QFontMetrics =
  let tmp = gen_qfontmetrics_types.QFontMetrics(h: fcQFontMetrics_new2(font.h, pd.h), owned: true)
  tmp
proc create*(T: type gen_qfontmetrics_types.QFontMetrics,
    fromVal: gen_qfontmetrics_types.QFontMetrics): gen_qfontmetrics_types.QFontMetrics =
  let tmp = gen_qfontmetrics_types.QFontMetrics(h: fcQFontMetrics_new3(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qfontmetrics_types.QFontMetricsF, fromVal: gen_qfontmetrics_types.QFontMetricsF): void =
  fcQFontMetricsF_operatorAssign_QFontMetricsF(self.h, fromVal.h)

proc operatorAssign*(self: gen_qfontmetrics_types.QFontMetricsF, param1: gen_qfontmetrics_types.QFontMetrics): void =
  fcQFontMetricsF_operatorAssign_QFontMetrics(self.h, param1.h)

proc swap*(self: gen_qfontmetrics_types.QFontMetricsF, other: gen_qfontmetrics_types.QFontMetricsF): void =
  fcQFontMetricsF_swap(self.h, other.h)

proc ascent*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_ascent(self.h)

proc capHeight*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_capHeight(self.h)

proc descent*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_descent(self.h)

proc height*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_height(self.h)

proc leading*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_leading(self.h)

proc lineSpacing*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_lineSpacing(self.h)

proc minLeftBearing*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_minLeftBearing(self.h)

proc minRightBearing*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_minRightBearing(self.h)

proc maxWidth*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_maxWidth(self.h)

proc xHeight*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_xHeight(self.h)

proc averageCharWidth*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_averageCharWidth(self.h)

proc inFont*(self: gen_qfontmetrics_types.QFontMetricsF, param1: gen_qchar_types.QChar): bool =
  fcQFontMetricsF_inFont(self.h, param1.h)

proc inFontUcs4*(self: gen_qfontmetrics_types.QFontMetricsF, ucs4: cuint): bool =
  fcQFontMetricsF_inFontUcs4(self.h, ucs4)

proc leftBearing*(self: gen_qfontmetrics_types.QFontMetricsF, param1: gen_qchar_types.QChar): float64 =
  fcQFontMetricsF_leftBearing(self.h, param1.h)

proc rightBearing*(self: gen_qfontmetrics_types.QFontMetricsF, param1: gen_qchar_types.QChar): float64 =
  fcQFontMetricsF_rightBearing(self.h, param1.h)

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetricsF, stringVal: openArray[char]): float64 =
  fcQFontMetricsF_horizontalAdvance_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))))

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetricsF, param1: gen_qchar_types.QChar): float64 =
  fcQFontMetricsF_horizontalAdvance_QChar(self.h, param1.h)

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetricsF, stringVal: openArray[char], textOption: gen_qtextoption_types.QTextOption): float64 =
  fcQFontMetricsF_horizontalAdvance_QString_QTextOption(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), textOption.h)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, stringVal: openArray[char]): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_boundingRect_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, text: openArray[char], textOption: gen_qtextoption_types.QTextOption): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_boundingRect_QString_QTextOption(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), textOption.h), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, param1: gen_qchar_types.QChar): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_boundingRect_QChar(self.h, param1.h), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, r: gen_qrect_types.QRectF, flags: cint, stringVal: openArray[char]): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_boundingRect_QRectFInt_QString(self.h, r.h, flags, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc size*(self: gen_qfontmetrics_types.QFontMetricsF, flags: cint, str: openArray[char]): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQFontMetricsF_sizeFlagsStr(self.h, flags, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str)))), owned: true)

proc tightBoundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, text: openArray[char]): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_tightBoundingRectText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc tightBoundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, text: openArray[char], textOption: gen_qtextoption_types.QTextOption): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_tightBoundingRectTextTextOption(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), textOption.h), owned: true)

proc elidedText*(self: gen_qfontmetrics_types.QFontMetricsF, text: openArray[char], mode: cint, width: float64): string =
  let v_ms = fcQFontMetricsF_elidedTextTextModeWidth(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(mode), width)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc underlinePos*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_underlinePos(self.h)

proc overlinePos*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_overlinePos(self.h)

proc strikeOutPos*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_strikeOutPos(self.h)

proc lineWidth*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_lineWidth(self.h)

proc fontDpi*(self: gen_qfontmetrics_types.QFontMetricsF): float64 =
  fcQFontMetricsF_fontDpi(self.h)

proc operatorEqual*(self: gen_qfontmetrics_types.QFontMetricsF, other: gen_qfontmetrics_types.QFontMetricsF): bool =
  fcQFontMetricsF_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qfontmetrics_types.QFontMetricsF, other: gen_qfontmetrics_types.QFontMetricsF): bool =
  fcQFontMetricsF_operatorNotEqual(self.h, other.h)

proc horizontalAdvance*(self: gen_qfontmetrics_types.QFontMetricsF, stringVal: openArray[char], length: cint): float64 =
  fcQFontMetricsF_horizontalAdvance_QStringInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), length)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, r: gen_qrect_types.QRectF, flags: cint, stringVal: openArray[char], tabstops: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_boundingRect_QRectFInt_QStringInt(self.h, r.h, flags, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), tabstops), owned: true)

proc boundingRect*(self: gen_qfontmetrics_types.QFontMetricsF, r: gen_qrect_types.QRectF, flags: cint, stringVal: openArray[char], tabstops: cint, tabarray: ptr cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQFontMetricsF_boundingRect_QRectFInt_QStringIntInt(self.h, r.h, flags, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), tabstops, tabarray), owned: true)

proc size*(self: gen_qfontmetrics_types.QFontMetricsF, flags: cint, str: openArray[char], tabstops: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQFontMetricsF_sizeFlagsStrTabstops(self.h, flags, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), tabstops), owned: true)

proc size*(self: gen_qfontmetrics_types.QFontMetricsF, flags: cint, str: openArray[char], tabstops: cint, tabarray: ptr cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQFontMetricsF_sizeFlagsStrTabstopsTabarray(self.h, flags, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), tabstops, tabarray), owned: true)

proc elidedText*(self: gen_qfontmetrics_types.QFontMetricsF, text: openArray[char], mode: cint, width: float64, flags: cint): string =
  let v_ms = fcQFontMetricsF_elidedTextTextModeWidthFlags(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(mode), width, flags)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qfontmetrics_types.QFontMetricsF,
    font: gen_qfont_types.QFont): gen_qfontmetrics_types.QFontMetricsF =
  let tmp = gen_qfontmetrics_types.QFontMetricsF(h: fcQFontMetricsF_new(font.h), owned: true)
  tmp
proc create*(T: type gen_qfontmetrics_types.QFontMetricsF,
    font: gen_qfont_types.QFont, pd: gen_qpaintdevice_types.QPaintDevice): gen_qfontmetrics_types.QFontMetricsF =
  let tmp = gen_qfontmetrics_types.QFontMetricsF(h: fcQFontMetricsF_new2(font.h, pd.h), owned: true)
  tmp
proc create*(T: type gen_qfontmetrics_types.QFontMetricsF,
    param1: gen_qfontmetrics_types.QFontMetrics): gen_qfontmetrics_types.QFontMetricsF =
  let tmp = gen_qfontmetrics_types.QFontMetricsF(h: fcQFontMetricsF_new3(param1.h), owned: true)
  tmp
proc create*(T: type gen_qfontmetrics_types.QFontMetricsF,
    fromVal: gen_qfontmetrics_types.QFontMetricsF): gen_qfontmetrics_types.QFontMetricsF =
  let tmp = gen_qfontmetrics_types.QFontMetricsF(h: fcQFontMetricsF_new4(fromVal.h), owned: true)
  tmp
