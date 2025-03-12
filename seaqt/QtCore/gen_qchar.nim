import ./Qt5Core_libs

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


type QCharSpecialCharacterEnum* = distinct cint
template Null*(_: type QCharSpecialCharacterEnum): untyped = 0
template Tabulation*(_: type QCharSpecialCharacterEnum): untyped = 9
template LineFeed*(_: type QCharSpecialCharacterEnum): untyped = 10
template FormFeed*(_: type QCharSpecialCharacterEnum): untyped = 12
template CarriageReturn*(_: type QCharSpecialCharacterEnum): untyped = 13
template Space*(_: type QCharSpecialCharacterEnum): untyped = 32
template Nbsp*(_: type QCharSpecialCharacterEnum): untyped = 160
template SoftHyphen*(_: type QCharSpecialCharacterEnum): untyped = 173
template ReplacementCharacter*(_: type QCharSpecialCharacterEnum): untyped = 65533
template ObjectReplacementCharacter*(_: type QCharSpecialCharacterEnum): untyped = 65532
template ByteOrderMark*(_: type QCharSpecialCharacterEnum): untyped = 65279
template ByteOrderSwapped*(_: type QCharSpecialCharacterEnum): untyped = 65534
template ParagraphSeparator*(_: type QCharSpecialCharacterEnum): untyped = 8233
template LineSeparator*(_: type QCharSpecialCharacterEnum): untyped = 8232
template LastValidCodePoint*(_: type QCharSpecialCharacterEnum): untyped = 1114111


type QCharCategoryEnum* = distinct cint
template Mark_NonSpacing*(_: type QCharCategoryEnum): untyped = 0
template Mark_SpacingCombining*(_: type QCharCategoryEnum): untyped = 1
template Mark_Enclosing*(_: type QCharCategoryEnum): untyped = 2
template Number_DecimalDigit*(_: type QCharCategoryEnum): untyped = 3
template Number_Letter*(_: type QCharCategoryEnum): untyped = 4
template Number_Other*(_: type QCharCategoryEnum): untyped = 5
template Separator_Space*(_: type QCharCategoryEnum): untyped = 6
template Separator_Line*(_: type QCharCategoryEnum): untyped = 7
template Separator_Paragraph*(_: type QCharCategoryEnum): untyped = 8
template Other_Control*(_: type QCharCategoryEnum): untyped = 9
template Other_Format*(_: type QCharCategoryEnum): untyped = 10
template Other_Surrogate*(_: type QCharCategoryEnum): untyped = 11
template Other_PrivateUse*(_: type QCharCategoryEnum): untyped = 12
template Other_NotAssigned*(_: type QCharCategoryEnum): untyped = 13
template Letter_Uppercase*(_: type QCharCategoryEnum): untyped = 14
template Letter_Lowercase*(_: type QCharCategoryEnum): untyped = 15
template Letter_Titlecase*(_: type QCharCategoryEnum): untyped = 16
template Letter_Modifier*(_: type QCharCategoryEnum): untyped = 17
template Letter_Other*(_: type QCharCategoryEnum): untyped = 18
template Punctuation_Connector*(_: type QCharCategoryEnum): untyped = 19
template Punctuation_Dash*(_: type QCharCategoryEnum): untyped = 20
template Punctuation_Open*(_: type QCharCategoryEnum): untyped = 21
template Punctuation_Close*(_: type QCharCategoryEnum): untyped = 22
template Punctuation_InitialQuote*(_: type QCharCategoryEnum): untyped = 23
template Punctuation_FinalQuote*(_: type QCharCategoryEnum): untyped = 24
template Punctuation_Other*(_: type QCharCategoryEnum): untyped = 25
template Symbol_Math*(_: type QCharCategoryEnum): untyped = 26
template Symbol_Currency*(_: type QCharCategoryEnum): untyped = 27
template Symbol_Modifier*(_: type QCharCategoryEnum): untyped = 28
template Symbol_Other*(_: type QCharCategoryEnum): untyped = 29


