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


type QTextLengthTypeEnum* = distinct cint
template VariableLength*(_: type QTextLengthTypeEnum): untyped = 0
template FixedLength*(_: type QTextLengthTypeEnum): untyped = 1
template PercentageLength*(_: type QTextLengthTypeEnum): untyped = 2


type QTextFormatFormatTypeEnum* = distinct cint
template InvalidFormat*(_: type QTextFormatFormatTypeEnum): untyped = -1
template BlockFormat*(_: type QTextFormatFormatTypeEnum): untyped = 1
template CharFormat*(_: type QTextFormatFormatTypeEnum): untyped = 2
template ListFormat*(_: type QTextFormatFormatTypeEnum): untyped = 3
template TableFormat*(_: type QTextFormatFormatTypeEnum): untyped = 4
template FrameFormat*(_: type QTextFormatFormatTypeEnum): untyped = 5
template UserFormat*(_: type QTextFormatFormatTypeEnum): untyped = 100


type QTextFormatPropertyEnum* = distinct cint
template ObjectIndex*(_: type QTextFormatPropertyEnum): untyped = 0
template CssFloat*(_: type QTextFormatPropertyEnum): untyped = 2048
template LayoutDirection*(_: type QTextFormatPropertyEnum): untyped = 2049
template OutlinePen*(_: type QTextFormatPropertyEnum): untyped = 2064
template BackgroundBrush*(_: type QTextFormatPropertyEnum): untyped = 2080
template ForegroundBrush*(_: type QTextFormatPropertyEnum): untyped = 2081
template BackgroundImageUrl*(_: type QTextFormatPropertyEnum): untyped = 2083
template BlockAlignment*(_: type QTextFormatPropertyEnum): untyped = 4112
template BlockTopMargin*(_: type QTextFormatPropertyEnum): untyped = 4144
template BlockBottomMargin*(_: type QTextFormatPropertyEnum): untyped = 4145
template BlockLeftMargin*(_: type QTextFormatPropertyEnum): untyped = 4146
template BlockRightMargin*(_: type QTextFormatPropertyEnum): untyped = 4147
template TextIndent*(_: type QTextFormatPropertyEnum): untyped = 4148
template TabPositions*(_: type QTextFormatPropertyEnum): untyped = 4149
template BlockIndent*(_: type QTextFormatPropertyEnum): untyped = 4160
template LineHeight*(_: type QTextFormatPropertyEnum): untyped = 4168
template LineHeightType*(_: type QTextFormatPropertyEnum): untyped = 4169
template BlockNonBreakableLines*(_: type QTextFormatPropertyEnum): untyped = 4176
template BlockTrailingHorizontalRulerWidth*(_: type QTextFormatPropertyEnum): untyped = 4192
template HeadingLevel*(_: type QTextFormatPropertyEnum): untyped = 4208
template BlockQuoteLevel*(_: type QTextFormatPropertyEnum): untyped = 4224
template BlockCodeLanguage*(_: type QTextFormatPropertyEnum): untyped = 4240
template BlockCodeFence*(_: type QTextFormatPropertyEnum): untyped = 4241
template BlockMarker*(_: type QTextFormatPropertyEnum): untyped = 4256
template FirstFontProperty*(_: type QTextFormatPropertyEnum): untyped = 8160
template FontCapitalization*(_: type QTextFormatPropertyEnum): untyped = 8160
template FontLetterSpacingType*(_: type QTextFormatPropertyEnum): untyped = 8243
template FontLetterSpacing*(_: type QTextFormatPropertyEnum): untyped = 8161
template FontWordSpacing*(_: type QTextFormatPropertyEnum): untyped = 8162
template FontStretch*(_: type QTextFormatPropertyEnum): untyped = 8244
template FontStyleHint*(_: type QTextFormatPropertyEnum): untyped = 8163
template FontStyleStrategy*(_: type QTextFormatPropertyEnum): untyped = 8164
template FontKerning*(_: type QTextFormatPropertyEnum): untyped = 8165
template FontHintingPreference*(_: type QTextFormatPropertyEnum): untyped = 8166
template FontFamilies*(_: type QTextFormatPropertyEnum): untyped = 8167
template FontStyleName*(_: type QTextFormatPropertyEnum): untyped = 8168
template FontFamily*(_: type QTextFormatPropertyEnum): untyped = 8192
template FontPointSize*(_: type QTextFormatPropertyEnum): untyped = 8193
template FontSizeAdjustment*(_: type QTextFormatPropertyEnum): untyped = 8194
template FontSizeIncrement*(_: type QTextFormatPropertyEnum): untyped = 8194
template FontWeight*(_: type QTextFormatPropertyEnum): untyped = 8195
template FontItalic*(_: type QTextFormatPropertyEnum): untyped = 8196
template FontUnderline*(_: type QTextFormatPropertyEnum): untyped = 8197
template FontOverline*(_: type QTextFormatPropertyEnum): untyped = 8198
template FontStrikeOut*(_: type QTextFormatPropertyEnum): untyped = 8199
template FontFixedPitch*(_: type QTextFormatPropertyEnum): untyped = 8200
template FontPixelSize*(_: type QTextFormatPropertyEnum): untyped = 8201
template LastFontProperty*(_: type QTextFormatPropertyEnum): untyped = 8201
template TextUnderlineColor*(_: type QTextFormatPropertyEnum): untyped = 8208
template TextVerticalAlignment*(_: type QTextFormatPropertyEnum): untyped = 8225
template TextOutline*(_: type QTextFormatPropertyEnum): untyped = 8226
template TextUnderlineStyle*(_: type QTextFormatPropertyEnum): untyped = 8227
template TextToolTip*(_: type QTextFormatPropertyEnum): untyped = 8228
template IsAnchor*(_: type QTextFormatPropertyEnum): untyped = 8240
template AnchorHref*(_: type QTextFormatPropertyEnum): untyped = 8241
template AnchorName*(_: type QTextFormatPropertyEnum): untyped = 8242
template ObjectType*(_: type QTextFormatPropertyEnum): untyped = 12032
template ListStyle*(_: type QTextFormatPropertyEnum): untyped = 12288
template ListIndent*(_: type QTextFormatPropertyEnum): untyped = 12289
template ListNumberPrefix*(_: type QTextFormatPropertyEnum): untyped = 12290
template ListNumberSuffix*(_: type QTextFormatPropertyEnum): untyped = 12291
template FrameBorder*(_: type QTextFormatPropertyEnum): untyped = 16384
template FrameMargin*(_: type QTextFormatPropertyEnum): untyped = 16385
template FramePadding*(_: type QTextFormatPropertyEnum): untyped = 16386
template FrameWidth*(_: type QTextFormatPropertyEnum): untyped = 16387
template FrameHeight*(_: type QTextFormatPropertyEnum): untyped = 16388
template FrameTopMargin*(_: type QTextFormatPropertyEnum): untyped = 16389
template FrameBottomMargin*(_: type QTextFormatPropertyEnum): untyped = 16390
template FrameLeftMargin*(_: type QTextFormatPropertyEnum): untyped = 16391
template FrameRightMargin*(_: type QTextFormatPropertyEnum): untyped = 16392
template FrameBorderBrush*(_: type QTextFormatPropertyEnum): untyped = 16393
template FrameBorderStyle*(_: type QTextFormatPropertyEnum): untyped = 16400
template TableColumns*(_: type QTextFormatPropertyEnum): untyped = 16640
template TableColumnWidthConstraints*(_: type QTextFormatPropertyEnum): untyped = 16641
template TableCellSpacing*(_: type QTextFormatPropertyEnum): untyped = 16642
template TableCellPadding*(_: type QTextFormatPropertyEnum): untyped = 16643
template TableHeaderRowCount*(_: type QTextFormatPropertyEnum): untyped = 16644
template TableBorderCollapse*(_: type QTextFormatPropertyEnum): untyped = 16645
template TableCellRowSpan*(_: type QTextFormatPropertyEnum): untyped = 18448
template TableCellColumnSpan*(_: type QTextFormatPropertyEnum): untyped = 18449
template TableCellTopPadding*(_: type QTextFormatPropertyEnum): untyped = 18450
template TableCellBottomPadding*(_: type QTextFormatPropertyEnum): untyped = 18451
template TableCellLeftPadding*(_: type QTextFormatPropertyEnum): untyped = 18452
template TableCellRightPadding*(_: type QTextFormatPropertyEnum): untyped = 18453
template TableCellTopBorder*(_: type QTextFormatPropertyEnum): untyped = 18454
template TableCellBottomBorder*(_: type QTextFormatPropertyEnum): untyped = 18455
template TableCellLeftBorder*(_: type QTextFormatPropertyEnum): untyped = 18456
template TableCellRightBorder*(_: type QTextFormatPropertyEnum): untyped = 18457
template TableCellTopBorderStyle*(_: type QTextFormatPropertyEnum): untyped = 18458
template TableCellBottomBorderStyle*(_: type QTextFormatPropertyEnum): untyped = 18459
template TableCellLeftBorderStyle*(_: type QTextFormatPropertyEnum): untyped = 18460
template TableCellRightBorderStyle*(_: type QTextFormatPropertyEnum): untyped = 18461
template TableCellTopBorderBrush*(_: type QTextFormatPropertyEnum): untyped = 18462
template TableCellBottomBorderBrush*(_: type QTextFormatPropertyEnum): untyped = 18463
template TableCellLeftBorderBrush*(_: type QTextFormatPropertyEnum): untyped = 18464
template TableCellRightBorderBrush*(_: type QTextFormatPropertyEnum): untyped = 18465
template ImageName*(_: type QTextFormatPropertyEnum): untyped = 20480
template ImageTitle*(_: type QTextFormatPropertyEnum): untyped = 20481
template ImageAltText*(_: type QTextFormatPropertyEnum): untyped = 20482
template ImageWidth*(_: type QTextFormatPropertyEnum): untyped = 20496
template ImageHeight*(_: type QTextFormatPropertyEnum): untyped = 20497
template ImageQuality*(_: type QTextFormatPropertyEnum): untyped = 20500
template FullWidthSelection*(_: type QTextFormatPropertyEnum): untyped = 24576
template PageBreakPolicy*(_: type QTextFormatPropertyEnum): untyped = 28672
template UserProperty*(_: type QTextFormatPropertyEnum): untyped = 1048576


type QTextFormatObjectTypesEnum* = distinct cint
template NoObject*(_: type QTextFormatObjectTypesEnum): untyped = 0
template ImageObject*(_: type QTextFormatObjectTypesEnum): untyped = 1
template TableObject*(_: type QTextFormatObjectTypesEnum): untyped = 2
template TableCellObject*(_: type QTextFormatObjectTypesEnum): untyped = 3
template UserObject*(_: type QTextFormatObjectTypesEnum): untyped = 4096


type QTextFormatPageBreakFlagEnum* = distinct cint
template PageBreak_Auto*(_: type QTextFormatPageBreakFlagEnum): untyped = 0
template PageBreak_AlwaysBefore*(_: type QTextFormatPageBreakFlagEnum): untyped = 1
template PageBreak_AlwaysAfter*(_: type QTextFormatPageBreakFlagEnum): untyped = 16


type QTextCharFormatVerticalAlignmentEnum* = distinct cint
template AlignNormal*(_: type QTextCharFormatVerticalAlignmentEnum): untyped = 0
template AlignSuperScript*(_: type QTextCharFormatVerticalAlignmentEnum): untyped = 1
template AlignSubScript*(_: type QTextCharFormatVerticalAlignmentEnum): untyped = 2
template AlignMiddle*(_: type QTextCharFormatVerticalAlignmentEnum): untyped = 3
template AlignTop*(_: type QTextCharFormatVerticalAlignmentEnum): untyped = 4
template AlignBottom*(_: type QTextCharFormatVerticalAlignmentEnum): untyped = 5
template AlignBaseline*(_: type QTextCharFormatVerticalAlignmentEnum): untyped = 6


