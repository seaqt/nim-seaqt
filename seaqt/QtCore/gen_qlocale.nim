import ./qtcore_pkg

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


type QLocaleLanguageEnum* = distinct cint
template AnyLanguage*(_: type QLocaleLanguageEnum): untyped = 0
template C*(_: type QLocaleLanguageEnum): untyped = 1
template Abkhazian*(_: type QLocaleLanguageEnum): untyped = 2
template Oromo*(_: type QLocaleLanguageEnum): untyped = 3
template Afar*(_: type QLocaleLanguageEnum): untyped = 4
template Afrikaans*(_: type QLocaleLanguageEnum): untyped = 5
template Albanian*(_: type QLocaleLanguageEnum): untyped = 6
template Amharic*(_: type QLocaleLanguageEnum): untyped = 7
template Arabic*(_: type QLocaleLanguageEnum): untyped = 8
template Armenian*(_: type QLocaleLanguageEnum): untyped = 9
template Assamese*(_: type QLocaleLanguageEnum): untyped = 10
template Aymara*(_: type QLocaleLanguageEnum): untyped = 11
template Azerbaijani*(_: type QLocaleLanguageEnum): untyped = 12
template Bashkir*(_: type QLocaleLanguageEnum): untyped = 13
template Basque*(_: type QLocaleLanguageEnum): untyped = 14
template Bengali*(_: type QLocaleLanguageEnum): untyped = 15
template Dzongkha*(_: type QLocaleLanguageEnum): untyped = 16
template Bihari*(_: type QLocaleLanguageEnum): untyped = 17
template Bislama*(_: type QLocaleLanguageEnum): untyped = 18
template Breton*(_: type QLocaleLanguageEnum): untyped = 19
template Bulgarian*(_: type QLocaleLanguageEnum): untyped = 20
template Burmese*(_: type QLocaleLanguageEnum): untyped = 21
template Belarusian*(_: type QLocaleLanguageEnum): untyped = 22
template Khmer*(_: type QLocaleLanguageEnum): untyped = 23
template Catalan*(_: type QLocaleLanguageEnum): untyped = 24
template Chinese*(_: type QLocaleLanguageEnum): untyped = 25
template Corsican*(_: type QLocaleLanguageEnum): untyped = 26
template Croatian*(_: type QLocaleLanguageEnum): untyped = 27
template Czech*(_: type QLocaleLanguageEnum): untyped = 28
template Danish*(_: type QLocaleLanguageEnum): untyped = 29
template Dutch*(_: type QLocaleLanguageEnum): untyped = 30
template English*(_: type QLocaleLanguageEnum): untyped = 31
template Esperanto*(_: type QLocaleLanguageEnum): untyped = 32
template Estonian*(_: type QLocaleLanguageEnum): untyped = 33
template Faroese*(_: type QLocaleLanguageEnum): untyped = 34
template Fijian*(_: type QLocaleLanguageEnum): untyped = 35
template Finnish*(_: type QLocaleLanguageEnum): untyped = 36
template French*(_: type QLocaleLanguageEnum): untyped = 37
template WesternFrisian*(_: type QLocaleLanguageEnum): untyped = 38
template Gaelic*(_: type QLocaleLanguageEnum): untyped = 39
template Galician*(_: type QLocaleLanguageEnum): untyped = 40
template Georgian*(_: type QLocaleLanguageEnum): untyped = 41
template German*(_: type QLocaleLanguageEnum): untyped = 42
template Greek*(_: type QLocaleLanguageEnum): untyped = 43
template Greenlandic*(_: type QLocaleLanguageEnum): untyped = 44
template Guarani*(_: type QLocaleLanguageEnum): untyped = 45
template Gujarati*(_: type QLocaleLanguageEnum): untyped = 46
template Hausa*(_: type QLocaleLanguageEnum): untyped = 47
template Hebrew*(_: type QLocaleLanguageEnum): untyped = 48
template Hindi*(_: type QLocaleLanguageEnum): untyped = 49
template Hungarian*(_: type QLocaleLanguageEnum): untyped = 50
template Icelandic*(_: type QLocaleLanguageEnum): untyped = 51
template Indonesian*(_: type QLocaleLanguageEnum): untyped = 52
template Interlingua*(_: type QLocaleLanguageEnum): untyped = 53
template Interlingue*(_: type QLocaleLanguageEnum): untyped = 54
template Inuktitut*(_: type QLocaleLanguageEnum): untyped = 55
template Inupiak*(_: type QLocaleLanguageEnum): untyped = 56
template Irish*(_: type QLocaleLanguageEnum): untyped = 57
template Italian*(_: type QLocaleLanguageEnum): untyped = 58
template Japanese*(_: type QLocaleLanguageEnum): untyped = 59
template Javanese*(_: type QLocaleLanguageEnum): untyped = 60
template Kannada*(_: type QLocaleLanguageEnum): untyped = 61
template Kashmiri*(_: type QLocaleLanguageEnum): untyped = 62
template Kazakh*(_: type QLocaleLanguageEnum): untyped = 63
template Kinyarwanda*(_: type QLocaleLanguageEnum): untyped = 64
template Kirghiz*(_: type QLocaleLanguageEnum): untyped = 65
template Korean*(_: type QLocaleLanguageEnum): untyped = 66
template Kurdish*(_: type QLocaleLanguageEnum): untyped = 67
template Rundi*(_: type QLocaleLanguageEnum): untyped = 68
template Lao*(_: type QLocaleLanguageEnum): untyped = 69
template Latin*(_: type QLocaleLanguageEnum): untyped = 70
template Latvian*(_: type QLocaleLanguageEnum): untyped = 71
template Lingala*(_: type QLocaleLanguageEnum): untyped = 72
template Lithuanian*(_: type QLocaleLanguageEnum): untyped = 73
template Macedonian*(_: type QLocaleLanguageEnum): untyped = 74
template Malagasy*(_: type QLocaleLanguageEnum): untyped = 75
template Malay*(_: type QLocaleLanguageEnum): untyped = 76
template Malayalam*(_: type QLocaleLanguageEnum): untyped = 77
template Maltese*(_: type QLocaleLanguageEnum): untyped = 78
template Maori*(_: type QLocaleLanguageEnum): untyped = 79
template Marathi*(_: type QLocaleLanguageEnum): untyped = 80
template Marshallese*(_: type QLocaleLanguageEnum): untyped = 81
template Mongolian*(_: type QLocaleLanguageEnum): untyped = 82
template NauruLanguage*(_: type QLocaleLanguageEnum): untyped = 83
template Nepali*(_: type QLocaleLanguageEnum): untyped = 84
template NorwegianBokmal*(_: type QLocaleLanguageEnum): untyped = 85
template Occitan*(_: type QLocaleLanguageEnum): untyped = 86
template Oriya*(_: type QLocaleLanguageEnum): untyped = 87
template Pashto*(_: type QLocaleLanguageEnum): untyped = 88
template Persian*(_: type QLocaleLanguageEnum): untyped = 89
template Polish*(_: type QLocaleLanguageEnum): untyped = 90
template Portuguese*(_: type QLocaleLanguageEnum): untyped = 91
template Punjabi*(_: type QLocaleLanguageEnum): untyped = 92
template Quechua*(_: type QLocaleLanguageEnum): untyped = 93
template Romansh*(_: type QLocaleLanguageEnum): untyped = 94
template Romanian*(_: type QLocaleLanguageEnum): untyped = 95
template Russian*(_: type QLocaleLanguageEnum): untyped = 96
template Samoan*(_: type QLocaleLanguageEnum): untyped = 97
template Sango*(_: type QLocaleLanguageEnum): untyped = 98
template Sanskrit*(_: type QLocaleLanguageEnum): untyped = 99
template Serbian*(_: type QLocaleLanguageEnum): untyped = 100
template Ossetic*(_: type QLocaleLanguageEnum): untyped = 101
template SouthernSotho*(_: type QLocaleLanguageEnum): untyped = 102
template Tswana*(_: type QLocaleLanguageEnum): untyped = 103
template Shona*(_: type QLocaleLanguageEnum): untyped = 104
template Sindhi*(_: type QLocaleLanguageEnum): untyped = 105
template Sinhala*(_: type QLocaleLanguageEnum): untyped = 106
template Swati*(_: type QLocaleLanguageEnum): untyped = 107
template Slovak*(_: type QLocaleLanguageEnum): untyped = 108
template Slovenian*(_: type QLocaleLanguageEnum): untyped = 109
template Somali*(_: type QLocaleLanguageEnum): untyped = 110
template Spanish*(_: type QLocaleLanguageEnum): untyped = 111
template Sundanese*(_: type QLocaleLanguageEnum): untyped = 112
template Swahili*(_: type QLocaleLanguageEnum): untyped = 113
template Swedish*(_: type QLocaleLanguageEnum): untyped = 114
template Sardinian*(_: type QLocaleLanguageEnum): untyped = 115
template Tajik*(_: type QLocaleLanguageEnum): untyped = 116
template Tamil*(_: type QLocaleLanguageEnum): untyped = 117
template Tatar*(_: type QLocaleLanguageEnum): untyped = 118
template Telugu*(_: type QLocaleLanguageEnum): untyped = 119
template Thai*(_: type QLocaleLanguageEnum): untyped = 120
template Tibetan*(_: type QLocaleLanguageEnum): untyped = 121
template Tigrinya*(_: type QLocaleLanguageEnum): untyped = 122
template Tongan*(_: type QLocaleLanguageEnum): untyped = 123
template Tsonga*(_: type QLocaleLanguageEnum): untyped = 124
template Turkish*(_: type QLocaleLanguageEnum): untyped = 125
template Turkmen*(_: type QLocaleLanguageEnum): untyped = 126
template Tahitian*(_: type QLocaleLanguageEnum): untyped = 127
template Uighur*(_: type QLocaleLanguageEnum): untyped = 128
template Ukrainian*(_: type QLocaleLanguageEnum): untyped = 129
template Urdu*(_: type QLocaleLanguageEnum): untyped = 130
template Uzbek*(_: type QLocaleLanguageEnum): untyped = 131
template Vietnamese*(_: type QLocaleLanguageEnum): untyped = 132
template Volapuk*(_: type QLocaleLanguageEnum): untyped = 133
template Welsh*(_: type QLocaleLanguageEnum): untyped = 134
template Wolof*(_: type QLocaleLanguageEnum): untyped = 135
template Xhosa*(_: type QLocaleLanguageEnum): untyped = 136
template Yiddish*(_: type QLocaleLanguageEnum): untyped = 137
template Yoruba*(_: type QLocaleLanguageEnum): untyped = 138
template Zhuang*(_: type QLocaleLanguageEnum): untyped = 139
template Zulu*(_: type QLocaleLanguageEnum): untyped = 140
template NorwegianNynorsk*(_: type QLocaleLanguageEnum): untyped = 141
template Bosnian*(_: type QLocaleLanguageEnum): untyped = 142
template Divehi*(_: type QLocaleLanguageEnum): untyped = 143
template Manx*(_: type QLocaleLanguageEnum): untyped = 144
template Cornish*(_: type QLocaleLanguageEnum): untyped = 145
template Akan*(_: type QLocaleLanguageEnum): untyped = 146
template Konkani*(_: type QLocaleLanguageEnum): untyped = 147
template Ga*(_: type QLocaleLanguageEnum): untyped = 148
template Igbo*(_: type QLocaleLanguageEnum): untyped = 149
template Kamba*(_: type QLocaleLanguageEnum): untyped = 150
template Syriac*(_: type QLocaleLanguageEnum): untyped = 151
template Blin*(_: type QLocaleLanguageEnum): untyped = 152
template Geez*(_: type QLocaleLanguageEnum): untyped = 153
template Koro*(_: type QLocaleLanguageEnum): untyped = 154
template Sidamo*(_: type QLocaleLanguageEnum): untyped = 155
template Atsam*(_: type QLocaleLanguageEnum): untyped = 156
template Tigre*(_: type QLocaleLanguageEnum): untyped = 157
template Jju*(_: type QLocaleLanguageEnum): untyped = 158
template Friulian*(_: type QLocaleLanguageEnum): untyped = 159
template Venda*(_: type QLocaleLanguageEnum): untyped = 160
template Ewe*(_: type QLocaleLanguageEnum): untyped = 161
template Walamo*(_: type QLocaleLanguageEnum): untyped = 162
template Hawaiian*(_: type QLocaleLanguageEnum): untyped = 163
template Tyap*(_: type QLocaleLanguageEnum): untyped = 164
template Nyanja*(_: type QLocaleLanguageEnum): untyped = 165
template Filipino*(_: type QLocaleLanguageEnum): untyped = 166
template SwissGerman*(_: type QLocaleLanguageEnum): untyped = 167
template SichuanYi*(_: type QLocaleLanguageEnum): untyped = 168
template Kpelle*(_: type QLocaleLanguageEnum): untyped = 169
template LowGerman*(_: type QLocaleLanguageEnum): untyped = 170
template SouthNdebele*(_: type QLocaleLanguageEnum): untyped = 171
template NorthernSotho*(_: type QLocaleLanguageEnum): untyped = 172
template NorthernSami*(_: type QLocaleLanguageEnum): untyped = 173
template Taroko*(_: type QLocaleLanguageEnum): untyped = 174
template Gusii*(_: type QLocaleLanguageEnum): untyped = 175
template Taita*(_: type QLocaleLanguageEnum): untyped = 176
template Fulah*(_: type QLocaleLanguageEnum): untyped = 177
template Kikuyu*(_: type QLocaleLanguageEnum): untyped = 178
template Samburu*(_: type QLocaleLanguageEnum): untyped = 179
template Sena*(_: type QLocaleLanguageEnum): untyped = 180
template NorthNdebele*(_: type QLocaleLanguageEnum): untyped = 181
template Rombo*(_: type QLocaleLanguageEnum): untyped = 182
template Tachelhit*(_: type QLocaleLanguageEnum): untyped = 183
template Kabyle*(_: type QLocaleLanguageEnum): untyped = 184
template Nyankole*(_: type QLocaleLanguageEnum): untyped = 185
template Bena*(_: type QLocaleLanguageEnum): untyped = 186
template Vunjo*(_: type QLocaleLanguageEnum): untyped = 187
template Bambara*(_: type QLocaleLanguageEnum): untyped = 188
template Embu*(_: type QLocaleLanguageEnum): untyped = 189
template Cherokee*(_: type QLocaleLanguageEnum): untyped = 190
template Morisyen*(_: type QLocaleLanguageEnum): untyped = 191
template Makonde*(_: type QLocaleLanguageEnum): untyped = 192
template Langi*(_: type QLocaleLanguageEnum): untyped = 193
template Ganda*(_: type QLocaleLanguageEnum): untyped = 194
template Bemba*(_: type QLocaleLanguageEnum): untyped = 195
template Kabuverdianu*(_: type QLocaleLanguageEnum): untyped = 196
template Meru*(_: type QLocaleLanguageEnum): untyped = 197
template Kalenjin*(_: type QLocaleLanguageEnum): untyped = 198
template Nama*(_: type QLocaleLanguageEnum): untyped = 199
template Machame*(_: type QLocaleLanguageEnum): untyped = 200
template Colognian*(_: type QLocaleLanguageEnum): untyped = 201
template Masai*(_: type QLocaleLanguageEnum): untyped = 202
template Soga*(_: type QLocaleLanguageEnum): untyped = 203
template Luyia*(_: type QLocaleLanguageEnum): untyped = 204
template Asu*(_: type QLocaleLanguageEnum): untyped = 205
template Teso*(_: type QLocaleLanguageEnum): untyped = 206
template Saho*(_: type QLocaleLanguageEnum): untyped = 207
template KoyraChiini*(_: type QLocaleLanguageEnum): untyped = 208
template Rwa*(_: type QLocaleLanguageEnum): untyped = 209
template Luo*(_: type QLocaleLanguageEnum): untyped = 210
template Chiga*(_: type QLocaleLanguageEnum): untyped = 211
template CentralMoroccoTamazight*(_: type QLocaleLanguageEnum): untyped = 212
template KoyraboroSenni*(_: type QLocaleLanguageEnum): untyped = 213
template Shambala*(_: type QLocaleLanguageEnum): untyped = 214
template Bodo*(_: type QLocaleLanguageEnum): untyped = 215
template Avaric*(_: type QLocaleLanguageEnum): untyped = 216
template Chamorro*(_: type QLocaleLanguageEnum): untyped = 217
template Chechen*(_: type QLocaleLanguageEnum): untyped = 218
template Church*(_: type QLocaleLanguageEnum): untyped = 219
template Chuvash*(_: type QLocaleLanguageEnum): untyped = 220
template Cree*(_: type QLocaleLanguageEnum): untyped = 221
template Haitian*(_: type QLocaleLanguageEnum): untyped = 222
template Herero*(_: type QLocaleLanguageEnum): untyped = 223
template HiriMotu*(_: type QLocaleLanguageEnum): untyped = 224
template Kanuri*(_: type QLocaleLanguageEnum): untyped = 225
template Komi*(_: type QLocaleLanguageEnum): untyped = 226
template Kongo*(_: type QLocaleLanguageEnum): untyped = 227
template Kwanyama*(_: type QLocaleLanguageEnum): untyped = 228
template Limburgish*(_: type QLocaleLanguageEnum): untyped = 229
template LubaKatanga*(_: type QLocaleLanguageEnum): untyped = 230
template Luxembourgish*(_: type QLocaleLanguageEnum): untyped = 231
template Navaho*(_: type QLocaleLanguageEnum): untyped = 232
template Ndonga*(_: type QLocaleLanguageEnum): untyped = 233
template Ojibwa*(_: type QLocaleLanguageEnum): untyped = 234
template Pali*(_: type QLocaleLanguageEnum): untyped = 235
template Walloon*(_: type QLocaleLanguageEnum): untyped = 236
template Aghem*(_: type QLocaleLanguageEnum): untyped = 237
template Basaa*(_: type QLocaleLanguageEnum): untyped = 238
template Zarma*(_: type QLocaleLanguageEnum): untyped = 239
template Duala*(_: type QLocaleLanguageEnum): untyped = 240
template JolaFonyi*(_: type QLocaleLanguageEnum): untyped = 241
template Ewondo*(_: type QLocaleLanguageEnum): untyped = 242
template Bafia*(_: type QLocaleLanguageEnum): untyped = 243
template MakhuwaMeetto*(_: type QLocaleLanguageEnum): untyped = 244
template Mundang*(_: type QLocaleLanguageEnum): untyped = 245
template Kwasio*(_: type QLocaleLanguageEnum): untyped = 246
template Nuer*(_: type QLocaleLanguageEnum): untyped = 247
template Sakha*(_: type QLocaleLanguageEnum): untyped = 248
template Sangu*(_: type QLocaleLanguageEnum): untyped = 249
template CongoSwahili*(_: type QLocaleLanguageEnum): untyped = 250
template Tasawaq*(_: type QLocaleLanguageEnum): untyped = 251
template Vai*(_: type QLocaleLanguageEnum): untyped = 252
template Walser*(_: type QLocaleLanguageEnum): untyped = 253
template Yangben*(_: type QLocaleLanguageEnum): untyped = 254
template Avestan*(_: type QLocaleLanguageEnum): untyped = 255
template Asturian*(_: type QLocaleLanguageEnum): untyped = 256
template Ngomba*(_: type QLocaleLanguageEnum): untyped = 257
template Kako*(_: type QLocaleLanguageEnum): untyped = 258
template Meta*(_: type QLocaleLanguageEnum): untyped = 259
template Ngiemboon*(_: type QLocaleLanguageEnum): untyped = 260
template Aragonese*(_: type QLocaleLanguageEnum): untyped = 261
template Akkadian*(_: type QLocaleLanguageEnum): untyped = 262
template AncientEgyptian*(_: type QLocaleLanguageEnum): untyped = 263
template AncientGreek*(_: type QLocaleLanguageEnum): untyped = 264
template Aramaic*(_: type QLocaleLanguageEnum): untyped = 265
template Balinese*(_: type QLocaleLanguageEnum): untyped = 266
template Bamun*(_: type QLocaleLanguageEnum): untyped = 267
template BatakToba*(_: type QLocaleLanguageEnum): untyped = 268
template Buginese*(_: type QLocaleLanguageEnum): untyped = 269
template Buhid*(_: type QLocaleLanguageEnum): untyped = 270
template Carian*(_: type QLocaleLanguageEnum): untyped = 271
template Chakma*(_: type QLocaleLanguageEnum): untyped = 272
template ClassicalMandaic*(_: type QLocaleLanguageEnum): untyped = 273
template Coptic*(_: type QLocaleLanguageEnum): untyped = 274
template Dogri*(_: type QLocaleLanguageEnum): untyped = 275
template EasternCham*(_: type QLocaleLanguageEnum): untyped = 276
template EasternKayah*(_: type QLocaleLanguageEnum): untyped = 277
template Etruscan*(_: type QLocaleLanguageEnum): untyped = 278
template Gothic*(_: type QLocaleLanguageEnum): untyped = 279
template Hanunoo*(_: type QLocaleLanguageEnum): untyped = 280
template Ingush*(_: type QLocaleLanguageEnum): untyped = 281
template LargeFloweryMiao*(_: type QLocaleLanguageEnum): untyped = 282
template Lepcha*(_: type QLocaleLanguageEnum): untyped = 283
template Limbu*(_: type QLocaleLanguageEnum): untyped = 284
template Lisu*(_: type QLocaleLanguageEnum): untyped = 285
template Lu*(_: type QLocaleLanguageEnum): untyped = 286
template Lycian*(_: type QLocaleLanguageEnum): untyped = 287
template Lydian*(_: type QLocaleLanguageEnum): untyped = 288
template Mandingo*(_: type QLocaleLanguageEnum): untyped = 289
template Manipuri*(_: type QLocaleLanguageEnum): untyped = 290
template Meroitic*(_: type QLocaleLanguageEnum): untyped = 291
template NorthernThai*(_: type QLocaleLanguageEnum): untyped = 292
template OldIrish*(_: type QLocaleLanguageEnum): untyped = 293
template OldNorse*(_: type QLocaleLanguageEnum): untyped = 294
template OldPersian*(_: type QLocaleLanguageEnum): untyped = 295
template OldTurkish*(_: type QLocaleLanguageEnum): untyped = 296
template Pahlavi*(_: type QLocaleLanguageEnum): untyped = 297
template Parthian*(_: type QLocaleLanguageEnum): untyped = 298
template Phoenician*(_: type QLocaleLanguageEnum): untyped = 299
template PrakritLanguage*(_: type QLocaleLanguageEnum): untyped = 300
template Rejang*(_: type QLocaleLanguageEnum): untyped = 301
template Sabaean*(_: type QLocaleLanguageEnum): untyped = 302
template Samaritan*(_: type QLocaleLanguageEnum): untyped = 303
template Santali*(_: type QLocaleLanguageEnum): untyped = 304
template Saurashtra*(_: type QLocaleLanguageEnum): untyped = 305
template Sora*(_: type QLocaleLanguageEnum): untyped = 306
template Sylheti*(_: type QLocaleLanguageEnum): untyped = 307
template Tagbanwa*(_: type QLocaleLanguageEnum): untyped = 308
template TaiDam*(_: type QLocaleLanguageEnum): untyped = 309
template TaiNua*(_: type QLocaleLanguageEnum): untyped = 310
template Ugaritic*(_: type QLocaleLanguageEnum): untyped = 311
template Akoose*(_: type QLocaleLanguageEnum): untyped = 312
template Lakota*(_: type QLocaleLanguageEnum): untyped = 313
template StandardMoroccanTamazight*(_: type QLocaleLanguageEnum): untyped = 314
template Mapuche*(_: type QLocaleLanguageEnum): untyped = 315
template CentralKurdish*(_: type QLocaleLanguageEnum): untyped = 316
template LowerSorbian*(_: type QLocaleLanguageEnum): untyped = 317
template UpperSorbian*(_: type QLocaleLanguageEnum): untyped = 318
template Kenyang*(_: type QLocaleLanguageEnum): untyped = 319
template Mohawk*(_: type QLocaleLanguageEnum): untyped = 320
template Nko*(_: type QLocaleLanguageEnum): untyped = 321
template Prussian*(_: type QLocaleLanguageEnum): untyped = 322
template Kiche*(_: type QLocaleLanguageEnum): untyped = 323
template SouthernSami*(_: type QLocaleLanguageEnum): untyped = 324
template LuleSami*(_: type QLocaleLanguageEnum): untyped = 325
template InariSami*(_: type QLocaleLanguageEnum): untyped = 326
template SkoltSami*(_: type QLocaleLanguageEnum): untyped = 327
template Warlpiri*(_: type QLocaleLanguageEnum): untyped = 328
template ManichaeanMiddlePersian*(_: type QLocaleLanguageEnum): untyped = 329
template Mende*(_: type QLocaleLanguageEnum): untyped = 330
template AncientNorthArabian*(_: type QLocaleLanguageEnum): untyped = 331
template LinearA*(_: type QLocaleLanguageEnum): untyped = 332
template HmongNjua*(_: type QLocaleLanguageEnum): untyped = 333
template Ho*(_: type QLocaleLanguageEnum): untyped = 334
template Lezghian*(_: type QLocaleLanguageEnum): untyped = 335
template Bassa*(_: type QLocaleLanguageEnum): untyped = 336
template Mono*(_: type QLocaleLanguageEnum): untyped = 337
template TedimChin*(_: type QLocaleLanguageEnum): untyped = 338
template Maithili*(_: type QLocaleLanguageEnum): untyped = 339
template Ahom*(_: type QLocaleLanguageEnum): untyped = 340
template AmericanSignLanguage*(_: type QLocaleLanguageEnum): untyped = 341
template ArdhamagadhiPrakrit*(_: type QLocaleLanguageEnum): untyped = 342
template Bhojpuri*(_: type QLocaleLanguageEnum): untyped = 343
template HieroglyphicLuwian*(_: type QLocaleLanguageEnum): untyped = 344
template LiteraryChinese*(_: type QLocaleLanguageEnum): untyped = 345
template Mazanderani*(_: type QLocaleLanguageEnum): untyped = 346
template Mru*(_: type QLocaleLanguageEnum): untyped = 347
template Newari*(_: type QLocaleLanguageEnum): untyped = 348
template NorthernLuri*(_: type QLocaleLanguageEnum): untyped = 349
template Palauan*(_: type QLocaleLanguageEnum): untyped = 350
template Papiamento*(_: type QLocaleLanguageEnum): untyped = 351
template Saraiki*(_: type QLocaleLanguageEnum): untyped = 352
template TokelauLanguage*(_: type QLocaleLanguageEnum): untyped = 353
template TokPisin*(_: type QLocaleLanguageEnum): untyped = 354
template TuvaluLanguage*(_: type QLocaleLanguageEnum): untyped = 355
template UncodedLanguages*(_: type QLocaleLanguageEnum): untyped = 356
template Cantonese*(_: type QLocaleLanguageEnum): untyped = 357
template Osage*(_: type QLocaleLanguageEnum): untyped = 358
template Tangut*(_: type QLocaleLanguageEnum): untyped = 359
template Ido*(_: type QLocaleLanguageEnum): untyped = 360
template Lojban*(_: type QLocaleLanguageEnum): untyped = 361
template Sicilian*(_: type QLocaleLanguageEnum): untyped = 362
template SouthernKurdish*(_: type QLocaleLanguageEnum): untyped = 363
template WesternBalochi*(_: type QLocaleLanguageEnum): untyped = 364
template Cebuano*(_: type QLocaleLanguageEnum): untyped = 365
template Erzya*(_: type QLocaleLanguageEnum): untyped = 366
template Chickasaw*(_: type QLocaleLanguageEnum): untyped = 367
template Muscogee*(_: type QLocaleLanguageEnum): untyped = 368
template Silesian*(_: type QLocaleLanguageEnum): untyped = 369
template NigerianPidgin*(_: type QLocaleLanguageEnum): untyped = 370
template Afan*(_: type QLocaleLanguageEnum): untyped = 3
template Bhutani*(_: type QLocaleLanguageEnum): untyped = 16
template Byelorussian*(_: type QLocaleLanguageEnum): untyped = 22
template Cambodian*(_: type QLocaleLanguageEnum): untyped = 23
template Chewa*(_: type QLocaleLanguageEnum): untyped = 165
template Frisian*(_: type QLocaleLanguageEnum): untyped = 38
template Kurundi*(_: type QLocaleLanguageEnum): untyped = 68
template Moldavian*(_: type QLocaleLanguageEnum): untyped = 95
template Norwegian*(_: type QLocaleLanguageEnum): untyped = 85
template RhaetoRomance*(_: type QLocaleLanguageEnum): untyped = 94
template SerboCroatian*(_: type QLocaleLanguageEnum): untyped = 100
template Tagalog*(_: type QLocaleLanguageEnum): untyped = 166
template Twi*(_: type QLocaleLanguageEnum): untyped = 146
template Uigur*(_: type QLocaleLanguageEnum): untyped = 128
template LastLanguage*(_: type QLocaleLanguageEnum): untyped = 370