type QCharScriptEnum* = distinct cint
template Script_Unknown*(_: type QCharScriptEnum): untyped = 0
template Script_Inherited*(_: type QCharScriptEnum): untyped = 1
template Script_Common*(_: type QCharScriptEnum): untyped = 2
template Script_Latin*(_: type QCharScriptEnum): untyped = 3
template Script_Greek*(_: type QCharScriptEnum): untyped = 4
template Script_Cyrillic*(_: type QCharScriptEnum): untyped = 5
template Script_Armenian*(_: type QCharScriptEnum): untyped = 6
template Script_Hebrew*(_: type QCharScriptEnum): untyped = 7
template Script_Arabic*(_: type QCharScriptEnum): untyped = 8
template Script_Syriac*(_: type QCharScriptEnum): untyped = 9
template Script_Thaana*(_: type QCharScriptEnum): untyped = 10
template Script_Devanagari*(_: type QCharScriptEnum): untyped = 11
template Script_Bengali*(_: type QCharScriptEnum): untyped = 12
template Script_Gurmukhi*(_: type QCharScriptEnum): untyped = 13
template Script_Gujarati*(_: type QCharScriptEnum): untyped = 14
template Script_Oriya*(_: type QCharScriptEnum): untyped = 15
template Script_Tamil*(_: type QCharScriptEnum): untyped = 16
template Script_Telugu*(_: type QCharScriptEnum): untyped = 17
template Script_Kannada*(_: type QCharScriptEnum): untyped = 18
template Script_Malayalam*(_: type QCharScriptEnum): untyped = 19
template Script_Sinhala*(_: type QCharScriptEnum): untyped = 20
template Script_Thai*(_: type QCharScriptEnum): untyped = 21
template Script_Lao*(_: type QCharScriptEnum): untyped = 22
template Script_Tibetan*(_: type QCharScriptEnum): untyped = 23
template Script_Myanmar*(_: type QCharScriptEnum): untyped = 24
template Script_Georgian*(_: type QCharScriptEnum): untyped = 25
template Script_Hangul*(_: type QCharScriptEnum): untyped = 26
template Script_Ethiopic*(_: type QCharScriptEnum): untyped = 27
template Script_Cherokee*(_: type QCharScriptEnum): untyped = 28
template Script_CanadianAboriginal*(_: type QCharScriptEnum): untyped = 29
template Script_Ogham*(_: type QCharScriptEnum): untyped = 30
template Script_Runic*(_: type QCharScriptEnum): untyped = 31
template Script_Khmer*(_: type QCharScriptEnum): untyped = 32
template Script_Mongolian*(_: type QCharScriptEnum): untyped = 33
template Script_Hiragana*(_: type QCharScriptEnum): untyped = 34
template Script_Katakana*(_: type QCharScriptEnum): untyped = 35
template Script_Bopomofo*(_: type QCharScriptEnum): untyped = 36
template Script_Han*(_: type QCharScriptEnum): untyped = 37
template Script_Yi*(_: type QCharScriptEnum): untyped = 38
template Script_OldItalic*(_: type QCharScriptEnum): untyped = 39
template Script_Gothic*(_: type QCharScriptEnum): untyped = 40
template Script_Deseret*(_: type QCharScriptEnum): untyped = 41
template Script_Tagalog*(_: type QCharScriptEnum): untyped = 42
template Script_Hanunoo*(_: type QCharScriptEnum): untyped = 43
template Script_Buhid*(_: type QCharScriptEnum): untyped = 44
template Script_Tagbanwa*(_: type QCharScriptEnum): untyped = 45
template Script_Coptic*(_: type QCharScriptEnum): untyped = 46
template Script_Limbu*(_: type QCharScriptEnum): untyped = 47
template Script_TaiLe*(_: type QCharScriptEnum): untyped = 48
template Script_LinearB*(_: type QCharScriptEnum): untyped = 49
template Script_Ugaritic*(_: type QCharScriptEnum): untyped = 50
template Script_Shavian*(_: type QCharScriptEnum): untyped = 51
template Script_Osmanya*(_: type QCharScriptEnum): untyped = 52
template Script_Cypriot*(_: type QCharScriptEnum): untyped = 53
template Script_Braille*(_: type QCharScriptEnum): untyped = 54
template Script_Buginese*(_: type QCharScriptEnum): untyped = 55
template Script_NewTaiLue*(_: type QCharScriptEnum): untyped = 56
template Script_Glagolitic*(_: type QCharScriptEnum): untyped = 57
template Script_Tifinagh*(_: type QCharScriptEnum): untyped = 58
template Script_SylotiNagri*(_: type QCharScriptEnum): untyped = 59
template Script_OldPersian*(_: type QCharScriptEnum): untyped = 60
template Script_Kharoshthi*(_: type QCharScriptEnum): untyped = 61
template Script_Balinese*(_: type QCharScriptEnum): untyped = 62
template Script_Cuneiform*(_: type QCharScriptEnum): untyped = 63
template Script_Phoenician*(_: type QCharScriptEnum): untyped = 64
template Script_PhagsPa*(_: type QCharScriptEnum): untyped = 65
template Script_Nko*(_: type QCharScriptEnum): untyped = 66
template Script_Sundanese*(_: type QCharScriptEnum): untyped = 67
template Script_Lepcha*(_: type QCharScriptEnum): untyped = 68
template Script_OlChiki*(_: type QCharScriptEnum): untyped = 69
template Script_Vai*(_: type QCharScriptEnum): untyped = 70
template Script_Saurashtra*(_: type QCharScriptEnum): untyped = 71
template Script_KayahLi*(_: type QCharScriptEnum): untyped = 72
template Script_Rejang*(_: type QCharScriptEnum): untyped = 73
template Script_Lycian*(_: type QCharScriptEnum): untyped = 74
template Script_Carian*(_: type QCharScriptEnum): untyped = 75
template Script_Lydian*(_: type QCharScriptEnum): untyped = 76
template Script_Cham*(_: type QCharScriptEnum): untyped = 77
template Script_TaiTham*(_: type QCharScriptEnum): untyped = 78
template Script_TaiViet*(_: type QCharScriptEnum): untyped = 79
template Script_Avestan*(_: type QCharScriptEnum): untyped = 80
template Script_EgyptianHieroglyphs*(_: type QCharScriptEnum): untyped = 81
template Script_Samaritan*(_: type QCharScriptEnum): untyped = 82
template Script_Lisu*(_: type QCharScriptEnum): untyped = 83
template Script_Bamum*(_: type QCharScriptEnum): untyped = 84
template Script_Javanese*(_: type QCharScriptEnum): untyped = 85
template Script_MeeteiMayek*(_: type QCharScriptEnum): untyped = 86
template Script_ImperialAramaic*(_: type QCharScriptEnum): untyped = 87
template Script_OldSouthArabian*(_: type QCharScriptEnum): untyped = 88
template Script_InscriptionalParthian*(_: type QCharScriptEnum): untyped = 89
template Script_InscriptionalPahlavi*(_: type QCharScriptEnum): untyped = 90
template Script_OldTurkic*(_: type QCharScriptEnum): untyped = 91
template Script_Kaithi*(_: type QCharScriptEnum): untyped = 92
template Script_Batak*(_: type QCharScriptEnum): untyped = 93
template Script_Brahmi*(_: type QCharScriptEnum): untyped = 94
template Script_Mandaic*(_: type QCharScriptEnum): untyped = 95
template Script_Chakma*(_: type QCharScriptEnum): untyped = 96
template Script_MeroiticCursive*(_: type QCharScriptEnum): untyped = 97
template Script_MeroiticHieroglyphs*(_: type QCharScriptEnum): untyped = 98
template Script_Miao*(_: type QCharScriptEnum): untyped = 99
template Script_Sharada*(_: type QCharScriptEnum): untyped = 100
template Script_SoraSompeng*(_: type QCharScriptEnum): untyped = 101
template Script_Takri*(_: type QCharScriptEnum): untyped = 102
template Script_CaucasianAlbanian*(_: type QCharScriptEnum): untyped = 103
template Script_BassaVah*(_: type QCharScriptEnum): untyped = 104
template Script_Duployan*(_: type QCharScriptEnum): untyped = 105
template Script_Elbasan*(_: type QCharScriptEnum): untyped = 106
template Script_Grantha*(_: type QCharScriptEnum): untyped = 107
template Script_PahawhHmong*(_: type QCharScriptEnum): untyped = 108
template Script_Khojki*(_: type QCharScriptEnum): untyped = 109
template Script_LinearA*(_: type QCharScriptEnum): untyped = 110
template Script_Mahajani*(_: type QCharScriptEnum): untyped = 111
template Script_Manichaean*(_: type QCharScriptEnum): untyped = 112
template Script_MendeKikakui*(_: type QCharScriptEnum): untyped = 113
template Script_Modi*(_: type QCharScriptEnum): untyped = 114
template Script_Mro*(_: type QCharScriptEnum): untyped = 115
template Script_OldNorthArabian*(_: type QCharScriptEnum): untyped = 116
template Script_Nabataean*(_: type QCharScriptEnum): untyped = 117
template Script_Palmyrene*(_: type QCharScriptEnum): untyped = 118
template Script_PauCinHau*(_: type QCharScriptEnum): untyped = 119
template Script_OldPermic*(_: type QCharScriptEnum): untyped = 120
template Script_PsalterPahlavi*(_: type QCharScriptEnum): untyped = 121
template Script_Siddham*(_: type QCharScriptEnum): untyped = 122
template Script_Khudawadi*(_: type QCharScriptEnum): untyped = 123
template Script_Tirhuta*(_: type QCharScriptEnum): untyped = 124
template Script_WarangCiti*(_: type QCharScriptEnum): untyped = 125
template Script_Ahom*(_: type QCharScriptEnum): untyped = 126
template Script_AnatolianHieroglyphs*(_: type QCharScriptEnum): untyped = 127
template Script_Hatran*(_: type QCharScriptEnum): untyped = 128
template Script_Multani*(_: type QCharScriptEnum): untyped = 129
template Script_OldHungarian*(_: type QCharScriptEnum): untyped = 130
template Script_SignWriting*(_: type QCharScriptEnum): untyped = 131
template Script_Adlam*(_: type QCharScriptEnum): untyped = 132
template Script_Bhaiksuki*(_: type QCharScriptEnum): untyped = 133
template Script_Marchen*(_: type QCharScriptEnum): untyped = 134
template Script_Newa*(_: type QCharScriptEnum): untyped = 135
template Script_Osage*(_: type QCharScriptEnum): untyped = 136
template Script_Tangut*(_: type QCharScriptEnum): untyped = 137
template Script_MasaramGondi*(_: type QCharScriptEnum): untyped = 138
template Script_Nushu*(_: type QCharScriptEnum): untyped = 139
template Script_Soyombo*(_: type QCharScriptEnum): untyped = 140
template Script_ZanabazarSquare*(_: type QCharScriptEnum): untyped = 141
template Script_Dogra*(_: type QCharScriptEnum): untyped = 142
template Script_GunjalaGondi*(_: type QCharScriptEnum): untyped = 143
template Script_HanifiRohingya*(_: type QCharScriptEnum): untyped = 144
template Script_Makasar*(_: type QCharScriptEnum): untyped = 145
template Script_Medefaidrin*(_: type QCharScriptEnum): untyped = 146
template Script_OldSogdian*(_: type QCharScriptEnum): untyped = 147
template Script_Sogdian*(_: type QCharScriptEnum): untyped = 148
template Script_Elymaic*(_: type QCharScriptEnum): untyped = 149
template Script_Nandinagari*(_: type QCharScriptEnum): untyped = 150
template Script_NyiakengPuachueHmong*(_: type QCharScriptEnum): untyped = 151
template Script_Wancho*(_: type QCharScriptEnum): untyped = 152
template Script_Chorasmian*(_: type QCharScriptEnum): untyped = 153
template Script_DivesAkuru*(_: type QCharScriptEnum): untyped = 154
template Script_KhitanSmallScript*(_: type QCharScriptEnum): untyped = 155
template Script_Yezidi*(_: type QCharScriptEnum): untyped = 156
template ScriptCount*(_: type QCharScriptEnum): untyped = 157