type QTextCharFormatUnderlineStyleEnum* = distinct cint
template NoUnderline*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 0
template SingleUnderline*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 1
template DashUnderline*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 2
template DotLine*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 3
template DashDotLine*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 4
template DashDotDotLine*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 5
template WaveUnderline*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 6
template SpellCheckUnderline*(_: type QTextCharFormatUnderlineStyleEnum): untyped = 7


type QTextCharFormatFontPropertiesInheritanceBehaviorEnum* = distinct cint
template FontPropertiesSpecifiedOnly*(_: type QTextCharFormatFontPropertiesInheritanceBehaviorEnum): untyped = 0
template FontPropertiesAll*(_: type QTextCharFormatFontPropertiesInheritanceBehaviorEnum): untyped = 1


type QTextBlockFormatLineHeightTypesEnum* = distinct cint
template SingleHeight*(_: type QTextBlockFormatLineHeightTypesEnum): untyped = 0
template ProportionalHeight*(_: type QTextBlockFormatLineHeightTypesEnum): untyped = 1
template FixedHeight*(_: type QTextBlockFormatLineHeightTypesEnum): untyped = 2
template MinimumHeight*(_: type QTextBlockFormatLineHeightTypesEnum): untyped = 3
template LineDistanceHeight*(_: type QTextBlockFormatLineHeightTypesEnum): untyped = 4


type QTextBlockFormatMarkerTypeEnum* = distinct cint
template NoMarker*(_: type QTextBlockFormatMarkerTypeEnum): untyped = 0
template Unchecked*(_: type QTextBlockFormatMarkerTypeEnum): untyped = 1
template Checked*(_: type QTextBlockFormatMarkerTypeEnum): untyped = 2


type QTextListFormatStyleEnum* = distinct cint
template ListDisc*(_: type QTextListFormatStyleEnum): untyped = -1
template ListCircle*(_: type QTextListFormatStyleEnum): untyped = -2
template ListSquare*(_: type QTextListFormatStyleEnum): untyped = -3
template ListDecimal*(_: type QTextListFormatStyleEnum): untyped = -4
template ListLowerAlpha*(_: type QTextListFormatStyleEnum): untyped = -5
template ListUpperAlpha*(_: type QTextListFormatStyleEnum): untyped = -6
template ListLowerRoman*(_: type QTextListFormatStyleEnum): untyped = -7
template ListUpperRoman*(_: type QTextListFormatStyleEnum): untyped = -8
template ListStyleUndefined*(_: type QTextListFormatStyleEnum): untyped = 0


type QTextFrameFormatPositionEnum* = distinct cint
template InFlow*(_: type QTextFrameFormatPositionEnum): untyped = 0
template FloatLeft*(_: type QTextFrameFormatPositionEnum): untyped = 1
template FloatRight*(_: type QTextFrameFormatPositionEnum): untyped = 2


type QTextFrameFormatBorderStyleEnum* = distinct cint
template BorderStyle_None*(_: type QTextFrameFormatBorderStyleEnum): untyped = 0
template BorderStyle_Dotted*(_: type QTextFrameFormatBorderStyleEnum): untyped = 1
template BorderStyle_Dashed*(_: type QTextFrameFormatBorderStyleEnum): untyped = 2
template BorderStyle_Solid*(_: type QTextFrameFormatBorderStyleEnum): untyped = 3
template BorderStyle_Double*(_: type QTextFrameFormatBorderStyleEnum): untyped = 4
template BorderStyle_DotDash*(_: type QTextFrameFormatBorderStyleEnum): untyped = 5
template BorderStyle_DotDotDash*(_: type QTextFrameFormatBorderStyleEnum): untyped = 6
template BorderStyle_Groove*(_: type QTextFrameFormatBorderStyleEnum): untyped = 7
template BorderStyle_Ridge*(_: type QTextFrameFormatBorderStyleEnum): untyped = 8
template BorderStyle_Inset*(_: type QTextFrameFormatBorderStyleEnum): untyped = 9
template BorderStyle_Outset*(_: type QTextFrameFormatBorderStyleEnum): untyped = 10


import ./gen_qtextformat_types
export gen_qtextformat_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qbrush_types,
  ./gen_qcolor_types,
  ./gen_qfont_types,
  ./gen_qpen_types,
  ./gen_qtextoption_types,
  std/tables
export
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qfont_types,
  gen_qpen_types,
  gen_qtextoption_types

type cQTextLength*{.exportc: "QTextLength", incompleteStruct.} = object
type cQTextFormat*{.exportc: "QTextFormat", incompleteStruct.} = object
type cQTextCharFormat*{.exportc: "QTextCharFormat", incompleteStruct.} = object
type cQTextBlockFormat*{.exportc: "QTextBlockFormat", incompleteStruct.} = object
type cQTextListFormat*{.exportc: "QTextListFormat", incompleteStruct.} = object
type cQTextImageFormat*{.exportc: "QTextImageFormat", incompleteStruct.} = object
type cQTextFrameFormat*{.exportc: "QTextFrameFormat", incompleteStruct.} = object
type cQTextTableFormat*{.exportc: "QTextTableFormat", incompleteStruct.} = object
type cQTextTableCellFormat*{.exportc: "QTextTableCellFormat", incompleteStruct.} = object

