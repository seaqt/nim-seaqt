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


type QRawFontAntialiasingTypeEnum* = distinct cint
template PixelAntialiasing*(_: type QRawFontAntialiasingTypeEnum): untyped = 0
template SubPixelAntialiasing*(_: type QRawFontAntialiasingTypeEnum): untyped = 1


type QRawFontLayoutFlagEnum* = distinct cint
template SeparateAdvances*(_: type QRawFontLayoutFlagEnum): untyped = 0
template KernedAdvances*(_: type QRawFontLayoutFlagEnum): untyped = 1
template UseDesignMetrics*(_: type QRawFontLayoutFlagEnum): untyped = 2


import ./gen_qrawfont_types
export gen_qrawfont_types

import
  ../QtCore/gen_qchar_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ./gen_qfont_types,
  ./gen_qimage_types,
  ./gen_qpainterpath_types,
  ./gen_qtransform_types
export
  gen_qchar_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qfont_types,
  gen_qimage_types,
  gen_qpainterpath_types,
  gen_qtransform_types

type cQRawFont*{.exportc: "QRawFont", incompleteStruct.} = object

proc fcQRawFont_operatorAssign(self: pointer, other: pointer): void {.importc: "QRawFont_operatorAssign".}
proc fcQRawFont_swap(self: pointer, other: pointer): void {.importc: "QRawFont_swap".}
proc fcQRawFont_isValid(self: pointer): bool {.importc: "QRawFont_isValid".}
proc fcQRawFont_operatorEqual(self: pointer, other: pointer): bool {.importc: "QRawFont_operatorEqual".}
proc fcQRawFont_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QRawFont_operatorNotEqual".}
proc fcQRawFont_familyName(self: pointer): struct_miqt_string {.importc: "QRawFont_familyName".}
proc fcQRawFont_styleName(self: pointer): struct_miqt_string {.importc: "QRawFont_styleName".}
proc fcQRawFont_style(self: pointer): cint {.importc: "QRawFont_style".}
proc fcQRawFont_weight(self: pointer): cint {.importc: "QRawFont_weight".}
proc fcQRawFont_glyphIndexesForString(self: pointer, text: struct_miqt_string): struct_miqt_array {.importc: "QRawFont_glyphIndexesForString".}
proc fcQRawFont_advancesForGlyphIndexes(self: pointer, glyphIndexes: struct_miqt_array): struct_miqt_array {.importc: "QRawFont_advancesForGlyphIndexes".}
proc fcQRawFont_advancesForGlyphIndexes2(self: pointer, glyphIndexes: struct_miqt_array, layoutFlags: cint): struct_miqt_array {.importc: "QRawFont_advancesForGlyphIndexes2".}
proc fcQRawFont_glyphIndexesForChars(self: pointer, chars: pointer, numChars: cint, glyphIndexes: ptr cuint, numGlyphs: ptr cint): bool {.importc: "QRawFont_glyphIndexesForChars".}
proc fcQRawFont_advancesForGlyphIndexes3(self: pointer, glyphIndexes: ptr cuint, advances: pointer, numGlyphs: cint): bool {.importc: "QRawFont_advancesForGlyphIndexes3".}
proc fcQRawFont_advancesForGlyphIndexes4(self: pointer, glyphIndexes: ptr cuint, advances: pointer, numGlyphs: cint, layoutFlags: cint): bool {.importc: "QRawFont_advancesForGlyphIndexes4".}
proc fcQRawFont_alphaMapForGlyph(self: pointer, glyphIndex: cuint): pointer {.importc: "QRawFont_alphaMapForGlyph".}
proc fcQRawFont_pathForGlyph(self: pointer, glyphIndex: cuint): pointer {.importc: "QRawFont_pathForGlyph".}
proc fcQRawFont_boundingRect(self: pointer, glyphIndex: cuint): pointer {.importc: "QRawFont_boundingRect".}
proc fcQRawFont_setPixelSize(self: pointer, pixelSize: float64): void {.importc: "QRawFont_setPixelSize".}
proc fcQRawFont_pixelSize(self: pointer): float64 {.importc: "QRawFont_pixelSize".}
proc fcQRawFont_hintingPreference(self: pointer): cint {.importc: "QRawFont_hintingPreference".}
proc fcQRawFont_ascent(self: pointer): float64 {.importc: "QRawFont_ascent".}
proc fcQRawFont_capHeight(self: pointer): float64 {.importc: "QRawFont_capHeight".}
proc fcQRawFont_descent(self: pointer): float64 {.importc: "QRawFont_descent".}
proc fcQRawFont_leading(self: pointer): float64 {.importc: "QRawFont_leading".}
proc fcQRawFont_xHeight(self: pointer): float64 {.importc: "QRawFont_xHeight".}
proc fcQRawFont_averageCharWidth(self: pointer): float64 {.importc: "QRawFont_averageCharWidth".}
proc fcQRawFont_maxCharWidth(self: pointer): float64 {.importc: "QRawFont_maxCharWidth".}
proc fcQRawFont_lineThickness(self: pointer): float64 {.importc: "QRawFont_lineThickness".}
proc fcQRawFont_underlinePosition(self: pointer): float64 {.importc: "QRawFont_underlinePosition".}
proc fcQRawFont_unitsPerEm(self: pointer): float64 {.importc: "QRawFont_unitsPerEm".}
proc fcQRawFont_loadFromFile(self: pointer, fileName: struct_miqt_string, pixelSize: float64, hintingPreference: cint): void {.importc: "QRawFont_loadFromFile".}
proc fcQRawFont_loadFromData(self: pointer, fontData: struct_miqt_string, pixelSize: float64, hintingPreference: cint): void {.importc: "QRawFont_loadFromData".}
proc fcQRawFont_supportsCharacter(self: pointer, ucs4: cuint): bool {.importc: "QRawFont_supportsCharacter".}
proc fcQRawFont_supportsCharacterWithCharacter(self: pointer, character: pointer): bool {.importc: "QRawFont_supportsCharacterWithCharacter".}
proc fcQRawFont_supportedWritingSystems(self: pointer): struct_miqt_array {.importc: "QRawFont_supportedWritingSystems".}
proc fcQRawFont_fontTable(self: pointer, tagName: cstring): struct_miqt_string {.importc: "QRawFont_fontTable".}
proc fcQRawFont_fromFont(font: pointer): pointer {.importc: "QRawFont_fromFont".}
proc fcQRawFont_alphaMapForGlyph2(self: pointer, glyphIndex: cuint, antialiasingType: cint): pointer {.importc: "QRawFont_alphaMapForGlyph2".}
proc fcQRawFont_alphaMapForGlyph3(self: pointer, glyphIndex: cuint, antialiasingType: cint, transform: pointer): pointer {.importc: "QRawFont_alphaMapForGlyph3".}
proc fcQRawFont_fromFont2(font: pointer, writingSystem: cint): pointer {.importc: "QRawFont_fromFont2".}
proc fcQRawFont_new(): ptr cQRawFont {.importc: "QRawFont_new".}
proc fcQRawFont_new2(fileName: struct_miqt_string, pixelSize: float64): ptr cQRawFont {.importc: "QRawFont_new2".}
proc fcQRawFont_new3(fontData: struct_miqt_string, pixelSize: float64): ptr cQRawFont {.importc: "QRawFont_new3".}
proc fcQRawFont_new4(other: pointer): ptr cQRawFont {.importc: "QRawFont_new4".}
proc fcQRawFont_new5(fileName: struct_miqt_string, pixelSize: float64, hintingPreference: cint): ptr cQRawFont {.importc: "QRawFont_new5".}
proc fcQRawFont_new6(fontData: struct_miqt_string, pixelSize: float64, hintingPreference: cint): ptr cQRawFont {.importc: "QRawFont_new6".}