type QCharDirectionEnum* = distinct cint
template DirL*(_: type QCharDirectionEnum): untyped = 0
template DirR*(_: type QCharDirectionEnum): untyped = 1
template DirEN*(_: type QCharDirectionEnum): untyped = 2
template DirES*(_: type QCharDirectionEnum): untyped = 3
template DirET*(_: type QCharDirectionEnum): untyped = 4
template DirAN*(_: type QCharDirectionEnum): untyped = 5
template DirCS*(_: type QCharDirectionEnum): untyped = 6
template DirB*(_: type QCharDirectionEnum): untyped = 7
template DirS*(_: type QCharDirectionEnum): untyped = 8
template DirWS*(_: type QCharDirectionEnum): untyped = 9
template DirON*(_: type QCharDirectionEnum): untyped = 10
template DirLRE*(_: type QCharDirectionEnum): untyped = 11
template DirLRO*(_: type QCharDirectionEnum): untyped = 12
template DirAL*(_: type QCharDirectionEnum): untyped = 13
template DirRLE*(_: type QCharDirectionEnum): untyped = 14
template DirRLO*(_: type QCharDirectionEnum): untyped = 15
template DirPDF*(_: type QCharDirectionEnum): untyped = 16
template DirNSM*(_: type QCharDirectionEnum): untyped = 17
template DirBN*(_: type QCharDirectionEnum): untyped = 18
template DirLRI*(_: type QCharDirectionEnum): untyped = 19
template DirRLI*(_: type QCharDirectionEnum): untyped = 20
template DirFSI*(_: type QCharDirectionEnum): untyped = 21
template DirPDI*(_: type QCharDirectionEnum): untyped = 22