type QLocaleScriptEnum* = distinct cint
template AnyScript*(_: type QLocaleScriptEnum): untyped = 0
template ArabicScript*(_: type QLocaleScriptEnum): untyped = 1
template CyrillicScript*(_: type QLocaleScriptEnum): untyped = 2
template DeseretScript*(_: type QLocaleScriptEnum): untyped = 3
template GurmukhiScript*(_: type QLocaleScriptEnum): untyped = 4
template SimplifiedHanScript*(_: type QLocaleScriptEnum): untyped = 5
template TraditionalHanScript*(_: type QLocaleScriptEnum): untyped = 6
template LatinScript*(_: type QLocaleScriptEnum): untyped = 7
template MongolianScript*(_: type QLocaleScriptEnum): untyped = 8
template TifinaghScript*(_: type QLocaleScriptEnum): untyped = 9
template ArmenianScript*(_: type QLocaleScriptEnum): untyped = 10
template BengaliScript*(_: type QLocaleScriptEnum): untyped = 11
template CherokeeScript*(_: type QLocaleScriptEnum): untyped = 12
template DevanagariScript*(_: type QLocaleScriptEnum): untyped = 13
template EthiopicScript*(_: type QLocaleScriptEnum): untyped = 14
template GeorgianScript*(_: type QLocaleScriptEnum): untyped = 15
template GreekScript*(_: type QLocaleScriptEnum): untyped = 16
template GujaratiScript*(_: type QLocaleScriptEnum): untyped = 17
template HebrewScript*(_: type QLocaleScriptEnum): untyped = 18
template JapaneseScript*(_: type QLocaleScriptEnum): untyped = 19
template KhmerScript*(_: type QLocaleScriptEnum): untyped = 20
template KannadaScript*(_: type QLocaleScriptEnum): untyped = 21
template KoreanScript*(_: type QLocaleScriptEnum): untyped = 22
template LaoScript*(_: type QLocaleScriptEnum): untyped = 23
template MalayalamScript*(_: type QLocaleScriptEnum): untyped = 24
template MyanmarScript*(_: type QLocaleScriptEnum): untyped = 25
template OriyaScript*(_: type QLocaleScriptEnum): untyped = 26
template TamilScript*(_: type QLocaleScriptEnum): untyped = 27
template TeluguScript*(_: type QLocaleScriptEnum): untyped = 28
template ThaanaScript*(_: type QLocaleScriptEnum): untyped = 29
template ThaiScript*(_: type QLocaleScriptEnum): untyped = 30
template TibetanScript*(_: type QLocaleScriptEnum): untyped = 31
template SinhalaScript*(_: type QLocaleScriptEnum): untyped = 32
template SyriacScript*(_: type QLocaleScriptEnum): untyped = 33
template YiScript*(_: type QLocaleScriptEnum): untyped = 34
template VaiScript*(_: type QLocaleScriptEnum): untyped = 35
template AvestanScript*(_: type QLocaleScriptEnum): untyped = 36
template BalineseScript*(_: type QLocaleScriptEnum): untyped = 37
template BamumScript*(_: type QLocaleScriptEnum): untyped = 38
template BatakScript*(_: type QLocaleScriptEnum): untyped = 39
template BopomofoScript*(_: type QLocaleScriptEnum): untyped = 40
template BrahmiScript*(_: type QLocaleScriptEnum): untyped = 41
template BugineseScript*(_: type QLocaleScriptEnum): untyped = 42
template BuhidScript*(_: type QLocaleScriptEnum): untyped = 43
template CanadianAboriginalScript*(_: type QLocaleScriptEnum): untyped = 44
template CarianScript*(_: type QLocaleScriptEnum): untyped = 45
template ChakmaScript*(_: type QLocaleScriptEnum): untyped = 46
template ChamScript*(_: type QLocaleScriptEnum): untyped = 47
template CopticScript*(_: type QLocaleScriptEnum): untyped = 48
template CypriotScript*(_: type QLocaleScriptEnum): untyped = 49
template EgyptianHieroglyphsScript*(_: type QLocaleScriptEnum): untyped = 50
template FraserScript*(_: type QLocaleScriptEnum): untyped = 51
template GlagoliticScript*(_: type QLocaleScriptEnum): untyped = 52
template GothicScript*(_: type QLocaleScriptEnum): untyped = 53
template HanScript*(_: type QLocaleScriptEnum): untyped = 54
template HangulScript*(_: type QLocaleScriptEnum): untyped = 55
template HanunooScript*(_: type QLocaleScriptEnum): untyped = 56
template ImperialAramaicScript*(_: type QLocaleScriptEnum): untyped = 57
template InscriptionalPahlaviScript*(_: type QLocaleScriptEnum): untyped = 58
template InscriptionalParthianScript*(_: type QLocaleScriptEnum): untyped = 59
template JavaneseScript*(_: type QLocaleScriptEnum): untyped = 60
template KaithiScript*(_: type QLocaleScriptEnum): untyped = 61
template KatakanaScript*(_: type QLocaleScriptEnum): untyped = 62
template KayahLiScript*(_: type QLocaleScriptEnum): untyped = 63
template KharoshthiScript*(_: type QLocaleScriptEnum): untyped = 64
template LannaScript*(_: type QLocaleScriptEnum): untyped = 65
template LepchaScript*(_: type QLocaleScriptEnum): untyped = 66
template LimbuScript*(_: type QLocaleScriptEnum): untyped = 67
template LinearBScript*(_: type QLocaleScriptEnum): untyped = 68
template LycianScript*(_: type QLocaleScriptEnum): untyped = 69
template LydianScript*(_: type QLocaleScriptEnum): untyped = 70
template MandaeanScript*(_: type QLocaleScriptEnum): untyped = 71
template MeiteiMayekScript*(_: type QLocaleScriptEnum): untyped = 72
template MeroiticScript*(_: type QLocaleScriptEnum): untyped = 73
template MeroiticCursiveScript*(_: type QLocaleScriptEnum): untyped = 74
template NkoScript*(_: type QLocaleScriptEnum): untyped = 75
template NewTaiLueScript*(_: type QLocaleScriptEnum): untyped = 76
template OghamScript*(_: type QLocaleScriptEnum): untyped = 77
template OlChikiScript*(_: type QLocaleScriptEnum): untyped = 78
template OldItalicScript*(_: type QLocaleScriptEnum): untyped = 79
template OldPersianScript*(_: type QLocaleScriptEnum): untyped = 80
template OldSouthArabianScript*(_: type QLocaleScriptEnum): untyped = 81
template OrkhonScript*(_: type QLocaleScriptEnum): untyped = 82
template OsmanyaScript*(_: type QLocaleScriptEnum): untyped = 83
template PhagsPaScript*(_: type QLocaleScriptEnum): untyped = 84
template PhoenicianScript*(_: type QLocaleScriptEnum): untyped = 85
template PollardPhoneticScript*(_: type QLocaleScriptEnum): untyped = 86
template RejangScript*(_: type QLocaleScriptEnum): untyped = 87
template RunicScript*(_: type QLocaleScriptEnum): untyped = 88
template SamaritanScript*(_: type QLocaleScriptEnum): untyped = 89
template SaurashtraScript*(_: type QLocaleScriptEnum): untyped = 90
template SharadaScript*(_: type QLocaleScriptEnum): untyped = 91
template ShavianScript*(_: type QLocaleScriptEnum): untyped = 92
template SoraSompengScript*(_: type QLocaleScriptEnum): untyped = 93
template CuneiformScript*(_: type QLocaleScriptEnum): untyped = 94
template SundaneseScript*(_: type QLocaleScriptEnum): untyped = 95
template SylotiNagriScript*(_: type QLocaleScriptEnum): untyped = 96
template TagalogScript*(_: type QLocaleScriptEnum): untyped = 97
template TagbanwaScript*(_: type QLocaleScriptEnum): untyped = 98
template TaiLeScript*(_: type QLocaleScriptEnum): untyped = 99
template TaiVietScript*(_: type QLocaleScriptEnum): untyped = 100
template TakriScript*(_: type QLocaleScriptEnum): untyped = 101
template UgariticScript*(_: type QLocaleScriptEnum): untyped = 102
template BrailleScript*(_: type QLocaleScriptEnum): untyped = 103
template HiraganaScript*(_: type QLocaleScriptEnum): untyped = 104
template CaucasianAlbanianScript*(_: type QLocaleScriptEnum): untyped = 105
template BassaVahScript*(_: type QLocaleScriptEnum): untyped = 106
template DuployanScript*(_: type QLocaleScriptEnum): untyped = 107
template ElbasanScript*(_: type QLocaleScriptEnum): untyped = 108
template GranthaScript*(_: type QLocaleScriptEnum): untyped = 109
template PahawhHmongScript*(_: type QLocaleScriptEnum): untyped = 110
template KhojkiScript*(_: type QLocaleScriptEnum): untyped = 111
template LinearAScript*(_: type QLocaleScriptEnum): untyped = 112
template MahajaniScript*(_: type QLocaleScriptEnum): untyped = 113
template ManichaeanScript*(_: type QLocaleScriptEnum): untyped = 114
template MendeKikakuiScript*(_: type QLocaleScriptEnum): untyped = 115
template ModiScript*(_: type QLocaleScriptEnum): untyped = 116
template MroScript*(_: type QLocaleScriptEnum): untyped = 117
template OldNorthArabianScript*(_: type QLocaleScriptEnum): untyped = 118
template NabataeanScript*(_: type QLocaleScriptEnum): untyped = 119
template PalmyreneScript*(_: type QLocaleScriptEnum): untyped = 120
template PauCinHauScript*(_: type QLocaleScriptEnum): untyped = 121
template OldPermicScript*(_: type QLocaleScriptEnum): untyped = 122
template PsalterPahlaviScript*(_: type QLocaleScriptEnum): untyped = 123
template SiddhamScript*(_: type QLocaleScriptEnum): untyped = 124
template KhudawadiScript*(_: type QLocaleScriptEnum): untyped = 125
template TirhutaScript*(_: type QLocaleScriptEnum): untyped = 126
template VarangKshitiScript*(_: type QLocaleScriptEnum): untyped = 127
template AhomScript*(_: type QLocaleScriptEnum): untyped = 128
template AnatolianHieroglyphsScript*(_: type QLocaleScriptEnum): untyped = 129
template HatranScript*(_: type QLocaleScriptEnum): untyped = 130
template MultaniScript*(_: type QLocaleScriptEnum): untyped = 131
template OldHungarianScript*(_: type QLocaleScriptEnum): untyped = 132
template SignWritingScript*(_: type QLocaleScriptEnum): untyped = 133
template AdlamScript*(_: type QLocaleScriptEnum): untyped = 134
template BhaiksukiScript*(_: type QLocaleScriptEnum): untyped = 135
template MarchenScript*(_: type QLocaleScriptEnum): untyped = 136
template NewaScript*(_: type QLocaleScriptEnum): untyped = 137
template OsageScript*(_: type QLocaleScriptEnum): untyped = 138
template TangutScript*(_: type QLocaleScriptEnum): untyped = 139
template HanWithBopomofoScript*(_: type QLocaleScriptEnum): untyped = 140
template JamoScript*(_: type QLocaleScriptEnum): untyped = 141
template SimplifiedChineseScript*(_: type QLocaleScriptEnum): untyped = 5
template TraditionalChineseScript*(_: type QLocaleScriptEnum): untyped = 6
template LastScript*(_: type QLocaleScriptEnum): untyped = 141