proc operatorAssign*(self: gen_qrawfont_types.QRawFont, other: gen_qrawfont_types.QRawFont): void =
  fcQRawFont_operatorAssign(self.h, other.h)

proc swap*(self: gen_qrawfont_types.QRawFont, other: gen_qrawfont_types.QRawFont): void =
  fcQRawFont_swap(self.h, other.h)

proc isValid*(self: gen_qrawfont_types.QRawFont): bool =
  fcQRawFont_isValid(self.h)

proc operatorEqual*(self: gen_qrawfont_types.QRawFont, other: gen_qrawfont_types.QRawFont): bool =
  fcQRawFont_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qrawfont_types.QRawFont, other: gen_qrawfont_types.QRawFont): bool =
  fcQRawFont_operatorNotEqual(self.h, other.h)

proc familyName*(self: gen_qrawfont_types.QRawFont): string =
  let v_ms = fcQRawFont_familyName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc styleName*(self: gen_qrawfont_types.QRawFont): string =
  let v_ms = fcQRawFont_styleName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc style*(self: gen_qrawfont_types.QRawFont): cint =
  cint(fcQRawFont_style(self.h))

proc weight*(self: gen_qrawfont_types.QRawFont): cint =
  fcQRawFont_weight(self.h)

proc glyphIndexesForString*(self: gen_qrawfont_types.QRawFont, text: openArray[char]): seq[cuint] =
  var v_ma = fcQRawFont_glyphIndexesForString(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  var vx_ret = newSeq[cuint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cuint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc advancesForGlyphIndexes*(self: gen_qrawfont_types.QRawFont, glyphIndexes: openArray[cuint]): seq[gen_qpoint_types.QPointF] =
  var glyphIndexes_CArray = newSeq[cuint](len(glyphIndexes))
  for i in 0..<len(glyphIndexes):
    glyphIndexes_CArray[i] = glyphIndexes[i]

  var v_ma = fcQRawFont_advancesForGlyphIndexes(self.h, struct_miqt_array(len: csize_t(len(glyphIndexes)), data: if len(glyphIndexes) == 0: nil else: addr(glyphIndexes_CArray[0])))
  var vx_ret = newSeq[gen_qpoint_types.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint_types.QPointF(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc advancesForGlyphIndexes*(self: gen_qrawfont_types.QRawFont, glyphIndexes: openArray[cuint], layoutFlags: cint): seq[gen_qpoint_types.QPointF] =
  var glyphIndexes_CArray = newSeq[cuint](len(glyphIndexes))
  for i in 0..<len(glyphIndexes):
    glyphIndexes_CArray[i] = glyphIndexes[i]

  var v_ma = fcQRawFont_advancesForGlyphIndexes2(self.h, struct_miqt_array(len: csize_t(len(glyphIndexes)), data: if len(glyphIndexes) == 0: nil else: addr(glyphIndexes_CArray[0])), cint(layoutFlags))
  var vx_ret = newSeq[gen_qpoint_types.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint_types.QPointF(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc glyphIndexesForChars*(self: gen_qrawfont_types.QRawFont, chars: gen_qchar_types.QChar, numChars: cint, glyphIndexes: ptr cuint, numGlyphs: ptr cint): bool =
  fcQRawFont_glyphIndexesForChars(self.h, chars.h, numChars, glyphIndexes, numGlyphs)

proc advancesForGlyphIndexes*(self: gen_qrawfont_types.QRawFont, glyphIndexes: ptr cuint, advances: gen_qpoint_types.QPointF, numGlyphs: cint): bool =
  fcQRawFont_advancesForGlyphIndexes3(self.h, glyphIndexes, advances.h, numGlyphs)

proc advancesForGlyphIndexes*(self: gen_qrawfont_types.QRawFont, glyphIndexes: ptr cuint, advances: gen_qpoint_types.QPointF, numGlyphs: cint, layoutFlags: cint): bool =
  fcQRawFont_advancesForGlyphIndexes4(self.h, glyphIndexes, advances.h, numGlyphs, cint(layoutFlags))

proc alphaMapForGlyph*(self: gen_qrawfont_types.QRawFont, glyphIndex: cuint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQRawFont_alphaMapForGlyph(self.h, glyphIndex), owned: true)

proc pathForGlyph*(self: gen_qrawfont_types.QRawFont, glyphIndex: cuint): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQRawFont_pathForGlyph(self.h, glyphIndex), owned: true)

proc boundingRect*(self: gen_qrawfont_types.QRawFont, glyphIndex: cuint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRawFont_boundingRect(self.h, glyphIndex), owned: true)

proc setPixelSize*(self: gen_qrawfont_types.QRawFont, pixelSize: float64): void =
  fcQRawFont_setPixelSize(self.h, pixelSize)

proc pixelSize*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_pixelSize(self.h)

proc hintingPreference*(self: gen_qrawfont_types.QRawFont): cint =
  cint(fcQRawFont_hintingPreference(self.h))

proc ascent*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_ascent(self.h)

proc capHeight*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_capHeight(self.h)

proc descent*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_descent(self.h)

proc leading*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_leading(self.h)

proc xHeight*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_xHeight(self.h)

proc averageCharWidth*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_averageCharWidth(self.h)

proc maxCharWidth*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_maxCharWidth(self.h)

proc lineThickness*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_lineThickness(self.h)

proc underlinePosition*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_underlinePosition(self.h)

proc unitsPerEm*(self: gen_qrawfont_types.QRawFont): float64 =
  fcQRawFont_unitsPerEm(self.h)

proc loadFromFile*(self: gen_qrawfont_types.QRawFont, fileName: openArray[char], pixelSize: float64, hintingPreference: cint): void =
  fcQRawFont_loadFromFile(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), pixelSize, cint(hintingPreference))

proc loadFromData*(self: gen_qrawfont_types.QRawFont, fontData: openArray[byte], pixelSize: float64, hintingPreference: cint): void =
  fcQRawFont_loadFromData(self.h, struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))), pixelSize, cint(hintingPreference))

proc supportsCharacter*(self: gen_qrawfont_types.QRawFont, ucs4: cuint): bool =
  fcQRawFont_supportsCharacter(self.h, ucs4)

proc supportsCharacter*(self: gen_qrawfont_types.QRawFont, character: gen_qchar_types.QChar): bool =
  fcQRawFont_supportsCharacterWithCharacter(self.h, character.h)

proc supportedWritingSystems*(self: gen_qrawfont_types.QRawFont): seq[cint] =
  var v_ma = fcQRawFont_supportedWritingSystems(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc fontTable*(self: gen_qrawfont_types.QRawFont, tagName: cstring): seq[byte] =
  var v_bytearray = fcQRawFont_fontTable(self.h, tagName)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromFont*(_: type gen_qrawfont_types.QRawFont, font: gen_qfont_types.QFont): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_fromFont(font.h), owned: true)

proc alphaMapForGlyph*(self: gen_qrawfont_types.QRawFont, glyphIndex: cuint, antialiasingType: cint): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQRawFont_alphaMapForGlyph2(self.h, glyphIndex, cint(antialiasingType)), owned: true)