type QCharDecompositionEnum* = distinct cint
template NoDecomposition*(_: type QCharDecompositionEnum): untyped = 0
template Canonical*(_: type QCharDecompositionEnum): untyped = 1
template Font*(_: type QCharDecompositionEnum): untyped = 2
template NoBreak*(_: type QCharDecompositionEnum): untyped = 3
template Initial*(_: type QCharDecompositionEnum): untyped = 4
template Medial*(_: type QCharDecompositionEnum): untyped = 5
template Final*(_: type QCharDecompositionEnum): untyped = 6
template Isolated*(_: type QCharDecompositionEnum): untyped = 7
template Circle*(_: type QCharDecompositionEnum): untyped = 8
template Super*(_: type QCharDecompositionEnum): untyped = 9
template Sub*(_: type QCharDecompositionEnum): untyped = 10
template Vertical*(_: type QCharDecompositionEnum): untyped = 11
template Wide*(_: type QCharDecompositionEnum): untyped = 12
template Narrow*(_: type QCharDecompositionEnum): untyped = 13
template Small*(_: type QCharDecompositionEnum): untyped = 14
template Square*(_: type QCharDecompositionEnum): untyped = 15
template Compat*(_: type QCharDecompositionEnum): untyped = 16
template Fraction*(_: type QCharDecompositionEnum): untyped = 17


type QCharJoiningTypeEnum* = distinct cint
template Joining_None*(_: type QCharJoiningTypeEnum): untyped = 0
template Joining_Causing*(_: type QCharJoiningTypeEnum): untyped = 1
template Joining_Dual*(_: type QCharJoiningTypeEnum): untyped = 2
template Joining_Right*(_: type QCharJoiningTypeEnum): untyped = 3
template Joining_Left*(_: type QCharJoiningTypeEnum): untyped = 4
template Joining_Transparent*(_: type QCharJoiningTypeEnum): untyped = 5


type QCharJoiningEnum* = distinct cint
template OtherJoining*(_: type QCharJoiningEnum): untyped = 0
template Dual*(_: type QCharJoiningEnum): untyped = 1
template Right*(_: type QCharJoiningEnum): untyped = 2
template Center*(_: type QCharJoiningEnum): untyped = 3


type QCharCombiningClassEnum* = distinct cint
template Combining_BelowLeftAttached*(_: type QCharCombiningClassEnum): untyped = 200
template Combining_BelowAttached*(_: type QCharCombiningClassEnum): untyped = 202
template Combining_BelowRightAttached*(_: type QCharCombiningClassEnum): untyped = 204
template Combining_LeftAttached*(_: type QCharCombiningClassEnum): untyped = 208
template Combining_RightAttached*(_: type QCharCombiningClassEnum): untyped = 210
template Combining_AboveLeftAttached*(_: type QCharCombiningClassEnum): untyped = 212
template Combining_AboveAttached*(_: type QCharCombiningClassEnum): untyped = 214
template Combining_AboveRightAttached*(_: type QCharCombiningClassEnum): untyped = 216
template Combining_BelowLeft*(_: type QCharCombiningClassEnum): untyped = 218
template Combining_Below*(_: type QCharCombiningClassEnum): untyped = 220
template Combining_BelowRight*(_: type QCharCombiningClassEnum): untyped = 222
template Combining_Left*(_: type QCharCombiningClassEnum): untyped = 224
template Combining_Right*(_: type QCharCombiningClassEnum): untyped = 226
template Combining_AboveLeft*(_: type QCharCombiningClassEnum): untyped = 228
template Combining_Above*(_: type QCharCombiningClassEnum): untyped = 230
template Combining_AboveRight*(_: type QCharCombiningClassEnum): untyped = 232
template Combining_DoubleBelow*(_: type QCharCombiningClassEnum): untyped = 233
template Combining_DoubleAbove*(_: type QCharCombiningClassEnum): untyped = 234
template Combining_IotaSubscript*(_: type QCharCombiningClassEnum): untyped = 240


