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


type QFontStyleHintEnum* = distinct cint
template Helvetica*(_: type QFontStyleHintEnum): untyped = 0
template SansSerif*(_: type QFontStyleHintEnum): untyped = 0
template Times*(_: type QFontStyleHintEnum): untyped = 1
template Serif*(_: type QFontStyleHintEnum): untyped = 1
template Courier*(_: type QFontStyleHintEnum): untyped = 2
template TypeWriter*(_: type QFontStyleHintEnum): untyped = 2
template OldEnglish*(_: type QFontStyleHintEnum): untyped = 3
template Decorative*(_: type QFontStyleHintEnum): untyped = 3
template System*(_: type QFontStyleHintEnum): untyped = 4
template AnyStyle*(_: type QFontStyleHintEnum): untyped = 5
template Cursive*(_: type QFontStyleHintEnum): untyped = 6
template Monospace*(_: type QFontStyleHintEnum): untyped = 7
template Fantasy*(_: type QFontStyleHintEnum): untyped = 8


type QFontStyleStrategyEnum* = distinct cint
template PreferDefault*(_: type QFontStyleStrategyEnum): untyped = 1
template PreferBitmap*(_: type QFontStyleStrategyEnum): untyped = 2
template PreferDevice*(_: type QFontStyleStrategyEnum): untyped = 4
template PreferOutline*(_: type QFontStyleStrategyEnum): untyped = 8
template ForceOutline*(_: type QFontStyleStrategyEnum): untyped = 16
template PreferMatch*(_: type QFontStyleStrategyEnum): untyped = 32
template PreferQuality*(_: type QFontStyleStrategyEnum): untyped = 64
template PreferAntialias*(_: type QFontStyleStrategyEnum): untyped = 128
template NoAntialias*(_: type QFontStyleStrategyEnum): untyped = 256
template OpenGLCompatible*(_: type QFontStyleStrategyEnum): untyped = 512
template ForceIntegerMetrics*(_: type QFontStyleStrategyEnum): untyped = 1024
template NoSubpixelAntialias*(_: type QFontStyleStrategyEnum): untyped = 2048
template PreferNoShaping*(_: type QFontStyleStrategyEnum): untyped = 4096
template NoFontMerging*(_: type QFontStyleStrategyEnum): untyped = 32768


type QFontHintingPreferenceEnum* = distinct cint
template PreferDefaultHinting*(_: type QFontHintingPreferenceEnum): untyped = 0
template PreferNoHinting*(_: type QFontHintingPreferenceEnum): untyped = 1
template PreferVerticalHinting*(_: type QFontHintingPreferenceEnum): untyped = 2
template PreferFullHinting*(_: type QFontHintingPreferenceEnum): untyped = 3


type QFontWeightEnum* = distinct cint
template Thin*(_: type QFontWeightEnum): untyped = 0
template ExtraLight*(_: type QFontWeightEnum): untyped = 12
template Light*(_: type QFontWeightEnum): untyped = 25
template Normal*(_: type QFontWeightEnum): untyped = 50
template Medium*(_: type QFontWeightEnum): untyped = 57
template DemiBold*(_: type QFontWeightEnum): untyped = 63
template Bold*(_: type QFontWeightEnum): untyped = 75
template ExtraBold*(_: type QFontWeightEnum): untyped = 81
template Black*(_: type QFontWeightEnum): untyped = 87


type QFontStyleEnum* = distinct cint
template StyleNormal*(_: type QFontStyleEnum): untyped = 0
template StyleItalic*(_: type QFontStyleEnum): untyped = 1
template StyleOblique*(_: type QFontStyleEnum): untyped = 2