type QLocaleCountryEnum* = distinct cint
template AnyCountry*(_: type QLocaleCountryEnum): untyped = 0
template Afghanistan*(_: type QLocaleCountryEnum): untyped = 1
template Albania*(_: type QLocaleCountryEnum): untyped = 2
template Algeria*(_: type QLocaleCountryEnum): untyped = 3
template AmericanSamoa*(_: type QLocaleCountryEnum): untyped = 4
template Andorra*(_: type QLocaleCountryEnum): untyped = 5
template Angola*(_: type QLocaleCountryEnum): untyped = 6
template Anguilla*(_: type QLocaleCountryEnum): untyped = 7
template Antarctica*(_: type QLocaleCountryEnum): untyped = 8
template AntiguaAndBarbuda*(_: type QLocaleCountryEnum): untyped = 9
template Argentina*(_: type QLocaleCountryEnum): untyped = 10
template Armenia*(_: type QLocaleCountryEnum): untyped = 11
template Aruba*(_: type QLocaleCountryEnum): untyped = 12
template Australia*(_: type QLocaleCountryEnum): untyped = 13
template Austria*(_: type QLocaleCountryEnum): untyped = 14
template Azerbaijan*(_: type QLocaleCountryEnum): untyped = 15
template Bahamas*(_: type QLocaleCountryEnum): untyped = 16
template Bahrain*(_: type QLocaleCountryEnum): untyped = 17
template Bangladesh*(_: type QLocaleCountryEnum): untyped = 18
template Barbados*(_: type QLocaleCountryEnum): untyped = 19
template Belarus*(_: type QLocaleCountryEnum): untyped = 20
template Belgium*(_: type QLocaleCountryEnum): untyped = 21
template Belize*(_: type QLocaleCountryEnum): untyped = 22
template Benin*(_: type QLocaleCountryEnum): untyped = 23
template Bermuda*(_: type QLocaleCountryEnum): untyped = 24
template Bhutan*(_: type QLocaleCountryEnum): untyped = 25
template Bolivia*(_: type QLocaleCountryEnum): untyped = 26
template BosniaAndHerzegowina*(_: type QLocaleCountryEnum): untyped = 27
template Botswana*(_: type QLocaleCountryEnum): untyped = 28
template BouvetIsland*(_: type QLocaleCountryEnum): untyped = 29
template Brazil*(_: type QLocaleCountryEnum): untyped = 30
template BritishIndianOceanTerritory*(_: type QLocaleCountryEnum): untyped = 31
template Brunei*(_: type QLocaleCountryEnum): untyped = 32
template Bulgaria*(_: type QLocaleCountryEnum): untyped = 33
template BurkinaFaso*(_: type QLocaleCountryEnum): untyped = 34
template Burundi*(_: type QLocaleCountryEnum): untyped = 35
template Cambodia*(_: type QLocaleCountryEnum): untyped = 36
template Cameroon*(_: type QLocaleCountryEnum): untyped = 37
template Canada*(_: type QLocaleCountryEnum): untyped = 38
template CapeVerde*(_: type QLocaleCountryEnum): untyped = 39
template CaymanIslands*(_: type QLocaleCountryEnum): untyped = 40
template CentralAfricanRepublic*(_: type QLocaleCountryEnum): untyped = 41
template Chad*(_: type QLocaleCountryEnum): untyped = 42
template Chile*(_: type QLocaleCountryEnum): untyped = 43
template China*(_: type QLocaleCountryEnum): untyped = 44
template ChristmasIsland*(_: type QLocaleCountryEnum): untyped = 45
template CocosIslands*(_: type QLocaleCountryEnum): untyped = 46
template Colombia*(_: type QLocaleCountryEnum): untyped = 47
template Comoros*(_: type QLocaleCountryEnum): untyped = 48
template CongoKinshasa*(_: type QLocaleCountryEnum): untyped = 49
template CongoBrazzaville*(_: type QLocaleCountryEnum): untyped = 50
template CookIslands*(_: type QLocaleCountryEnum): untyped = 51
template CostaRica*(_: type QLocaleCountryEnum): untyped = 52
template IvoryCoast*(_: type QLocaleCountryEnum): untyped = 53
template Croatia*(_: type QLocaleCountryEnum): untyped = 54
template Cuba*(_: type QLocaleCountryEnum): untyped = 55
template Cyprus*(_: type QLocaleCountryEnum): untyped = 56
template CzechRepublic*(_: type QLocaleCountryEnum): untyped = 57
template Denmark*(_: type QLocaleCountryEnum): untyped = 58
template Djibouti*(_: type QLocaleCountryEnum): untyped = 59
template Dominica*(_: type QLocaleCountryEnum): untyped = 60
template DominicanRepublic*(_: type QLocaleCountryEnum): untyped = 61
template EastTimor*(_: type QLocaleCountryEnum): untyped = 62
template Ecuador*(_: type QLocaleCountryEnum): untyped = 63
template Egypt*(_: type QLocaleCountryEnum): untyped = 64
template ElSalvador*(_: type QLocaleCountryEnum): untyped = 65
template EquatorialGuinea*(_: type QLocaleCountryEnum): untyped = 66
template Eritrea*(_: type QLocaleCountryEnum): untyped = 67
template Estonia*(_: type QLocaleCountryEnum): untyped = 68
template Ethiopia*(_: type QLocaleCountryEnum): untyped = 69
template FalklandIslands*(_: type QLocaleCountryEnum): untyped = 70
template FaroeIslands*(_: type QLocaleCountryEnum): untyped = 71
template Fiji*(_: type QLocaleCountryEnum): untyped = 72
template Finland*(_: type QLocaleCountryEnum): untyped = 73
template France*(_: type QLocaleCountryEnum): untyped = 74
template Guernsey*(_: type QLocaleCountryEnum): untyped = 75
template FrenchGuiana*(_: type QLocaleCountryEnum): untyped = 76
template FrenchPolynesia*(_: type QLocaleCountryEnum): untyped = 77
template FrenchSouthernTerritories*(_: type QLocaleCountryEnum): untyped = 78
template Gabon*(_: type QLocaleCountryEnum): untyped = 79
template Gambia*(_: type QLocaleCountryEnum): untyped = 80
template Georgia*(_: type QLocaleCountryEnum): untyped = 81
template Germany*(_: type QLocaleCountryEnum): untyped = 82
template Ghana*(_: type QLocaleCountryEnum): untyped = 83
template Gibraltar*(_: type QLocaleCountryEnum): untyped = 84
template Greece*(_: type QLocaleCountryEnum): untyped = 85
template Greenland*(_: type QLocaleCountryEnum): untyped = 86
template Grenada*(_: type QLocaleCountryEnum): untyped = 87
template Guadeloupe*(_: type QLocaleCountryEnum): untyped = 88
template Guam*(_: type QLocaleCountryEnum): untyped = 89
template Guatemala*(_: type QLocaleCountryEnum): untyped = 90
template Guinea*(_: type QLocaleCountryEnum): untyped = 91
template GuineaBissau*(_: type QLocaleCountryEnum): untyped = 92
template Guyana*(_: type QLocaleCountryEnum): untyped = 93
template Haiti*(_: type QLocaleCountryEnum): untyped = 94
template HeardAndMcDonaldIslands*(_: type QLocaleCountryEnum): untyped = 95
template Honduras*(_: type QLocaleCountryEnum): untyped = 96
template HongKong*(_: type QLocaleCountryEnum): untyped = 97
template Hungary*(_: type QLocaleCountryEnum): untyped = 98
template Iceland*(_: type QLocaleCountryEnum): untyped = 99
template India*(_: type QLocaleCountryEnum): untyped = 100
template Indonesia*(_: type QLocaleCountryEnum): untyped = 101
template Iran*(_: type QLocaleCountryEnum): untyped = 102
template Iraq*(_: type QLocaleCountryEnum): untyped = 103
template Ireland*(_: type QLocaleCountryEnum): untyped = 104
template Israel*(_: type QLocaleCountryEnum): untyped = 105
template Italy*(_: type QLocaleCountryEnum): untyped = 106
template Jamaica*(_: type QLocaleCountryEnum): untyped = 107
template Japan*(_: type QLocaleCountryEnum): untyped = 108
template Jordan*(_: type QLocaleCountryEnum): untyped = 109
template Kazakhstan*(_: type QLocaleCountryEnum): untyped = 110
template Kenya*(_: type QLocaleCountryEnum): untyped = 111
template Kiribati*(_: type QLocaleCountryEnum): untyped = 112
template NorthKorea*(_: type QLocaleCountryEnum): untyped = 113
template SouthKorea*(_: type QLocaleCountryEnum): untyped = 114
template Kuwait*(_: type QLocaleCountryEnum): untyped = 115
template Kyrgyzstan*(_: type QLocaleCountryEnum): untyped = 116
template Laos*(_: type QLocaleCountryEnum): untyped = 117
template Latvia*(_: type QLocaleCountryEnum): untyped = 118
template Lebanon*(_: type QLocaleCountryEnum): untyped = 119
template Lesotho*(_: type QLocaleCountryEnum): untyped = 120
template Liberia*(_: type QLocaleCountryEnum): untyped = 121
template Libya*(_: type QLocaleCountryEnum): untyped = 122
template Liechtenstein*(_: type QLocaleCountryEnum): untyped = 123
template Lithuania*(_: type QLocaleCountryEnum): untyped = 124
template Luxembourg*(_: type QLocaleCountryEnum): untyped = 125
template Macau*(_: type QLocaleCountryEnum): untyped = 126
template Macedonia*(_: type QLocaleCountryEnum): untyped = 127
template Madagascar*(_: type QLocaleCountryEnum): untyped = 128
template Malawi*(_: type QLocaleCountryEnum): untyped = 129
template Malaysia*(_: type QLocaleCountryEnum): untyped = 130
template Maldives*(_: type QLocaleCountryEnum): untyped = 131
template Mali*(_: type QLocaleCountryEnum): untyped = 132
template Malta*(_: type QLocaleCountryEnum): untyped = 133
template MarshallIslands*(_: type QLocaleCountryEnum): untyped = 134
template Martinique*(_: type QLocaleCountryEnum): untyped = 135
template Mauritania*(_: type QLocaleCountryEnum): untyped = 136
template Mauritius*(_: type QLocaleCountryEnum): untyped = 137
template Mayotte*(_: type QLocaleCountryEnum): untyped = 138
template Mexico*(_: type QLocaleCountryEnum): untyped = 139
template Micronesia*(_: type QLocaleCountryEnum): untyped = 140
template Moldova*(_: type QLocaleCountryEnum): untyped = 141
template Monaco*(_: type QLocaleCountryEnum): untyped = 142
template Mongolia*(_: type QLocaleCountryEnum): untyped = 143
template Montserrat*(_: type QLocaleCountryEnum): untyped = 144
template Morocco*(_: type QLocaleCountryEnum): untyped = 145
template Mozambique*(_: type QLocaleCountryEnum): untyped = 146
template Myanmar*(_: type QLocaleCountryEnum): untyped = 147
template Namibia*(_: type QLocaleCountryEnum): untyped = 148
template NauruCountry*(_: type QLocaleCountryEnum): untyped = 149
template Nepal*(_: type QLocaleCountryEnum): untyped = 150
template Netherlands*(_: type QLocaleCountryEnum): untyped = 151
template CuraSao*(_: type QLocaleCountryEnum): untyped = 152
template NewCaledonia*(_: type QLocaleCountryEnum): untyped = 153
template NewZealand*(_: type QLocaleCountryEnum): untyped = 154
template Nicaragua*(_: type QLocaleCountryEnum): untyped = 155
template Niger*(_: type QLocaleCountryEnum): untyped = 156
template Nigeria*(_: type QLocaleCountryEnum): untyped = 157
template Niue*(_: type QLocaleCountryEnum): untyped = 158
template NorfolkIsland*(_: type QLocaleCountryEnum): untyped = 159
template NorthernMarianaIslands*(_: type QLocaleCountryEnum): untyped = 160
template Norway*(_: type QLocaleCountryEnum): untyped = 161
template Oman*(_: type QLocaleCountryEnum): untyped = 162
template Pakistan*(_: type QLocaleCountryEnum): untyped = 163
template Palau*(_: type QLocaleCountryEnum): untyped = 164
template PalestinianTerritories*(_: type QLocaleCountryEnum): untyped = 165
template Panama*(_: type QLocaleCountryEnum): untyped = 166
template PapuaNewGuinea*(_: type QLocaleCountryEnum): untyped = 167
template Paraguay*(_: type QLocaleCountryEnum): untyped = 168
template Peru*(_: type QLocaleCountryEnum): untyped = 169
template Philippines*(_: type QLocaleCountryEnum): untyped = 170
template Pitcairn*(_: type QLocaleCountryEnum): untyped = 171
template Poland*(_: type QLocaleCountryEnum): untyped = 172
template Portugal*(_: type QLocaleCountryEnum): untyped = 173
template PuertoRico*(_: type QLocaleCountryEnum): untyped = 174
template Qatar*(_: type QLocaleCountryEnum): untyped = 175
template Reunion*(_: type QLocaleCountryEnum): untyped = 176
template Romania*(_: type QLocaleCountryEnum): untyped = 177
template Russia*(_: type QLocaleCountryEnum): untyped = 178
template Rwanda*(_: type QLocaleCountryEnum): untyped = 179
template SaintKittsAndNevis*(_: type QLocaleCountryEnum): untyped = 180
template SaintLucia*(_: type QLocaleCountryEnum): untyped = 181
template SaintVincentAndTheGrenadines*(_: type QLocaleCountryEnum): untyped = 182
template Samoa*(_: type QLocaleCountryEnum): untyped = 183
template SanMarino*(_: type QLocaleCountryEnum): untyped = 184
template SaoTomeAndPrincipe*(_: type QLocaleCountryEnum): untyped = 185
template SaudiArabia*(_: type QLocaleCountryEnum): untyped = 186
template Senegal*(_: type QLocaleCountryEnum): untyped = 187
template Seychelles*(_: type QLocaleCountryEnum): untyped = 188
template SierraLeone*(_: type QLocaleCountryEnum): untyped = 189
template Singapore*(_: type QLocaleCountryEnum): untyped = 190
template Slovakia*(_: type QLocaleCountryEnum): untyped = 191
template Slovenia*(_: type QLocaleCountryEnum): untyped = 192
template SolomonIslands*(_: type QLocaleCountryEnum): untyped = 193
template Somalia*(_: type QLocaleCountryEnum): untyped = 194
template SouthAfrica*(_: type QLocaleCountryEnum): untyped = 195
template SouthGeorgiaAndTheSouthSandwichIslands*(_: type QLocaleCountryEnum): untyped = 196
template Spain*(_: type QLocaleCountryEnum): untyped = 197
template SriLanka*(_: type QLocaleCountryEnum): untyped = 198
template SaintHelena*(_: type QLocaleCountryEnum): untyped = 199
template SaintPierreAndMiquelon*(_: type QLocaleCountryEnum): untyped = 200
template Sudan*(_: type QLocaleCountryEnum): untyped = 201
template Suriname*(_: type QLocaleCountryEnum): untyped = 202
template SvalbardAndJanMayenIslands*(_: type QLocaleCountryEnum): untyped = 203
template Swaziland*(_: type QLocaleCountryEnum): untyped = 204
template Sweden*(_: type QLocaleCountryEnum): untyped = 205
template Switzerland*(_: type QLocaleCountryEnum): untyped = 206
template Syria*(_: type QLocaleCountryEnum): untyped = 207
template Taiwan*(_: type QLocaleCountryEnum): untyped = 208
template Tajikistan*(_: type QLocaleCountryEnum): untyped = 209
template Tanzania*(_: type QLocaleCountryEnum): untyped = 210
template Thailand*(_: type QLocaleCountryEnum): untyped = 211
template Togo*(_: type QLocaleCountryEnum): untyped = 212
template TokelauCountry*(_: type QLocaleCountryEnum): untyped = 213
template Tonga*(_: type QLocaleCountryEnum): untyped = 214
template TrinidadAndTobago*(_: type QLocaleCountryEnum): untyped = 215
template Tunisia*(_: type QLocaleCountryEnum): untyped = 216
template Turkey*(_: type QLocaleCountryEnum): untyped = 217
template Turkmenistan*(_: type QLocaleCountryEnum): untyped = 218
template TurksAndCaicosIslands*(_: type QLocaleCountryEnum): untyped = 219
template TuvaluCountry*(_: type QLocaleCountryEnum): untyped = 220
template Uganda*(_: type QLocaleCountryEnum): untyped = 221
template Ukraine*(_: type QLocaleCountryEnum): untyped = 222
template UnitedArabEmirates*(_: type QLocaleCountryEnum): untyped = 223
template UnitedKingdom*(_: type QLocaleCountryEnum): untyped = 224
template UnitedStates*(_: type QLocaleCountryEnum): untyped = 225
template UnitedStatesMinorOutlyingIslands*(_: type QLocaleCountryEnum): untyped = 226
template Uruguay*(_: type QLocaleCountryEnum): untyped = 227
template Uzbekistan*(_: type QLocaleCountryEnum): untyped = 228
template Vanuatu*(_: type QLocaleCountryEnum): untyped = 229
template VaticanCityState*(_: type QLocaleCountryEnum): untyped = 230
template Venezuela*(_: type QLocaleCountryEnum): untyped = 231
template Vietnam*(_: type QLocaleCountryEnum): untyped = 232
template BritishVirginIslands*(_: type QLocaleCountryEnum): untyped = 233
template UnitedStatesVirginIslands*(_: type QLocaleCountryEnum): untyped = 234
template WallisAndFutunaIslands*(_: type QLocaleCountryEnum): untyped = 235
template WesternSahara*(_: type QLocaleCountryEnum): untyped = 236
template Yemen*(_: type QLocaleCountryEnum): untyped = 237
template CanaryIslands*(_: type QLocaleCountryEnum): untyped = 238
template Zambia*(_: type QLocaleCountryEnum): untyped = 239
template Zimbabwe*(_: type QLocaleCountryEnum): untyped = 240
template ClippertonIsland*(_: type QLocaleCountryEnum): untyped = 241
template Montenegro*(_: type QLocaleCountryEnum): untyped = 242
template Serbia*(_: type QLocaleCountryEnum): untyped = 243
template SaintBarthelemy*(_: type QLocaleCountryEnum): untyped = 244
template SaintMartin*(_: type QLocaleCountryEnum): untyped = 245
template LatinAmerica*(_: type QLocaleCountryEnum): untyped = 246
template AscensionIsland*(_: type QLocaleCountryEnum): untyped = 247
template AlandIslands*(_: type QLocaleCountryEnum): untyped = 248
template DiegoGarcia*(_: type QLocaleCountryEnum): untyped = 249
template CeutaAndMelilla*(_: type QLocaleCountryEnum): untyped = 250
template IsleOfMan*(_: type QLocaleCountryEnum): untyped = 251
template Jersey*(_: type QLocaleCountryEnum): untyped = 252
template TristanDaCunha*(_: type QLocaleCountryEnum): untyped = 253
template SouthSudan*(_: type QLocaleCountryEnum): untyped = 254
template Bonaire*(_: type QLocaleCountryEnum): untyped = 255
template SintMaarten*(_: type QLocaleCountryEnum): untyped = 256
template Kosovo*(_: type QLocaleCountryEnum): untyped = 257
template EuropeanUnion*(_: type QLocaleCountryEnum): untyped = 258
template OutlyingOceania*(_: type QLocaleCountryEnum): untyped = 259
template World*(_: type QLocaleCountryEnum): untyped = 260
template Europe*(_: type QLocaleCountryEnum): untyped = 261
template DemocraticRepublicOfCongo*(_: type QLocaleCountryEnum): untyped = 49
template DemocraticRepublicOfKorea*(_: type QLocaleCountryEnum): untyped = 113
template LatinAmericaAndTheCaribbean*(_: type QLocaleCountryEnum): untyped = 246
template PeoplesRepublicOfCongo*(_: type QLocaleCountryEnum): untyped = 50
template RepublicOfKorea*(_: type QLocaleCountryEnum): untyped = 114
template RussianFederation*(_: type QLocaleCountryEnum): untyped = 178
template SyrianArabRepublic*(_: type QLocaleCountryEnum): untyped = 207
template Tokelau*(_: type QLocaleCountryEnum): untyped = 213
template Tuvalu*(_: type QLocaleCountryEnum): untyped = 220
template LastCountry*(_: type QLocaleCountryEnum): untyped = 261