proc fcQTextLength_typeX(self: pointer): cint {.importc: "QTextLength_type".}
proc fcQTextLength_value(self: pointer, maximumLength: float64): float64 {.importc: "QTextLength_value".}
proc fcQTextLength_rawValue(self: pointer): float64 {.importc: "QTextLength_rawValue".}
proc fcQTextLength_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTextLength_operatorEqual".}
proc fcQTextLength_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTextLength_operatorNotEqual".}
proc fcQTextLength_ToQVariant(self: pointer): pointer {.importc: "QTextLength_ToQVariant".}
proc fcQTextLength_new(): ptr cQTextLength {.importc: "QTextLength_new".}
proc fcQTextLength_new2(typeVal: cint, value: float64): ptr cQTextLength {.importc: "QTextLength_new2".}
proc fcQTextLength_new3(param1: pointer): ptr cQTextLength {.importc: "QTextLength_new3".}
proc fcQTextFormat_operatorAssign(self: pointer, rhs: pointer): void {.importc: "QTextFormat_operatorAssign".}
proc fcQTextFormat_swap(self: pointer, other: pointer): void {.importc: "QTextFormat_swap".}
proc fcQTextFormat_merge(self: pointer, other: pointer): void {.importc: "QTextFormat_merge".}
proc fcQTextFormat_isValid(self: pointer): bool {.importc: "QTextFormat_isValid".}
proc fcQTextFormat_isEmpty(self: pointer): bool {.importc: "QTextFormat_isEmpty".}
proc fcQTextFormat_typeX(self: pointer): cint {.importc: "QTextFormat_type".}
proc fcQTextFormat_objectIndex(self: pointer): cint {.importc: "QTextFormat_objectIndex".}
proc fcQTextFormat_setObjectIndex(self: pointer, objectVal: cint): void {.importc: "QTextFormat_setObjectIndex".}
proc fcQTextFormat_property(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_property".}
proc fcQTextFormat_setProperty(self: pointer, propertyId: cint, value: pointer): void {.importc: "QTextFormat_setProperty".}
proc fcQTextFormat_clearProperty(self: pointer, propertyId: cint): void {.importc: "QTextFormat_clearProperty".}
proc fcQTextFormat_hasProperty(self: pointer, propertyId: cint): bool {.importc: "QTextFormat_hasProperty".}
proc fcQTextFormat_boolProperty(self: pointer, propertyId: cint): bool {.importc: "QTextFormat_boolProperty".}
proc fcQTextFormat_intProperty(self: pointer, propertyId: cint): cint {.importc: "QTextFormat_intProperty".}
proc fcQTextFormat_doubleProperty(self: pointer, propertyId: cint): float64 {.importc: "QTextFormat_doubleProperty".}
proc fcQTextFormat_stringProperty(self: pointer, propertyId: cint): struct_miqt_string {.importc: "QTextFormat_stringProperty".}
proc fcQTextFormat_colorProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_colorProperty".}
proc fcQTextFormat_penProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_penProperty".}
proc fcQTextFormat_brushProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_brushProperty".}
proc fcQTextFormat_lengthProperty(self: pointer, propertyId: cint): pointer {.importc: "QTextFormat_lengthProperty".}
proc fcQTextFormat_lengthVectorProperty(self: pointer, propertyId: cint): struct_miqt_array {.importc: "QTextFormat_lengthVectorProperty".}
proc fcQTextFormat_setProperty2(self: pointer, propertyId: cint, lengths: struct_miqt_array): void {.importc: "QTextFormat_setProperty2".}
proc fcQTextFormat_properties(self: pointer): struct_miqt_map {.importc: "QTextFormat_properties".}
proc fcQTextFormat_propertyCount(self: pointer): cint {.importc: "QTextFormat_propertyCount".}
proc fcQTextFormat_setObjectType(self: pointer, typeVal: cint): void {.importc: "QTextFormat_setObjectType".}
proc fcQTextFormat_objectType(self: pointer): cint {.importc: "QTextFormat_objectType".}
proc fcQTextFormat_isCharFormat(self: pointer): bool {.importc: "QTextFormat_isCharFormat".}
proc fcQTextFormat_isBlockFormat(self: pointer): bool {.importc: "QTextFormat_isBlockFormat".}
proc fcQTextFormat_isListFormat(self: pointer): bool {.importc: "QTextFormat_isListFormat".}
proc fcQTextFormat_isFrameFormat(self: pointer): bool {.importc: "QTextFormat_isFrameFormat".}
proc fcQTextFormat_isImageFormat(self: pointer): bool {.importc: "QTextFormat_isImageFormat".}
proc fcQTextFormat_isTableFormat(self: pointer): bool {.importc: "QTextFormat_isTableFormat".}
proc fcQTextFormat_isTableCellFormat(self: pointer): bool {.importc: "QTextFormat_isTableCellFormat".}
proc fcQTextFormat_toBlockFormat(self: pointer): pointer {.importc: "QTextFormat_toBlockFormat".}
proc fcQTextFormat_toCharFormat(self: pointer): pointer {.importc: "QTextFormat_toCharFormat".}
proc fcQTextFormat_toListFormat(self: pointer): pointer {.importc: "QTextFormat_toListFormat".}
proc fcQTextFormat_toTableFormat(self: pointer): pointer {.importc: "QTextFormat_toTableFormat".}
proc fcQTextFormat_toFrameFormat(self: pointer): pointer {.importc: "QTextFormat_toFrameFormat".}
proc fcQTextFormat_toImageFormat(self: pointer): pointer {.importc: "QTextFormat_toImageFormat".}
proc fcQTextFormat_toTableCellFormat(self: pointer): pointer {.importc: "QTextFormat_toTableCellFormat".}
proc fcQTextFormat_operatorEqual(self: pointer, rhs: pointer): bool {.importc: "QTextFormat_operatorEqual".}
proc fcQTextFormat_operatorNotEqual(self: pointer, rhs: pointer): bool {.importc: "QTextFormat_operatorNotEqual".}
proc fcQTextFormat_ToQVariant(self: pointer): pointer {.importc: "QTextFormat_ToQVariant".}
proc fcQTextFormat_setLayoutDirection(self: pointer, direction: cint): void {.importc: "QTextFormat_setLayoutDirection".}
proc fcQTextFormat_layoutDirection(self: pointer): cint {.importc: "QTextFormat_layoutDirection".}
proc fcQTextFormat_setBackground(self: pointer, brush: pointer): void {.importc: "QTextFormat_setBackground".}
proc fcQTextFormat_background(self: pointer): pointer {.importc: "QTextFormat_background".}
proc fcQTextFormat_clearBackground(self: pointer): void {.importc: "QTextFormat_clearBackground".}
proc fcQTextFormat_setForeground(self: pointer, brush: pointer): void {.importc: "QTextFormat_setForeground".}
proc fcQTextFormat_foreground(self: pointer): pointer {.importc: "QTextFormat_foreground".}
proc fcQTextFormat_clearForeground(self: pointer): void {.importc: "QTextFormat_clearForeground".}
proc fcQTextFormat_new(): ptr cQTextFormat {.importc: "QTextFormat_new".}
proc fcQTextFormat_new2(typeVal: cint): ptr cQTextFormat {.importc: "QTextFormat_new2".}
proc fcQTextFormat_new3(rhs: pointer): ptr cQTextFormat {.importc: "QTextFormat_new3".}
proc fcQTextFormat_staticMetaObject(): pointer {.importc: "QTextFormat_staticMetaObject".}
proc fcQTextCharFormat_isValid(self: pointer): bool {.importc: "QTextCharFormat_isValid".}
proc fcQTextCharFormat_setFont(self: pointer, font: pointer, behavior: cint): void {.importc: "QTextCharFormat_setFont".}
proc fcQTextCharFormat_setFontWithFont(self: pointer, font: pointer): void {.importc: "QTextCharFormat_setFontWithFont".}
proc fcQTextCharFormat_font(self: pointer): pointer {.importc: "QTextCharFormat_font".}
proc fcQTextCharFormat_setFontFamily(self: pointer, family: struct_miqt_string): void {.importc: "QTextCharFormat_setFontFamily".}
proc fcQTextCharFormat_fontFamily(self: pointer): struct_miqt_string {.importc: "QTextCharFormat_fontFamily".}
proc fcQTextCharFormat_setFontFamilies(self: pointer, families: struct_miqt_array): void {.importc: "QTextCharFormat_setFontFamilies".}
proc fcQTextCharFormat_fontFamilies(self: pointer): pointer {.importc: "QTextCharFormat_fontFamilies".}
proc fcQTextCharFormat_setFontStyleName(self: pointer, styleName: struct_miqt_string): void {.importc: "QTextCharFormat_setFontStyleName".}
proc fcQTextCharFormat_fontStyleName(self: pointer): pointer {.importc: "QTextCharFormat_fontStyleName".}
proc fcQTextCharFormat_setFontPointSize(self: pointer, size: float64): void {.importc: "QTextCharFormat_setFontPointSize".}
proc fcQTextCharFormat_fontPointSize(self: pointer): float64 {.importc: "QTextCharFormat_fontPointSize".}
proc fcQTextCharFormat_setFontWeight(self: pointer, weight: cint): void {.importc: "QTextCharFormat_setFontWeight".}
proc fcQTextCharFormat_fontWeight(self: pointer): cint {.importc: "QTextCharFormat_fontWeight".}
proc fcQTextCharFormat_setFontItalic(self: pointer, italic: bool): void {.importc: "QTextCharFormat_setFontItalic".}
proc fcQTextCharFormat_fontItalic(self: pointer): bool {.importc: "QTextCharFormat_fontItalic".}
proc fcQTextCharFormat_setFontCapitalization(self: pointer, capitalization: cint): void {.importc: "QTextCharFormat_setFontCapitalization".}
proc fcQTextCharFormat_fontCapitalization(self: pointer): cint {.importc: "QTextCharFormat_fontCapitalization".}
proc fcQTextCharFormat_setFontLetterSpacingType(self: pointer, letterSpacingType: cint): void {.importc: "QTextCharFormat_setFontLetterSpacingType".}
proc fcQTextCharFormat_fontLetterSpacingType(self: pointer): cint {.importc: "QTextCharFormat_fontLetterSpacingType".}
proc fcQTextCharFormat_setFontLetterSpacing(self: pointer, spacing: float64): void {.importc: "QTextCharFormat_setFontLetterSpacing".}
proc fcQTextCharFormat_fontLetterSpacing(self: pointer): float64 {.importc: "QTextCharFormat_fontLetterSpacing".}
proc fcQTextCharFormat_setFontWordSpacing(self: pointer, spacing: float64): void {.importc: "QTextCharFormat_setFontWordSpacing".}
proc fcQTextCharFormat_fontWordSpacing(self: pointer): float64 {.importc: "QTextCharFormat_fontWordSpacing".}
proc fcQTextCharFormat_setFontUnderline(self: pointer, underline: bool): void {.importc: "QTextCharFormat_setFontUnderline".}
proc fcQTextCharFormat_fontUnderline(self: pointer): bool {.importc: "QTextCharFormat_fontUnderline".}
proc fcQTextCharFormat_setFontOverline(self: pointer, overline: bool): void {.importc: "QTextCharFormat_setFontOverline".}
proc fcQTextCharFormat_fontOverline(self: pointer): bool {.importc: "QTextCharFormat_fontOverline".}
proc fcQTextCharFormat_setFontStrikeOut(self: pointer, strikeOut: bool): void {.importc: "QTextCharFormat_setFontStrikeOut".}
proc fcQTextCharFormat_fontStrikeOut(self: pointer): bool {.importc: "QTextCharFormat_fontStrikeOut".}
proc fcQTextCharFormat_setUnderlineColor(self: pointer, color: pointer): void {.importc: "QTextCharFormat_setUnderlineColor".}
proc fcQTextCharFormat_underlineColor(self: pointer): pointer {.importc: "QTextCharFormat_underlineColor".}
proc fcQTextCharFormat_setFontFixedPitch(self: pointer, fixedPitch: bool): void {.importc: "QTextCharFormat_setFontFixedPitch".}
proc fcQTextCharFormat_fontFixedPitch(self: pointer): bool {.importc: "QTextCharFormat_fontFixedPitch".}
proc fcQTextCharFormat_setFontStretch(self: pointer, factor: cint): void {.importc: "QTextCharFormat_setFontStretch".}
proc fcQTextCharFormat_fontStretch(self: pointer): cint {.importc: "QTextCharFormat_fontStretch".}
proc fcQTextCharFormat_setFontStyleHint(self: pointer, hint: cint): void {.importc: "QTextCharFormat_setFontStyleHint".}
proc fcQTextCharFormat_setFontStyleStrategy(self: pointer, strategy: cint): void {.importc: "QTextCharFormat_setFontStyleStrategy".}
proc fcQTextCharFormat_fontStyleHint(self: pointer): cint {.importc: "QTextCharFormat_fontStyleHint".}
proc fcQTextCharFormat_fontStyleStrategy(self: pointer): cint {.importc: "QTextCharFormat_fontStyleStrategy".}
proc fcQTextCharFormat_setFontHintingPreference(self: pointer, hintingPreference: cint): void {.importc: "QTextCharFormat_setFontHintingPreference".}
proc fcQTextCharFormat_fontHintingPreference(self: pointer): cint {.importc: "QTextCharFormat_fontHintingPreference".}
proc fcQTextCharFormat_setFontKerning(self: pointer, enable: bool): void {.importc: "QTextCharFormat_setFontKerning".}
proc fcQTextCharFormat_fontKerning(self: pointer): bool {.importc: "QTextCharFormat_fontKerning".}
proc fcQTextCharFormat_setUnderlineStyle(self: pointer, style: cint): void {.importc: "QTextCharFormat_setUnderlineStyle".}
proc fcQTextCharFormat_underlineStyle(self: pointer): cint {.importc: "QTextCharFormat_underlineStyle".}
proc fcQTextCharFormat_setVerticalAlignment(self: pointer, alignment: cint): void {.importc: "QTextCharFormat_setVerticalAlignment".}
proc fcQTextCharFormat_verticalAlignment(self: pointer): cint {.importc: "QTextCharFormat_verticalAlignment".}
proc fcQTextCharFormat_setTextOutline(self: pointer, pen: pointer): void {.importc: "QTextCharFormat_setTextOutline".}
proc fcQTextCharFormat_textOutline(self: pointer): pointer {.importc: "QTextCharFormat_textOutline".}
proc fcQTextCharFormat_setToolTip(self: pointer, tip: struct_miqt_string): void {.importc: "QTextCharFormat_setToolTip".}
proc fcQTextCharFormat_toolTip(self: pointer): struct_miqt_string {.importc: "QTextCharFormat_toolTip".}
proc fcQTextCharFormat_setAnchor(self: pointer, anchor: bool): void {.importc: "QTextCharFormat_setAnchor".}
proc fcQTextCharFormat_isAnchor(self: pointer): bool {.importc: "QTextCharFormat_isAnchor".}
proc fcQTextCharFormat_setAnchorHref(self: pointer, value: struct_miqt_string): void {.importc: "QTextCharFormat_setAnchorHref".}
proc fcQTextCharFormat_anchorHref(self: pointer): struct_miqt_string {.importc: "QTextCharFormat_anchorHref".}
proc fcQTextCharFormat_setAnchorName(self: pointer, name: struct_miqt_string): void {.importc: "QTextCharFormat_setAnchorName".}
proc fcQTextCharFormat_anchorName(self: pointer): struct_miqt_string {.importc: "QTextCharFormat_anchorName".}
proc fcQTextCharFormat_setAnchorNames(self: pointer, names: struct_miqt_array): void {.importc: "QTextCharFormat_setAnchorNames".}
proc fcQTextCharFormat_anchorNames(self: pointer): struct_miqt_array {.importc: "QTextCharFormat_anchorNames".}
proc fcQTextCharFormat_setTableCellRowSpan(self: pointer, tableCellRowSpan: cint): void {.importc: "QTextCharFormat_setTableCellRowSpan".}
proc fcQTextCharFormat_tableCellRowSpan(self: pointer): cint {.importc: "QTextCharFormat_tableCellRowSpan".}
proc fcQTextCharFormat_setTableCellColumnSpan(self: pointer, tableCellColumnSpan: cint): void {.importc: "QTextCharFormat_setTableCellColumnSpan".}
proc fcQTextCharFormat_tableCellColumnSpan(self: pointer): cint {.importc: "QTextCharFormat_tableCellColumnSpan".}
proc fcQTextCharFormat_setFontStyleHint2(self: pointer, hint: cint, strategy: cint): void {.importc: "QTextCharFormat_setFontStyleHint2".}
proc fcQTextCharFormat_new(): ptr cQTextCharFormat {.importc: "QTextCharFormat_new".}
proc fcQTextCharFormat_new2(param1: pointer): ptr cQTextCharFormat {.importc: "QTextCharFormat_new2".}
proc fcQTextBlockFormat_isValid(self: pointer): bool {.importc: "QTextBlockFormat_isValid".}
proc fcQTextBlockFormat_setAlignment(self: pointer, alignment: cint): void {.importc: "QTextBlockFormat_setAlignment".}
proc fcQTextBlockFormat_alignment(self: pointer): cint {.importc: "QTextBlockFormat_alignment".}
proc fcQTextBlockFormat_setTopMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setTopMargin".}
proc fcQTextBlockFormat_topMargin(self: pointer): float64 {.importc: "QTextBlockFormat_topMargin".}
proc fcQTextBlockFormat_setBottomMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setBottomMargin".}
proc fcQTextBlockFormat_bottomMargin(self: pointer): float64 {.importc: "QTextBlockFormat_bottomMargin".}
proc fcQTextBlockFormat_setLeftMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setLeftMargin".}
proc fcQTextBlockFormat_leftMargin(self: pointer): float64 {.importc: "QTextBlockFormat_leftMargin".}
proc fcQTextBlockFormat_setRightMargin(self: pointer, margin: float64): void {.importc: "QTextBlockFormat_setRightMargin".}
proc fcQTextBlockFormat_rightMargin(self: pointer): float64 {.importc: "QTextBlockFormat_rightMargin".}
proc fcQTextBlockFormat_setTextIndent(self: pointer, aindent: float64): void {.importc: "QTextBlockFormat_setTextIndent".}
proc fcQTextBlockFormat_textIndent(self: pointer): float64 {.importc: "QTextBlockFormat_textIndent".}
proc fcQTextBlockFormat_setIndent(self: pointer, indent: cint): void {.importc: "QTextBlockFormat_setIndent".}
proc fcQTextBlockFormat_indent(self: pointer): cint {.importc: "QTextBlockFormat_indent".}
proc fcQTextBlockFormat_setHeadingLevel(self: pointer, alevel: cint): void {.importc: "QTextBlockFormat_setHeadingLevel".}
proc fcQTextBlockFormat_headingLevel(self: pointer): cint {.importc: "QTextBlockFormat_headingLevel".}
proc fcQTextBlockFormat_setLineHeight(self: pointer, height: float64, heightType: cint): void {.importc: "QTextBlockFormat_setLineHeight".}
proc fcQTextBlockFormat_lineHeight(self: pointer, scriptLineHeight: float64, scaling: float64): float64 {.importc: "QTextBlockFormat_lineHeight".}
proc fcQTextBlockFormat_lineHeight2(self: pointer): float64 {.importc: "QTextBlockFormat_lineHeight2".}
proc fcQTextBlockFormat_lineHeightType(self: pointer): cint {.importc: "QTextBlockFormat_lineHeightType".}
proc fcQTextBlockFormat_setNonBreakableLines(self: pointer, b: bool): void {.importc: "QTextBlockFormat_setNonBreakableLines".}
proc fcQTextBlockFormat_nonBreakableLines(self: pointer): bool {.importc: "QTextBlockFormat_nonBreakableLines".}
proc fcQTextBlockFormat_setPageBreakPolicy(self: pointer, flags: cint): void {.importc: "QTextBlockFormat_setPageBreakPolicy".}
proc fcQTextBlockFormat_pageBreakPolicy(self: pointer): cint {.importc: "QTextBlockFormat_pageBreakPolicy".}
proc fcQTextBlockFormat_setTabPositions(self: pointer, tabs: struct_miqt_array): void {.importc: "QTextBlockFormat_setTabPositions".}
proc fcQTextBlockFormat_tabPositions(self: pointer): struct_miqt_array {.importc: "QTextBlockFormat_tabPositions".}
proc fcQTextBlockFormat_setMarker(self: pointer, marker: cint): void {.importc: "QTextBlockFormat_setMarker".}
proc fcQTextBlockFormat_marker(self: pointer): cint {.importc: "QTextBlockFormat_marker".}
proc fcQTextBlockFormat_new(): ptr cQTextBlockFormat {.importc: "QTextBlockFormat_new".}
proc fcQTextBlockFormat_new2(param1: pointer): ptr cQTextBlockFormat {.importc: "QTextBlockFormat_new2".}
proc fcQTextListFormat_isValid(self: pointer): bool {.importc: "QTextListFormat_isValid".}
proc fcQTextListFormat_setStyle(self: pointer, style: cint): void {.importc: "QTextListFormat_setStyle".}
proc fcQTextListFormat_style(self: pointer): cint {.importc: "QTextListFormat_style".}
proc fcQTextListFormat_setIndent(self: pointer, indent: cint): void {.importc: "QTextListFormat_setIndent".}
proc fcQTextListFormat_indent(self: pointer): cint {.importc: "QTextListFormat_indent".}
proc fcQTextListFormat_setNumberPrefix(self: pointer, numberPrefix: struct_miqt_string): void {.importc: "QTextListFormat_setNumberPrefix".}
proc fcQTextListFormat_numberPrefix(self: pointer): struct_miqt_string {.importc: "QTextListFormat_numberPrefix".}
proc fcQTextListFormat_setNumberSuffix(self: pointer, numberSuffix: struct_miqt_string): void {.importc: "QTextListFormat_setNumberSuffix".}
proc fcQTextListFormat_numberSuffix(self: pointer): struct_miqt_string {.importc: "QTextListFormat_numberSuffix".}
proc fcQTextListFormat_new(): ptr cQTextListFormat {.importc: "QTextListFormat_new".}
proc fcQTextListFormat_new2(param1: pointer): ptr cQTextListFormat {.importc: "QTextListFormat_new2".}
proc fcQTextImageFormat_isValid(self: pointer): bool {.importc: "QTextImageFormat_isValid".}
proc fcQTextImageFormat_setName(self: pointer, name: struct_miqt_string): void {.importc: "QTextImageFormat_setName".}
proc fcQTextImageFormat_name(self: pointer): struct_miqt_string {.importc: "QTextImageFormat_name".}
proc fcQTextImageFormat_setWidth(self: pointer, width: float64): void {.importc: "QTextImageFormat_setWidth".}
proc fcQTextImageFormat_width(self: pointer): float64 {.importc: "QTextImageFormat_width".}
proc fcQTextImageFormat_setHeight(self: pointer, height: float64): void {.importc: "QTextImageFormat_setHeight".}
proc fcQTextImageFormat_height(self: pointer): float64 {.importc: "QTextImageFormat_height".}
proc fcQTextImageFormat_setQuality(self: pointer): void {.importc: "QTextImageFormat_setQuality".}
proc fcQTextImageFormat_quality(self: pointer): cint {.importc: "QTextImageFormat_quality".}
proc fcQTextImageFormat_setQuality1(self: pointer, quality: cint): void {.importc: "QTextImageFormat_setQuality1".}
proc fcQTextImageFormat_new(): ptr cQTextImageFormat {.importc: "QTextImageFormat_new".}
proc fcQTextFrameFormat_isValid(self: pointer): bool {.importc: "QTextFrameFormat_isValid".}
proc fcQTextFrameFormat_setPosition(self: pointer, f: cint): void {.importc: "QTextFrameFormat_setPosition".}
proc fcQTextFrameFormat_position(self: pointer): cint {.importc: "QTextFrameFormat_position".}
proc fcQTextFrameFormat_setBorder(self: pointer, border: float64): void {.importc: "QTextFrameFormat_setBorder".}
proc fcQTextFrameFormat_border(self: pointer): float64 {.importc: "QTextFrameFormat_border".}
proc fcQTextFrameFormat_setBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextFrameFormat_setBorderBrush".}
proc fcQTextFrameFormat_borderBrush(self: pointer): pointer {.importc: "QTextFrameFormat_borderBrush".}
proc fcQTextFrameFormat_setBorderStyle(self: pointer, style: cint): void {.importc: "QTextFrameFormat_setBorderStyle".}
proc fcQTextFrameFormat_borderStyle(self: pointer): cint {.importc: "QTextFrameFormat_borderStyle".}
proc fcQTextFrameFormat_setMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setMargin".}
proc fcQTextFrameFormat_margin(self: pointer): float64 {.importc: "QTextFrameFormat_margin".}
proc fcQTextFrameFormat_setTopMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setTopMargin".}
proc fcQTextFrameFormat_topMargin(self: pointer): float64 {.importc: "QTextFrameFormat_topMargin".}
proc fcQTextFrameFormat_setBottomMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setBottomMargin".}
proc fcQTextFrameFormat_bottomMargin(self: pointer): float64 {.importc: "QTextFrameFormat_bottomMargin".}
proc fcQTextFrameFormat_setLeftMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setLeftMargin".}
proc fcQTextFrameFormat_leftMargin(self: pointer): float64 {.importc: "QTextFrameFormat_leftMargin".}
proc fcQTextFrameFormat_setRightMargin(self: pointer, margin: float64): void {.importc: "QTextFrameFormat_setRightMargin".}
proc fcQTextFrameFormat_rightMargin(self: pointer): float64 {.importc: "QTextFrameFormat_rightMargin".}
proc fcQTextFrameFormat_setPadding(self: pointer, padding: float64): void {.importc: "QTextFrameFormat_setPadding".}
proc fcQTextFrameFormat_padding(self: pointer): float64 {.importc: "QTextFrameFormat_padding".}
proc fcQTextFrameFormat_setWidth(self: pointer, width: float64): void {.importc: "QTextFrameFormat_setWidth".}
proc fcQTextFrameFormat_setWidthWithLength(self: pointer, length: pointer): void {.importc: "QTextFrameFormat_setWidthWithLength".}
proc fcQTextFrameFormat_width(self: pointer): pointer {.importc: "QTextFrameFormat_width".}
proc fcQTextFrameFormat_setHeight(self: pointer, height: float64): void {.importc: "QTextFrameFormat_setHeight".}
proc fcQTextFrameFormat_setHeightWithHeight(self: pointer, height: pointer): void {.importc: "QTextFrameFormat_setHeightWithHeight".}
proc fcQTextFrameFormat_height(self: pointer): pointer {.importc: "QTextFrameFormat_height".}
proc fcQTextFrameFormat_setPageBreakPolicy(self: pointer, flags: cint): void {.importc: "QTextFrameFormat_setPageBreakPolicy".}
proc fcQTextFrameFormat_pageBreakPolicy(self: pointer): cint {.importc: "QTextFrameFormat_pageBreakPolicy".}
proc fcQTextFrameFormat_new(): ptr cQTextFrameFormat {.importc: "QTextFrameFormat_new".}
proc fcQTextFrameFormat_new2(param1: pointer): ptr cQTextFrameFormat {.importc: "QTextFrameFormat_new2".}
proc fcQTextTableFormat_isValid(self: pointer): bool {.importc: "QTextTableFormat_isValid".}
proc fcQTextTableFormat_columns(self: pointer): cint {.importc: "QTextTableFormat_columns".}
proc fcQTextTableFormat_setColumns(self: pointer, columns: cint): void {.importc: "QTextTableFormat_setColumns".}
proc fcQTextTableFormat_setColumnWidthConstraints(self: pointer, constraints: struct_miqt_array): void {.importc: "QTextTableFormat_setColumnWidthConstraints".}
proc fcQTextTableFormat_columnWidthConstraints(self: pointer): struct_miqt_array {.importc: "QTextTableFormat_columnWidthConstraints".}
proc fcQTextTableFormat_clearColumnWidthConstraints(self: pointer): void {.importc: "QTextTableFormat_clearColumnWidthConstraints".}
proc fcQTextTableFormat_cellSpacing(self: pointer): float64 {.importc: "QTextTableFormat_cellSpacing".}
proc fcQTextTableFormat_setCellSpacing(self: pointer, spacing: float64): void {.importc: "QTextTableFormat_setCellSpacing".}
proc fcQTextTableFormat_cellPadding(self: pointer): float64 {.importc: "QTextTableFormat_cellPadding".}
proc fcQTextTableFormat_setCellPadding(self: pointer, padding: float64): void {.importc: "QTextTableFormat_setCellPadding".}
proc fcQTextTableFormat_setAlignment(self: pointer, alignment: cint): void {.importc: "QTextTableFormat_setAlignment".}
proc fcQTextTableFormat_alignment(self: pointer): cint {.importc: "QTextTableFormat_alignment".}
proc fcQTextTableFormat_setHeaderRowCount(self: pointer, count: cint): void {.importc: "QTextTableFormat_setHeaderRowCount".}
proc fcQTextTableFormat_headerRowCount(self: pointer): cint {.importc: "QTextTableFormat_headerRowCount".}
proc fcQTextTableFormat_setBorderCollapse(self: pointer, borderCollapse: bool): void {.importc: "QTextTableFormat_setBorderCollapse".}
proc fcQTextTableFormat_borderCollapse(self: pointer): bool {.importc: "QTextTableFormat_borderCollapse".}
proc fcQTextTableFormat_new(): ptr cQTextTableFormat {.importc: "QTextTableFormat_new".}
proc fcQTextTableCellFormat_isValid(self: pointer): bool {.importc: "QTextTableCellFormat_isValid".}
proc fcQTextTableCellFormat_setTopPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setTopPadding".}
proc fcQTextTableCellFormat_topPadding(self: pointer): float64 {.importc: "QTextTableCellFormat_topPadding".}
proc fcQTextTableCellFormat_setBottomPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setBottomPadding".}
proc fcQTextTableCellFormat_bottomPadding(self: pointer): float64 {.importc: "QTextTableCellFormat_bottomPadding".}
proc fcQTextTableCellFormat_setLeftPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setLeftPadding".}
proc fcQTextTableCellFormat_leftPadding(self: pointer): float64 {.importc: "QTextTableCellFormat_leftPadding".}
proc fcQTextTableCellFormat_setRightPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setRightPadding".}
proc fcQTextTableCellFormat_rightPadding(self: pointer): float64 {.importc: "QTextTableCellFormat_rightPadding".}
proc fcQTextTableCellFormat_setPadding(self: pointer, padding: float64): void {.importc: "QTextTableCellFormat_setPadding".}
proc fcQTextTableCellFormat_setTopBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setTopBorder".}
proc fcQTextTableCellFormat_topBorder(self: pointer): float64 {.importc: "QTextTableCellFormat_topBorder".}
proc fcQTextTableCellFormat_setBottomBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setBottomBorder".}
proc fcQTextTableCellFormat_bottomBorder(self: pointer): float64 {.importc: "QTextTableCellFormat_bottomBorder".}
proc fcQTextTableCellFormat_setLeftBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setLeftBorder".}
proc fcQTextTableCellFormat_leftBorder(self: pointer): float64 {.importc: "QTextTableCellFormat_leftBorder".}
proc fcQTextTableCellFormat_setRightBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setRightBorder".}
proc fcQTextTableCellFormat_rightBorder(self: pointer): float64 {.importc: "QTextTableCellFormat_rightBorder".}
proc fcQTextTableCellFormat_setBorder(self: pointer, width: float64): void {.importc: "QTextTableCellFormat_setBorder".}
proc fcQTextTableCellFormat_setTopBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setTopBorderStyle".}
proc fcQTextTableCellFormat_topBorderStyle(self: pointer): cint {.importc: "QTextTableCellFormat_topBorderStyle".}
proc fcQTextTableCellFormat_setBottomBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setBottomBorderStyle".}
proc fcQTextTableCellFormat_bottomBorderStyle(self: pointer): cint {.importc: "QTextTableCellFormat_bottomBorderStyle".}
proc fcQTextTableCellFormat_setLeftBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setLeftBorderStyle".}
proc fcQTextTableCellFormat_leftBorderStyle(self: pointer): cint {.importc: "QTextTableCellFormat_leftBorderStyle".}
proc fcQTextTableCellFormat_setRightBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setRightBorderStyle".}
proc fcQTextTableCellFormat_rightBorderStyle(self: pointer): cint {.importc: "QTextTableCellFormat_rightBorderStyle".}
proc fcQTextTableCellFormat_setBorderStyle(self: pointer, style: cint): void {.importc: "QTextTableCellFormat_setBorderStyle".}
proc fcQTextTableCellFormat_setTopBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setTopBorderBrush".}
proc fcQTextTableCellFormat_topBorderBrush(self: pointer): pointer {.importc: "QTextTableCellFormat_topBorderBrush".}
proc fcQTextTableCellFormat_setBottomBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setBottomBorderBrush".}
proc fcQTextTableCellFormat_bottomBorderBrush(self: pointer): pointer {.importc: "QTextTableCellFormat_bottomBorderBrush".}
proc fcQTextTableCellFormat_setLeftBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setLeftBorderBrush".}
proc fcQTextTableCellFormat_leftBorderBrush(self: pointer): pointer {.importc: "QTextTableCellFormat_leftBorderBrush".}
proc fcQTextTableCellFormat_setRightBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setRightBorderBrush".}
proc fcQTextTableCellFormat_rightBorderBrush(self: pointer): pointer {.importc: "QTextTableCellFormat_rightBorderBrush".}
proc fcQTextTableCellFormat_setBorderBrush(self: pointer, brush: pointer): void {.importc: "QTextTableCellFormat_setBorderBrush".}
proc fcQTextTableCellFormat_new(): ptr cQTextTableCellFormat {.importc: "QTextTableCellFormat_new".}

proc typeX*(self: gen_qtextformat_types.QTextLength): cint =
  cint(fcQTextLength_typeX(self.h))

proc value*(self: gen_qtextformat_types.QTextLength, maximumLength: float64): float64 =
  fcQTextLength_value(self.h, maximumLength)

proc rawValue*(self: gen_qtextformat_types.QTextLength): float64 =
  fcQTextLength_rawValue(self.h)

proc operatorEqual*(self: gen_qtextformat_types.QTextLength, other: gen_qtextformat_types.QTextLength): bool =
  fcQTextLength_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qtextformat_types.QTextLength, other: gen_qtextformat_types.QTextLength): bool =
  fcQTextLength_operatorNotEqual(self.h, other.h)