type QFontStretchEnum* = distinct cint
template AnyStretch*(_: type QFontStretchEnum): untyped = 0
template UltraCondensed*(_: type QFontStretchEnum): untyped = 50
template ExtraCondensed*(_: type QFontStretchEnum): untyped = 62
template Condensed*(_: type QFontStretchEnum): untyped = 75
template SemiCondensed*(_: type QFontStretchEnum): untyped = 87
template Unstretched*(_: type QFontStretchEnum): untyped = 100
template SemiExpanded*(_: type QFontStretchEnum): untyped = 112
template Expanded*(_: type QFontStretchEnum): untyped = 125
template ExtraExpanded*(_: type QFontStretchEnum): untyped = 150
template UltraExpanded*(_: type QFontStretchEnum): untyped = 200


type QFontCapitalizationEnum* = distinct cint
template MixedCase*(_: type QFontCapitalizationEnum): untyped = 0
template AllUppercase*(_: type QFontCapitalizationEnum): untyped = 1
template AllLowercase*(_: type QFontCapitalizationEnum): untyped = 2
template SmallCaps*(_: type QFontCapitalizationEnum): untyped = 3
template Capitalize*(_: type QFontCapitalizationEnum): untyped = 4


type QFontSpacingTypeEnum* = distinct cint
template PercentageSpacing*(_: type QFontSpacingTypeEnum): untyped = 0
template AbsoluteSpacing*(_: type QFontSpacingTypeEnum): untyped = 1


type QFontResolvePropertiesEnum* = distinct cint
template NoPropertiesResolved*(_: type QFontResolvePropertiesEnum): untyped = 0
template FamilyResolved*(_: type QFontResolvePropertiesEnum): untyped = 1
template SizeResolved*(_: type QFontResolvePropertiesEnum): untyped = 2
template StyleHintResolved*(_: type QFontResolvePropertiesEnum): untyped = 4
template StyleStrategyResolved*(_: type QFontResolvePropertiesEnum): untyped = 8
template WeightResolved*(_: type QFontResolvePropertiesEnum): untyped = 16
template StyleResolved*(_: type QFontResolvePropertiesEnum): untyped = 32
template UnderlineResolved*(_: type QFontResolvePropertiesEnum): untyped = 64
template OverlineResolved*(_: type QFontResolvePropertiesEnum): untyped = 128
template StrikeOutResolved*(_: type QFontResolvePropertiesEnum): untyped = 256
template FixedPitchResolved*(_: type QFontResolvePropertiesEnum): untyped = 512
template StretchResolved*(_: type QFontResolvePropertiesEnum): untyped = 1024
template KerningResolved*(_: type QFontResolvePropertiesEnum): untyped = 2048
template CapitalizationResolved*(_: type QFontResolvePropertiesEnum): untyped = 4096
template LetterSpacingResolved*(_: type QFontResolvePropertiesEnum): untyped = 8192
template WordSpacingResolved*(_: type QFontResolvePropertiesEnum): untyped = 16384
template HintingPreferenceResolved*(_: type QFontResolvePropertiesEnum): untyped = 32768
template StyleNameResolved*(_: type QFontResolvePropertiesEnum): untyped = 65536
template FamiliesResolved*(_: type QFontResolvePropertiesEnum): untyped = 131072
template AllPropertiesResolved*(_: type QFontResolvePropertiesEnum): untyped = 262143


import ./gen_qfont_types
export gen_qfont_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qpaintdevice_types
export
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qpaintdevice_types

type cQFont*{.exportc: "QFont", incompleteStruct.} = object