type QCharUnicodeVersionEnum* = distinct cint
template Unicode_Unassigned*(_: type QCharUnicodeVersionEnum): untyped = 0
template Unicode_1_1*(_: type QCharUnicodeVersionEnum): untyped = 1
template Unicode_2_0*(_: type QCharUnicodeVersionEnum): untyped = 2
template Unicode_2_1_2*(_: type QCharUnicodeVersionEnum): untyped = 3
template Unicode_3_0*(_: type QCharUnicodeVersionEnum): untyped = 4
template Unicode_3_1*(_: type QCharUnicodeVersionEnum): untyped = 5
template Unicode_3_2*(_: type QCharUnicodeVersionEnum): untyped = 6
template Unicode_4_0*(_: type QCharUnicodeVersionEnum): untyped = 7
template Unicode_4_1*(_: type QCharUnicodeVersionEnum): untyped = 8
template Unicode_5_0*(_: type QCharUnicodeVersionEnum): untyped = 9
template Unicode_5_1*(_: type QCharUnicodeVersionEnum): untyped = 10
template Unicode_5_2*(_: type QCharUnicodeVersionEnum): untyped = 11
template Unicode_6_0*(_: type QCharUnicodeVersionEnum): untyped = 12
template Unicode_6_1*(_: type QCharUnicodeVersionEnum): untyped = 13
template Unicode_6_2*(_: type QCharUnicodeVersionEnum): untyped = 14
template Unicode_6_3*(_: type QCharUnicodeVersionEnum): untyped = 15
template Unicode_7_0*(_: type QCharUnicodeVersionEnum): untyped = 16
template Unicode_8_0*(_: type QCharUnicodeVersionEnum): untyped = 17
template Unicode_9_0*(_: type QCharUnicodeVersionEnum): untyped = 18
template Unicode_10_0*(_: type QCharUnicodeVersionEnum): untyped = 19
template Unicode_11_0*(_: type QCharUnicodeVersionEnum): untyped = 20
template Unicode_12_0*(_: type QCharUnicodeVersionEnum): untyped = 21
template Unicode_12_1*(_: type QCharUnicodeVersionEnum): untyped = 22
template Unicode_13_0*(_: type QCharUnicodeVersionEnum): untyped = 23


import ./gen_qchar_types
export gen_qchar_types


type cQLatin1Char*{.exportc: "QLatin1Char", incompleteStruct.} = object
type cQChar*{.exportc: "QChar", incompleteStruct.} = object