proc ToQVariant*(self: gen_qtextformat_types.QTextLength): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextLength_ToQVariant(self.h), owned: true)

proc create*(T: type gen_qtextformat_types.QTextLength): gen_qtextformat_types.QTextLength =
  gen_qtextformat_types.QTextLength(h: fcQTextLength_new(), owned: true)

proc create*(T: type gen_qtextformat_types.QTextLength,
    typeVal: cint, value: float64): gen_qtextformat_types.QTextLength =
  gen_qtextformat_types.QTextLength(h: fcQTextLength_new2(cint(typeVal), value), owned: true)

proc create*(T: type gen_qtextformat_types.QTextLength,
    param1: gen_qtextformat_types.QTextLength): gen_qtextformat_types.QTextLength =
  gen_qtextformat_types.QTextLength(h: fcQTextLength_new3(param1.h), owned: true)

proc operatorAssign*(self: gen_qtextformat_types.QTextFormat, rhs: gen_qtextformat_types.QTextFormat): void =
  fcQTextFormat_operatorAssign(self.h, rhs.h)

proc swap*(self: gen_qtextformat_types.QTextFormat, other: gen_qtextformat_types.QTextFormat): void =
  fcQTextFormat_swap(self.h, other.h)

proc merge*(self: gen_qtextformat_types.QTextFormat, other: gen_qtextformat_types.QTextFormat): void =
  fcQTextFormat_merge(self.h, other.h)