proc fcQFont_swap(self: pointer, other: pointer): void {.importc: "QFont_swap".}
proc fcQFont_family(self: pointer, ): struct_miqt_string {.importc: "QFont_family".}
proc fcQFont_setFamily(self: pointer, family: struct_miqt_string): void {.importc: "QFont_setFamily".}
proc fcQFont_families(self: pointer, ): struct_miqt_array {.importc: "QFont_families".}
proc fcQFont_setFamilies(self: pointer, families: struct_miqt_array): void {.importc: "QFont_setFamilies".}
proc fcQFont_styleName(self: pointer, ): struct_miqt_string {.importc: "QFont_styleName".}
proc fcQFont_setStyleName(self: pointer, styleName: struct_miqt_string): void {.importc: "QFont_setStyleName".}
proc fcQFont_pointSize(self: pointer, ): cint {.importc: "QFont_pointSize".}
proc fcQFont_setPointSize(self: pointer, pointSize: cint): void {.importc: "QFont_setPointSize".}
proc fcQFont_pointSizeF(self: pointer, ): float64 {.importc: "QFont_pointSizeF".}
proc fcQFont_setPointSizeF(self: pointer, pointSizeF: float64): void {.importc: "QFont_setPointSizeF".}
proc fcQFont_pixelSize(self: pointer, ): cint {.importc: "QFont_pixelSize".}
proc fcQFont_setPixelSize(self: pointer, pixelSize: cint): void {.importc: "QFont_setPixelSize".}
proc fcQFont_weight(self: pointer, ): cint {.importc: "QFont_weight".}
proc fcQFont_setWeight(self: pointer, weight: cint): void {.importc: "QFont_setWeight".}
proc fcQFont_bold(self: pointer, ): bool {.importc: "QFont_bold".}
proc fcQFont_setBold(self: pointer, bold: bool): void {.importc: "QFont_setBold".}
proc fcQFont_setStyle(self: pointer, style: cint): void {.importc: "QFont_setStyle".}
proc fcQFont_style(self: pointer, ): cint {.importc: "QFont_style".}
proc fcQFont_italic(self: pointer, ): bool {.importc: "QFont_italic".}
proc fcQFont_setItalic(self: pointer, b: bool): void {.importc: "QFont_setItalic".}
proc fcQFont_underline(self: pointer, ): bool {.importc: "QFont_underline".}
proc fcQFont_setUnderline(self: pointer, underline: bool): void {.importc: "QFont_setUnderline".}
proc fcQFont_overline(self: pointer, ): bool {.importc: "QFont_overline".}
proc fcQFont_setOverline(self: pointer, overline: bool): void {.importc: "QFont_setOverline".}
proc fcQFont_strikeOut(self: pointer, ): bool {.importc: "QFont_strikeOut".}
proc fcQFont_setStrikeOut(self: pointer, strikeOut: bool): void {.importc: "QFont_setStrikeOut".}
proc fcQFont_fixedPitch(self: pointer, ): bool {.importc: "QFont_fixedPitch".}
proc fcQFont_setFixedPitch(self: pointer, fixedPitch: bool): void {.importc: "QFont_setFixedPitch".}
proc fcQFont_kerning(self: pointer, ): bool {.importc: "QFont_kerning".}
proc fcQFont_setKerning(self: pointer, kerning: bool): void {.importc: "QFont_setKerning".}
proc fcQFont_styleHint(self: pointer, ): cint {.importc: "QFont_styleHint".}
proc fcQFont_styleStrategy(self: pointer, ): cint {.importc: "QFont_styleStrategy".}
proc fcQFont_setStyleHint(self: pointer, param1: cint): void {.importc: "QFont_setStyleHint".}
proc fcQFont_setStyleStrategy(self: pointer, s: cint): void {.importc: "QFont_setStyleStrategy".}
proc fcQFont_stretch(self: pointer, ): cint {.importc: "QFont_stretch".}
proc fcQFont_setStretch(self: pointer, stretch: cint): void {.importc: "QFont_setStretch".}
proc fcQFont_letterSpacing(self: pointer, ): float64 {.importc: "QFont_letterSpacing".}
proc fcQFont_letterSpacingType(self: pointer, ): cint {.importc: "QFont_letterSpacingType".}
proc fcQFont_setLetterSpacing(self: pointer, typeVal: cint, spacing: float64): void {.importc: "QFont_setLetterSpacing".}
proc fcQFont_wordSpacing(self: pointer, ): float64 {.importc: "QFont_wordSpacing".}
proc fcQFont_setWordSpacing(self: pointer, spacing: float64): void {.importc: "QFont_setWordSpacing".}
proc fcQFont_setCapitalization(self: pointer, capitalization: cint): void {.importc: "QFont_setCapitalization".}
proc fcQFont_capitalization(self: pointer, ): cint {.importc: "QFont_capitalization".}
proc fcQFont_setHintingPreference(self: pointer, hintingPreference: cint): void {.importc: "QFont_setHintingPreference".}
proc fcQFont_hintingPreference(self: pointer, ): cint {.importc: "QFont_hintingPreference".}
proc fcQFont_rawMode(self: pointer, ): bool {.importc: "QFont_rawMode".}
proc fcQFont_setRawMode(self: pointer, rawMode: bool): void {.importc: "QFont_setRawMode".}
proc fcQFont_exactMatch(self: pointer, ): bool {.importc: "QFont_exactMatch".}
proc fcQFont_operatorAssign(self: pointer, param1: pointer): void {.importc: "QFont_operatorAssign".}
proc fcQFont_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QFont_operatorEqual".}
proc fcQFont_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QFont_operatorNotEqual".}
proc fcQFont_operatorLesser(self: pointer, param1: pointer): bool {.importc: "QFont_operatorLesser".}
proc fcQFont_ToQVariant(self: pointer, ): pointer {.importc: "QFont_ToQVariant".}
proc fcQFont_isCopyOf(self: pointer, param1: pointer): bool {.importc: "QFont_isCopyOf".}
proc fcQFont_setRawName(self: pointer, rawName: struct_miqt_string): void {.importc: "QFont_setRawName".}
proc fcQFont_rawName(self: pointer, ): struct_miqt_string {.importc: "QFont_rawName".}
proc fcQFont_key(self: pointer, ): struct_miqt_string {.importc: "QFont_key".}
proc fcQFont_toString(self: pointer, ): struct_miqt_string {.importc: "QFont_toString".}
proc fcQFont_fromString(self: pointer, param1: struct_miqt_string): bool {.importc: "QFont_fromString".}
proc fcQFont_substitute(param1: struct_miqt_string): struct_miqt_string {.importc: "QFont_substitute".}
proc fcQFont_substitutes(param1: struct_miqt_string): struct_miqt_array {.importc: "QFont_substitutes".}
proc fcQFont_substitutions(): struct_miqt_array {.importc: "QFont_substitutions".}
proc fcQFont_insertSubstitution(param1: struct_miqt_string, param2: struct_miqt_string): void {.importc: "QFont_insertSubstitution".}
proc fcQFont_insertSubstitutions(param1: struct_miqt_string, param2: struct_miqt_array): void {.importc: "QFont_insertSubstitutions".}
proc fcQFont_removeSubstitutions(param1: struct_miqt_string): void {.importc: "QFont_removeSubstitutions".}
proc fcQFont_initialize(): void {.importc: "QFont_initialize".}
proc fcQFont_cleanup(): void {.importc: "QFont_cleanup".}
proc fcQFont_cacheStatistics(): void {.importc: "QFont_cacheStatistics".}
proc fcQFont_defaultFamily(self: pointer, ): struct_miqt_string {.importc: "QFont_defaultFamily".}
proc fcQFont_lastResortFamily(self: pointer, ): struct_miqt_string {.importc: "QFont_lastResortFamily".}
proc fcQFont_lastResortFont(self: pointer, ): struct_miqt_string {.importc: "QFont_lastResortFont".}
proc fcQFont_resolve(self: pointer, param1: pointer): pointer {.importc: "QFont_resolve".}
proc fcQFont_resolve2(self: pointer, ): cuint {.importc: "QFont_resolve2".}
proc fcQFont_resolveWithMask(self: pointer, mask: cuint): void {.importc: "QFont_resolveWithMask".}
proc fcQFont_setStyleHint2(self: pointer, param1: cint, param2: cint): void {.importc: "QFont_setStyleHint2".}
proc fcQFont_new(): ptr cQFont {.importc: "QFont_new".}
proc fcQFont_new2(family: struct_miqt_string): ptr cQFont {.importc: "QFont_new2".}
proc fcQFont_new3(font: pointer, pd: pointer): ptr cQFont {.importc: "QFont_new3".}
proc fcQFont_new4(font: pointer, pd: pointer): ptr cQFont {.importc: "QFont_new4".}
proc fcQFont_new5(font: pointer): ptr cQFont {.importc: "QFont_new5".}
proc fcQFont_new6(family: struct_miqt_string, pointSize: cint): ptr cQFont {.importc: "QFont_new6".}
proc fcQFont_new7(family: struct_miqt_string, pointSize: cint, weight: cint): ptr cQFont {.importc: "QFont_new7".}
proc fcQFont_new8(family: struct_miqt_string, pointSize: cint, weight: cint, italic: bool): ptr cQFont {.importc: "QFont_new8".}
proc fcQFont_staticMetaObject(): pointer {.importc: "QFont_staticMetaObject".}