proc alphaMapForGlyph*(self: gen_qrawfont_types.QRawFont, glyphIndex: cuint, antialiasingType: cint, transform: gen_qtransform_types.QTransform): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQRawFont_alphaMapForGlyph3(self.h, glyphIndex, cint(antialiasingType), transform.h), owned: true)

proc fromFont*(_: type gen_qrawfont_types.QRawFont, font: gen_qfont_types.QFont, writingSystem: cint): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_fromFont2(font.h, cint(writingSystem)), owned: true)

proc create*(T: type gen_qrawfont_types.QRawFont): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_new(), owned: true)

proc create*(T: type gen_qrawfont_types.QRawFont,
    fileName: openArray[char], pixelSize: float64): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_new2(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), pixelSize), owned: true)

proc create*(T: type gen_qrawfont_types.QRawFont,
    fontData: openArray[byte], pixelSize: float64): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_new3(struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))), pixelSize), owned: true)

proc create*(T: type gen_qrawfont_types.QRawFont,
    other: gen_qrawfont_types.QRawFont): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_new4(other.h), owned: true)

proc create*(T: type gen_qrawfont_types.QRawFont,
    fileName: openArray[char], pixelSize: float64, hintingPreference: cint): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_new5(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), pixelSize, cint(hintingPreference)), owned: true)

proc create*(T: type gen_qrawfont_types.QRawFont,
    fontData: openArray[byte], pixelSize: float64, hintingPreference: cint): gen_qrawfont_types.QRawFont =
  gen_qrawfont_types.QRawFont(h: fcQRawFont_new6(struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))), pixelSize, cint(hintingPreference)), owned: true)