proc fcQLatin1Char_toLatin1(self: pointer): cchar {.importc: "QLatin1Char_toLatin1".}
proc fcQLatin1Char_unicode(self: pointer): cushort {.importc: "QLatin1Char_unicode".}
proc fcQLatin1Char_new(c: cchar): ptr cQLatin1Char {.importc: "QLatin1Char_new".}
proc fcQLatin1Char_new2(param1: pointer): ptr cQLatin1Char {.importc: "QLatin1Char_new2".}
proc fcQChar_category(self: pointer): cint {.importc: "QChar_category".}
proc fcQChar_direction(self: pointer): cint {.importc: "QChar_direction".}
proc fcQChar_joiningType(self: pointer): cint {.importc: "QChar_joiningType".}
proc fcQChar_joining(self: pointer): cint {.importc: "QChar_joining".}
proc fcQChar_combiningClass(self: pointer): uint8 {.importc: "QChar_combiningClass".}
proc fcQChar_mirroredChar(self: pointer): pointer {.importc: "QChar_mirroredChar".}
proc fcQChar_hasMirrored(self: pointer): bool {.importc: "QChar_hasMirrored".}
proc fcQChar_decomposition(self: pointer): struct_miqt_string {.importc: "QChar_decomposition".}
proc fcQChar_decompositionTag(self: pointer): cint {.importc: "QChar_decompositionTag".}
proc fcQChar_digitValue(self: pointer): cint {.importc: "QChar_digitValue".}
proc fcQChar_toLower(self: pointer): pointer {.importc: "QChar_toLower".}
proc fcQChar_toUpper(self: pointer): pointer {.importc: "QChar_toUpper".}
proc fcQChar_toTitleCase(self: pointer): pointer {.importc: "QChar_toTitleCase".}
proc fcQChar_toCaseFolded(self: pointer): pointer {.importc: "QChar_toCaseFolded".}
proc fcQChar_script(self: pointer): cint {.importc: "QChar_script".}
proc fcQChar_unicodeVersion(self: pointer): cint {.importc: "QChar_unicodeVersion".}
proc fcQChar_toLatin1(self: pointer): cchar {.importc: "QChar_toLatin1".}
proc fcQChar_unicode(self: pointer): cushort {.importc: "QChar_unicode".}
proc fcQChar_fromLatin1(c: cchar): pointer {.importc: "QChar_fromLatin1".}
proc fcQChar_isNull(self: pointer): bool {.importc: "QChar_isNull".}
proc fcQChar_isPrint(self: pointer): bool {.importc: "QChar_isPrint".}
proc fcQChar_isSpace(self: pointer): bool {.importc: "QChar_isSpace".}
proc fcQChar_isMark(self: pointer): bool {.importc: "QChar_isMark".}
proc fcQChar_isPunct(self: pointer): bool {.importc: "QChar_isPunct".}
proc fcQChar_isSymbol(self: pointer): bool {.importc: "QChar_isSymbol".}
proc fcQChar_isLetter(self: pointer): bool {.importc: "QChar_isLetter".}
proc fcQChar_isNumber(self: pointer): bool {.importc: "QChar_isNumber".}
proc fcQChar_isLetterOrNumber(self: pointer): bool {.importc: "QChar_isLetterOrNumber".}
proc fcQChar_isDigit(self: pointer): bool {.importc: "QChar_isDigit".}
proc fcQChar_isLower(self: pointer): bool {.importc: "QChar_isLower".}
proc fcQChar_isUpper(self: pointer): bool {.importc: "QChar_isUpper".}
proc fcQChar_isTitleCase(self: pointer): bool {.importc: "QChar_isTitleCase".}
proc fcQChar_isNonCharacter(self: pointer): bool {.importc: "QChar_isNonCharacter".}
proc fcQChar_isHighSurrogate(self: pointer): bool {.importc: "QChar_isHighSurrogate".}
proc fcQChar_isLowSurrogate(self: pointer): bool {.importc: "QChar_isLowSurrogate".}
proc fcQChar_isSurrogate(self: pointer): bool {.importc: "QChar_isSurrogate".}
proc fcQChar_cell(self: pointer): uint8 {.importc: "QChar_cell".}
proc fcQChar_row(self: pointer): uint8 {.importc: "QChar_row".}
proc fcQChar_setCell(self: pointer, acell: uint8): void {.importc: "QChar_setCell".}
proc fcQChar_setRow(self: pointer, arow: uint8): void {.importc: "QChar_setRow".}
proc fcQChar_isNonCharacterWithUcs4(ucs4: cuint): bool {.importc: "QChar_isNonCharacterWithUcs4".}
proc fcQChar_isHighSurrogateWithUcs4(ucs4: cuint): bool {.importc: "QChar_isHighSurrogateWithUcs4".}
proc fcQChar_isLowSurrogateWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLowSurrogateWithUcs4".}
proc fcQChar_isSurrogateWithUcs4(ucs4: cuint): bool {.importc: "QChar_isSurrogateWithUcs4".}
proc fcQChar_requiresSurrogates(ucs4: cuint): bool {.importc: "QChar_requiresSurrogates".}
proc fcQChar_surrogateToUcs4(high: cushort, low: cushort): cuint {.importc: "QChar_surrogateToUcs4".}
proc fcQChar_surrogateToUcs42(high: pointer, low: pointer): cuint {.importc: "QChar_surrogateToUcs42".}
proc fcQChar_highSurrogate(ucs4: cuint): cushort {.importc: "QChar_highSurrogate".}
proc fcQChar_lowSurrogate(ucs4: cuint): cushort {.importc: "QChar_lowSurrogate".}
proc fcQChar_categoryWithUcs4(ucs4: cuint): cint {.importc: "QChar_categoryWithUcs4".}
proc fcQChar_directionWithUcs4(ucs4: cuint): cint {.importc: "QChar_directionWithUcs4".}
proc fcQChar_joiningTypeWithUcs4(ucs4: cuint): cint {.importc: "QChar_joiningTypeWithUcs4".}
proc fcQChar_joiningWithUcs4(ucs4: cuint): cint {.importc: "QChar_joiningWithUcs4".}
proc fcQChar_combiningClassWithUcs4(ucs4: cuint): uint8 {.importc: "QChar_combiningClassWithUcs4".}
proc fcQChar_mirroredCharWithUcs4(ucs4: cuint): cuint {.importc: "QChar_mirroredCharWithUcs4".}
proc fcQChar_hasMirroredWithUcs4(ucs4: cuint): bool {.importc: "QChar_hasMirroredWithUcs4".}
proc fcQChar_decompositionWithUcs4(ucs4: cuint): struct_miqt_string {.importc: "QChar_decompositionWithUcs4".}
proc fcQChar_decompositionTagWithUcs4(ucs4: cuint): cint {.importc: "QChar_decompositionTagWithUcs4".}
proc fcQChar_digitValueWithUcs4(ucs4: cuint): cint {.importc: "QChar_digitValueWithUcs4".}
proc fcQChar_toLowerWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toLowerWithUcs4".}
proc fcQChar_toUpperWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toUpperWithUcs4".}
proc fcQChar_toTitleCaseWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toTitleCaseWithUcs4".}
proc fcQChar_toCaseFoldedWithUcs4(ucs4: cuint): cuint {.importc: "QChar_toCaseFoldedWithUcs4".}
proc fcQChar_scriptWithUcs4(ucs4: cuint): cint {.importc: "QChar_scriptWithUcs4".}
proc fcQChar_unicodeVersionWithUcs4(ucs4: cuint): cint {.importc: "QChar_unicodeVersionWithUcs4".}
proc fcQChar_currentUnicodeVersion(): cint {.importc: "QChar_currentUnicodeVersion".}
proc fcQChar_isPrintWithUcs4(ucs4: cuint): bool {.importc: "QChar_isPrintWithUcs4".}
proc fcQChar_isSpaceWithUcs4(ucs4: cuint): bool {.importc: "QChar_isSpaceWithUcs4".}
proc fcQChar_isMarkWithUcs4(ucs4: cuint): bool {.importc: "QChar_isMarkWithUcs4".}
proc fcQChar_isPunctWithUcs4(ucs4: cuint): bool {.importc: "QChar_isPunctWithUcs4".}
proc fcQChar_isSymbolWithUcs4(ucs4: cuint): bool {.importc: "QChar_isSymbolWithUcs4".}
proc fcQChar_isLetterWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLetterWithUcs4".}
proc fcQChar_isNumberWithUcs4(ucs4: cuint): bool {.importc: "QChar_isNumberWithUcs4".}
proc fcQChar_isLetterOrNumberWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLetterOrNumberWithUcs4".}
proc fcQChar_isDigitWithUcs4(ucs4: cuint): bool {.importc: "QChar_isDigitWithUcs4".}
proc fcQChar_isLowerWithUcs4(ucs4: cuint): bool {.importc: "QChar_isLowerWithUcs4".}
proc fcQChar_isUpperWithUcs4(ucs4: cuint): bool {.importc: "QChar_isUpperWithUcs4".}
proc fcQChar_isTitleCaseWithUcs4(ucs4: cuint): bool {.importc: "QChar_isTitleCaseWithUcs4".}
proc fcQChar_new(): ptr cQChar {.importc: "QChar_new".}
proc fcQChar_new2(rc: cushort): ptr cQChar {.importc: "QChar_new2".}
proc fcQChar_new3(c: uint8, r: uint8): ptr cQChar {.importc: "QChar_new3".}
proc fcQChar_new4(rc: cshort): ptr cQChar {.importc: "QChar_new4".}
proc fcQChar_new5(rc: cuint): ptr cQChar {.importc: "QChar_new5".}
proc fcQChar_new6(rc: cint): ptr cQChar {.importc: "QChar_new6".}
proc fcQChar_new7(s: cint): ptr cQChar {.importc: "QChar_new7".}
proc fcQChar_new8(ch: pointer): ptr cQChar {.importc: "QChar_new8".}
proc fcQChar_new9(c: cchar): ptr cQChar {.importc: "QChar_new9".}
proc fcQChar_new10(c: uint8): ptr cQChar {.importc: "QChar_new10".}
proc fcQChar_new11(param1: pointer): ptr cQChar {.importc: "QChar_new11".}