proc swap*(self: gen_qfont_types.QFont, other: gen_qfont_types.QFont): void =
  fcQFont_swap(self.h, other.h)

proc family*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_family(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFamily*(self: gen_qfont_types.QFont, family: string): void =
  fcQFont_setFamily(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc families*(self: gen_qfont_types.QFont, ): seq[string] =
  var v_ma = fcQFont_families(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setFamilies*(self: gen_qfont_types.QFont, families: seq[string]): void =
  var families_CArray = newSeq[struct_miqt_string](len(families))
  for i in 0..<len(families):
    families_CArray[i] = struct_miqt_string(data: families[i], len: csize_t(len(families[i])))

  fcQFont_setFamilies(self.h, struct_miqt_array(len: csize_t(len(families)), data: if len(families) == 0: nil else: addr(families_CArray[0])))

proc styleName*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_styleName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyleName*(self: gen_qfont_types.QFont, styleName: string): void =
  fcQFont_setStyleName(self.h, struct_miqt_string(data: styleName, len: csize_t(len(styleName))))

proc pointSize*(self: gen_qfont_types.QFont, ): cint =
  fcQFont_pointSize(self.h)

proc setPointSize*(self: gen_qfont_types.QFont, pointSize: cint): void =
  fcQFont_setPointSize(self.h, pointSize)

proc pointSizeF*(self: gen_qfont_types.QFont, ): float64 =
  fcQFont_pointSizeF(self.h)

proc setPointSizeF*(self: gen_qfont_types.QFont, pointSizeF: float64): void =
  fcQFont_setPointSizeF(self.h, pointSizeF)

proc pixelSize*(self: gen_qfont_types.QFont, ): cint =
  fcQFont_pixelSize(self.h)

proc setPixelSize*(self: gen_qfont_types.QFont, pixelSize: cint): void =
  fcQFont_setPixelSize(self.h, pixelSize)

proc weight*(self: gen_qfont_types.QFont, ): cint =
  fcQFont_weight(self.h)

proc setWeight*(self: gen_qfont_types.QFont, weight: cint): void =
  fcQFont_setWeight(self.h, weight)

proc bold*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_bold(self.h)

proc setBold*(self: gen_qfont_types.QFont, bold: bool): void =
  fcQFont_setBold(self.h, bold)

proc setStyle*(self: gen_qfont_types.QFont, style: cint): void =
  fcQFont_setStyle(self.h, cint(style))

proc style*(self: gen_qfont_types.QFont, ): cint =
  cint(fcQFont_style(self.h))

proc italic*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_italic(self.h)

proc setItalic*(self: gen_qfont_types.QFont, b: bool): void =
  fcQFont_setItalic(self.h, b)

proc underline*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_underline(self.h)

proc setUnderline*(self: gen_qfont_types.QFont, underline: bool): void =
  fcQFont_setUnderline(self.h, underline)

proc overline*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_overline(self.h)

proc setOverline*(self: gen_qfont_types.QFont, overline: bool): void =
  fcQFont_setOverline(self.h, overline)

proc strikeOut*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_strikeOut(self.h)

proc setStrikeOut*(self: gen_qfont_types.QFont, strikeOut: bool): void =
  fcQFont_setStrikeOut(self.h, strikeOut)

proc fixedPitch*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_fixedPitch(self.h)

proc setFixedPitch*(self: gen_qfont_types.QFont, fixedPitch: bool): void =
  fcQFont_setFixedPitch(self.h, fixedPitch)

proc kerning*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_kerning(self.h)

proc setKerning*(self: gen_qfont_types.QFont, kerning: bool): void =
  fcQFont_setKerning(self.h, kerning)

proc styleHint*(self: gen_qfont_types.QFont, ): cint =
  cint(fcQFont_styleHint(self.h))

proc styleStrategy*(self: gen_qfont_types.QFont, ): cint =
  cint(fcQFont_styleStrategy(self.h))

proc setStyleHint*(self: gen_qfont_types.QFont, param1: cint): void =
  fcQFont_setStyleHint(self.h, cint(param1))

proc setStyleStrategy*(self: gen_qfont_types.QFont, s: cint): void =
  fcQFont_setStyleStrategy(self.h, cint(s))

proc stretch*(self: gen_qfont_types.QFont, ): cint =
  fcQFont_stretch(self.h)

proc setStretch*(self: gen_qfont_types.QFont, stretch: cint): void =
  fcQFont_setStretch(self.h, stretch)

proc letterSpacing*(self: gen_qfont_types.QFont, ): float64 =
  fcQFont_letterSpacing(self.h)

proc letterSpacingType*(self: gen_qfont_types.QFont, ): cint =
  cint(fcQFont_letterSpacingType(self.h))

proc setLetterSpacing*(self: gen_qfont_types.QFont, typeVal: cint, spacing: float64): void =
  fcQFont_setLetterSpacing(self.h, cint(typeVal), spacing)

proc wordSpacing*(self: gen_qfont_types.QFont, ): float64 =
  fcQFont_wordSpacing(self.h)

proc setWordSpacing*(self: gen_qfont_types.QFont, spacing: float64): void =
  fcQFont_setWordSpacing(self.h, spacing)

proc setCapitalization*(self: gen_qfont_types.QFont, capitalization: cint): void =
  fcQFont_setCapitalization(self.h, cint(capitalization))

proc capitalization*(self: gen_qfont_types.QFont, ): cint =
  cint(fcQFont_capitalization(self.h))

proc setHintingPreference*(self: gen_qfont_types.QFont, hintingPreference: cint): void =
  fcQFont_setHintingPreference(self.h, cint(hintingPreference))

proc hintingPreference*(self: gen_qfont_types.QFont, ): cint =
  cint(fcQFont_hintingPreference(self.h))

proc rawMode*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_rawMode(self.h)

proc setRawMode*(self: gen_qfont_types.QFont, rawMode: bool): void =
  fcQFont_setRawMode(self.h, rawMode)

proc exactMatch*(self: gen_qfont_types.QFont, ): bool =
  fcQFont_exactMatch(self.h)

proc operatorAssign*(self: gen_qfont_types.QFont, param1: gen_qfont_types.QFont): void =
  fcQFont_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qfont_types.QFont, param1: gen_qfont_types.QFont): bool =
  fcQFont_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qfont_types.QFont, param1: gen_qfont_types.QFont): bool =
  fcQFont_operatorNotEqual(self.h, param1.h)

proc operatorLesser*(self: gen_qfont_types.QFont, param1: gen_qfont_types.QFont): bool =
  fcQFont_operatorLesser(self.h, param1.h)

proc ToQVariant*(self: gen_qfont_types.QFont, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFont_ToQVariant(self.h), owned: true)

proc isCopyOf*(self: gen_qfont_types.QFont, param1: gen_qfont_types.QFont): bool =
  fcQFont_isCopyOf(self.h, param1.h)

proc setRawName*(self: gen_qfont_types.QFont, rawName: string): void =
  fcQFont_setRawName(self.h, struct_miqt_string(data: rawName, len: csize_t(len(rawName))))

proc rawName*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_rawName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc key*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(self: gen_qfont_types.QFont, param1: string): bool =
  fcQFont_fromString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc substitute*(_: type gen_qfont_types.QFont, param1: string): string =
  let v_ms = fcQFont_substitute(struct_miqt_string(data: param1, len: csize_t(len(param1))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc substitutes*(_: type gen_qfont_types.QFont, param1: string): seq[string] =
  var v_ma = fcQFont_substitutes(struct_miqt_string(data: param1, len: csize_t(len(param1))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc substitutions*(_: type gen_qfont_types.QFont, ): seq[string] =
  var v_ma = fcQFont_substitutions()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc insertSubstitution*(_: type gen_qfont_types.QFont, param1: string, param2: string): void =
  fcQFont_insertSubstitution(struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_string(data: param2, len: csize_t(len(param2))))

proc insertSubstitutions*(_: type gen_qfont_types.QFont, param1: string, param2: seq[string]): void =
  var param2_CArray = newSeq[struct_miqt_string](len(param2))
  for i in 0..<len(param2):
    param2_CArray[i] = struct_miqt_string(data: param2[i], len: csize_t(len(param2[i])))

  fcQFont_insertSubstitutions(struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_array(len: csize_t(len(param2)), data: if len(param2) == 0: nil else: addr(param2_CArray[0])))

proc removeSubstitutions*(_: type gen_qfont_types.QFont, param1: string): void =
  fcQFont_removeSubstitutions(struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc initialize*(_: type gen_qfont_types.QFont, ): void =
  fcQFont_initialize()

proc cleanup*(_: type gen_qfont_types.QFont, ): void =
  fcQFont_cleanup()

proc cacheStatistics*(_: type gen_qfont_types.QFont, ): void =
  fcQFont_cacheStatistics()

proc defaultFamily*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_defaultFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastResortFamily*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_lastResortFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastResortFont*(self: gen_qfont_types.QFont, ): string =
  let v_ms = fcQFont_lastResortFont(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resolve*(self: gen_qfont_types.QFont, param1: gen_qfont_types.QFont): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_resolve(self.h, param1.h), owned: true)

proc resolve*(self: gen_qfont_types.QFont, ): cuint =
  fcQFont_resolve2(self.h)

proc resolve*(self: gen_qfont_types.QFont, mask: cuint): void =
  fcQFont_resolveWithMask(self.h, mask)

proc setStyleHint*(self: gen_qfont_types.QFont, param1: cint, param2: cint): void =
  fcQFont_setStyleHint2(self.h, cint(param1), cint(param2))

proc create*(T: type gen_qfont_types.QFont): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new(), owned: true)

proc create*(T: type gen_qfont_types.QFont,
    family: string): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new2(struct_miqt_string(data: family, len: csize_t(len(family)))), owned: true)

proc create*(T: type gen_qfont_types.QFont,
    font: gen_qfont_types.QFont, pd: gen_qpaintdevice_types.QPaintDevice): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new3(font.h, pd.h), owned: true)

proc create2*(T: type gen_qfont_types.QFont,
    font: gen_qfont_types.QFont, pd: gen_qpaintdevice_types.QPaintDevice): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new4(font.h, pd.h), owned: true)

proc create*(T: type gen_qfont_types.QFont,
    font: gen_qfont_types.QFont): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new5(font.h), owned: true)

proc create*(T: type gen_qfont_types.QFont,
    family: string, pointSize: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new6(struct_miqt_string(data: family, len: csize_t(len(family))), pointSize), owned: true)

proc create*(T: type gen_qfont_types.QFont,
    family: string, pointSize: cint, weight: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new7(struct_miqt_string(data: family, len: csize_t(len(family))), pointSize, weight), owned: true)

proc create*(T: type gen_qfont_types.QFont,
    family: string, pointSize: cint, weight: cint, italic: bool): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFont_new8(struct_miqt_string(data: family, len: csize_t(len(family))), pointSize, weight, italic), owned: true)

proc staticMetaObject*(_: type gen_qfont_types.QFont): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFont_staticMetaObject())