type QLocaleMeasurementSystemEnum* = distinct cint
template MetricSystem*(_: type QLocaleMeasurementSystemEnum): untyped = 0
template ImperialUSSystem*(_: type QLocaleMeasurementSystemEnum): untyped = 1
template ImperialUKSystem*(_: type QLocaleMeasurementSystemEnum): untyped = 2
template ImperialSystem*(_: type QLocaleMeasurementSystemEnum): untyped = 1


type QLocaleFormatTypeEnum* = distinct cint
template LongFormat*(_: type QLocaleFormatTypeEnum): untyped = 0
template ShortFormat*(_: type QLocaleFormatTypeEnum): untyped = 1
template NarrowFormat*(_: type QLocaleFormatTypeEnum): untyped = 2


type QLocaleNumberOptionEnum* = distinct cint
template DefaultNumberOptions*(_: type QLocaleNumberOptionEnum): untyped = 0
template OmitGroupSeparator*(_: type QLocaleNumberOptionEnum): untyped = 1
template RejectGroupSeparator*(_: type QLocaleNumberOptionEnum): untyped = 2
template OmitLeadingZeroInExponent*(_: type QLocaleNumberOptionEnum): untyped = 4
template RejectLeadingZeroInExponent*(_: type QLocaleNumberOptionEnum): untyped = 8
template IncludeTrailingZeroesAfterDot*(_: type QLocaleNumberOptionEnum): untyped = 16
template RejectTrailingZeroesAfterDot*(_: type QLocaleNumberOptionEnum): untyped = 32