proc isValid*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isValid(self.h)

proc isEmpty*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isEmpty(self.h)

proc typeX*(self: gen_qtextformat_types.QTextFormat): cint =
  fcQTextFormat_typeX(self.h)

proc objectIndex*(self: gen_qtextformat_types.QTextFormat): cint =
  fcQTextFormat_objectIndex(self.h)

proc setObjectIndex*(self: gen_qtextformat_types.QTextFormat, objectVal: cint): void =
  fcQTextFormat_setObjectIndex(self.h, objectVal)

proc property*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextFormat_property(self.h, propertyId), owned: true)

proc setProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint, value: gen_qvariant_types.QVariant): void =
  fcQTextFormat_setProperty(self.h, propertyId, value.h)

proc clearProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): void =
  fcQTextFormat_clearProperty(self.h, propertyId)

proc hasProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): bool =
  fcQTextFormat_hasProperty(self.h, propertyId)

proc boolProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): bool =
  fcQTextFormat_boolProperty(self.h, propertyId)

proc intProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): cint =
  fcQTextFormat_intProperty(self.h, propertyId)

proc doubleProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): float64 =
  fcQTextFormat_doubleProperty(self.h, propertyId)

proc stringProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): string =
  let v_ms = fcQTextFormat_stringProperty(self.h, propertyId)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc colorProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTextFormat_colorProperty(self.h, propertyId), owned: true)

proc penProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): gen_qpen_types.QPen =
  gen_qpen_types.QPen(h: fcQTextFormat_penProperty(self.h, propertyId), owned: true)

proc brushProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextFormat_brushProperty(self.h, propertyId), owned: true)

proc lengthProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): gen_qtextformat_types.QTextLength =
  gen_qtextformat_types.QTextLength(h: fcQTextFormat_lengthProperty(self.h, propertyId), owned: true)