proc toLatin1*(self: gen_qchar_types.QLatin1Char): cchar =
  fcQLatin1Char_toLatin1(self.h)

proc unicode*(self: gen_qchar_types.QLatin1Char): cushort =
  fcQLatin1Char_unicode(self.h)

proc create*(T: type gen_qchar_types.QLatin1Char,
    c: cchar): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1Char_new(c), owned: true)

proc create*(T: type gen_qchar_types.QLatin1Char,
    param1: gen_qchar_types.QLatin1Char): gen_qchar_types.QLatin1Char =
  gen_qchar_types.QLatin1Char(h: fcQLatin1Char_new2(param1.h), owned: true)

proc category*(self: gen_qchar_types.QChar): cint =
  cint(fcQChar_category(self.h))

proc direction*(self: gen_qchar_types.QChar): cint =
  cint(fcQChar_direction(self.h))

proc joiningType*(self: gen_qchar_types.QChar): cint =
  cint(fcQChar_joiningType(self.h))

proc joining*(self: gen_qchar_types.QChar): cint =
  cint(fcQChar_joining(self.h))

proc combiningClass*(self: gen_qchar_types.QChar): uint8 =
  fcQChar_combiningClass(self.h)

proc mirroredChar*(self: gen_qchar_types.QChar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_mirroredChar(self.h), owned: true)

proc hasMirrored*(self: gen_qchar_types.QChar): bool =
  fcQChar_hasMirrored(self.h)