type QLocaleFloatingPointPrecisionOptionEnum* = distinct cint
template FloatingPointShortest*(_: type QLocaleFloatingPointPrecisionOptionEnum): untyped = -128


type QLocaleCurrencySymbolFormatEnum* = distinct cint
template CurrencyIsoCode*(_: type QLocaleCurrencySymbolFormatEnum): untyped = 0
template CurrencySymbol*(_: type QLocaleCurrencySymbolFormatEnum): untyped = 1
template CurrencyDisplayName*(_: type QLocaleCurrencySymbolFormatEnum): untyped = 2


type QLocaleDataSizeFormatEnum* = distinct cint
template DataSizeBase1000*(_: type QLocaleDataSizeFormatEnum): untyped = 1
template DataSizeSIQuantifiers*(_: type QLocaleDataSizeFormatEnum): untyped = 2
template DataSizeIecFormat*(_: type QLocaleDataSizeFormatEnum): untyped = 0
template DataSizeTraditionalFormat*(_: type QLocaleDataSizeFormatEnum): untyped = 2
template DataSizeSIFormat*(_: type QLocaleDataSizeFormatEnum): untyped = 3


type QLocaleQuotationStyleEnum* = distinct cint
template StandardQuotation*(_: type QLocaleQuotationStyleEnum): untyped = 0
template AlternateQuotation*(_: type QLocaleQuotationStyleEnum): untyped = 1