proc lengthVectorProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint): seq[gen_qtextformat_types.QTextLength] =
  var v_ma = fcQTextFormat_lengthVectorProperty(self.h, propertyId)
  var vx_ret = newSeq[gen_qtextformat_types.QTextLength](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextformat_types.QTextLength(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setProperty*(self: gen_qtextformat_types.QTextFormat, propertyId: cint, lengths: seq[gen_qtextformat_types.QTextLength]): void =
  var lengths_CArray = newSeq[pointer](len(lengths))
  for i in 0..<len(lengths):
    lengths_CArray[i] = lengths[i].h

  fcQTextFormat_setProperty2(self.h, propertyId, struct_miqt_array(len: csize_t(len(lengths)), data: if len(lengths) == 0: nil else: addr(lengths_CArray[0])))

proc properties*(self: gen_qtextformat_types.QTextFormat): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQTextFormat_properties(self.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc propertyCount*(self: gen_qtextformat_types.QTextFormat): cint =
  fcQTextFormat_propertyCount(self.h)

proc setObjectType*(self: gen_qtextformat_types.QTextFormat, typeVal: cint): void =
  fcQTextFormat_setObjectType(self.h, typeVal)

proc objectType*(self: gen_qtextformat_types.QTextFormat): cint =
  fcQTextFormat_objectType(self.h)

proc isCharFormat*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isCharFormat(self.h)

proc isBlockFormat*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isBlockFormat(self.h)

proc isListFormat*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isListFormat(self.h)

proc isFrameFormat*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isFrameFormat(self.h)

proc isImageFormat*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isImageFormat(self.h)

proc isTableFormat*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isTableFormat(self.h)

proc isTableCellFormat*(self: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_isTableCellFormat(self.h)

proc toBlockFormat*(self: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextBlockFormat =
  gen_qtextformat_types.QTextBlockFormat(h: fcQTextFormat_toBlockFormat(self.h), owned: true)

proc toCharFormat*(self: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextFormat_toCharFormat(self.h), owned: true)

proc toListFormat*(self: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextListFormat =
  gen_qtextformat_types.QTextListFormat(h: fcQTextFormat_toListFormat(self.h), owned: true)

proc toTableFormat*(self: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextTableFormat =
  gen_qtextformat_types.QTextTableFormat(h: fcQTextFormat_toTableFormat(self.h), owned: true)

proc toFrameFormat*(self: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextFrameFormat =
  gen_qtextformat_types.QTextFrameFormat(h: fcQTextFormat_toFrameFormat(self.h), owned: true)

proc toImageFormat*(self: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextImageFormat =
  gen_qtextformat_types.QTextImageFormat(h: fcQTextFormat_toImageFormat(self.h), owned: true)

proc toTableCellFormat*(self: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextTableCellFormat =
  gen_qtextformat_types.QTextTableCellFormat(h: fcQTextFormat_toTableCellFormat(self.h), owned: true)

proc operatorEqual*(self: gen_qtextformat_types.QTextFormat, rhs: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_operatorEqual(self.h, rhs.h)

proc operatorNotEqual*(self: gen_qtextformat_types.QTextFormat, rhs: gen_qtextformat_types.QTextFormat): bool =
  fcQTextFormat_operatorNotEqual(self.h, rhs.h)

proc ToQVariant*(self: gen_qtextformat_types.QTextFormat): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextFormat_ToQVariant(self.h), owned: true)

proc setLayoutDirection*(self: gen_qtextformat_types.QTextFormat, direction: cint): void =
  fcQTextFormat_setLayoutDirection(self.h, cint(direction))

proc layoutDirection*(self: gen_qtextformat_types.QTextFormat): cint =
  cint(fcQTextFormat_layoutDirection(self.h))

proc setBackground*(self: gen_qtextformat_types.QTextFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextFormat_setBackground(self.h, brush.h)

proc background*(self: gen_qtextformat_types.QTextFormat): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextFormat_background(self.h), owned: true)

proc clearBackground*(self: gen_qtextformat_types.QTextFormat): void =
  fcQTextFormat_clearBackground(self.h)

proc setForeground*(self: gen_qtextformat_types.QTextFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextFormat_setForeground(self.h, brush.h)

proc foreground*(self: gen_qtextformat_types.QTextFormat): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextFormat_foreground(self.h), owned: true)

proc clearForeground*(self: gen_qtextformat_types.QTextFormat): void =
  fcQTextFormat_clearForeground(self.h)

proc create*(T: type gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextFormat =
  gen_qtextformat_types.QTextFormat(h: fcQTextFormat_new(), owned: true)

proc create*(T: type gen_qtextformat_types.QTextFormat,
    typeVal: cint): gen_qtextformat_types.QTextFormat =
  gen_qtextformat_types.QTextFormat(h: fcQTextFormat_new2(typeVal), owned: true)

proc create*(T: type gen_qtextformat_types.QTextFormat,
    rhs: gen_qtextformat_types.QTextFormat): gen_qtextformat_types.QTextFormat =
  gen_qtextformat_types.QTextFormat(h: fcQTextFormat_new3(rhs.h), owned: true)

proc staticMetaObject*(_: type gen_qtextformat_types.QTextFormat): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTextFormat_staticMetaObject())
proc isValid*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_isValid(self.h)

proc setFont*(self: gen_qtextformat_types.QTextCharFormat, font: gen_qfont_types.QFont, behavior: cint): void =
  fcQTextCharFormat_setFont(self.h, font.h, cint(behavior))

proc setFont*(self: gen_qtextformat_types.QTextCharFormat, font: gen_qfont_types.QFont): void =
  fcQTextCharFormat_setFontWithFont(self.h, font.h)

proc font*(self: gen_qtextformat_types.QTextCharFormat): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQTextCharFormat_font(self.h), owned: true)

proc setFontFamily*(self: gen_qtextformat_types.QTextCharFormat, family: string): void =
  fcQTextCharFormat_setFontFamily(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc fontFamily*(self: gen_qtextformat_types.QTextCharFormat): string =
  let v_ms = fcQTextCharFormat_fontFamily(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFontFamilies*(self: gen_qtextformat_types.QTextCharFormat, families: seq[string]): void =
  var families_CArray = newSeq[struct_miqt_string](len(families))
  for i in 0..<len(families):
    families_CArray[i] = struct_miqt_string(data: families[i], len: csize_t(len(families[i])))

  fcQTextCharFormat_setFontFamilies(self.h, struct_miqt_array(len: csize_t(len(families)), data: if len(families) == 0: nil else: addr(families_CArray[0])))

proc fontFamilies*(self: gen_qtextformat_types.QTextCharFormat): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextCharFormat_fontFamilies(self.h), owned: true)

proc setFontStyleName*(self: gen_qtextformat_types.QTextCharFormat, styleName: string): void =
  fcQTextCharFormat_setFontStyleName(self.h, struct_miqt_string(data: styleName, len: csize_t(len(styleName))))

proc fontStyleName*(self: gen_qtextformat_types.QTextCharFormat): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTextCharFormat_fontStyleName(self.h), owned: true)

proc setFontPointSize*(self: gen_qtextformat_types.QTextCharFormat, size: float64): void =
  fcQTextCharFormat_setFontPointSize(self.h, size)

proc fontPointSize*(self: gen_qtextformat_types.QTextCharFormat): float64 =
  fcQTextCharFormat_fontPointSize(self.h)

proc setFontWeight*(self: gen_qtextformat_types.QTextCharFormat, weight: cint): void =
  fcQTextCharFormat_setFontWeight(self.h, weight)

proc fontWeight*(self: gen_qtextformat_types.QTextCharFormat): cint =
  fcQTextCharFormat_fontWeight(self.h)

proc setFontItalic*(self: gen_qtextformat_types.QTextCharFormat, italic: bool): void =
  fcQTextCharFormat_setFontItalic(self.h, italic)

proc fontItalic*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_fontItalic(self.h)

proc setFontCapitalization*(self: gen_qtextformat_types.QTextCharFormat, capitalization: cint): void =
  fcQTextCharFormat_setFontCapitalization(self.h, cint(capitalization))

proc fontCapitalization*(self: gen_qtextformat_types.QTextCharFormat): cint =
  cint(fcQTextCharFormat_fontCapitalization(self.h))

proc setFontLetterSpacingType*(self: gen_qtextformat_types.QTextCharFormat, letterSpacingType: cint): void =
  fcQTextCharFormat_setFontLetterSpacingType(self.h, cint(letterSpacingType))

proc fontLetterSpacingType*(self: gen_qtextformat_types.QTextCharFormat): cint =
  cint(fcQTextCharFormat_fontLetterSpacingType(self.h))

proc setFontLetterSpacing*(self: gen_qtextformat_types.QTextCharFormat, spacing: float64): void =
  fcQTextCharFormat_setFontLetterSpacing(self.h, spacing)

proc fontLetterSpacing*(self: gen_qtextformat_types.QTextCharFormat): float64 =
  fcQTextCharFormat_fontLetterSpacing(self.h)

proc setFontWordSpacing*(self: gen_qtextformat_types.QTextCharFormat, spacing: float64): void =
  fcQTextCharFormat_setFontWordSpacing(self.h, spacing)

proc fontWordSpacing*(self: gen_qtextformat_types.QTextCharFormat): float64 =
  fcQTextCharFormat_fontWordSpacing(self.h)

proc setFontUnderline*(self: gen_qtextformat_types.QTextCharFormat, underline: bool): void =
  fcQTextCharFormat_setFontUnderline(self.h, underline)

proc fontUnderline*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_fontUnderline(self.h)

proc setFontOverline*(self: gen_qtextformat_types.QTextCharFormat, overline: bool): void =
  fcQTextCharFormat_setFontOverline(self.h, overline)

proc fontOverline*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_fontOverline(self.h)

proc setFontStrikeOut*(self: gen_qtextformat_types.QTextCharFormat, strikeOut: bool): void =
  fcQTextCharFormat_setFontStrikeOut(self.h, strikeOut)

proc fontStrikeOut*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_fontStrikeOut(self.h)

proc setUnderlineColor*(self: gen_qtextformat_types.QTextCharFormat, color: gen_qcolor_types.QColor): void =
  fcQTextCharFormat_setUnderlineColor(self.h, color.h)

proc underlineColor*(self: gen_qtextformat_types.QTextCharFormat): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQTextCharFormat_underlineColor(self.h), owned: true)

proc setFontFixedPitch*(self: gen_qtextformat_types.QTextCharFormat, fixedPitch: bool): void =
  fcQTextCharFormat_setFontFixedPitch(self.h, fixedPitch)

proc fontFixedPitch*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_fontFixedPitch(self.h)

proc setFontStretch*(self: gen_qtextformat_types.QTextCharFormat, factor: cint): void =
  fcQTextCharFormat_setFontStretch(self.h, factor)

proc fontStretch*(self: gen_qtextformat_types.QTextCharFormat): cint =
  fcQTextCharFormat_fontStretch(self.h)

proc setFontStyleHint*(self: gen_qtextformat_types.QTextCharFormat, hint: cint): void =
  fcQTextCharFormat_setFontStyleHint(self.h, cint(hint))

proc setFontStyleStrategy*(self: gen_qtextformat_types.QTextCharFormat, strategy: cint): void =
  fcQTextCharFormat_setFontStyleStrategy(self.h, cint(strategy))

proc fontStyleHint*(self: gen_qtextformat_types.QTextCharFormat): cint =
  cint(fcQTextCharFormat_fontStyleHint(self.h))

proc fontStyleStrategy*(self: gen_qtextformat_types.QTextCharFormat): cint =
  cint(fcQTextCharFormat_fontStyleStrategy(self.h))

proc setFontHintingPreference*(self: gen_qtextformat_types.QTextCharFormat, hintingPreference: cint): void =
  fcQTextCharFormat_setFontHintingPreference(self.h, cint(hintingPreference))

proc fontHintingPreference*(self: gen_qtextformat_types.QTextCharFormat): cint =
  cint(fcQTextCharFormat_fontHintingPreference(self.h))

proc setFontKerning*(self: gen_qtextformat_types.QTextCharFormat, enable: bool): void =
  fcQTextCharFormat_setFontKerning(self.h, enable)

proc fontKerning*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_fontKerning(self.h)

proc setUnderlineStyle*(self: gen_qtextformat_types.QTextCharFormat, style: cint): void =
  fcQTextCharFormat_setUnderlineStyle(self.h, cint(style))

proc underlineStyle*(self: gen_qtextformat_types.QTextCharFormat): cint =
  cint(fcQTextCharFormat_underlineStyle(self.h))

proc setVerticalAlignment*(self: gen_qtextformat_types.QTextCharFormat, alignment: cint): void =
  fcQTextCharFormat_setVerticalAlignment(self.h, cint(alignment))

proc verticalAlignment*(self: gen_qtextformat_types.QTextCharFormat): cint =
  cint(fcQTextCharFormat_verticalAlignment(self.h))

proc setTextOutline*(self: gen_qtextformat_types.QTextCharFormat, pen: gen_qpen_types.QPen): void =
  fcQTextCharFormat_setTextOutline(self.h, pen.h)

proc textOutline*(self: gen_qtextformat_types.QTextCharFormat): gen_qpen_types.QPen =
  gen_qpen_types.QPen(h: fcQTextCharFormat_textOutline(self.h), owned: true)

proc setToolTip*(self: gen_qtextformat_types.QTextCharFormat, tip: string): void =
  fcQTextCharFormat_setToolTip(self.h, struct_miqt_string(data: tip, len: csize_t(len(tip))))

proc toolTip*(self: gen_qtextformat_types.QTextCharFormat): string =
  let v_ms = fcQTextCharFormat_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAnchor*(self: gen_qtextformat_types.QTextCharFormat, anchor: bool): void =
  fcQTextCharFormat_setAnchor(self.h, anchor)

proc isAnchor*(self: gen_qtextformat_types.QTextCharFormat): bool =
  fcQTextCharFormat_isAnchor(self.h)

proc setAnchorHref*(self: gen_qtextformat_types.QTextCharFormat, value: string): void =
  fcQTextCharFormat_setAnchorHref(self.h, struct_miqt_string(data: value, len: csize_t(len(value))))

proc anchorHref*(self: gen_qtextformat_types.QTextCharFormat): string =
  let v_ms = fcQTextCharFormat_anchorHref(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAnchorName*(self: gen_qtextformat_types.QTextCharFormat, name: string): void =
  fcQTextCharFormat_setAnchorName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc anchorName*(self: gen_qtextformat_types.QTextCharFormat): string =
  let v_ms = fcQTextCharFormat_anchorName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAnchorNames*(self: gen_qtextformat_types.QTextCharFormat, names: seq[string]): void =
  var names_CArray = newSeq[struct_miqt_string](len(names))
  for i in 0..<len(names):
    names_CArray[i] = struct_miqt_string(data: names[i], len: csize_t(len(names[i])))

  fcQTextCharFormat_setAnchorNames(self.h, struct_miqt_array(len: csize_t(len(names)), data: if len(names) == 0: nil else: addr(names_CArray[0])))

proc anchorNames*(self: gen_qtextformat_types.QTextCharFormat): seq[string] =
  var v_ma = fcQTextCharFormat_anchorNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setTableCellRowSpan*(self: gen_qtextformat_types.QTextCharFormat, tableCellRowSpan: cint): void =
  fcQTextCharFormat_setTableCellRowSpan(self.h, tableCellRowSpan)

proc tableCellRowSpan*(self: gen_qtextformat_types.QTextCharFormat): cint =
  fcQTextCharFormat_tableCellRowSpan(self.h)

proc setTableCellColumnSpan*(self: gen_qtextformat_types.QTextCharFormat, tableCellColumnSpan: cint): void =
  fcQTextCharFormat_setTableCellColumnSpan(self.h, tableCellColumnSpan)

proc tableCellColumnSpan*(self: gen_qtextformat_types.QTextCharFormat): cint =
  fcQTextCharFormat_tableCellColumnSpan(self.h)

proc setFontStyleHint*(self: gen_qtextformat_types.QTextCharFormat, hint: cint, strategy: cint): void =
  fcQTextCharFormat_setFontStyleHint2(self.h, cint(hint), cint(strategy))

proc create*(T: type gen_qtextformat_types.QTextCharFormat): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextCharFormat_new(), owned: true)

proc create*(T: type gen_qtextformat_types.QTextCharFormat,
    param1: gen_qtextformat_types.QTextCharFormat): gen_qtextformat_types.QTextCharFormat =
  gen_qtextformat_types.QTextCharFormat(h: fcQTextCharFormat_new2(param1.h), owned: true)

proc isValid*(self: gen_qtextformat_types.QTextBlockFormat): bool =
  fcQTextBlockFormat_isValid(self.h)

proc setAlignment*(self: gen_qtextformat_types.QTextBlockFormat, alignment: cint): void =
  fcQTextBlockFormat_setAlignment(self.h, cint(alignment))

proc alignment*(self: gen_qtextformat_types.QTextBlockFormat): cint =
  cint(fcQTextBlockFormat_alignment(self.h))

proc setTopMargin*(self: gen_qtextformat_types.QTextBlockFormat, margin: float64): void =
  fcQTextBlockFormat_setTopMargin(self.h, margin)

proc topMargin*(self: gen_qtextformat_types.QTextBlockFormat): float64 =
  fcQTextBlockFormat_topMargin(self.h)

proc setBottomMargin*(self: gen_qtextformat_types.QTextBlockFormat, margin: float64): void =
  fcQTextBlockFormat_setBottomMargin(self.h, margin)

proc bottomMargin*(self: gen_qtextformat_types.QTextBlockFormat): float64 =
  fcQTextBlockFormat_bottomMargin(self.h)

proc setLeftMargin*(self: gen_qtextformat_types.QTextBlockFormat, margin: float64): void =
  fcQTextBlockFormat_setLeftMargin(self.h, margin)

proc leftMargin*(self: gen_qtextformat_types.QTextBlockFormat): float64 =
  fcQTextBlockFormat_leftMargin(self.h)

proc setRightMargin*(self: gen_qtextformat_types.QTextBlockFormat, margin: float64): void =
  fcQTextBlockFormat_setRightMargin(self.h, margin)

proc rightMargin*(self: gen_qtextformat_types.QTextBlockFormat): float64 =
  fcQTextBlockFormat_rightMargin(self.h)

proc setTextIndent*(self: gen_qtextformat_types.QTextBlockFormat, aindent: float64): void =
  fcQTextBlockFormat_setTextIndent(self.h, aindent)

proc textIndent*(self: gen_qtextformat_types.QTextBlockFormat): float64 =
  fcQTextBlockFormat_textIndent(self.h)

proc setIndent*(self: gen_qtextformat_types.QTextBlockFormat, indent: cint): void =
  fcQTextBlockFormat_setIndent(self.h, indent)

proc indent*(self: gen_qtextformat_types.QTextBlockFormat): cint =
  fcQTextBlockFormat_indent(self.h)

proc setHeadingLevel*(self: gen_qtextformat_types.QTextBlockFormat, alevel: cint): void =
  fcQTextBlockFormat_setHeadingLevel(self.h, alevel)

proc headingLevel*(self: gen_qtextformat_types.QTextBlockFormat): cint =
  fcQTextBlockFormat_headingLevel(self.h)

proc setLineHeight*(self: gen_qtextformat_types.QTextBlockFormat, height: float64, heightType: cint): void =
  fcQTextBlockFormat_setLineHeight(self.h, height, heightType)

proc lineHeight*(self: gen_qtextformat_types.QTextBlockFormat, scriptLineHeight: float64, scaling: float64): float64 =
  fcQTextBlockFormat_lineHeight(self.h, scriptLineHeight, scaling)

proc lineHeight*(self: gen_qtextformat_types.QTextBlockFormat): float64 =
  fcQTextBlockFormat_lineHeight2(self.h)

proc lineHeightType*(self: gen_qtextformat_types.QTextBlockFormat): cint =
  fcQTextBlockFormat_lineHeightType(self.h)

proc setNonBreakableLines*(self: gen_qtextformat_types.QTextBlockFormat, b: bool): void =
  fcQTextBlockFormat_setNonBreakableLines(self.h, b)

proc nonBreakableLines*(self: gen_qtextformat_types.QTextBlockFormat): bool =
  fcQTextBlockFormat_nonBreakableLines(self.h)

proc setPageBreakPolicy*(self: gen_qtextformat_types.QTextBlockFormat, flags: cint): void =
  fcQTextBlockFormat_setPageBreakPolicy(self.h, cint(flags))

proc pageBreakPolicy*(self: gen_qtextformat_types.QTextBlockFormat): cint =
  cint(fcQTextBlockFormat_pageBreakPolicy(self.h))

proc setTabPositions*(self: gen_qtextformat_types.QTextBlockFormat, tabs: seq[gen_qtextoption_types.QTextOptionTab]): void =
  var tabs_CArray = newSeq[pointer](len(tabs))
  for i in 0..<len(tabs):
    tabs_CArray[i] = tabs[i].h

  fcQTextBlockFormat_setTabPositions(self.h, struct_miqt_array(len: csize_t(len(tabs)), data: if len(tabs) == 0: nil else: addr(tabs_CArray[0])))

proc tabPositions*(self: gen_qtextformat_types.QTextBlockFormat): seq[gen_qtextoption_types.QTextOptionTab] =
  var v_ma = fcQTextBlockFormat_tabPositions(self.h)
  var vx_ret = newSeq[gen_qtextoption_types.QTextOptionTab](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextoption_types.QTextOptionTab(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setMarker*(self: gen_qtextformat_types.QTextBlockFormat, marker: cint): void =
  fcQTextBlockFormat_setMarker(self.h, cint(marker))

proc marker*(self: gen_qtextformat_types.QTextBlockFormat): cint =
  cint(fcQTextBlockFormat_marker(self.h))

proc create*(T: type gen_qtextformat_types.QTextBlockFormat): gen_qtextformat_types.QTextBlockFormat =
  gen_qtextformat_types.QTextBlockFormat(h: fcQTextBlockFormat_new(), owned: true)

proc create*(T: type gen_qtextformat_types.QTextBlockFormat,
    param1: gen_qtextformat_types.QTextBlockFormat): gen_qtextformat_types.QTextBlockFormat =
  gen_qtextformat_types.QTextBlockFormat(h: fcQTextBlockFormat_new2(param1.h), owned: true)

proc isValid*(self: gen_qtextformat_types.QTextListFormat): bool =
  fcQTextListFormat_isValid(self.h)

proc setStyle*(self: gen_qtextformat_types.QTextListFormat, style: cint): void =
  fcQTextListFormat_setStyle(self.h, cint(style))

proc style*(self: gen_qtextformat_types.QTextListFormat): cint =
  cint(fcQTextListFormat_style(self.h))

proc setIndent*(self: gen_qtextformat_types.QTextListFormat, indent: cint): void =
  fcQTextListFormat_setIndent(self.h, indent)

proc indent*(self: gen_qtextformat_types.QTextListFormat): cint =
  fcQTextListFormat_indent(self.h)

proc setNumberPrefix*(self: gen_qtextformat_types.QTextListFormat, numberPrefix: string): void =
  fcQTextListFormat_setNumberPrefix(self.h, struct_miqt_string(data: numberPrefix, len: csize_t(len(numberPrefix))))

proc numberPrefix*(self: gen_qtextformat_types.QTextListFormat): string =
  let v_ms = fcQTextListFormat_numberPrefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setNumberSuffix*(self: gen_qtextformat_types.QTextListFormat, numberSuffix: string): void =
  fcQTextListFormat_setNumberSuffix(self.h, struct_miqt_string(data: numberSuffix, len: csize_t(len(numberSuffix))))

proc numberSuffix*(self: gen_qtextformat_types.QTextListFormat): string =
  let v_ms = fcQTextListFormat_numberSuffix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qtextformat_types.QTextListFormat): gen_qtextformat_types.QTextListFormat =
  gen_qtextformat_types.QTextListFormat(h: fcQTextListFormat_new(), owned: true)

proc create*(T: type gen_qtextformat_types.QTextListFormat,
    param1: gen_qtextformat_types.QTextListFormat): gen_qtextformat_types.QTextListFormat =
  gen_qtextformat_types.QTextListFormat(h: fcQTextListFormat_new2(param1.h), owned: true)

proc isValid*(self: gen_qtextformat_types.QTextImageFormat): bool =
  fcQTextImageFormat_isValid(self.h)

proc setName*(self: gen_qtextformat_types.QTextImageFormat, name: string): void =
  fcQTextImageFormat_setName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc name*(self: gen_qtextformat_types.QTextImageFormat): string =
  let v_ms = fcQTextImageFormat_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidth*(self: gen_qtextformat_types.QTextImageFormat, width: float64): void =
  fcQTextImageFormat_setWidth(self.h, width)

proc width*(self: gen_qtextformat_types.QTextImageFormat): float64 =
  fcQTextImageFormat_width(self.h)

proc setHeight*(self: gen_qtextformat_types.QTextImageFormat, height: float64): void =
  fcQTextImageFormat_setHeight(self.h, height)

proc height*(self: gen_qtextformat_types.QTextImageFormat): float64 =
  fcQTextImageFormat_height(self.h)

proc setQuality*(self: gen_qtextformat_types.QTextImageFormat): void =
  fcQTextImageFormat_setQuality(self.h)

proc quality*(self: gen_qtextformat_types.QTextImageFormat): cint =
  fcQTextImageFormat_quality(self.h)

proc setQuality*(self: gen_qtextformat_types.QTextImageFormat, quality: cint): void =
  fcQTextImageFormat_setQuality1(self.h, quality)

proc create*(T: type gen_qtextformat_types.QTextImageFormat): gen_qtextformat_types.QTextImageFormat =
  gen_qtextformat_types.QTextImageFormat(h: fcQTextImageFormat_new(), owned: true)

proc isValid*(self: gen_qtextformat_types.QTextFrameFormat): bool =
  fcQTextFrameFormat_isValid(self.h)

proc setPosition*(self: gen_qtextformat_types.QTextFrameFormat, f: cint): void =
  fcQTextFrameFormat_setPosition(self.h, cint(f))

proc position*(self: gen_qtextformat_types.QTextFrameFormat): cint =
  cint(fcQTextFrameFormat_position(self.h))

proc setBorder*(self: gen_qtextformat_types.QTextFrameFormat, border: float64): void =
  fcQTextFrameFormat_setBorder(self.h, border)

proc border*(self: gen_qtextformat_types.QTextFrameFormat): float64 =
  fcQTextFrameFormat_border(self.h)

proc setBorderBrush*(self: gen_qtextformat_types.QTextFrameFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextFrameFormat_setBorderBrush(self.h, brush.h)

proc borderBrush*(self: gen_qtextformat_types.QTextFrameFormat): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextFrameFormat_borderBrush(self.h), owned: true)

proc setBorderStyle*(self: gen_qtextformat_types.QTextFrameFormat, style: cint): void =
  fcQTextFrameFormat_setBorderStyle(self.h, cint(style))

proc borderStyle*(self: gen_qtextformat_types.QTextFrameFormat): cint =
  cint(fcQTextFrameFormat_borderStyle(self.h))

proc setMargin*(self: gen_qtextformat_types.QTextFrameFormat, margin: float64): void =
  fcQTextFrameFormat_setMargin(self.h, margin)

proc margin*(self: gen_qtextformat_types.QTextFrameFormat): float64 =
  fcQTextFrameFormat_margin(self.h)

proc setTopMargin*(self: gen_qtextformat_types.QTextFrameFormat, margin: float64): void =
  fcQTextFrameFormat_setTopMargin(self.h, margin)

proc topMargin*(self: gen_qtextformat_types.QTextFrameFormat): float64 =
  fcQTextFrameFormat_topMargin(self.h)

proc setBottomMargin*(self: gen_qtextformat_types.QTextFrameFormat, margin: float64): void =
  fcQTextFrameFormat_setBottomMargin(self.h, margin)

proc bottomMargin*(self: gen_qtextformat_types.QTextFrameFormat): float64 =
  fcQTextFrameFormat_bottomMargin(self.h)

proc setLeftMargin*(self: gen_qtextformat_types.QTextFrameFormat, margin: float64): void =
  fcQTextFrameFormat_setLeftMargin(self.h, margin)

proc leftMargin*(self: gen_qtextformat_types.QTextFrameFormat): float64 =
  fcQTextFrameFormat_leftMargin(self.h)

proc setRightMargin*(self: gen_qtextformat_types.QTextFrameFormat, margin: float64): void =
  fcQTextFrameFormat_setRightMargin(self.h, margin)

proc rightMargin*(self: gen_qtextformat_types.QTextFrameFormat): float64 =
  fcQTextFrameFormat_rightMargin(self.h)

proc setPadding*(self: gen_qtextformat_types.QTextFrameFormat, padding: float64): void =
  fcQTextFrameFormat_setPadding(self.h, padding)

proc padding*(self: gen_qtextformat_types.QTextFrameFormat): float64 =
  fcQTextFrameFormat_padding(self.h)

proc setWidth*(self: gen_qtextformat_types.QTextFrameFormat, width: float64): void =
  fcQTextFrameFormat_setWidth(self.h, width)

proc setWidth*(self: gen_qtextformat_types.QTextFrameFormat, length: gen_qtextformat_types.QTextLength): void =
  fcQTextFrameFormat_setWidthWithLength(self.h, length.h)

proc width*(self: gen_qtextformat_types.QTextFrameFormat): gen_qtextformat_types.QTextLength =
  gen_qtextformat_types.QTextLength(h: fcQTextFrameFormat_width(self.h), owned: true)

proc setHeight*(self: gen_qtextformat_types.QTextFrameFormat, height: float64): void =
  fcQTextFrameFormat_setHeight(self.h, height)

proc setHeight*(self: gen_qtextformat_types.QTextFrameFormat, height: gen_qtextformat_types.QTextLength): void =
  fcQTextFrameFormat_setHeightWithHeight(self.h, height.h)

proc height*(self: gen_qtextformat_types.QTextFrameFormat): gen_qtextformat_types.QTextLength =
  gen_qtextformat_types.QTextLength(h: fcQTextFrameFormat_height(self.h), owned: true)

proc setPageBreakPolicy*(self: gen_qtextformat_types.QTextFrameFormat, flags: cint): void =
  fcQTextFrameFormat_setPageBreakPolicy(self.h, cint(flags))

proc pageBreakPolicy*(self: gen_qtextformat_types.QTextFrameFormat): cint =
  cint(fcQTextFrameFormat_pageBreakPolicy(self.h))

proc create*(T: type gen_qtextformat_types.QTextFrameFormat): gen_qtextformat_types.QTextFrameFormat =
  gen_qtextformat_types.QTextFrameFormat(h: fcQTextFrameFormat_new(), owned: true)

proc create*(T: type gen_qtextformat_types.QTextFrameFormat,
    param1: gen_qtextformat_types.QTextFrameFormat): gen_qtextformat_types.QTextFrameFormat =
  gen_qtextformat_types.QTextFrameFormat(h: fcQTextFrameFormat_new2(param1.h), owned: true)

proc isValid*(self: gen_qtextformat_types.QTextTableFormat): bool =
  fcQTextTableFormat_isValid(self.h)

proc columns*(self: gen_qtextformat_types.QTextTableFormat): cint =
  fcQTextTableFormat_columns(self.h)

proc setColumns*(self: gen_qtextformat_types.QTextTableFormat, columns: cint): void =
  fcQTextTableFormat_setColumns(self.h, columns)

proc setColumnWidthConstraints*(self: gen_qtextformat_types.QTextTableFormat, constraints: seq[gen_qtextformat_types.QTextLength]): void =
  var constraints_CArray = newSeq[pointer](len(constraints))
  for i in 0..<len(constraints):
    constraints_CArray[i] = constraints[i].h

  fcQTextTableFormat_setColumnWidthConstraints(self.h, struct_miqt_array(len: csize_t(len(constraints)), data: if len(constraints) == 0: nil else: addr(constraints_CArray[0])))

proc columnWidthConstraints*(self: gen_qtextformat_types.QTextTableFormat): seq[gen_qtextformat_types.QTextLength] =
  var v_ma = fcQTextTableFormat_columnWidthConstraints(self.h)
  var vx_ret = newSeq[gen_qtextformat_types.QTextLength](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextformat_types.QTextLength(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc clearColumnWidthConstraints*(self: gen_qtextformat_types.QTextTableFormat): void =
  fcQTextTableFormat_clearColumnWidthConstraints(self.h)

proc cellSpacing*(self: gen_qtextformat_types.QTextTableFormat): float64 =
  fcQTextTableFormat_cellSpacing(self.h)

proc setCellSpacing*(self: gen_qtextformat_types.QTextTableFormat, spacing: float64): void =
  fcQTextTableFormat_setCellSpacing(self.h, spacing)

proc cellPadding*(self: gen_qtextformat_types.QTextTableFormat): float64 =
  fcQTextTableFormat_cellPadding(self.h)

proc setCellPadding*(self: gen_qtextformat_types.QTextTableFormat, padding: float64): void =
  fcQTextTableFormat_setCellPadding(self.h, padding)

proc setAlignment*(self: gen_qtextformat_types.QTextTableFormat, alignment: cint): void =
  fcQTextTableFormat_setAlignment(self.h, cint(alignment))

proc alignment*(self: gen_qtextformat_types.QTextTableFormat): cint =
  cint(fcQTextTableFormat_alignment(self.h))

proc setHeaderRowCount*(self: gen_qtextformat_types.QTextTableFormat, count: cint): void =
  fcQTextTableFormat_setHeaderRowCount(self.h, count)

proc headerRowCount*(self: gen_qtextformat_types.QTextTableFormat): cint =
  fcQTextTableFormat_headerRowCount(self.h)

proc setBorderCollapse*(self: gen_qtextformat_types.QTextTableFormat, borderCollapse: bool): void =
  fcQTextTableFormat_setBorderCollapse(self.h, borderCollapse)

proc borderCollapse*(self: gen_qtextformat_types.QTextTableFormat): bool =
  fcQTextTableFormat_borderCollapse(self.h)

proc create*(T: type gen_qtextformat_types.QTextTableFormat): gen_qtextformat_types.QTextTableFormat =
  gen_qtextformat_types.QTextTableFormat(h: fcQTextTableFormat_new(), owned: true)

proc isValid*(self: gen_qtextformat_types.QTextTableCellFormat): bool =
  fcQTextTableCellFormat_isValid(self.h)

proc setTopPadding*(self: gen_qtextformat_types.QTextTableCellFormat, padding: float64): void =
  fcQTextTableCellFormat_setTopPadding(self.h, padding)

proc topPadding*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_topPadding(self.h)

proc setBottomPadding*(self: gen_qtextformat_types.QTextTableCellFormat, padding: float64): void =
  fcQTextTableCellFormat_setBottomPadding(self.h, padding)

proc bottomPadding*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_bottomPadding(self.h)

proc setLeftPadding*(self: gen_qtextformat_types.QTextTableCellFormat, padding: float64): void =
  fcQTextTableCellFormat_setLeftPadding(self.h, padding)

proc leftPadding*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_leftPadding(self.h)

proc setRightPadding*(self: gen_qtextformat_types.QTextTableCellFormat, padding: float64): void =
  fcQTextTableCellFormat_setRightPadding(self.h, padding)

proc rightPadding*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_rightPadding(self.h)

proc setPadding*(self: gen_qtextformat_types.QTextTableCellFormat, padding: float64): void =
  fcQTextTableCellFormat_setPadding(self.h, padding)

proc setTopBorder*(self: gen_qtextformat_types.QTextTableCellFormat, width: float64): void =
  fcQTextTableCellFormat_setTopBorder(self.h, width)

proc topBorder*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_topBorder(self.h)

proc setBottomBorder*(self: gen_qtextformat_types.QTextTableCellFormat, width: float64): void =
  fcQTextTableCellFormat_setBottomBorder(self.h, width)

proc bottomBorder*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_bottomBorder(self.h)

proc setLeftBorder*(self: gen_qtextformat_types.QTextTableCellFormat, width: float64): void =
  fcQTextTableCellFormat_setLeftBorder(self.h, width)

proc leftBorder*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_leftBorder(self.h)

proc setRightBorder*(self: gen_qtextformat_types.QTextTableCellFormat, width: float64): void =
  fcQTextTableCellFormat_setRightBorder(self.h, width)

proc rightBorder*(self: gen_qtextformat_types.QTextTableCellFormat): float64 =
  fcQTextTableCellFormat_rightBorder(self.h)

proc setBorder*(self: gen_qtextformat_types.QTextTableCellFormat, width: float64): void =
  fcQTextTableCellFormat_setBorder(self.h, width)

proc setTopBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat, style: cint): void =
  fcQTextTableCellFormat_setTopBorderStyle(self.h, cint(style))

proc topBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat): cint =
  cint(fcQTextTableCellFormat_topBorderStyle(self.h))

proc setBottomBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat, style: cint): void =
  fcQTextTableCellFormat_setBottomBorderStyle(self.h, cint(style))

proc bottomBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat): cint =
  cint(fcQTextTableCellFormat_bottomBorderStyle(self.h))

proc setLeftBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat, style: cint): void =
  fcQTextTableCellFormat_setLeftBorderStyle(self.h, cint(style))

proc leftBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat): cint =
  cint(fcQTextTableCellFormat_leftBorderStyle(self.h))

proc setRightBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat, style: cint): void =
  fcQTextTableCellFormat_setRightBorderStyle(self.h, cint(style))

proc rightBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat): cint =
  cint(fcQTextTableCellFormat_rightBorderStyle(self.h))

proc setBorderStyle*(self: gen_qtextformat_types.QTextTableCellFormat, style: cint): void =
  fcQTextTableCellFormat_setBorderStyle(self.h, cint(style))

proc setTopBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextTableCellFormat_setTopBorderBrush(self.h, brush.h)

proc topBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextTableCellFormat_topBorderBrush(self.h), owned: true)

proc setBottomBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextTableCellFormat_setBottomBorderBrush(self.h, brush.h)

proc bottomBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextTableCellFormat_bottomBorderBrush(self.h), owned: true)

proc setLeftBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextTableCellFormat_setLeftBorderBrush(self.h, brush.h)

proc leftBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextTableCellFormat_leftBorderBrush(self.h), owned: true)

proc setRightBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextTableCellFormat_setRightBorderBrush(self.h, brush.h)

proc rightBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQTextTableCellFormat_rightBorderBrush(self.h), owned: true)

proc setBorderBrush*(self: gen_qtextformat_types.QTextTableCellFormat, brush: gen_qbrush_types.QBrush): void =
  fcQTextTableCellFormat_setBorderBrush(self.h, brush.h)

proc create*(T: type gen_qtextformat_types.QTextTableCellFormat): gen_qtextformat_types.QTextTableCellFormat =
  gen_qtextformat_types.QTextTableCellFormat(h: fcQTextTableCellFormat_new(), owned: true)