proc decomposition*(self: gen_qchar_types.QChar): string =
  let v_ms = fcQChar_decomposition(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decompositionTag*(self: gen_qchar_types.QChar): cint =
  cint(fcQChar_decompositionTag(self.h))

proc digitValue*(self: gen_qchar_types.QChar): cint =
  fcQChar_digitValue(self.h)

proc toLower*(self: gen_qchar_types.QChar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_toLower(self.h), owned: true)

proc toUpper*(self: gen_qchar_types.QChar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_toUpper(self.h), owned: true)

proc toTitleCase*(self: gen_qchar_types.QChar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_toTitleCase(self.h), owned: true)

proc toCaseFolded*(self: gen_qchar_types.QChar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_toCaseFolded(self.h), owned: true)

proc script*(self: gen_qchar_types.QChar): cint =
  cint(fcQChar_script(self.h))

proc unicodeVersion*(self: gen_qchar_types.QChar): cint =
  cint(fcQChar_unicodeVersion(self.h))

proc toLatin1*(self: gen_qchar_types.QChar): cchar =
  fcQChar_toLatin1(self.h)

proc unicode*(self: gen_qchar_types.QChar): cushort =
  fcQChar_unicode(self.h)

proc fromLatin1*(_: type gen_qchar_types.QChar, c: cchar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_fromLatin1(c), owned: true)

proc isNull*(self: gen_qchar_types.QChar): bool =
  fcQChar_isNull(self.h)

proc isPrint*(self: gen_qchar_types.QChar): bool =
  fcQChar_isPrint(self.h)

proc isSpace*(self: gen_qchar_types.QChar): bool =
  fcQChar_isSpace(self.h)

proc isMark*(self: gen_qchar_types.QChar): bool =
  fcQChar_isMark(self.h)

proc isPunct*(self: gen_qchar_types.QChar): bool =
  fcQChar_isPunct(self.h)

proc isSymbol*(self: gen_qchar_types.QChar): bool =
  fcQChar_isSymbol(self.h)

proc isLetter*(self: gen_qchar_types.QChar): bool =
  fcQChar_isLetter(self.h)

proc isNumber*(self: gen_qchar_types.QChar): bool =
  fcQChar_isNumber(self.h)

proc isLetterOrNumber*(self: gen_qchar_types.QChar): bool =
  fcQChar_isLetterOrNumber(self.h)

proc isDigit*(self: gen_qchar_types.QChar): bool =
  fcQChar_isDigit(self.h)

proc isLower*(self: gen_qchar_types.QChar): bool =
  fcQChar_isLower(self.h)

proc isUpper*(self: gen_qchar_types.QChar): bool =
  fcQChar_isUpper(self.h)

proc isTitleCase*(self: gen_qchar_types.QChar): bool =
  fcQChar_isTitleCase(self.h)

proc isNonCharacter*(self: gen_qchar_types.QChar): bool =
  fcQChar_isNonCharacter(self.h)

proc isHighSurrogate*(self: gen_qchar_types.QChar): bool =
  fcQChar_isHighSurrogate(self.h)

proc isLowSurrogate*(self: gen_qchar_types.QChar): bool =
  fcQChar_isLowSurrogate(self.h)

proc isSurrogate*(self: gen_qchar_types.QChar): bool =
  fcQChar_isSurrogate(self.h)

proc cell*(self: gen_qchar_types.QChar): uint8 =
  fcQChar_cell(self.h)

proc row*(self: gen_qchar_types.QChar): uint8 =
  fcQChar_row(self.h)

proc setCell*(self: gen_qchar_types.QChar, acell: uint8): void =
  fcQChar_setCell(self.h, acell)

proc setRow*(self: gen_qchar_types.QChar, arow: uint8): void =
  fcQChar_setRow(self.h, arow)

proc isNonCharacter*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isNonCharacterWithUcs4(ucs4)

proc isHighSurrogate*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isHighSurrogateWithUcs4(ucs4)

proc isLowSurrogate*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isLowSurrogateWithUcs4(ucs4)

proc isSurrogate*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isSurrogateWithUcs4(ucs4)

proc requiresSurrogates*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_requiresSurrogates(ucs4)

proc surrogateToUcs4*(_: type gen_qchar_types.QChar, high: cushort, low: cushort): cuint =
  fcQChar_surrogateToUcs4(high, low)

proc surrogateToUcs4*(_: type gen_qchar_types.QChar, high: gen_qchar_types.QChar, low: gen_qchar_types.QChar): cuint =
  fcQChar_surrogateToUcs42(high.h, low.h)

proc highSurrogate*(_: type gen_qchar_types.QChar, ucs4: cuint): cushort =
  fcQChar_highSurrogate(ucs4)

proc lowSurrogate*(_: type gen_qchar_types.QChar, ucs4: cuint): cushort =
  fcQChar_lowSurrogate(ucs4)

proc category*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  cint(fcQChar_categoryWithUcs4(ucs4))

proc direction*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  cint(fcQChar_directionWithUcs4(ucs4))

proc joiningType*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  cint(fcQChar_joiningTypeWithUcs4(ucs4))

proc joining*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  cint(fcQChar_joiningWithUcs4(ucs4))

proc combiningClass*(_: type gen_qchar_types.QChar, ucs4: cuint): uint8 =
  fcQChar_combiningClassWithUcs4(ucs4)

proc mirroredChar*(_: type gen_qchar_types.QChar, ucs4: cuint): cuint =
  fcQChar_mirroredCharWithUcs4(ucs4)

proc hasMirrored*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_hasMirroredWithUcs4(ucs4)

proc decomposition*(_: type gen_qchar_types.QChar, ucs4: cuint): string =
  let v_ms = fcQChar_decompositionWithUcs4(ucs4)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decompositionTag*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  cint(fcQChar_decompositionTagWithUcs4(ucs4))

proc digitValue*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  fcQChar_digitValueWithUcs4(ucs4)

proc toLower*(_: type gen_qchar_types.QChar, ucs4: cuint): cuint =
  fcQChar_toLowerWithUcs4(ucs4)

proc toUpper*(_: type gen_qchar_types.QChar, ucs4: cuint): cuint =
  fcQChar_toUpperWithUcs4(ucs4)

proc toTitleCase*(_: type gen_qchar_types.QChar, ucs4: cuint): cuint =
  fcQChar_toTitleCaseWithUcs4(ucs4)

proc toCaseFolded*(_: type gen_qchar_types.QChar, ucs4: cuint): cuint =
  fcQChar_toCaseFoldedWithUcs4(ucs4)

proc script*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  cint(fcQChar_scriptWithUcs4(ucs4))

proc unicodeVersion*(_: type gen_qchar_types.QChar, ucs4: cuint): cint =
  cint(fcQChar_unicodeVersionWithUcs4(ucs4))

proc currentUnicodeVersion*(_: type gen_qchar_types.QChar): cint =
  cint(fcQChar_currentUnicodeVersion())

proc isPrint*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isPrintWithUcs4(ucs4)

proc isSpace*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isSpaceWithUcs4(ucs4)

proc isMark*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isMarkWithUcs4(ucs4)

proc isPunct*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isPunctWithUcs4(ucs4)

proc isSymbol*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isSymbolWithUcs4(ucs4)

proc isLetter*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isLetterWithUcs4(ucs4)

proc isNumber*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isNumberWithUcs4(ucs4)

proc isLetterOrNumber*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isLetterOrNumberWithUcs4(ucs4)

proc isDigit*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isDigitWithUcs4(ucs4)

proc isLower*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isLowerWithUcs4(ucs4)

proc isUpper*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isUpperWithUcs4(ucs4)

proc isTitleCase*(_: type gen_qchar_types.QChar, ucs4: cuint): bool =
  fcQChar_isTitleCaseWithUcs4(ucs4)

proc create*(T: type gen_qchar_types.QChar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new(), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    rc: cushort): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new2(rc), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    c: uint8, r: uint8): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new3(c, r), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    rc: cshort): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new4(rc), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    rc: cuint): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new5(rc), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    rc: cint): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new6(rc), owned: true)

proc create2*(T: type gen_qchar_types.QChar,
    s: cint): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new7(cint(s)), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    ch: gen_qchar_types.QLatin1Char): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new8(ch.h), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    c: cchar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new9(c), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    c: uint8): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new10(c), owned: true)

proc create*(T: type gen_qchar_types.QChar,
    param1: gen_qchar_types.QChar): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQChar_new11(param1.h), owned: true)