import ./gen_qlocale_types
export gen_qlocale_types

import
  ./gen_qcalendar_types,
  ./gen_qchar_types,
  ./gen_qdatetime_types,
  ./gen_qobjectdefs_types
export
  gen_qcalendar_types,
  gen_qchar_types,
  gen_qdatetime_types,
  gen_qobjectdefs_types

type cQLocale*{.exportc: "QLocale", incompleteStruct.} = object

proc fcQLocale_operatorAssign(self: pointer, other: pointer): void {.importc: "QLocale_operatorAssign".}
proc fcQLocale_swap(self: pointer, other: pointer): void {.importc: "QLocale_swap".}
proc fcQLocale_language(self: pointer): cint {.importc: "QLocale_language".}
proc fcQLocale_script(self: pointer): cint {.importc: "QLocale_script".}
proc fcQLocale_country(self: pointer): cint {.importc: "QLocale_country".}
proc fcQLocale_name(self: pointer): struct_miqt_string {.importc: "QLocale_name".}
proc fcQLocale_bcp47Name(self: pointer): struct_miqt_string {.importc: "QLocale_bcp47Name".}
proc fcQLocale_nativeLanguageName(self: pointer): struct_miqt_string {.importc: "QLocale_nativeLanguageName".}
proc fcQLocale_nativeCountryName(self: pointer): struct_miqt_string {.importc: "QLocale_nativeCountryName".}
proc fcQLocale_toShort(self: pointer, s: struct_miqt_string): cshort {.importc: "QLocale_toShort".}
proc fcQLocale_toUShort(self: pointer, s: struct_miqt_string): cushort {.importc: "QLocale_toUShort".}
proc fcQLocale_toInt(self: pointer, s: struct_miqt_string): cint {.importc: "QLocale_toInt".}
proc fcQLocale_toUInt(self: pointer, s: struct_miqt_string): cuint {.importc: "QLocale_toUInt".}
proc fcQLocale_toLong(self: pointer, s: struct_miqt_string): clong {.importc: "QLocale_toLong".}
proc fcQLocale_toULong(self: pointer, s: struct_miqt_string): culong {.importc: "QLocale_toULong".}
proc fcQLocale_toLongLong(self: pointer, s: struct_miqt_string): clonglong {.importc: "QLocale_toLongLong".}
proc fcQLocale_toULongLong(self: pointer, s: struct_miqt_string): culonglong {.importc: "QLocale_toULongLong".}
proc fcQLocale_toFloat(self: pointer, s: struct_miqt_string): float32 {.importc: "QLocale_toFloat".}
proc fcQLocale_toDouble(self: pointer, s: struct_miqt_string): float64 {.importc: "QLocale_toDouble".}
proc fcQLocale_toString(self: pointer, i: clonglong): struct_miqt_string {.importc: "QLocale_toString".}
proc fcQLocale_toStringWithQulonglong(self: pointer, i: culonglong): struct_miqt_string {.importc: "QLocale_toStringWithQulonglong".}
proc fcQLocale_toStringWithLong(self: pointer, i: clong): struct_miqt_string {.importc: "QLocale_toStringWithLong".}
proc fcQLocale_toStringWithUlong(self: pointer, i: culong): struct_miqt_string {.importc: "QLocale_toStringWithUlong".}
proc fcQLocale_toStringWithShort(self: pointer, i: cshort): struct_miqt_string {.importc: "QLocale_toStringWithShort".}
proc fcQLocale_toStringWithUshort(self: pointer, i: cushort): struct_miqt_string {.importc: "QLocale_toStringWithUshort".}
proc fcQLocale_toStringWithInt(self: pointer, i: cint): struct_miqt_string {.importc: "QLocale_toStringWithInt".}
proc fcQLocale_toStringWithUint(self: pointer, i: cuint): struct_miqt_string {.importc: "QLocale_toStringWithUint".}
proc fcQLocale_toStringWithDouble(self: pointer, i: float64): struct_miqt_string {.importc: "QLocale_toStringWithDouble".}
proc fcQLocale_toStringWithFloat(self: pointer, i: float32): struct_miqt_string {.importc: "QLocale_toStringWithFloat".}
proc fcQLocale_toString2(self: pointer, date: pointer, formatStr: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString2".}
proc fcQLocale_toString3(self: pointer, time: pointer, formatStr: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString3".}
proc fcQLocale_toString4(self: pointer, dateTime: pointer, format: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toString4".}
proc fcQLocale_toStringWithDate(self: pointer, date: pointer): struct_miqt_string {.importc: "QLocale_toStringWithDate".}
proc fcQLocale_toStringWithTime(self: pointer, time: pointer): struct_miqt_string {.importc: "QLocale_toStringWithTime".}
proc fcQLocale_toStringWithDateTime(self: pointer, dateTime: pointer): struct_miqt_string {.importc: "QLocale_toStringWithDateTime".}
proc fcQLocale_toString9(self: pointer, date: pointer, format: cint, cal: pointer): struct_miqt_string {.importc: "QLocale_toString9".}
proc fcQLocale_toString10(self: pointer, dateTime: pointer, format: cint, cal: pointer): struct_miqt_string {.importc: "QLocale_toString10".}
proc fcQLocale_dateFormat(self: pointer): struct_miqt_string {.importc: "QLocale_dateFormat".}
proc fcQLocale_timeFormat(self: pointer): struct_miqt_string {.importc: "QLocale_timeFormat".}
proc fcQLocale_dateTimeFormat(self: pointer): struct_miqt_string {.importc: "QLocale_dateTimeFormat".}
proc fcQLocale_toDate(self: pointer, stringVal: struct_miqt_string): pointer {.importc: "QLocale_toDate".}
proc fcQLocale_toTime(self: pointer, stringVal: struct_miqt_string): pointer {.importc: "QLocale_toTime".}
proc fcQLocale_toDateTime(self: pointer, stringVal: struct_miqt_string): pointer {.importc: "QLocale_toDateTime".}
proc fcQLocale_toDate2(self: pointer, stringVal: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QLocale_toDate2".}
proc fcQLocale_toTime2(self: pointer, stringVal: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QLocale_toTime2".}
proc fcQLocale_toDateTime2(self: pointer, stringVal: struct_miqt_string, format: struct_miqt_string): pointer {.importc: "QLocale_toDateTime2".}
proc fcQLocale_toDate3(self: pointer, stringVal: struct_miqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toDate3".}
proc fcQLocale_toDateTime3(self: pointer, stringVal: struct_miqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toDateTime3".}
proc fcQLocale_toDate4(self: pointer, stringVal: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QLocale_toDate4".}
proc fcQLocale_toDateTime4(self: pointer, stringVal: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QLocale_toDateTime4".}
proc fcQLocale_toTime3(self: pointer, stringVal: struct_miqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toTime3".}
proc fcQLocale_toTime4(self: pointer, stringVal: struct_miqt_string, format: struct_miqt_string, cal: pointer): pointer {.importc: "QLocale_toTime4".}
proc fcQLocale_decimalPoint(self: pointer): pointer {.importc: "QLocale_decimalPoint".}
proc fcQLocale_groupSeparator(self: pointer): pointer {.importc: "QLocale_groupSeparator".}
proc fcQLocale_percent(self: pointer): pointer {.importc: "QLocale_percent".}
proc fcQLocale_zeroDigit(self: pointer): pointer {.importc: "QLocale_zeroDigit".}
proc fcQLocale_negativeSign(self: pointer): pointer {.importc: "QLocale_negativeSign".}
proc fcQLocale_positiveSign(self: pointer): pointer {.importc: "QLocale_positiveSign".}
proc fcQLocale_exponential(self: pointer): pointer {.importc: "QLocale_exponential".}
proc fcQLocale_monthName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_monthName".}
proc fcQLocale_standaloneMonthName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_standaloneMonthName".}
proc fcQLocale_dayName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_dayName".}
proc fcQLocale_standaloneDayName(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_standaloneDayName".}
proc fcQLocale_firstDayOfWeek(self: pointer): cint {.importc: "QLocale_firstDayOfWeek".}
proc fcQLocale_weekdays(self: pointer): struct_miqt_array {.importc: "QLocale_weekdays".}
proc fcQLocale_amText(self: pointer): struct_miqt_string {.importc: "QLocale_amText".}
proc fcQLocale_pmText(self: pointer): struct_miqt_string {.importc: "QLocale_pmText".}
proc fcQLocale_measurementSystem(self: pointer): cint {.importc: "QLocale_measurementSystem".}
proc fcQLocale_collation(self: pointer): pointer {.importc: "QLocale_collation".}
proc fcQLocale_textDirection(self: pointer): cint {.importc: "QLocale_textDirection".}
proc fcQLocale_toUpper(self: pointer, str: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toUpper".}
proc fcQLocale_toLower(self: pointer, str: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toLower".}
proc fcQLocale_currencySymbol(self: pointer): struct_miqt_string {.importc: "QLocale_currencySymbol".}
proc fcQLocale_toCurrencyString(self: pointer, param1: clonglong): struct_miqt_string {.importc: "QLocale_toCurrencyString".}
proc fcQLocale_toCurrencyStringWithQulonglong(self: pointer, param1: culonglong): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithQulonglong".}
proc fcQLocale_toCurrencyStringWithShort(self: pointer, param1: cshort): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithShort".}
proc fcQLocale_toCurrencyStringWithUshort(self: pointer, param1: cushort): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithUshort".}
proc fcQLocale_toCurrencyStringWithInt(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithInt".}
proc fcQLocale_toCurrencyStringWithUint(self: pointer, param1: cuint): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithUint".}
proc fcQLocale_toCurrencyStringWithDouble(self: pointer, param1: float64): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithDouble".}
proc fcQLocale_toCurrencyString2(self: pointer, param1: float64, symbol: struct_miqt_string, precision: cint): struct_miqt_string {.importc: "QLocale_toCurrencyString2".}
proc fcQLocale_toCurrencyStringWithFloat(self: pointer, i: float32): struct_miqt_string {.importc: "QLocale_toCurrencyStringWithFloat".}
proc fcQLocale_toCurrencyString3(self: pointer, i: float32, symbol: struct_miqt_string, precision: cint): struct_miqt_string {.importc: "QLocale_toCurrencyString3".}
proc fcQLocale_formattedDataSize(self: pointer, bytes: clonglong): struct_miqt_string {.importc: "QLocale_formattedDataSize".}
proc fcQLocale_formattedDataSizeWithBytes(self: pointer, bytes: clonglong): struct_miqt_string {.importc: "QLocale_formattedDataSizeWithBytes".}
proc fcQLocale_uiLanguages(self: pointer): struct_miqt_array {.importc: "QLocale_uiLanguages".}
proc fcQLocale_operatorEqual(self: pointer, other: pointer): bool {.importc: "QLocale_operatorEqual".}
proc fcQLocale_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QLocale_operatorNotEqual".}
proc fcQLocale_languageToString(language: cint): struct_miqt_string {.importc: "QLocale_languageToString".}
proc fcQLocale_countryToString(country: cint): struct_miqt_string {.importc: "QLocale_countryToString".}
proc fcQLocale_scriptToString(script: cint): struct_miqt_string {.importc: "QLocale_scriptToString".}
proc fcQLocale_setDefault(locale: pointer): void {.importc: "QLocale_setDefault".}
proc fcQLocale_c(): pointer {.importc: "QLocale_c".}
proc fcQLocale_system(): pointer {.importc: "QLocale_system".}
proc fcQLocale_matchingLocales(language: cint, script: cint, country: cint): struct_miqt_array {.importc: "QLocale_matchingLocales".}
proc fcQLocale_countriesForLanguage(lang: cint): struct_miqt_array {.importc: "QLocale_countriesForLanguage".}
proc fcQLocale_setNumberOptions(self: pointer, options: cint): void {.importc: "QLocale_setNumberOptions".}
proc fcQLocale_numberOptions(self: pointer): cint {.importc: "QLocale_numberOptions".}
proc fcQLocale_quoteString(self: pointer, str: struct_miqt_string): struct_miqt_string {.importc: "QLocale_quoteString".}
proc fcQLocale_createSeparatedList(self: pointer, strl: struct_miqt_array): struct_miqt_string {.importc: "QLocale_createSeparatedList".}
proc fcQLocale_toShort2(self: pointer, s: struct_miqt_string, ok: ptr bool): cshort {.importc: "QLocale_toShort2".}
proc fcQLocale_toUShort2(self: pointer, s: struct_miqt_string, ok: ptr bool): cushort {.importc: "QLocale_toUShort2".}
proc fcQLocale_toInt2(self: pointer, s: struct_miqt_string, ok: ptr bool): cint {.importc: "QLocale_toInt2".}
proc fcQLocale_toUInt2(self: pointer, s: struct_miqt_string, ok: ptr bool): cuint {.importc: "QLocale_toUInt2".}
proc fcQLocale_toLong2(self: pointer, s: struct_miqt_string, ok: ptr bool): clong {.importc: "QLocale_toLong2".}
proc fcQLocale_toULong2(self: pointer, s: struct_miqt_string, ok: ptr bool): culong {.importc: "QLocale_toULong2".}
proc fcQLocale_toLongLong2(self: pointer, s: struct_miqt_string, ok: ptr bool): clonglong {.importc: "QLocale_toLongLong2".}
proc fcQLocale_toULongLong2(self: pointer, s: struct_miqt_string, ok: ptr bool): culonglong {.importc: "QLocale_toULongLong2".}
proc fcQLocale_toFloat2(self: pointer, s: struct_miqt_string, ok: ptr bool): float32 {.importc: "QLocale_toFloat2".}
proc fcQLocale_toDouble2(self: pointer, s: struct_miqt_string, ok: ptr bool): float64 {.importc: "QLocale_toDouble2".}
proc fcQLocale_toString22(self: pointer, i: float64, f: cchar): struct_miqt_string {.importc: "QLocale_toString22".}
proc fcQLocale_toString32(self: pointer, i: float64, f: cchar, prec: cint): struct_miqt_string {.importc: "QLocale_toString32".}
proc fcQLocale_toString23(self: pointer, i: float32, f: cchar): struct_miqt_string {.importc: "QLocale_toString23".}
proc fcQLocale_toString33(self: pointer, i: float32, f: cchar, prec: cint): struct_miqt_string {.importc: "QLocale_toString33".}
proc fcQLocale_toString24(self: pointer, date: pointer, format: cint): struct_miqt_string {.importc: "QLocale_toString24".}
proc fcQLocale_toString25(self: pointer, time: pointer, format: cint): struct_miqt_string {.importc: "QLocale_toString25".}
proc fcQLocale_toString26(self: pointer, dateTime: pointer, format: cint): struct_miqt_string {.importc: "QLocale_toString26".}
proc fcQLocale_dateFormat1(self: pointer, format: cint): struct_miqt_string {.importc: "QLocale_dateFormat1".}
proc fcQLocale_timeFormat1(self: pointer, format: cint): struct_miqt_string {.importc: "QLocale_timeFormat1".}
proc fcQLocale_dateTimeFormat1(self: pointer, format: cint): struct_miqt_string {.importc: "QLocale_dateTimeFormat1".}
proc fcQLocale_toDate22(self: pointer, stringVal: struct_miqt_string, param2: cint): pointer {.importc: "QLocale_toDate22".}
proc fcQLocale_toTime22(self: pointer, stringVal: struct_miqt_string, param2: cint): pointer {.importc: "QLocale_toTime22".}
proc fcQLocale_toDateTime22(self: pointer, stringVal: struct_miqt_string, format: cint): pointer {.importc: "QLocale_toDateTime22".}
proc fcQLocale_monthName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_monthName2".}
proc fcQLocale_standaloneMonthName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_standaloneMonthName2".}
proc fcQLocale_dayName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_dayName2".}
proc fcQLocale_standaloneDayName2(self: pointer, param1: cint, format: cint): struct_miqt_string {.importc: "QLocale_standaloneDayName2".}
proc fcQLocale_currencySymbol1(self: pointer, param1: cint): struct_miqt_string {.importc: "QLocale_currencySymbol1".}
proc fcQLocale_toCurrencyString22(self: pointer, param1: clonglong, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString22".}
proc fcQLocale_toCurrencyString23(self: pointer, param1: culonglong, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString23".}
proc fcQLocale_toCurrencyString24(self: pointer, param1: cshort, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString24".}
proc fcQLocale_toCurrencyString25(self: pointer, param1: cushort, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString25".}
proc fcQLocale_toCurrencyString26(self: pointer, param1: cint, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString26".}
proc fcQLocale_toCurrencyString27(self: pointer, param1: cuint, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString27".}
proc fcQLocale_toCurrencyString28(self: pointer, param1: float64, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString28".}
proc fcQLocale_toCurrencyString29(self: pointer, i: float32, symbol: struct_miqt_string): struct_miqt_string {.importc: "QLocale_toCurrencyString29".}
proc fcQLocale_formattedDataSize2(self: pointer, bytes: clonglong, precision: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize2".}
proc fcQLocale_formattedDataSize3(self: pointer, bytes: clonglong, precision: cint, format: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize3".}
proc fcQLocale_formattedDataSize22(self: pointer, bytes: clonglong, precision: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize22".}
proc fcQLocale_formattedDataSize32(self: pointer, bytes: clonglong, precision: cint, format: cint): struct_miqt_string {.importc: "QLocale_formattedDataSize32".}
proc fcQLocale_quoteString2(self: pointer, str: struct_miqt_string, style: cint): struct_miqt_string {.importc: "QLocale_quoteString2".}
proc fcQLocale_new(): ptr cQLocale {.importc: "QLocale_new".}
proc fcQLocale_new2(name: struct_miqt_string): ptr cQLocale {.importc: "QLocale_new2".}
proc fcQLocale_new3(language: cint): ptr cQLocale {.importc: "QLocale_new3".}
proc fcQLocale_new4(language: cint, script: cint, country: cint): ptr cQLocale {.importc: "QLocale_new4".}
proc fcQLocale_new5(other: pointer): ptr cQLocale {.importc: "QLocale_new5".}
proc fcQLocale_new6(language: cint, country: cint): ptr cQLocale {.importc: "QLocale_new6".}
proc fcQLocale_staticMetaObject(): pointer {.importc: "QLocale_staticMetaObject".}

proc operatorAssign*(self: gen_qlocale_types.QLocale, other: gen_qlocale_types.QLocale): void =
  fcQLocale_operatorAssign(self.h, other.h)

proc swap*(self: gen_qlocale_types.QLocale, other: gen_qlocale_types.QLocale): void =
  fcQLocale_swap(self.h, other.h)

proc language*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_language(self.h))

proc script*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_script(self.h))

proc country*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_country(self.h))

proc name*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc bcp47Name*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_bcp47Name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc nativeLanguageName*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_nativeLanguageName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc nativeCountryName*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_nativeCountryName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toShort*(self: gen_qlocale_types.QLocale, s: openArray[char]): cshort =
  fcQLocale_toShort(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toUShort*(self: gen_qlocale_types.QLocale, s: openArray[char]): cushort =
  fcQLocale_toUShort(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toInt*(self: gen_qlocale_types.QLocale, s: openArray[char]): cint =
  fcQLocale_toInt(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toUInt*(self: gen_qlocale_types.QLocale, s: openArray[char]): cuint =
  fcQLocale_toUInt(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toLong*(self: gen_qlocale_types.QLocale, s: openArray[char]): clong =
  fcQLocale_toLong(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toULong*(self: gen_qlocale_types.QLocale, s: openArray[char]): culong =
  fcQLocale_toULong(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toLongLong*(self: gen_qlocale_types.QLocale, s: openArray[char]): clonglong =
  fcQLocale_toLongLong(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toULongLong*(self: gen_qlocale_types.QLocale, s: openArray[char]): culonglong =
  fcQLocale_toULongLong(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toFloat*(self: gen_qlocale_types.QLocale, s: openArray[char]): float32 =
  fcQLocale_toFloat(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toDouble*(self: gen_qlocale_types.QLocale, s: openArray[char]): float64 =
  fcQLocale_toDouble(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toString*(self: gen_qlocale_types.QLocale, i: clonglong): string =
  let v_ms = fcQLocale_toString(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: culonglong): string =
  let v_ms = fcQLocale_toStringWithQulonglong(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: clong): string =
  let v_ms = fcQLocale_toStringWithLong(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: culong): string =
  let v_ms = fcQLocale_toStringWithUlong(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cshort): string =
  let v_ms = fcQLocale_toStringWithShort(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cushort): string =
  let v_ms = fcQLocale_toStringWithUshort(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cint): string =
  let v_ms = fcQLocale_toStringWithInt(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cuint): string =
  let v_ms = fcQLocale_toStringWithUint(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: float64): string =
  let v_ms = fcQLocale_toStringWithDouble(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: float32): string =
  let v_ms = fcQLocale_toStringWithFloat(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate, formatStr: openArray[char]): string =
  let v_ms = fcQLocale_toString2(self.h, date.h, struct_miqt_string(data: if len(formatStr) > 0: addr formatStr[0] else: nil, len: csize_t(len(formatStr))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, time: gen_qdatetime_types.QTime, formatStr: openArray[char]): string =
  let v_ms = fcQLocale_toString3(self.h, time.h, struct_miqt_string(data: if len(formatStr) > 0: addr formatStr[0] else: nil, len: csize_t(len(formatStr))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime, format: openArray[char]): string =
  let v_ms = fcQLocale_toString4(self.h, dateTime.h, struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate): string =
  let v_ms = fcQLocale_toStringWithDate(self.h, date.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, time: gen_qdatetime_types.QTime): string =
  let v_ms = fcQLocale_toStringWithTime(self.h, time.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQLocale_toStringWithDateTime(self.h, dateTime.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate, format: cint, cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQLocale_toString9(self.h, date.h, cint(format), cal.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime, format: cint, cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQLocale_toString10(self.h, dateTime.h, cint(format), cal.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dateFormat*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_dateFormat(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc timeFormat*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_timeFormat(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dateTimeFormat*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_dateTimeFormat(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char]): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char]): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char]): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate2(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime2(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime2(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate3(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), cal.h), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime3(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), cal.h), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate4(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime4(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h), owned: true)

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime3(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), cal.h), owned: true)

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime4(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h), owned: true)

proc decimalPoint*(self: gen_qlocale_types.QLocale): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQLocale_decimalPoint(self.h), owned: true)

proc groupSeparator*(self: gen_qlocale_types.QLocale): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQLocale_groupSeparator(self.h), owned: true)

proc percent*(self: gen_qlocale_types.QLocale): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQLocale_percent(self.h), owned: true)

proc zeroDigit*(self: gen_qlocale_types.QLocale): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQLocale_zeroDigit(self.h), owned: true)

proc negativeSign*(self: gen_qlocale_types.QLocale): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQLocale_negativeSign(self.h), owned: true)

proc positiveSign*(self: gen_qlocale_types.QLocale): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQLocale_positiveSign(self.h), owned: true)

proc exponential*(self: gen_qlocale_types.QLocale): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQLocale_exponential(self.h), owned: true)

proc monthName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_monthName(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_standaloneMonthName(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dayName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_dayName(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneDayName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_standaloneDayName(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc firstDayOfWeek*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_firstDayOfWeek(self.h))

proc weekdays*(self: gen_qlocale_types.QLocale): seq[cint] =
  var v_ma = fcQLocale_weekdays(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc amText*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_amText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pmText*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_pmText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc measurementSystem*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_measurementSystem(self.h))

proc collation*(self: gen_qlocale_types.QLocale): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_collation(self.h), owned: true)

proc textDirection*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_textDirection(self.h))

proc toUpper*(self: gen_qlocale_types.QLocale, str: openArray[char]): string =
  let v_ms = fcQLocale_toUpper(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toLower*(self: gen_qlocale_types.QLocale, str: openArray[char]): string =
  let v_ms = fcQLocale_toLower(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currencySymbol*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_currencySymbol(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: clonglong): string =
  let v_ms = fcQLocale_toCurrencyString(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: culonglong): string =
  let v_ms = fcQLocale_toCurrencyStringWithQulonglong(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cshort): string =
  let v_ms = fcQLocale_toCurrencyStringWithShort(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cushort): string =
  let v_ms = fcQLocale_toCurrencyStringWithUshort(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_toCurrencyStringWithInt(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cuint): string =
  let v_ms = fcQLocale_toCurrencyStringWithUint(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: float64): string =
  let v_ms = fcQLocale_toCurrencyStringWithDouble(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: float64, symbol: openArray[char], precision: cint): string =
  let v_ms = fcQLocale_toCurrencyString2(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: float32): string =
  let v_ms = fcQLocale_toCurrencyStringWithFloat(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: float32, symbol: openArray[char], precision: cint): string =
  let v_ms = fcQLocale_toCurrencyString3(self.h, i, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: gen_qlocale_types.QLocale, bytes: clonglong): string =
  let v_ms = fcQLocale_formattedDataSize(self.h, bytes)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize2*(self: gen_qlocale_types.QLocale, bytes: clonglong): string =
  let v_ms = fcQLocale_formattedDataSizeWithBytes(self.h, bytes)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc uiLanguages*(self: gen_qlocale_types.QLocale): seq[string] =
  var v_ma = fcQLocale_uiLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc operatorEqual*(self: gen_qlocale_types.QLocale, other: gen_qlocale_types.QLocale): bool =
  fcQLocale_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qlocale_types.QLocale, other: gen_qlocale_types.QLocale): bool =
  fcQLocale_operatorNotEqual(self.h, other.h)

proc languageToString*(_: type gen_qlocale_types.QLocale, language: cint): string =
  let v_ms = fcQLocale_languageToString(cint(language))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc countryToString*(_: type gen_qlocale_types.QLocale, country: cint): string =
  let v_ms = fcQLocale_countryToString(cint(country))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc scriptToString*(_: type gen_qlocale_types.QLocale, script: cint): string =
  let v_ms = fcQLocale_scriptToString(cint(script))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDefault*(_: type gen_qlocale_types.QLocale, locale: gen_qlocale_types.QLocale): void =
  fcQLocale_setDefault(locale.h)

proc c*(_: type gen_qlocale_types.QLocale): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_c(), owned: true)

proc system*(_: type gen_qlocale_types.QLocale): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_system(), owned: true)

proc matchingLocales*(_: type gen_qlocale_types.QLocale, language: cint, script: cint, country: cint): seq[gen_qlocale_types.QLocale] =
  var v_ma = fcQLocale_matchingLocales(cint(language), cint(script), cint(country))
  var vx_ret = newSeq[gen_qlocale_types.QLocale](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qlocale_types.QLocale(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc countriesForLanguage*(_: type gen_qlocale_types.QLocale, lang: cint): seq[cint] =
  var v_ma = fcQLocale_countriesForLanguage(cint(lang))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc setNumberOptions*(self: gen_qlocale_types.QLocale, options: cint): void =
  fcQLocale_setNumberOptions(self.h, cint(options))

proc numberOptions*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_numberOptions(self.h))

proc quoteString*(self: gen_qlocale_types.QLocale, str: openArray[char]): string =
  let v_ms = fcQLocale_quoteString(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createSeparatedList*(self: gen_qlocale_types.QLocale, strl: openArray[string]): string =
  var strl_CArray = newSeq[struct_miqt_string](len(strl))
  for i in 0..<len(strl):
    strl_CArray[i] = struct_miqt_string(data: if len(strl[i]) > 0: addr strl[i][0] else: nil, len: csize_t(len(strl[i])))

  let v_ms = fcQLocale_createSeparatedList(self.h, struct_miqt_array(len: csize_t(len(strl)), data: if len(strl) == 0: nil else: addr(strl_CArray[0])))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toShort*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cshort =
  fcQLocale_toShort2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toUShort*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cushort =
  fcQLocale_toUShort2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toInt*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cint =
  fcQLocale_toInt2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toUInt*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cuint =
  fcQLocale_toUInt2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toLong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): clong =
  fcQLocale_toLong2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toULong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): culong =
  fcQLocale_toULong2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toLongLong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): clonglong =
  fcQLocale_toLongLong2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toULongLong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): culonglong =
  fcQLocale_toULongLong2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toFloat*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): float32 =
  fcQLocale_toFloat2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toDouble*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): float64 =
  fcQLocale_toDouble2(self.h, struct_miqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toString*(self: gen_qlocale_types.QLocale, i: float64, f: cchar): string =
  let v_ms = fcQLocale_toString22(self.h, i, f)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: float64, f: cchar, prec: cint): string =
  let v_ms = fcQLocale_toString32(self.h, i, f, prec)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: float32, f: cchar): string =
  let v_ms = fcQLocale_toString23(self.h, i, f)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: float32, f: cchar, prec: cint): string =
  let v_ms = fcQLocale_toString33(self.h, i, f, prec)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate, format: cint): string =
  let v_ms = fcQLocale_toString24(self.h, date.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, time: gen_qdatetime_types.QTime, format: cint): string =
  let v_ms = fcQLocale_toString25(self.h, time.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime, format: cint): string =
  let v_ms = fcQLocale_toString26(self.h, dateTime.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dateFormat*(self: gen_qlocale_types.QLocale, format: cint): string =
  let v_ms = fcQLocale_dateFormat1(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc timeFormat*(self: gen_qlocale_types.QLocale, format: cint): string =
  let v_ms = fcQLocale_timeFormat1(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dateTimeFormat*(self: gen_qlocale_types.QLocale, format: cint): string =
  let v_ms = fcQLocale_dateTimeFormat1(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], param2: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate22(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(param2)), owned: true)

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], param2: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime22(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(param2)), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime22(self.h, struct_miqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format)), owned: true)

proc monthName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_monthName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_standaloneMonthName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dayName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_dayName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneDayName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_standaloneDayName2(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currencySymbol*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_currencySymbol1(self.h, cint(param1))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: clonglong, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString22(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: culonglong, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString23(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cshort, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString24(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cushort, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString25(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cint, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString26(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: cuint, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString27(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: float64, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString28(self.h, param1, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: float32, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyString29(self.h, i, struct_miqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: gen_qlocale_types.QLocale, bytes: clonglong, precision: cint): string =
  let v_ms = fcQLocale_formattedDataSize2(self.h, bytes, precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: gen_qlocale_types.QLocale, bytes: clonglong, precision: cint, format: cint): string =
  let v_ms = fcQLocale_formattedDataSize3(self.h, bytes, precision, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize2*(self: gen_qlocale_types.QLocale, bytes: clonglong, precision: cint): string =
  let v_ms = fcQLocale_formattedDataSize22(self.h, bytes, precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize2*(self: gen_qlocale_types.QLocale, bytes: clonglong, precision: cint, format: cint): string =
  let v_ms = fcQLocale_formattedDataSize32(self.h, bytes, precision, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc quoteString*(self: gen_qlocale_types.QLocale, str: openArray[char], style: cint): string =
  let v_ms = fcQLocale_quoteString2(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), cint(style))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qlocale_types.QLocale): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_new(), owned: true)

proc create*(T: type gen_qlocale_types.QLocale,
    name: openArray[char]): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_new2(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qlocale_types.QLocale,
    language: cint): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_new3(cint(language)), owned: true)

proc create*(T: type gen_qlocale_types.QLocale,
    language: cint, script: cint, country: cint): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_new4(cint(language), cint(script), cint(country)), owned: true)

proc create*(T: type gen_qlocale_types.QLocale,
    other: gen_qlocale_types.QLocale): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_new5(other.h), owned: true)

proc create*(T: type gen_qlocale_types.QLocale,
    language: cint, country: cint): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQLocale_new6(cint(language), cint(country)), owned: true)

proc staticMetaObject*(_: type gen_qlocale_types.QLocale): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocale_staticMetaObject())
