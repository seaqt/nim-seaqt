import ./qtcore_pkg

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


type QLocaleLanguageEnum* = distinct cushort
template AnyLanguage*(_: type QLocaleLanguageEnum): untyped = 0
template C*(_: type QLocaleLanguageEnum): untyped = 1
template Abkhazian*(_: type QLocaleLanguageEnum): untyped = 2
template Afar*(_: type QLocaleLanguageEnum): untyped = 3
template Afrikaans*(_: type QLocaleLanguageEnum): untyped = 4
template Aghem*(_: type QLocaleLanguageEnum): untyped = 5
template Akan*(_: type QLocaleLanguageEnum): untyped = 6
template Akkadian*(_: type QLocaleLanguageEnum): untyped = 7
template Akoose*(_: type QLocaleLanguageEnum): untyped = 8
template Albanian*(_: type QLocaleLanguageEnum): untyped = 9
template AmericanSignLanguage*(_: type QLocaleLanguageEnum): untyped = 10
template Amharic*(_: type QLocaleLanguageEnum): untyped = 11
template AncientEgyptian*(_: type QLocaleLanguageEnum): untyped = 12
template AncientGreek*(_: type QLocaleLanguageEnum): untyped = 13
template Arabic*(_: type QLocaleLanguageEnum): untyped = 14
template Aragonese*(_: type QLocaleLanguageEnum): untyped = 15
template Aramaic*(_: type QLocaleLanguageEnum): untyped = 16
template Armenian*(_: type QLocaleLanguageEnum): untyped = 17
template Assamese*(_: type QLocaleLanguageEnum): untyped = 18
template Asturian*(_: type QLocaleLanguageEnum): untyped = 19
template Asu*(_: type QLocaleLanguageEnum): untyped = 20
template Atsam*(_: type QLocaleLanguageEnum): untyped = 21
template Avaric*(_: type QLocaleLanguageEnum): untyped = 22
template Avestan*(_: type QLocaleLanguageEnum): untyped = 23
template Aymara*(_: type QLocaleLanguageEnum): untyped = 24
template Azerbaijani*(_: type QLocaleLanguageEnum): untyped = 25
template Bafia*(_: type QLocaleLanguageEnum): untyped = 26
template Balinese*(_: type QLocaleLanguageEnum): untyped = 27
template Bambara*(_: type QLocaleLanguageEnum): untyped = 28
template Bamun*(_: type QLocaleLanguageEnum): untyped = 29
template Bangla*(_: type QLocaleLanguageEnum): untyped = 30
template Basaa*(_: type QLocaleLanguageEnum): untyped = 31
template Bashkir*(_: type QLocaleLanguageEnum): untyped = 32
template Basque*(_: type QLocaleLanguageEnum): untyped = 33
template BatakToba*(_: type QLocaleLanguageEnum): untyped = 34
template Belarusian*(_: type QLocaleLanguageEnum): untyped = 35
template Bemba*(_: type QLocaleLanguageEnum): untyped = 36
template Bena*(_: type QLocaleLanguageEnum): untyped = 37
template Bhojpuri*(_: type QLocaleLanguageEnum): untyped = 38
template Bislama*(_: type QLocaleLanguageEnum): untyped = 39
template Blin*(_: type QLocaleLanguageEnum): untyped = 40
template Bodo*(_: type QLocaleLanguageEnum): untyped = 41
template Bosnian*(_: type QLocaleLanguageEnum): untyped = 42
template Breton*(_: type QLocaleLanguageEnum): untyped = 43
template Buginese*(_: type QLocaleLanguageEnum): untyped = 44
template Bulgarian*(_: type QLocaleLanguageEnum): untyped = 45
template Burmese*(_: type QLocaleLanguageEnum): untyped = 46
template Cantonese*(_: type QLocaleLanguageEnum): untyped = 47
template Catalan*(_: type QLocaleLanguageEnum): untyped = 48
template Cebuano*(_: type QLocaleLanguageEnum): untyped = 49
template CentralAtlasTamazight*(_: type QLocaleLanguageEnum): untyped = 50
template CentralKurdish*(_: type QLocaleLanguageEnum): untyped = 51
template Chakma*(_: type QLocaleLanguageEnum): untyped = 52
template Chamorro*(_: type QLocaleLanguageEnum): untyped = 53
template Chechen*(_: type QLocaleLanguageEnum): untyped = 54
template Cherokee*(_: type QLocaleLanguageEnum): untyped = 55
template Chickasaw*(_: type QLocaleLanguageEnum): untyped = 56
template Chiga*(_: type QLocaleLanguageEnum): untyped = 57
template Chinese*(_: type QLocaleLanguageEnum): untyped = 58
template Church*(_: type QLocaleLanguageEnum): untyped = 59
template Chuvash*(_: type QLocaleLanguageEnum): untyped = 60
template Colognian*(_: type QLocaleLanguageEnum): untyped = 61
template Coptic*(_: type QLocaleLanguageEnum): untyped = 62
template Cornish*(_: type QLocaleLanguageEnum): untyped = 63
template Corsican*(_: type QLocaleLanguageEnum): untyped = 64
template Cree*(_: type QLocaleLanguageEnum): untyped = 65
template Croatian*(_: type QLocaleLanguageEnum): untyped = 66
template Czech*(_: type QLocaleLanguageEnum): untyped = 67
template Danish*(_: type QLocaleLanguageEnum): untyped = 68
template Divehi*(_: type QLocaleLanguageEnum): untyped = 69
template Dogri*(_: type QLocaleLanguageEnum): untyped = 70
template Duala*(_: type QLocaleLanguageEnum): untyped = 71
template Dutch*(_: type QLocaleLanguageEnum): untyped = 72
template Dzongkha*(_: type QLocaleLanguageEnum): untyped = 73
template Embu*(_: type QLocaleLanguageEnum): untyped = 74
template English*(_: type QLocaleLanguageEnum): untyped = 75
template Erzya*(_: type QLocaleLanguageEnum): untyped = 76
template Esperanto*(_: type QLocaleLanguageEnum): untyped = 77
template Estonian*(_: type QLocaleLanguageEnum): untyped = 78
template Ewe*(_: type QLocaleLanguageEnum): untyped = 79
template Ewondo*(_: type QLocaleLanguageEnum): untyped = 80
template Faroese*(_: type QLocaleLanguageEnum): untyped = 81
template Fijian*(_: type QLocaleLanguageEnum): untyped = 82
template Filipino*(_: type QLocaleLanguageEnum): untyped = 83
template Finnish*(_: type QLocaleLanguageEnum): untyped = 84
template French*(_: type QLocaleLanguageEnum): untyped = 85
template Friulian*(_: type QLocaleLanguageEnum): untyped = 86
template Fulah*(_: type QLocaleLanguageEnum): untyped = 87
template Gaelic*(_: type QLocaleLanguageEnum): untyped = 88
template Ga*(_: type QLocaleLanguageEnum): untyped = 89
template Galician*(_: type QLocaleLanguageEnum): untyped = 90
template Ganda*(_: type QLocaleLanguageEnum): untyped = 91
template Geez*(_: type QLocaleLanguageEnum): untyped = 92
template Georgian*(_: type QLocaleLanguageEnum): untyped = 93
template German*(_: type QLocaleLanguageEnum): untyped = 94
template Gothic*(_: type QLocaleLanguageEnum): untyped = 95
template Greek*(_: type QLocaleLanguageEnum): untyped = 96
template Guarani*(_: type QLocaleLanguageEnum): untyped = 97
template Gujarati*(_: type QLocaleLanguageEnum): untyped = 98
template Gusii*(_: type QLocaleLanguageEnum): untyped = 99
template Haitian*(_: type QLocaleLanguageEnum): untyped = 100
template Hausa*(_: type QLocaleLanguageEnum): untyped = 101
template Hawaiian*(_: type QLocaleLanguageEnum): untyped = 102
template Hebrew*(_: type QLocaleLanguageEnum): untyped = 103
template Herero*(_: type QLocaleLanguageEnum): untyped = 104
template Hindi*(_: type QLocaleLanguageEnum): untyped = 105
template HiriMotu*(_: type QLocaleLanguageEnum): untyped = 106
template Hungarian*(_: type QLocaleLanguageEnum): untyped = 107
template Icelandic*(_: type QLocaleLanguageEnum): untyped = 108
template Ido*(_: type QLocaleLanguageEnum): untyped = 109
template Igbo*(_: type QLocaleLanguageEnum): untyped = 110
template InariSami*(_: type QLocaleLanguageEnum): untyped = 111
template Indonesian*(_: type QLocaleLanguageEnum): untyped = 112
template Ingush*(_: type QLocaleLanguageEnum): untyped = 113
template Interlingua*(_: type QLocaleLanguageEnum): untyped = 114
template Interlingue*(_: type QLocaleLanguageEnum): untyped = 115
template Inuktitut*(_: type QLocaleLanguageEnum): untyped = 116
template Inupiaq*(_: type QLocaleLanguageEnum): untyped = 117
template Irish*(_: type QLocaleLanguageEnum): untyped = 118
template Italian*(_: type QLocaleLanguageEnum): untyped = 119
template Japanese*(_: type QLocaleLanguageEnum): untyped = 120
template Javanese*(_: type QLocaleLanguageEnum): untyped = 121
template Jju*(_: type QLocaleLanguageEnum): untyped = 122
template JolaFonyi*(_: type QLocaleLanguageEnum): untyped = 123
template Kabuverdianu*(_: type QLocaleLanguageEnum): untyped = 124
template Kabyle*(_: type QLocaleLanguageEnum): untyped = 125
template Kako*(_: type QLocaleLanguageEnum): untyped = 126
template Kalaallisut*(_: type QLocaleLanguageEnum): untyped = 127
template Kalenjin*(_: type QLocaleLanguageEnum): untyped = 128
template Kamba*(_: type QLocaleLanguageEnum): untyped = 129
template Kannada*(_: type QLocaleLanguageEnum): untyped = 130
template Kanuri*(_: type QLocaleLanguageEnum): untyped = 131
template Kashmiri*(_: type QLocaleLanguageEnum): untyped = 132
template Kazakh*(_: type QLocaleLanguageEnum): untyped = 133
template Kenyang*(_: type QLocaleLanguageEnum): untyped = 134
template Khmer*(_: type QLocaleLanguageEnum): untyped = 135
template Kiche*(_: type QLocaleLanguageEnum): untyped = 136
template Kikuyu*(_: type QLocaleLanguageEnum): untyped = 137
template Kinyarwanda*(_: type QLocaleLanguageEnum): untyped = 138
template Komi*(_: type QLocaleLanguageEnum): untyped = 139
template Kongo*(_: type QLocaleLanguageEnum): untyped = 140
template Konkani*(_: type QLocaleLanguageEnum): untyped = 141
template Korean*(_: type QLocaleLanguageEnum): untyped = 142
template Koro*(_: type QLocaleLanguageEnum): untyped = 143
template KoyraboroSenni*(_: type QLocaleLanguageEnum): untyped = 144
template KoyraChiini*(_: type QLocaleLanguageEnum): untyped = 145
template Kpelle*(_: type QLocaleLanguageEnum): untyped = 146
template Kuanyama*(_: type QLocaleLanguageEnum): untyped = 147
template Kurdish*(_: type QLocaleLanguageEnum): untyped = 148
template Kwasio*(_: type QLocaleLanguageEnum): untyped = 149
template Kyrgyz*(_: type QLocaleLanguageEnum): untyped = 150
template Lakota*(_: type QLocaleLanguageEnum): untyped = 151
template Langi*(_: type QLocaleLanguageEnum): untyped = 152
template Lao*(_: type QLocaleLanguageEnum): untyped = 153
template Latin*(_: type QLocaleLanguageEnum): untyped = 154
template Latvian*(_: type QLocaleLanguageEnum): untyped = 155
template Lezghian*(_: type QLocaleLanguageEnum): untyped = 156
template Limburgish*(_: type QLocaleLanguageEnum): untyped = 157
template Lingala*(_: type QLocaleLanguageEnum): untyped = 158
template LiteraryChinese*(_: type QLocaleLanguageEnum): untyped = 159
template Lithuanian*(_: type QLocaleLanguageEnum): untyped = 160
template Lojban*(_: type QLocaleLanguageEnum): untyped = 161
template LowerSorbian*(_: type QLocaleLanguageEnum): untyped = 162
template LowGerman*(_: type QLocaleLanguageEnum): untyped = 163
template LubaKatanga*(_: type QLocaleLanguageEnum): untyped = 164
template LuleSami*(_: type QLocaleLanguageEnum): untyped = 165
template Luo*(_: type QLocaleLanguageEnum): untyped = 166
template Luxembourgish*(_: type QLocaleLanguageEnum): untyped = 167
template Luyia*(_: type QLocaleLanguageEnum): untyped = 168
template Macedonian*(_: type QLocaleLanguageEnum): untyped = 169
template Machame*(_: type QLocaleLanguageEnum): untyped = 170
template Maithili*(_: type QLocaleLanguageEnum): untyped = 171
template MakhuwaMeetto*(_: type QLocaleLanguageEnum): untyped = 172
template Makonde*(_: type QLocaleLanguageEnum): untyped = 173
template Malagasy*(_: type QLocaleLanguageEnum): untyped = 174
template Malayalam*(_: type QLocaleLanguageEnum): untyped = 175
template Malay*(_: type QLocaleLanguageEnum): untyped = 176
template Maltese*(_: type QLocaleLanguageEnum): untyped = 177
template Mandingo*(_: type QLocaleLanguageEnum): untyped = 178
template Manipuri*(_: type QLocaleLanguageEnum): untyped = 179
template Manx*(_: type QLocaleLanguageEnum): untyped = 180
template Maori*(_: type QLocaleLanguageEnum): untyped = 181
template Mapuche*(_: type QLocaleLanguageEnum): untyped = 182
template Marathi*(_: type QLocaleLanguageEnum): untyped = 183
template Marshallese*(_: type QLocaleLanguageEnum): untyped = 184
template Masai*(_: type QLocaleLanguageEnum): untyped = 185
template Mazanderani*(_: type QLocaleLanguageEnum): untyped = 186
template Mende*(_: type QLocaleLanguageEnum): untyped = 187
template Meru*(_: type QLocaleLanguageEnum): untyped = 188
template Meta*(_: type QLocaleLanguageEnum): untyped = 189
template Mohawk*(_: type QLocaleLanguageEnum): untyped = 190
template Mongolian*(_: type QLocaleLanguageEnum): untyped = 191
template Morisyen*(_: type QLocaleLanguageEnum): untyped = 192
template Mundang*(_: type QLocaleLanguageEnum): untyped = 193
template Muscogee*(_: type QLocaleLanguageEnum): untyped = 194
template Nama*(_: type QLocaleLanguageEnum): untyped = 195
template NauruLanguage*(_: type QLocaleLanguageEnum): untyped = 196
template Navajo*(_: type QLocaleLanguageEnum): untyped = 197
template Ndonga*(_: type QLocaleLanguageEnum): untyped = 198
template Nepali*(_: type QLocaleLanguageEnum): untyped = 199
template Newari*(_: type QLocaleLanguageEnum): untyped = 200
template Ngiemboon*(_: type QLocaleLanguageEnum): untyped = 201
template Ngomba*(_: type QLocaleLanguageEnum): untyped = 202
template NigerianPidgin*(_: type QLocaleLanguageEnum): untyped = 203
template Nko*(_: type QLocaleLanguageEnum): untyped = 204
template NorthernLuri*(_: type QLocaleLanguageEnum): untyped = 205
template NorthernSami*(_: type QLocaleLanguageEnum): untyped = 206
template NorthernSotho*(_: type QLocaleLanguageEnum): untyped = 207
template NorthNdebele*(_: type QLocaleLanguageEnum): untyped = 208
template NorwegianBokmal*(_: type QLocaleLanguageEnum): untyped = 209
template NorwegianNynorsk*(_: type QLocaleLanguageEnum): untyped = 210
template Nuer*(_: type QLocaleLanguageEnum): untyped = 211
template Nyanja*(_: type QLocaleLanguageEnum): untyped = 212
template Nyankole*(_: type QLocaleLanguageEnum): untyped = 213
template Occitan*(_: type QLocaleLanguageEnum): untyped = 214
template Odia*(_: type QLocaleLanguageEnum): untyped = 215
template Ojibwa*(_: type QLocaleLanguageEnum): untyped = 216
template OldIrish*(_: type QLocaleLanguageEnum): untyped = 217
template OldNorse*(_: type QLocaleLanguageEnum): untyped = 218
template OldPersian*(_: type QLocaleLanguageEnum): untyped = 219
template Oromo*(_: type QLocaleLanguageEnum): untyped = 220
template Osage*(_: type QLocaleLanguageEnum): untyped = 221
template Ossetic*(_: type QLocaleLanguageEnum): untyped = 222
template Pahlavi*(_: type QLocaleLanguageEnum): untyped = 223
template Palauan*(_: type QLocaleLanguageEnum): untyped = 224
template Pali*(_: type QLocaleLanguageEnum): untyped = 225
template Papiamento*(_: type QLocaleLanguageEnum): untyped = 226
template Pashto*(_: type QLocaleLanguageEnum): untyped = 227
template Persian*(_: type QLocaleLanguageEnum): untyped = 228
template Phoenician*(_: type QLocaleLanguageEnum): untyped = 229
template Polish*(_: type QLocaleLanguageEnum): untyped = 230
template Portuguese*(_: type QLocaleLanguageEnum): untyped = 231
template Prussian*(_: type QLocaleLanguageEnum): untyped = 232
template Punjabi*(_: type QLocaleLanguageEnum): untyped = 233
template Quechua*(_: type QLocaleLanguageEnum): untyped = 234
template Romanian*(_: type QLocaleLanguageEnum): untyped = 235
template Romansh*(_: type QLocaleLanguageEnum): untyped = 236
template Rombo*(_: type QLocaleLanguageEnum): untyped = 237
template Rundi*(_: type QLocaleLanguageEnum): untyped = 238
template Russian*(_: type QLocaleLanguageEnum): untyped = 239
template Rwa*(_: type QLocaleLanguageEnum): untyped = 240
template Saho*(_: type QLocaleLanguageEnum): untyped = 241
template Sakha*(_: type QLocaleLanguageEnum): untyped = 242
template Samburu*(_: type QLocaleLanguageEnum): untyped = 243
template Samoan*(_: type QLocaleLanguageEnum): untyped = 244
template Sango*(_: type QLocaleLanguageEnum): untyped = 245
template Sangu*(_: type QLocaleLanguageEnum): untyped = 246
template Sanskrit*(_: type QLocaleLanguageEnum): untyped = 247
template Santali*(_: type QLocaleLanguageEnum): untyped = 248
template Sardinian*(_: type QLocaleLanguageEnum): untyped = 249
template Saurashtra*(_: type QLocaleLanguageEnum): untyped = 250
template Sena*(_: type QLocaleLanguageEnum): untyped = 251
template Serbian*(_: type QLocaleLanguageEnum): untyped = 252
template Shambala*(_: type QLocaleLanguageEnum): untyped = 253
template Shona*(_: type QLocaleLanguageEnum): untyped = 254
template SichuanYi*(_: type QLocaleLanguageEnum): untyped = 255
template Sicilian*(_: type QLocaleLanguageEnum): untyped = 256
template Sidamo*(_: type QLocaleLanguageEnum): untyped = 257
template Silesian*(_: type QLocaleLanguageEnum): untyped = 258
template Sindhi*(_: type QLocaleLanguageEnum): untyped = 259
template Sinhala*(_: type QLocaleLanguageEnum): untyped = 260
template SkoltSami*(_: type QLocaleLanguageEnum): untyped = 261
template Slovak*(_: type QLocaleLanguageEnum): untyped = 262
template Slovenian*(_: type QLocaleLanguageEnum): untyped = 263
template Soga*(_: type QLocaleLanguageEnum): untyped = 264
template Somali*(_: type QLocaleLanguageEnum): untyped = 265
template SouthernKurdish*(_: type QLocaleLanguageEnum): untyped = 266
template SouthernSami*(_: type QLocaleLanguageEnum): untyped = 267
template SouthernSotho*(_: type QLocaleLanguageEnum): untyped = 268
template SouthNdebele*(_: type QLocaleLanguageEnum): untyped = 269
template Spanish*(_: type QLocaleLanguageEnum): untyped = 270
template StandardMoroccanTamazight*(_: type QLocaleLanguageEnum): untyped = 271
template Sundanese*(_: type QLocaleLanguageEnum): untyped = 272
template Swahili*(_: type QLocaleLanguageEnum): untyped = 273
template Swati*(_: type QLocaleLanguageEnum): untyped = 274
template Swedish*(_: type QLocaleLanguageEnum): untyped = 275
template SwissGerman*(_: type QLocaleLanguageEnum): untyped = 276
template Syriac*(_: type QLocaleLanguageEnum): untyped = 277
template Tachelhit*(_: type QLocaleLanguageEnum): untyped = 278
template Tahitian*(_: type QLocaleLanguageEnum): untyped = 279
template TaiDam*(_: type QLocaleLanguageEnum): untyped = 280
template Taita*(_: type QLocaleLanguageEnum): untyped = 281
template Tajik*(_: type QLocaleLanguageEnum): untyped = 282
template Tamil*(_: type QLocaleLanguageEnum): untyped = 283
template Taroko*(_: type QLocaleLanguageEnum): untyped = 284
template Tasawaq*(_: type QLocaleLanguageEnum): untyped = 285
template Tatar*(_: type QLocaleLanguageEnum): untyped = 286
template Telugu*(_: type QLocaleLanguageEnum): untyped = 287
template Teso*(_: type QLocaleLanguageEnum): untyped = 288
template Thai*(_: type QLocaleLanguageEnum): untyped = 289
template Tibetan*(_: type QLocaleLanguageEnum): untyped = 290
template Tigre*(_: type QLocaleLanguageEnum): untyped = 291
template Tigrinya*(_: type QLocaleLanguageEnum): untyped = 292
template TokelauLanguage*(_: type QLocaleLanguageEnum): untyped = 293
template TokPisin*(_: type QLocaleLanguageEnum): untyped = 294
template Tongan*(_: type QLocaleLanguageEnum): untyped = 295
template Tsonga*(_: type QLocaleLanguageEnum): untyped = 296
template Tswana*(_: type QLocaleLanguageEnum): untyped = 297
template Turkish*(_: type QLocaleLanguageEnum): untyped = 298
template Turkmen*(_: type QLocaleLanguageEnum): untyped = 299
template TuvaluLanguage*(_: type QLocaleLanguageEnum): untyped = 300
template Tyap*(_: type QLocaleLanguageEnum): untyped = 301
template Ugaritic*(_: type QLocaleLanguageEnum): untyped = 302
template Ukrainian*(_: type QLocaleLanguageEnum): untyped = 303
template UpperSorbian*(_: type QLocaleLanguageEnum): untyped = 304
template Urdu*(_: type QLocaleLanguageEnum): untyped = 305
template Uyghur*(_: type QLocaleLanguageEnum): untyped = 306
template Uzbek*(_: type QLocaleLanguageEnum): untyped = 307
template Vai*(_: type QLocaleLanguageEnum): untyped = 308
template Venda*(_: type QLocaleLanguageEnum): untyped = 309
template Vietnamese*(_: type QLocaleLanguageEnum): untyped = 310
template Volapuk*(_: type QLocaleLanguageEnum): untyped = 311
template Vunjo*(_: type QLocaleLanguageEnum): untyped = 312
template Walloon*(_: type QLocaleLanguageEnum): untyped = 313
template Walser*(_: type QLocaleLanguageEnum): untyped = 314
template Warlpiri*(_: type QLocaleLanguageEnum): untyped = 315
template Welsh*(_: type QLocaleLanguageEnum): untyped = 316
template WesternBalochi*(_: type QLocaleLanguageEnum): untyped = 317
template WesternFrisian*(_: type QLocaleLanguageEnum): untyped = 318
template Wolaytta*(_: type QLocaleLanguageEnum): untyped = 319
template Wolof*(_: type QLocaleLanguageEnum): untyped = 320
template Xhosa*(_: type QLocaleLanguageEnum): untyped = 321
template Yangben*(_: type QLocaleLanguageEnum): untyped = 322
template Yiddish*(_: type QLocaleLanguageEnum): untyped = 323
template Yoruba*(_: type QLocaleLanguageEnum): untyped = 324
template Zarma*(_: type QLocaleLanguageEnum): untyped = 325
template Zhuang*(_: type QLocaleLanguageEnum): untyped = 326
template Zulu*(_: type QLocaleLanguageEnum): untyped = 327
template Kaingang*(_: type QLocaleLanguageEnum): untyped = 328
template Nheengatu*(_: type QLocaleLanguageEnum): untyped = 329
template Haryanvi*(_: type QLocaleLanguageEnum): untyped = 330
template NorthernFrisian*(_: type QLocaleLanguageEnum): untyped = 331
template Rajasthani*(_: type QLocaleLanguageEnum): untyped = 332
template Moksha*(_: type QLocaleLanguageEnum): untyped = 333
template TokiPona*(_: type QLocaleLanguageEnum): untyped = 334
template Pijin*(_: type QLocaleLanguageEnum): untyped = 335
template Obolo*(_: type QLocaleLanguageEnum): untyped = 336
template Baluchi*(_: type QLocaleLanguageEnum): untyped = 337
template Ligurian*(_: type QLocaleLanguageEnum): untyped = 338
template Rohingya*(_: type QLocaleLanguageEnum): untyped = 339
template Torwali*(_: type QLocaleLanguageEnum): untyped = 340
template Anii*(_: type QLocaleLanguageEnum): untyped = 341
template Kangri*(_: type QLocaleLanguageEnum): untyped = 342
template Venetian*(_: type QLocaleLanguageEnum): untyped = 343
template Kuvi*(_: type QLocaleLanguageEnum): untyped = 344
template KaraKalpak*(_: type QLocaleLanguageEnum): untyped = 345
template SwampyCree*(_: type QLocaleLanguageEnum): untyped = 346
template Ladin*(_: type QLocaleLanguageEnum): untyped = 347
template Shan*(_: type QLocaleLanguageEnum): untyped = 348
template Afan*(_: type QLocaleLanguageEnum): untyped = 220
template Bengali*(_: type QLocaleLanguageEnum): untyped = 30
template Bhutani*(_: type QLocaleLanguageEnum): untyped = 73
template Byelorussian*(_: type QLocaleLanguageEnum): untyped = 35
template Cambodian*(_: type QLocaleLanguageEnum): untyped = 135
template CentralMoroccoTamazight*(_: type QLocaleLanguageEnum): untyped = 50
template Chewa*(_: type QLocaleLanguageEnum): untyped = 212
template Frisian*(_: type QLocaleLanguageEnum): untyped = 318
template Greenlandic*(_: type QLocaleLanguageEnum): untyped = 127
template Inupiak*(_: type QLocaleLanguageEnum): untyped = 117
template Kirghiz*(_: type QLocaleLanguageEnum): untyped = 150
template Kurundi*(_: type QLocaleLanguageEnum): untyped = 238
template Kwanyama*(_: type QLocaleLanguageEnum): untyped = 147
template Navaho*(_: type QLocaleLanguageEnum): untyped = 197
template Oriya*(_: type QLocaleLanguageEnum): untyped = 215
template RhaetoRomance*(_: type QLocaleLanguageEnum): untyped = 236
template Uighur*(_: type QLocaleLanguageEnum): untyped = 306
template Uigur*(_: type QLocaleLanguageEnum): untyped = 306
template Walamo*(_: type QLocaleLanguageEnum): untyped = 319
template LastLanguage*(_: type QLocaleLanguageEnum): untyped = 348


type QLocaleScriptEnum* = distinct cushort
template AnyScript*(_: type QLocaleScriptEnum): untyped = 0
template AdlamScript*(_: type QLocaleScriptEnum): untyped = 1
template AhomScript*(_: type QLocaleScriptEnum): untyped = 2
template AnatolianHieroglyphsScript*(_: type QLocaleScriptEnum): untyped = 3
template ArabicScript*(_: type QLocaleScriptEnum): untyped = 4
template ArmenianScript*(_: type QLocaleScriptEnum): untyped = 5
template AvestanScript*(_: type QLocaleScriptEnum): untyped = 6
template BalineseScript*(_: type QLocaleScriptEnum): untyped = 7
template BamumScript*(_: type QLocaleScriptEnum): untyped = 8
template BanglaScript*(_: type QLocaleScriptEnum): untyped = 9
template BassaVahScript*(_: type QLocaleScriptEnum): untyped = 10
template BatakScript*(_: type QLocaleScriptEnum): untyped = 11
template BhaiksukiScript*(_: type QLocaleScriptEnum): untyped = 12
template BopomofoScript*(_: type QLocaleScriptEnum): untyped = 13
template BrahmiScript*(_: type QLocaleScriptEnum): untyped = 14
template BrailleScript*(_: type QLocaleScriptEnum): untyped = 15
template BugineseScript*(_: type QLocaleScriptEnum): untyped = 16
template BuhidScript*(_: type QLocaleScriptEnum): untyped = 17
template CanadianAboriginalScript*(_: type QLocaleScriptEnum): untyped = 18
template CarianScript*(_: type QLocaleScriptEnum): untyped = 19
template CaucasianAlbanianScript*(_: type QLocaleScriptEnum): untyped = 20
template ChakmaScript*(_: type QLocaleScriptEnum): untyped = 21
template ChamScript*(_: type QLocaleScriptEnum): untyped = 22
template CherokeeScript*(_: type QLocaleScriptEnum): untyped = 23
template CopticScript*(_: type QLocaleScriptEnum): untyped = 24
template CuneiformScript*(_: type QLocaleScriptEnum): untyped = 25
template CypriotScript*(_: type QLocaleScriptEnum): untyped = 26
template CyrillicScript*(_: type QLocaleScriptEnum): untyped = 27
template DeseretScript*(_: type QLocaleScriptEnum): untyped = 28
template DevanagariScript*(_: type QLocaleScriptEnum): untyped = 29
template DuployanScript*(_: type QLocaleScriptEnum): untyped = 30
template EgyptianHieroglyphsScript*(_: type QLocaleScriptEnum): untyped = 31
template ElbasanScript*(_: type QLocaleScriptEnum): untyped = 32
template EthiopicScript*(_: type QLocaleScriptEnum): untyped = 33
template FraserScript*(_: type QLocaleScriptEnum): untyped = 34
template GeorgianScript*(_: type QLocaleScriptEnum): untyped = 35
template GlagoliticScript*(_: type QLocaleScriptEnum): untyped = 36
template GothicScript*(_: type QLocaleScriptEnum): untyped = 37
template GranthaScript*(_: type QLocaleScriptEnum): untyped = 38
template GreekScript*(_: type QLocaleScriptEnum): untyped = 39
template GujaratiScript*(_: type QLocaleScriptEnum): untyped = 40
template GurmukhiScript*(_: type QLocaleScriptEnum): untyped = 41
template HangulScript*(_: type QLocaleScriptEnum): untyped = 42
template HanScript*(_: type QLocaleScriptEnum): untyped = 43
template HanunooScript*(_: type QLocaleScriptEnum): untyped = 44
template HanWithBopomofoScript*(_: type QLocaleScriptEnum): untyped = 45
template HatranScript*(_: type QLocaleScriptEnum): untyped = 46
template HebrewScript*(_: type QLocaleScriptEnum): untyped = 47
template HiraganaScript*(_: type QLocaleScriptEnum): untyped = 48
template ImperialAramaicScript*(_: type QLocaleScriptEnum): untyped = 49
template InscriptionalPahlaviScript*(_: type QLocaleScriptEnum): untyped = 50
template InscriptionalParthianScript*(_: type QLocaleScriptEnum): untyped = 51
template JamoScript*(_: type QLocaleScriptEnum): untyped = 52
template JapaneseScript*(_: type QLocaleScriptEnum): untyped = 53
template JavaneseScript*(_: type QLocaleScriptEnum): untyped = 54
template KaithiScript*(_: type QLocaleScriptEnum): untyped = 55
template KannadaScript*(_: type QLocaleScriptEnum): untyped = 56
template KatakanaScript*(_: type QLocaleScriptEnum): untyped = 57
template KayahLiScript*(_: type QLocaleScriptEnum): untyped = 58
template KharoshthiScript*(_: type QLocaleScriptEnum): untyped = 59
template KhmerScript*(_: type QLocaleScriptEnum): untyped = 60
template KhojkiScript*(_: type QLocaleScriptEnum): untyped = 61
template KhudawadiScript*(_: type QLocaleScriptEnum): untyped = 62
template KoreanScript*(_: type QLocaleScriptEnum): untyped = 63
template LannaScript*(_: type QLocaleScriptEnum): untyped = 64
template LaoScript*(_: type QLocaleScriptEnum): untyped = 65
template LatinScript*(_: type QLocaleScriptEnum): untyped = 66
template LepchaScript*(_: type QLocaleScriptEnum): untyped = 67
template LimbuScript*(_: type QLocaleScriptEnum): untyped = 68
template LinearAScript*(_: type QLocaleScriptEnum): untyped = 69
template LinearBScript*(_: type QLocaleScriptEnum): untyped = 70
template LycianScript*(_: type QLocaleScriptEnum): untyped = 71
template LydianScript*(_: type QLocaleScriptEnum): untyped = 72
template MahajaniScript*(_: type QLocaleScriptEnum): untyped = 73
template MalayalamScript*(_: type QLocaleScriptEnum): untyped = 74
template MandaeanScript*(_: type QLocaleScriptEnum): untyped = 75
template ManichaeanScript*(_: type QLocaleScriptEnum): untyped = 76
template MarchenScript*(_: type QLocaleScriptEnum): untyped = 77
template MeiteiMayekScript*(_: type QLocaleScriptEnum): untyped = 78
template MendeScript*(_: type QLocaleScriptEnum): untyped = 79
template MeroiticCursiveScript*(_: type QLocaleScriptEnum): untyped = 80
template MeroiticScript*(_: type QLocaleScriptEnum): untyped = 81
template ModiScript*(_: type QLocaleScriptEnum): untyped = 82
template MongolianScript*(_: type QLocaleScriptEnum): untyped = 83
template MroScript*(_: type QLocaleScriptEnum): untyped = 84
template MultaniScript*(_: type QLocaleScriptEnum): untyped = 85
template MyanmarScript*(_: type QLocaleScriptEnum): untyped = 86
template NabataeanScript*(_: type QLocaleScriptEnum): untyped = 87
template NewaScript*(_: type QLocaleScriptEnum): untyped = 88
template NewTaiLueScript*(_: type QLocaleScriptEnum): untyped = 89
template NkoScript*(_: type QLocaleScriptEnum): untyped = 90
template OdiaScript*(_: type QLocaleScriptEnum): untyped = 91
template OghamScript*(_: type QLocaleScriptEnum): untyped = 92
template OlChikiScript*(_: type QLocaleScriptEnum): untyped = 93
template OldHungarianScript*(_: type QLocaleScriptEnum): untyped = 94
template OldItalicScript*(_: type QLocaleScriptEnum): untyped = 95
template OldNorthArabianScript*(_: type QLocaleScriptEnum): untyped = 96
template OldPermicScript*(_: type QLocaleScriptEnum): untyped = 97
template OldPersianScript*(_: type QLocaleScriptEnum): untyped = 98
template OldSouthArabianScript*(_: type QLocaleScriptEnum): untyped = 99
template OrkhonScript*(_: type QLocaleScriptEnum): untyped = 100
template OsageScript*(_: type QLocaleScriptEnum): untyped = 101
template OsmanyaScript*(_: type QLocaleScriptEnum): untyped = 102
template PahawhHmongScript*(_: type QLocaleScriptEnum): untyped = 103
template PalmyreneScript*(_: type QLocaleScriptEnum): untyped = 104
template PauCinHauScript*(_: type QLocaleScriptEnum): untyped = 105
template PhagsPaScript*(_: type QLocaleScriptEnum): untyped = 106
template PhoenicianScript*(_: type QLocaleScriptEnum): untyped = 107
template PollardPhoneticScript*(_: type QLocaleScriptEnum): untyped = 108
template PsalterPahlaviScript*(_: type QLocaleScriptEnum): untyped = 109
template RejangScript*(_: type QLocaleScriptEnum): untyped = 110
template RunicScript*(_: type QLocaleScriptEnum): untyped = 111
template SamaritanScript*(_: type QLocaleScriptEnum): untyped = 112
template SaurashtraScript*(_: type QLocaleScriptEnum): untyped = 113
template SharadaScript*(_: type QLocaleScriptEnum): untyped = 114
template ShavianScript*(_: type QLocaleScriptEnum): untyped = 115
template SiddhamScript*(_: type QLocaleScriptEnum): untyped = 116
template SignWritingScript*(_: type QLocaleScriptEnum): untyped = 117
template SimplifiedHanScript*(_: type QLocaleScriptEnum): untyped = 118
template SinhalaScript*(_: type QLocaleScriptEnum): untyped = 119
template SoraSompengScript*(_: type QLocaleScriptEnum): untyped = 120
template SundaneseScript*(_: type QLocaleScriptEnum): untyped = 121
template SylotiNagriScript*(_: type QLocaleScriptEnum): untyped = 122
template SyriacScript*(_: type QLocaleScriptEnum): untyped = 123
template TagalogScript*(_: type QLocaleScriptEnum): untyped = 124
template TagbanwaScript*(_: type QLocaleScriptEnum): untyped = 125
template TaiLeScript*(_: type QLocaleScriptEnum): untyped = 126
template TaiVietScript*(_: type QLocaleScriptEnum): untyped = 127
template TakriScript*(_: type QLocaleScriptEnum): untyped = 128
template TamilScript*(_: type QLocaleScriptEnum): untyped = 129
template TangutScript*(_: type QLocaleScriptEnum): untyped = 130
template TeluguScript*(_: type QLocaleScriptEnum): untyped = 131
template ThaanaScript*(_: type QLocaleScriptEnum): untyped = 132
template ThaiScript*(_: type QLocaleScriptEnum): untyped = 133
template TibetanScript*(_: type QLocaleScriptEnum): untyped = 134
template TifinaghScript*(_: type QLocaleScriptEnum): untyped = 135
template TirhutaScript*(_: type QLocaleScriptEnum): untyped = 136
template TraditionalHanScript*(_: type QLocaleScriptEnum): untyped = 137
template UgariticScript*(_: type QLocaleScriptEnum): untyped = 138
template VaiScript*(_: type QLocaleScriptEnum): untyped = 139
template VarangKshitiScript*(_: type QLocaleScriptEnum): untyped = 140
template YiScript*(_: type QLocaleScriptEnum): untyped = 141
template HanifiScript*(_: type QLocaleScriptEnum): untyped = 142
template BengaliScript*(_: type QLocaleScriptEnum): untyped = 9
template MendeKikakuiScript*(_: type QLocaleScriptEnum): untyped = 79
template OriyaScript*(_: type QLocaleScriptEnum): untyped = 91
template SimplifiedChineseScript*(_: type QLocaleScriptEnum): untyped = 118
template TraditionalChineseScript*(_: type QLocaleScriptEnum): untyped = 137
template LastScript*(_: type QLocaleScriptEnum): untyped = 142


type QLocaleCountryEnum* = distinct cushort
template AnyTerritory*(_: type QLocaleCountryEnum): untyped = 0
template Afghanistan*(_: type QLocaleCountryEnum): untyped = 1
template AlandIslands*(_: type QLocaleCountryEnum): untyped = 2
template Albania*(_: type QLocaleCountryEnum): untyped = 3
template Algeria*(_: type QLocaleCountryEnum): untyped = 4
template AmericanSamoa*(_: type QLocaleCountryEnum): untyped = 5
template Andorra*(_: type QLocaleCountryEnum): untyped = 6
template Angola*(_: type QLocaleCountryEnum): untyped = 7
template Anguilla*(_: type QLocaleCountryEnum): untyped = 8
template Antarctica*(_: type QLocaleCountryEnum): untyped = 9
template AntiguaAndBarbuda*(_: type QLocaleCountryEnum): untyped = 10
template Argentina*(_: type QLocaleCountryEnum): untyped = 11
template Armenia*(_: type QLocaleCountryEnum): untyped = 12
template Aruba*(_: type QLocaleCountryEnum): untyped = 13
template AscensionIsland*(_: type QLocaleCountryEnum): untyped = 14
template Australia*(_: type QLocaleCountryEnum): untyped = 15
template Austria*(_: type QLocaleCountryEnum): untyped = 16
template Azerbaijan*(_: type QLocaleCountryEnum): untyped = 17
template Bahamas*(_: type QLocaleCountryEnum): untyped = 18
template Bahrain*(_: type QLocaleCountryEnum): untyped = 19
template Bangladesh*(_: type QLocaleCountryEnum): untyped = 20
template Barbados*(_: type QLocaleCountryEnum): untyped = 21
template Belarus*(_: type QLocaleCountryEnum): untyped = 22
template Belgium*(_: type QLocaleCountryEnum): untyped = 23
template Belize*(_: type QLocaleCountryEnum): untyped = 24
template Benin*(_: type QLocaleCountryEnum): untyped = 25
template Bermuda*(_: type QLocaleCountryEnum): untyped = 26
template Bhutan*(_: type QLocaleCountryEnum): untyped = 27
template Bolivia*(_: type QLocaleCountryEnum): untyped = 28
template BosniaAndHerzegovina*(_: type QLocaleCountryEnum): untyped = 29
template Botswana*(_: type QLocaleCountryEnum): untyped = 30
template BouvetIsland*(_: type QLocaleCountryEnum): untyped = 31
template Brazil*(_: type QLocaleCountryEnum): untyped = 32
template BritishIndianOceanTerritory*(_: type QLocaleCountryEnum): untyped = 33
template BritishVirginIslands*(_: type QLocaleCountryEnum): untyped = 34
template Brunei*(_: type QLocaleCountryEnum): untyped = 35
template Bulgaria*(_: type QLocaleCountryEnum): untyped = 36
template BurkinaFaso*(_: type QLocaleCountryEnum): untyped = 37
template Burundi*(_: type QLocaleCountryEnum): untyped = 38
template Cambodia*(_: type QLocaleCountryEnum): untyped = 39
template Cameroon*(_: type QLocaleCountryEnum): untyped = 40
template Canada*(_: type QLocaleCountryEnum): untyped = 41
template CanaryIslands*(_: type QLocaleCountryEnum): untyped = 42
template CapeVerde*(_: type QLocaleCountryEnum): untyped = 43
template CaribbeanNetherlands*(_: type QLocaleCountryEnum): untyped = 44
template CaymanIslands*(_: type QLocaleCountryEnum): untyped = 45
template CentralAfricanRepublic*(_: type QLocaleCountryEnum): untyped = 46
template CeutaAndMelilla*(_: type QLocaleCountryEnum): untyped = 47
template Chad*(_: type QLocaleCountryEnum): untyped = 48
template Chile*(_: type QLocaleCountryEnum): untyped = 49
template China*(_: type QLocaleCountryEnum): untyped = 50
template ChristmasIsland*(_: type QLocaleCountryEnum): untyped = 51
template ClippertonIsland*(_: type QLocaleCountryEnum): untyped = 52
template CocosIslands*(_: type QLocaleCountryEnum): untyped = 53
template Colombia*(_: type QLocaleCountryEnum): untyped = 54
template Comoros*(_: type QLocaleCountryEnum): untyped = 55
template CongoBrazzaville*(_: type QLocaleCountryEnum): untyped = 56
template CongoKinshasa*(_: type QLocaleCountryEnum): untyped = 57
template CookIslands*(_: type QLocaleCountryEnum): untyped = 58
template CostaRica*(_: type QLocaleCountryEnum): untyped = 59
template Croatia*(_: type QLocaleCountryEnum): untyped = 60
template Cuba*(_: type QLocaleCountryEnum): untyped = 61
template Curacao*(_: type QLocaleCountryEnum): untyped = 62
template Cyprus*(_: type QLocaleCountryEnum): untyped = 63
template Czechia*(_: type QLocaleCountryEnum): untyped = 64
template Denmark*(_: type QLocaleCountryEnum): untyped = 65
template DiegoGarcia*(_: type QLocaleCountryEnum): untyped = 66
template Djibouti*(_: type QLocaleCountryEnum): untyped = 67
template Dominica*(_: type QLocaleCountryEnum): untyped = 68
template DominicanRepublic*(_: type QLocaleCountryEnum): untyped = 69
template Ecuador*(_: type QLocaleCountryEnum): untyped = 70
template Egypt*(_: type QLocaleCountryEnum): untyped = 71
template ElSalvador*(_: type QLocaleCountryEnum): untyped = 72
template EquatorialGuinea*(_: type QLocaleCountryEnum): untyped = 73
template Eritrea*(_: type QLocaleCountryEnum): untyped = 74
template Estonia*(_: type QLocaleCountryEnum): untyped = 75
template Eswatini*(_: type QLocaleCountryEnum): untyped = 76
template Ethiopia*(_: type QLocaleCountryEnum): untyped = 77
template Europe*(_: type QLocaleCountryEnum): untyped = 78
template EuropeanUnion*(_: type QLocaleCountryEnum): untyped = 79
template FalklandIslands*(_: type QLocaleCountryEnum): untyped = 80
template FaroeIslands*(_: type QLocaleCountryEnum): untyped = 81
template Fiji*(_: type QLocaleCountryEnum): untyped = 82
template Finland*(_: type QLocaleCountryEnum): untyped = 83
template France*(_: type QLocaleCountryEnum): untyped = 84
template FrenchGuiana*(_: type QLocaleCountryEnum): untyped = 85
template FrenchPolynesia*(_: type QLocaleCountryEnum): untyped = 86
template FrenchSouthernTerritories*(_: type QLocaleCountryEnum): untyped = 87
template Gabon*(_: type QLocaleCountryEnum): untyped = 88
template Gambia*(_: type QLocaleCountryEnum): untyped = 89
template Georgia*(_: type QLocaleCountryEnum): untyped = 90
template Germany*(_: type QLocaleCountryEnum): untyped = 91
template Ghana*(_: type QLocaleCountryEnum): untyped = 92
template Gibraltar*(_: type QLocaleCountryEnum): untyped = 93
template Greece*(_: type QLocaleCountryEnum): untyped = 94
template Greenland*(_: type QLocaleCountryEnum): untyped = 95
template Grenada*(_: type QLocaleCountryEnum): untyped = 96
template Guadeloupe*(_: type QLocaleCountryEnum): untyped = 97
template Guam*(_: type QLocaleCountryEnum): untyped = 98
template Guatemala*(_: type QLocaleCountryEnum): untyped = 99
template Guernsey*(_: type QLocaleCountryEnum): untyped = 100
template GuineaBissau*(_: type QLocaleCountryEnum): untyped = 101
template Guinea*(_: type QLocaleCountryEnum): untyped = 102
template Guyana*(_: type QLocaleCountryEnum): untyped = 103
template Haiti*(_: type QLocaleCountryEnum): untyped = 104
template HeardAndMcDonaldIslands*(_: type QLocaleCountryEnum): untyped = 105
template Honduras*(_: type QLocaleCountryEnum): untyped = 106
template HongKong*(_: type QLocaleCountryEnum): untyped = 107
template Hungary*(_: type QLocaleCountryEnum): untyped = 108
template Iceland*(_: type QLocaleCountryEnum): untyped = 109
template India*(_: type QLocaleCountryEnum): untyped = 110
template Indonesia*(_: type QLocaleCountryEnum): untyped = 111
template Iran*(_: type QLocaleCountryEnum): untyped = 112
template Iraq*(_: type QLocaleCountryEnum): untyped = 113
template Ireland*(_: type QLocaleCountryEnum): untyped = 114
template IsleOfMan*(_: type QLocaleCountryEnum): untyped = 115
template Israel*(_: type QLocaleCountryEnum): untyped = 116
template Italy*(_: type QLocaleCountryEnum): untyped = 117
template IvoryCoast*(_: type QLocaleCountryEnum): untyped = 118
template Jamaica*(_: type QLocaleCountryEnum): untyped = 119
template Japan*(_: type QLocaleCountryEnum): untyped = 120
template Jersey*(_: type QLocaleCountryEnum): untyped = 121
template Jordan*(_: type QLocaleCountryEnum): untyped = 122
template Kazakhstan*(_: type QLocaleCountryEnum): untyped = 123
template Kenya*(_: type QLocaleCountryEnum): untyped = 124
template Kiribati*(_: type QLocaleCountryEnum): untyped = 125
template Kosovo*(_: type QLocaleCountryEnum): untyped = 126
template Kuwait*(_: type QLocaleCountryEnum): untyped = 127
template Kyrgyzstan*(_: type QLocaleCountryEnum): untyped = 128
template Laos*(_: type QLocaleCountryEnum): untyped = 129
template LatinAmerica*(_: type QLocaleCountryEnum): untyped = 130
template Latvia*(_: type QLocaleCountryEnum): untyped = 131
template Lebanon*(_: type QLocaleCountryEnum): untyped = 132
template Lesotho*(_: type QLocaleCountryEnum): untyped = 133
template Liberia*(_: type QLocaleCountryEnum): untyped = 134
template Libya*(_: type QLocaleCountryEnum): untyped = 135
template Liechtenstein*(_: type QLocaleCountryEnum): untyped = 136
template Lithuania*(_: type QLocaleCountryEnum): untyped = 137
template Luxembourg*(_: type QLocaleCountryEnum): untyped = 138
template Macao*(_: type QLocaleCountryEnum): untyped = 139
template Macedonia*(_: type QLocaleCountryEnum): untyped = 140
template Madagascar*(_: type QLocaleCountryEnum): untyped = 141
template Malawi*(_: type QLocaleCountryEnum): untyped = 142
template Malaysia*(_: type QLocaleCountryEnum): untyped = 143
template Maldives*(_: type QLocaleCountryEnum): untyped = 144
template Mali*(_: type QLocaleCountryEnum): untyped = 145
template Malta*(_: type QLocaleCountryEnum): untyped = 146
template MarshallIslands*(_: type QLocaleCountryEnum): untyped = 147
template Martinique*(_: type QLocaleCountryEnum): untyped = 148
template Mauritania*(_: type QLocaleCountryEnum): untyped = 149
template Mauritius*(_: type QLocaleCountryEnum): untyped = 150
template Mayotte*(_: type QLocaleCountryEnum): untyped = 151
template Mexico*(_: type QLocaleCountryEnum): untyped = 152
template Micronesia*(_: type QLocaleCountryEnum): untyped = 153
template Moldova*(_: type QLocaleCountryEnum): untyped = 154
template Monaco*(_: type QLocaleCountryEnum): untyped = 155
template Mongolia*(_: type QLocaleCountryEnum): untyped = 156
template Montenegro*(_: type QLocaleCountryEnum): untyped = 157
template Montserrat*(_: type QLocaleCountryEnum): untyped = 158
template Morocco*(_: type QLocaleCountryEnum): untyped = 159
template Mozambique*(_: type QLocaleCountryEnum): untyped = 160
template Myanmar*(_: type QLocaleCountryEnum): untyped = 161
template Namibia*(_: type QLocaleCountryEnum): untyped = 162
template NauruTerritory*(_: type QLocaleCountryEnum): untyped = 163
template Nepal*(_: type QLocaleCountryEnum): untyped = 164
template Netherlands*(_: type QLocaleCountryEnum): untyped = 165
template NewCaledonia*(_: type QLocaleCountryEnum): untyped = 166
template NewZealand*(_: type QLocaleCountryEnum): untyped = 167
template Nicaragua*(_: type QLocaleCountryEnum): untyped = 168
template Nigeria*(_: type QLocaleCountryEnum): untyped = 169
template Niger*(_: type QLocaleCountryEnum): untyped = 170
template Niue*(_: type QLocaleCountryEnum): untyped = 171
template NorfolkIsland*(_: type QLocaleCountryEnum): untyped = 172
template NorthernMarianaIslands*(_: type QLocaleCountryEnum): untyped = 173
template NorthKorea*(_: type QLocaleCountryEnum): untyped = 174
template Norway*(_: type QLocaleCountryEnum): untyped = 175
template Oman*(_: type QLocaleCountryEnum): untyped = 176
template OutlyingOceania*(_: type QLocaleCountryEnum): untyped = 177
template Pakistan*(_: type QLocaleCountryEnum): untyped = 178
template Palau*(_: type QLocaleCountryEnum): untyped = 179
template PalestinianTerritories*(_: type QLocaleCountryEnum): untyped = 180
template Panama*(_: type QLocaleCountryEnum): untyped = 181
template PapuaNewGuinea*(_: type QLocaleCountryEnum): untyped = 182
template Paraguay*(_: type QLocaleCountryEnum): untyped = 183
template Peru*(_: type QLocaleCountryEnum): untyped = 184
template Philippines*(_: type QLocaleCountryEnum): untyped = 185
template Pitcairn*(_: type QLocaleCountryEnum): untyped = 186
template Poland*(_: type QLocaleCountryEnum): untyped = 187
template Portugal*(_: type QLocaleCountryEnum): untyped = 188
template PuertoRico*(_: type QLocaleCountryEnum): untyped = 189
template Qatar*(_: type QLocaleCountryEnum): untyped = 190
template Reunion*(_: type QLocaleCountryEnum): untyped = 191
template Romania*(_: type QLocaleCountryEnum): untyped = 192
template Russia*(_: type QLocaleCountryEnum): untyped = 193
template Rwanda*(_: type QLocaleCountryEnum): untyped = 194
template SaintBarthelemy*(_: type QLocaleCountryEnum): untyped = 195
template SaintHelena*(_: type QLocaleCountryEnum): untyped = 196
template SaintKittsAndNevis*(_: type QLocaleCountryEnum): untyped = 197
template SaintLucia*(_: type QLocaleCountryEnum): untyped = 198
template SaintMartin*(_: type QLocaleCountryEnum): untyped = 199
template SaintPierreAndMiquelon*(_: type QLocaleCountryEnum): untyped = 200
template SaintVincentAndGrenadines*(_: type QLocaleCountryEnum): untyped = 201
template Samoa*(_: type QLocaleCountryEnum): untyped = 202
template SanMarino*(_: type QLocaleCountryEnum): untyped = 203
template SaoTomeAndPrincipe*(_: type QLocaleCountryEnum): untyped = 204
template SaudiArabia*(_: type QLocaleCountryEnum): untyped = 205
template Senegal*(_: type QLocaleCountryEnum): untyped = 206
template Serbia*(_: type QLocaleCountryEnum): untyped = 207
template Seychelles*(_: type QLocaleCountryEnum): untyped = 208
template SierraLeone*(_: type QLocaleCountryEnum): untyped = 209
template Singapore*(_: type QLocaleCountryEnum): untyped = 210
template SintMaarten*(_: type QLocaleCountryEnum): untyped = 211
template Slovakia*(_: type QLocaleCountryEnum): untyped = 212
template Slovenia*(_: type QLocaleCountryEnum): untyped = 213
template SolomonIslands*(_: type QLocaleCountryEnum): untyped = 214
template Somalia*(_: type QLocaleCountryEnum): untyped = 215
template SouthAfrica*(_: type QLocaleCountryEnum): untyped = 216
template SouthGeorgiaAndSouthSandwichIslands*(_: type QLocaleCountryEnum): untyped = 217
template SouthKorea*(_: type QLocaleCountryEnum): untyped = 218
template SouthSudan*(_: type QLocaleCountryEnum): untyped = 219
template Spain*(_: type QLocaleCountryEnum): untyped = 220
template SriLanka*(_: type QLocaleCountryEnum): untyped = 221
template Sudan*(_: type QLocaleCountryEnum): untyped = 222
template Suriname*(_: type QLocaleCountryEnum): untyped = 223
template SvalbardAndJanMayen*(_: type QLocaleCountryEnum): untyped = 224
template Sweden*(_: type QLocaleCountryEnum): untyped = 225
template Switzerland*(_: type QLocaleCountryEnum): untyped = 226
template Syria*(_: type QLocaleCountryEnum): untyped = 227
template Taiwan*(_: type QLocaleCountryEnum): untyped = 228
template Tajikistan*(_: type QLocaleCountryEnum): untyped = 229
template Tanzania*(_: type QLocaleCountryEnum): untyped = 230
template Thailand*(_: type QLocaleCountryEnum): untyped = 231
template TimorLeste*(_: type QLocaleCountryEnum): untyped = 232
template Togo*(_: type QLocaleCountryEnum): untyped = 233
template TokelauTerritory*(_: type QLocaleCountryEnum): untyped = 234
template Tonga*(_: type QLocaleCountryEnum): untyped = 235
template TrinidadAndTobago*(_: type QLocaleCountryEnum): untyped = 236
template TristanDaCunha*(_: type QLocaleCountryEnum): untyped = 237
template Tunisia*(_: type QLocaleCountryEnum): untyped = 238
template Turkey*(_: type QLocaleCountryEnum): untyped = 239
template Turkmenistan*(_: type QLocaleCountryEnum): untyped = 240
template TurksAndCaicosIslands*(_: type QLocaleCountryEnum): untyped = 241
template TuvaluTerritory*(_: type QLocaleCountryEnum): untyped = 242
template Uganda*(_: type QLocaleCountryEnum): untyped = 243
template Ukraine*(_: type QLocaleCountryEnum): untyped = 244
template UnitedArabEmirates*(_: type QLocaleCountryEnum): untyped = 245
template UnitedKingdom*(_: type QLocaleCountryEnum): untyped = 246
template UnitedStatesOutlyingIslands*(_: type QLocaleCountryEnum): untyped = 247
template UnitedStates*(_: type QLocaleCountryEnum): untyped = 248
template UnitedStatesVirginIslands*(_: type QLocaleCountryEnum): untyped = 249
template Uruguay*(_: type QLocaleCountryEnum): untyped = 250
template Uzbekistan*(_: type QLocaleCountryEnum): untyped = 251
template Vanuatu*(_: type QLocaleCountryEnum): untyped = 252
template VaticanCity*(_: type QLocaleCountryEnum): untyped = 253
template Venezuela*(_: type QLocaleCountryEnum): untyped = 254
template Vietnam*(_: type QLocaleCountryEnum): untyped = 255
template WallisAndFutuna*(_: type QLocaleCountryEnum): untyped = 256
template WesternSahara*(_: type QLocaleCountryEnum): untyped = 257
template World*(_: type QLocaleCountryEnum): untyped = 258
template Yemen*(_: type QLocaleCountryEnum): untyped = 259
template Zambia*(_: type QLocaleCountryEnum): untyped = 260
template Zimbabwe*(_: type QLocaleCountryEnum): untyped = 261
template AnyCountry*(_: type QLocaleCountryEnum): untyped = 0
template Bonaire*(_: type QLocaleCountryEnum): untyped = 44
template BosniaAndHerzegowina*(_: type QLocaleCountryEnum): untyped = 29
template CuraSao*(_: type QLocaleCountryEnum): untyped = 62
template CzechRepublic*(_: type QLocaleCountryEnum): untyped = 64
template DemocraticRepublicOfCongo*(_: type QLocaleCountryEnum): untyped = 57
template DemocraticRepublicOfKorea*(_: type QLocaleCountryEnum): untyped = 174
template EastTimor*(_: type QLocaleCountryEnum): untyped = 232
template LatinAmericaAndTheCaribbean*(_: type QLocaleCountryEnum): untyped = 130
template Macau*(_: type QLocaleCountryEnum): untyped = 139
template NauruCountry*(_: type QLocaleCountryEnum): untyped = 163
template PeoplesRepublicOfCongo*(_: type QLocaleCountryEnum): untyped = 56
template RepublicOfKorea*(_: type QLocaleCountryEnum): untyped = 218
template RussianFederation*(_: type QLocaleCountryEnum): untyped = 193
template SaintVincentAndTheGrenadines*(_: type QLocaleCountryEnum): untyped = 201
template SouthGeorgiaAndTheSouthSandwichIslands*(_: type QLocaleCountryEnum): untyped = 217
template SvalbardAndJanMayenIslands*(_: type QLocaleCountryEnum): untyped = 224
template Swaziland*(_: type QLocaleCountryEnum): untyped = 76
template SyrianArabRepublic*(_: type QLocaleCountryEnum): untyped = 227
template TokelauCountry*(_: type QLocaleCountryEnum): untyped = 234
template TuvaluCountry*(_: type QLocaleCountryEnum): untyped = 242
template UnitedStatesMinorOutlyingIslands*(_: type QLocaleCountryEnum): untyped = 247
template VaticanCityState*(_: type QLocaleCountryEnum): untyped = 253
template WallisAndFutunaIslands*(_: type QLocaleCountryEnum): untyped = 256
template LastTerritory*(_: type QLocaleCountryEnum): untyped = 261
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


type QLocaleTagSeparatorEnum* = distinct cchar
template Dash*(_: type QLocaleTagSeparatorEnum): untyped = 45
template Underscore*(_: type QLocaleTagSeparatorEnum): untyped = 95


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


type QLocaleLanguageCodeTypeEnum* = distinct cint
template ISO639Part1*(_: type QLocaleLanguageCodeTypeEnum): untyped = 1
template ISO639Part2B*(_: type QLocaleLanguageCodeTypeEnum): untyped = 2
template ISO639Part2T*(_: type QLocaleLanguageCodeTypeEnum): untyped = 4
template ISO639Part3*(_: type QLocaleLanguageCodeTypeEnum): untyped = 8
template LegacyLanguageCode*(_: type QLocaleLanguageCodeTypeEnum): untyped = 32768
template ISO639Part2*(_: type QLocaleLanguageCodeTypeEnum): untyped = 6
template ISO639Alpha2*(_: type QLocaleLanguageCodeTypeEnum): untyped = 1
template ISO639Alpha3*(_: type QLocaleLanguageCodeTypeEnum): untyped = 14
template ISO639*(_: type QLocaleLanguageCodeTypeEnum): untyped = 15
template AnyLanguageCode*(_: type QLocaleLanguageCodeTypeEnum): untyped = -1


type QLocaleQuotationStyleEnum* = distinct cint
template StandardQuotation*(_: type QLocaleQuotationStyleEnum): untyped = 0
template AlternateQuotation*(_: type QLocaleQuotationStyleEnum): untyped = 1


import ./gen_qlocale_types
export gen_qlocale_types

import
  ./gen_qcalendar_types,
  ./gen_qdatetime_types,
  ./gen_qobjectdefs_types
export
  gen_qcalendar_types,
  gen_qdatetime_types,
  gen_qobjectdefs_types

type cQLocale*{.exportc: "QLocale", incompleteStruct.} = object

proc fcQLocale_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QLocale_operatorAssign".}
proc fcQLocale_swap(self: pointer, other: pointer): void {.importc: "QLocale_swap".}
proc fcQLocale_language(self: pointer): cint {.importc: "QLocale_language".}
proc fcQLocale_script(self: pointer): cint {.importc: "QLocale_script".}
proc fcQLocale_territory(self: pointer): cint {.importc: "QLocale_territory".}
proc fcQLocale_country(self: pointer): cint {.importc: "QLocale_country".}
proc fcQLocale_name(self: pointer): struct_seaqt_string {.importc: "QLocale_name".}
proc fcQLocale_bcp47Name(self: pointer): struct_seaqt_string {.importc: "QLocale_bcp47Name".}
proc fcQLocale_nativeLanguageName(self: pointer): struct_seaqt_string {.importc: "QLocale_nativeLanguageName".}
proc fcQLocale_nativeTerritoryName(self: pointer): struct_seaqt_string {.importc: "QLocale_nativeTerritoryName".}
proc fcQLocale_nativeCountryName(self: pointer): struct_seaqt_string {.importc: "QLocale_nativeCountryName".}
proc fcQLocale_toShort_QString(self: pointer, s: struct_seaqt_string): cshort {.importc: "QLocale_toShort_QString".}
proc fcQLocale_toUShort_QString(self: pointer, s: struct_seaqt_string): cushort {.importc: "QLocale_toUShort_QString".}
proc fcQLocale_toInt_QString(self: pointer, s: struct_seaqt_string): cint {.importc: "QLocale_toInt_QString".}
proc fcQLocale_toUInt_QString(self: pointer, s: struct_seaqt_string): cuint {.importc: "QLocale_toUInt_QString".}
proc fcQLocale_toLong_QString(self: pointer, s: struct_seaqt_string): clong {.importc: "QLocale_toLong_QString".}
proc fcQLocale_toULong_QString(self: pointer, s: struct_seaqt_string): culong {.importc: "QLocale_toULong_QString".}
proc fcQLocale_toLongLong_QString(self: pointer, s: struct_seaqt_string): clonglong {.importc: "QLocale_toLongLong_QString".}
proc fcQLocale_toULongLong_QString(self: pointer, s: struct_seaqt_string): culonglong {.importc: "QLocale_toULongLong_QString".}
proc fcQLocale_toFloat_QString(self: pointer, s: struct_seaqt_string): float32 {.importc: "QLocale_toFloat_QString".}
proc fcQLocale_toDouble_QString(self: pointer, s: struct_seaqt_string): float64 {.importc: "QLocale_toDouble_QString".}
proc fcQLocale_toStringQlonglong(self: pointer, i: clonglong): struct_seaqt_string {.importc: "QLocale_toString_qlonglong".}
proc fcQLocale_toStringQulonglong(self: pointer, i: culonglong): struct_seaqt_string {.importc: "QLocale_toString_qulonglong".}
proc fcQLocale_toStringLong(self: pointer, i: clong): struct_seaqt_string {.importc: "QLocale_toString_long".}
proc fcQLocale_toStringUlong(self: pointer, i: culong): struct_seaqt_string {.importc: "QLocale_toString_ulong".}
proc fcQLocale_toStringShort(self: pointer, i: cshort): struct_seaqt_string {.importc: "QLocale_toString_short".}
proc fcQLocale_toStringUshort(self: pointer, i: cushort): struct_seaqt_string {.importc: "QLocale_toString_ushort".}
proc fcQLocale_toStringInt(self: pointer, i: cint): struct_seaqt_string {.importc: "QLocale_toString_int".}
proc fcQLocale_toStringUint(self: pointer, i: cuint): struct_seaqt_string {.importc: "QLocale_toString_uint".}
proc fcQLocale_toStringDouble(self: pointer, f: float64): struct_seaqt_string {.importc: "QLocale_toString_double".}
proc fcQLocale_toStringFloat(self: pointer, f: float32): struct_seaqt_string {.importc: "QLocale_toString_float".}
proc fcQLocale_toString_QDate_QString(self: pointer, date: pointer, format: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toString_QDate_QString".}
proc fcQLocale_toString_QTime_QString(self: pointer, time: pointer, format: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toString_QTime_QString".}
proc fcQLocale_toString_QDateTime_QString(self: pointer, dateTime: pointer, format: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toString_QDateTime_QString".}
proc fcQLocale_toString_QDate(self: pointer, date: pointer): struct_seaqt_string {.importc: "QLocale_toString_QDate".}
proc fcQLocale_toString_QTime(self: pointer, time: pointer): struct_seaqt_string {.importc: "QLocale_toString_QTime".}
proc fcQLocale_toString_QDateTime(self: pointer, dateTime: pointer): struct_seaqt_string {.importc: "QLocale_toString_QDateTime".}
proc fcQLocale_toString_QDate_QLocale_FormatType_QCalendar(self: pointer, date: pointer, format: cint, cal: pointer): struct_seaqt_string {.importc: "QLocale_toString_QDate_QLocale_FormatType_QCalendar".}
proc fcQLocale_toString_QDateTime_QLocale_FormatType_QCalendar(self: pointer, dateTime: pointer, format: cint, cal: pointer): struct_seaqt_string {.importc: "QLocale_toString_QDateTime_QLocale_FormatType_QCalendar".}
proc fcQLocale_dateFormat(self: pointer): struct_seaqt_string {.importc: "QLocale_dateFormat".}
proc fcQLocale_timeFormat(self: pointer): struct_seaqt_string {.importc: "QLocale_timeFormat".}
proc fcQLocale_dateTimeFormat(self: pointer): struct_seaqt_string {.importc: "QLocale_dateTimeFormat".}
proc fcQLocale_toTime_QString(self: pointer, stringVal: struct_seaqt_string): pointer {.importc: "QLocale_toTime_QString".}
proc fcQLocale_toTime_QString_QString(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string): pointer {.importc: "QLocale_toTime_QString_QString".}
proc fcQLocale_toDate_QString(self: pointer, stringVal: struct_seaqt_string): pointer {.importc: "QLocale_toDate_QString".}
proc fcQLocale_toDate_QString_QString(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string): pointer {.importc: "QLocale_toDate_QString_QString".}
proc fcQLocale_toDateTime_QString(self: pointer, stringVal: struct_seaqt_string): pointer {.importc: "QLocale_toDateTime_QString".}
proc fcQLocale_toDateTime_QString_QString(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string): pointer {.importc: "QLocale_toDateTime_QString_QString".}
proc fcQLocale_toDate_QString_QLocale_FormatType_QCalendar(self: pointer, stringVal: struct_seaqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toDate_QString_QLocale_FormatType_QCalendar".}
proc fcQLocale_toDate_QString_QString_QCalendar(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string, cal: pointer): pointer {.importc: "QLocale_toDate_QString_QString_QCalendar".}
proc fcQLocale_toDateTime_QString_QLocale_FormatType_QCalendar(self: pointer, stringVal: struct_seaqt_string, format: cint, cal: pointer): pointer {.importc: "QLocale_toDateTime_QString_QLocale_FormatType_QCalendar".}
proc fcQLocale_toDateTime_QString_QString_QCalendar(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string, cal: pointer): pointer {.importc: "QLocale_toDateTime_QString_QString_QCalendar".}
proc fcQLocale_decimalPoint(self: pointer): struct_seaqt_string {.importc: "QLocale_decimalPoint".}
proc fcQLocale_groupSeparator(self: pointer): struct_seaqt_string {.importc: "QLocale_groupSeparator".}
proc fcQLocale_percent(self: pointer): struct_seaqt_string {.importc: "QLocale_percent".}
proc fcQLocale_zeroDigit(self: pointer): struct_seaqt_string {.importc: "QLocale_zeroDigit".}
proc fcQLocale_negativeSign(self: pointer): struct_seaqt_string {.importc: "QLocale_negativeSign".}
proc fcQLocale_positiveSign(self: pointer): struct_seaqt_string {.importc: "QLocale_positiveSign".}
proc fcQLocale_exponential(self: pointer): struct_seaqt_string {.importc: "QLocale_exponential".}
proc fcQLocale_monthNameInt(self: pointer, param1: cint): struct_seaqt_string {.importc: "QLocale_monthName_int".}
proc fcQLocale_standaloneMonthNameInt(self: pointer, param1: cint): struct_seaqt_string {.importc: "QLocale_standaloneMonthName_int".}
proc fcQLocale_dayNameInt(self: pointer, param1: cint): struct_seaqt_string {.importc: "QLocale_dayName_int".}
proc fcQLocale_standaloneDayNameInt(self: pointer, param1: cint): struct_seaqt_string {.importc: "QLocale_standaloneDayName_int".}
proc fcQLocale_firstDayOfWeek(self: pointer): cint {.importc: "QLocale_firstDayOfWeek".}
proc fcQLocale_weekdays(self: pointer): struct_seaqt_array {.importc: "QLocale_weekdays".}
proc fcQLocale_amText(self: pointer): struct_seaqt_string {.importc: "QLocale_amText".}
proc fcQLocale_pmText(self: pointer): struct_seaqt_string {.importc: "QLocale_pmText".}
proc fcQLocale_measurementSystem(self: pointer): cint {.importc: "QLocale_measurementSystem".}
proc fcQLocale_collation(self: pointer): pointer {.importc: "QLocale_collation".}
proc fcQLocale_textDirection(self: pointer): cint {.importc: "QLocale_textDirection".}
proc fcQLocale_toUpper(self: pointer, str: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toUpper".}
proc fcQLocale_toLower(self: pointer, str: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toLower".}
proc fcQLocale_currencySymbol(self: pointer): struct_seaqt_string {.importc: "QLocale_currencySymbol".}
proc fcQLocale_toCurrencyStringQlonglong(self: pointer, param1: clonglong): struct_seaqt_string {.importc: "QLocale_toCurrencyString_qlonglong".}
proc fcQLocale_toCurrencyStringQulonglong(self: pointer, param1: culonglong): struct_seaqt_string {.importc: "QLocale_toCurrencyString_qulonglong".}
proc fcQLocale_toCurrencyStringShort(self: pointer, i: cshort): struct_seaqt_string {.importc: "QLocale_toCurrencyString_short".}
proc fcQLocale_toCurrencyStringUshort(self: pointer, i: cushort): struct_seaqt_string {.importc: "QLocale_toCurrencyString_ushort".}
proc fcQLocale_toCurrencyStringInt(self: pointer, i: cint): struct_seaqt_string {.importc: "QLocale_toCurrencyString_int".}
proc fcQLocale_toCurrencyStringUint(self: pointer, i: cuint): struct_seaqt_string {.importc: "QLocale_toCurrencyString_uint".}
proc fcQLocale_toCurrencyStringDouble(self: pointer, param1: float64): struct_seaqt_string {.importc: "QLocale_toCurrencyString_double".}
proc fcQLocale_toCurrencyStringFloat(self: pointer, i: float32): struct_seaqt_string {.importc: "QLocale_toCurrencyString_float".}
proc fcQLocale_formattedDataSizeBytes(self: pointer, bytes: clonglong): struct_seaqt_string {.importc: "QLocale_formattedDataSize_bytes".}
proc fcQLocale_uiLanguages(self: pointer): struct_seaqt_array {.importc: "QLocale_uiLanguages".}
proc fcQLocale_languageToCodeLanguage(language: cint): struct_seaqt_string {.importc: "QLocale_languageToCode_language".}
proc fcQLocale_territoryToCode(territory: cint): struct_seaqt_string {.importc: "QLocale_territoryToCode".}
proc fcQLocale_countryToCode(country: cint): struct_seaqt_string {.importc: "QLocale_countryToCode".}
proc fcQLocale_scriptToCode(script: cint): struct_seaqt_string {.importc: "QLocale_scriptToCode".}
proc fcQLocale_languageToString(language: cint): struct_seaqt_string {.importc: "QLocale_languageToString".}
proc fcQLocale_territoryToString(territory: cint): struct_seaqt_string {.importc: "QLocale_territoryToString".}
proc fcQLocale_countryToString(country: cint): struct_seaqt_string {.importc: "QLocale_countryToString".}
proc fcQLocale_scriptToString(script: cint): struct_seaqt_string {.importc: "QLocale_scriptToString".}
proc fcQLocale_setDefault(locale: pointer): void {.importc: "QLocale_setDefault".}
proc fcQLocale_c(): pointer {.importc: "QLocale_c".}
proc fcQLocale_system(): pointer {.importc: "QLocale_system".}
proc fcQLocale_matchingLocales(language: cint, script: cint, territory: cint): struct_seaqt_array {.importc: "QLocale_matchingLocales".}
proc fcQLocale_countriesForLanguage(lang: cint): struct_seaqt_array {.importc: "QLocale_countriesForLanguage".}
proc fcQLocale_setNumberOptions(self: pointer, options: cint): void {.importc: "QLocale_setNumberOptions".}
proc fcQLocale_numberOptions(self: pointer): cint {.importc: "QLocale_numberOptions".}
proc fcQLocale_quoteString_QString(self: pointer, str: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_quoteString_QString".}
proc fcQLocale_createSeparatedList(self: pointer, strl: struct_seaqt_array): struct_seaqt_string {.importc: "QLocale_createSeparatedList".}
proc fcQLocale_nameSeparator(self: pointer, separator: cint): struct_seaqt_string {.importc: "QLocale_name_separator".}
proc fcQLocale_bcp47NameSeparator(self: pointer, separator: cint): struct_seaqt_string {.importc: "QLocale_bcp47Name_separator".}
proc fcQLocale_toShort_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): cshort {.importc: "QLocale_toShort_QString_bool".}
proc fcQLocale_toUShort_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): cushort {.importc: "QLocale_toUShort_QString_bool".}
proc fcQLocale_toInt_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): cint {.importc: "QLocale_toInt_QString_bool".}
proc fcQLocale_toUInt_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): cuint {.importc: "QLocale_toUInt_QString_bool".}
proc fcQLocale_toLong_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): clong {.importc: "QLocale_toLong_QString_bool".}
proc fcQLocale_toULong_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): culong {.importc: "QLocale_toULong_QString_bool".}
proc fcQLocale_toLongLong_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): clonglong {.importc: "QLocale_toLongLong_QString_bool".}
proc fcQLocale_toULongLong_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): culonglong {.importc: "QLocale_toULongLong_QString_bool".}
proc fcQLocale_toFloat_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): float32 {.importc: "QLocale_toFloat_QString_bool".}
proc fcQLocale_toDouble_QStringBool(self: pointer, s: struct_seaqt_string, ok: ptr bool): float64 {.importc: "QLocale_toDouble_QString_bool".}
proc fcQLocale_toStringDoubleChar(self: pointer, f: float64, format: cchar): struct_seaqt_string {.importc: "QLocale_toString_double_char".}
proc fcQLocale_toStringDoubleCharInt(self: pointer, f: float64, format: cchar, precision: cint): struct_seaqt_string {.importc: "QLocale_toString_double_char_int".}
proc fcQLocale_toStringFloatChar(self: pointer, f: float32, format: cchar): struct_seaqt_string {.importc: "QLocale_toString_float_char".}
proc fcQLocale_toStringFloatCharInt(self: pointer, f: float32, format: cchar, precision: cint): struct_seaqt_string {.importc: "QLocale_toString_float_char_int".}
proc fcQLocale_toString_QDate_QLocale_FormatType(self: pointer, date: pointer, format: cint): struct_seaqt_string {.importc: "QLocale_toString_QDate_QLocale_FormatType".}
proc fcQLocale_toString_QTime_QLocale_FormatType(self: pointer, time: pointer, format: cint): struct_seaqt_string {.importc: "QLocale_toString_QTime_QLocale_FormatType".}
proc fcQLocale_toString_QDateTime_QLocale_FormatType(self: pointer, dateTime: pointer, format: cint): struct_seaqt_string {.importc: "QLocale_toString_QDateTime_QLocale_FormatType".}
proc fcQLocale_dateFormatFormat(self: pointer, format: cint): struct_seaqt_string {.importc: "QLocale_dateFormat_format".}
proc fcQLocale_timeFormatFormat(self: pointer, format: cint): struct_seaqt_string {.importc: "QLocale_timeFormat_format".}
proc fcQLocale_dateTimeFormatFormat(self: pointer, format: cint): struct_seaqt_string {.importc: "QLocale_dateTimeFormat_format".}
proc fcQLocale_toTime_QString_QLocale_FormatType(self: pointer, stringVal: struct_seaqt_string, param2: cint): pointer {.importc: "QLocale_toTime_QString_QLocale_FormatType".}
proc fcQLocale_toDate_QString_QLocale_FormatType(self: pointer, stringVal: struct_seaqt_string, param2: cint): pointer {.importc: "QLocale_toDate_QString_QLocale_FormatType".}
proc fcQLocale_toDate_QString_QLocale_FormatTypeInt(self: pointer, stringVal: struct_seaqt_string, param2: cint, baseYear: cint): pointer {.importc: "QLocale_toDate_QString_QLocale_FormatType_int".}
proc fcQLocale_toDate_QString_QStringInt(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string, baseYear: cint): pointer {.importc: "QLocale_toDate_QString_QString_int".}
proc fcQLocale_toDateTime_QString_QLocale_FormatType(self: pointer, stringVal: struct_seaqt_string, format: cint): pointer {.importc: "QLocale_toDateTime_QString_QLocale_FormatType".}
proc fcQLocale_toDateTime_QString_QLocale_FormatTypeInt(self: pointer, stringVal: struct_seaqt_string, format: cint, baseYear: cint): pointer {.importc: "QLocale_toDateTime_QString_QLocale_FormatType_int".}
proc fcQLocale_toDateTime_QString_QStringInt(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string, baseYear: cint): pointer {.importc: "QLocale_toDateTime_QString_QString_int".}
proc fcQLocale_toDate_QString_QLocale_FormatType_QCalendarInt(self: pointer, stringVal: struct_seaqt_string, format: cint, cal: pointer, baseYear: cint): pointer {.importc: "QLocale_toDate_QString_QLocale_FormatType_QCalendar_int".}
proc fcQLocale_toDate_QString_QString_QCalendarInt(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string, cal: pointer, baseYear: cint): pointer {.importc: "QLocale_toDate_QString_QString_QCalendar_int".}
proc fcQLocale_toDateTime_QString_QLocale_FormatType_QCalendarInt(self: pointer, stringVal: struct_seaqt_string, format: cint, cal: pointer, baseYear: cint): pointer {.importc: "QLocale_toDateTime_QString_QLocale_FormatType_QCalendar_int".}
proc fcQLocale_toDateTime_QString_QString_QCalendarInt(self: pointer, stringVal: struct_seaqt_string, format: struct_seaqt_string, cal: pointer, baseYear: cint): pointer {.importc: "QLocale_toDateTime_QString_QString_QCalendar_int".}
proc fcQLocale_monthNameInt_QLocale_FormatType(self: pointer, param1: cint, format: cint): struct_seaqt_string {.importc: "QLocale_monthName_int_QLocale_FormatType".}
proc fcQLocale_standaloneMonthNameInt_QLocale_FormatType(self: pointer, param1: cint, format: cint): struct_seaqt_string {.importc: "QLocale_standaloneMonthName_int_QLocale_FormatType".}
proc fcQLocale_dayNameInt_QLocale_FormatType(self: pointer, param1: cint, format: cint): struct_seaqt_string {.importc: "QLocale_dayName_int_QLocale_FormatType".}
proc fcQLocale_standaloneDayNameInt_QLocale_FormatType(self: pointer, param1: cint, format: cint): struct_seaqt_string {.importc: "QLocale_standaloneDayName_int_QLocale_FormatType".}
proc fcQLocale_currencySymbol_QLocale_CurrencySymbolFormat(self: pointer, param1: cint): struct_seaqt_string {.importc: "QLocale_currencySymbol_QLocale_CurrencySymbolFormat".}
proc fcQLocale_toCurrencyStringQlonglong_QString(self: pointer, param1: clonglong, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_qlonglong_QString".}
proc fcQLocale_toCurrencyStringQulonglong_QString(self: pointer, param1: culonglong, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_qulonglong_QString".}
proc fcQLocale_toCurrencyStringShort_QString(self: pointer, i: cshort, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_short_QString".}
proc fcQLocale_toCurrencyStringUshort_QString(self: pointer, i: cushort, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_ushort_QString".}
proc fcQLocale_toCurrencyStringInt_QString(self: pointer, i: cint, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_int_QString".}
proc fcQLocale_toCurrencyStringUint_QString(self: pointer, i: cuint, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_uint_QString".}
proc fcQLocale_toCurrencyStringDouble_QString(self: pointer, param1: float64, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_double_QString".}
proc fcQLocale_toCurrencyStringDouble_QStringInt(self: pointer, param1: float64, symbol: struct_seaqt_string, precision: cint): struct_seaqt_string {.importc: "QLocale_toCurrencyString_double_QString_int".}
proc fcQLocale_toCurrencyStringFloat_QString(self: pointer, i: float32, symbol: struct_seaqt_string): struct_seaqt_string {.importc: "QLocale_toCurrencyString_float_QString".}
proc fcQLocale_toCurrencyStringFloat_QStringInt(self: pointer, i: float32, symbol: struct_seaqt_string, precision: cint): struct_seaqt_string {.importc: "QLocale_toCurrencyString_float_QString_int".}
proc fcQLocale_formattedDataSizeBytesPrecision(self: pointer, bytes: clonglong, precision: cint): struct_seaqt_string {.importc: "QLocale_formattedDataSize_bytes_precision".}
proc fcQLocale_formattedDataSizeBytesPrecisionFormat(self: pointer, bytes: clonglong, precision: cint, format: cint): struct_seaqt_string {.importc: "QLocale_formattedDataSize_bytes_precision_format".}
proc fcQLocale_uiLanguagesSeparator(self: pointer, separator: cint): struct_seaqt_array {.importc: "QLocale_uiLanguages_separator".}
proc fcQLocale_languageToCodeLanguageCodeTypes(language: cint, codeTypes: cint): struct_seaqt_string {.importc: "QLocale_languageToCode_language_codeTypes".}
proc fcQLocale_quoteString_QString_QLocale_QuotationStyle(self: pointer, str: struct_seaqt_string, style: cint): struct_seaqt_string {.importc: "QLocale_quoteString_QString_QLocale_QuotationStyle".}
proc fcQLocale_new(): ptr cQLocale {.importc: "QLocale_new".}
proc fcQLocale_new2(name: struct_seaqt_string): ptr cQLocale {.importc: "QLocale_new_QString".}
proc fcQLocale_new3(language: cint, territory: cint): ptr cQLocale {.importc: "QLocale_new_QLocale_Language_QLocale_Territory".}
proc fcQLocale_new4(language: cint): ptr cQLocale {.importc: "QLocale_new_QLocale_Language".}
proc fcQLocale_new5(fromVal: pointer): ptr cQLocale {.importc: "QLocale_new_QLocale".}
proc fcQLocale_new6(language: cint, script: cint): ptr cQLocale {.importc: "QLocale_new_QLocale_Language_QLocale_Script".}
proc fcQLocale_new7(language: cint, script: cint, territory: cint): ptr cQLocale {.importc: "QLocale_new_QLocale_Language_QLocale_Script_QLocale_Territory".}
proc fcQLocale_staticMetaObject(): pointer {.importc: "QLocale_staticMetaObject".}

proc operatorAssign*(self: gen_qlocale_types.QLocale, fromVal: gen_qlocale_types.QLocale): void =
  fcQLocale_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qlocale_types.QLocale, other: gen_qlocale_types.QLocale): void =
  fcQLocale_swap(self.h, other.h)

proc language*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_language(self.h))

proc script*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_script(self.h))

proc territory*(self: gen_qlocale_types.QLocale): cint =
  cint(fcQLocale_territory(self.h))

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

proc nativeTerritoryName*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_nativeTerritoryName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc nativeCountryName*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_nativeCountryName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toShort*(self: gen_qlocale_types.QLocale, s: openArray[char]): cshort =
  fcQLocale_toShort_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toUShort*(self: gen_qlocale_types.QLocale, s: openArray[char]): cushort =
  fcQLocale_toUShort_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toInt*(self: gen_qlocale_types.QLocale, s: openArray[char]): cint =
  fcQLocale_toInt_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toUInt*(self: gen_qlocale_types.QLocale, s: openArray[char]): cuint =
  fcQLocale_toUInt_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toLong*(self: gen_qlocale_types.QLocale, s: openArray[char]): clong =
  fcQLocale_toLong_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toULong*(self: gen_qlocale_types.QLocale, s: openArray[char]): culong =
  fcQLocale_toULong_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toLongLong*(self: gen_qlocale_types.QLocale, s: openArray[char]): clonglong =
  fcQLocale_toLongLong_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toULongLong*(self: gen_qlocale_types.QLocale, s: openArray[char]): culonglong =
  fcQLocale_toULongLong_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toFloat*(self: gen_qlocale_types.QLocale, s: openArray[char]): float32 =
  fcQLocale_toFloat_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toDouble*(self: gen_qlocale_types.QLocale, s: openArray[char]): float64 =
  fcQLocale_toDouble_QString(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))))

proc toString*(self: gen_qlocale_types.QLocale, i: clonglong): string =
  let v_ms = fcQLocale_toStringQlonglong(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: culonglong): string =
  let v_ms = fcQLocale_toStringQulonglong(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: clong): string =
  let v_ms = fcQLocale_toStringLong(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: culong): string =
  let v_ms = fcQLocale_toStringUlong(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cshort): string =
  let v_ms = fcQLocale_toStringShort(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cushort): string =
  let v_ms = fcQLocale_toStringUshort(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cint): string =
  let v_ms = fcQLocale_toStringInt(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, i: cuint): string =
  let v_ms = fcQLocale_toStringUint(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, f: float64): string =
  let v_ms = fcQLocale_toStringDouble(self.h, f)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, f: float32): string =
  let v_ms = fcQLocale_toStringFloat(self.h, f)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate, format: openArray[char]): string =
  let v_ms = fcQLocale_toString_QDate_QString(self.h, date.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, time: gen_qdatetime_types.QTime, format: openArray[char]): string =
  let v_ms = fcQLocale_toString_QTime_QString(self.h, time.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime, format: openArray[char]): string =
  let v_ms = fcQLocale_toString_QDateTime_QString(self.h, dateTime.h, struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate): string =
  let v_ms = fcQLocale_toString_QDate(self.h, date.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, time: gen_qdatetime_types.QTime): string =
  let v_ms = fcQLocale_toString_QTime(self.h, time.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime): string =
  let v_ms = fcQLocale_toString_QDateTime(self.h, dateTime.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate, format: cint, cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQLocale_toString_QDate_QLocale_FormatType_QCalendar(self.h, date.h, cint(format), cal.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime, format: cint, cal: gen_qcalendar_types.QCalendar): string =
  let v_ms = fcQLocale_toString_QDateTime_QLocale_FormatType_QCalendar(self.h, dateTime.h, cint(format), cal.h)
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

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char]): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime_QString_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char]): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char]): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal)))), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char]): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QString(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format)))), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QLocale_FormatType_QCalendar(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), cal.h), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QString_QCalendar(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QLocale_FormatType_QCalendar(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), cal.h), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QString_QCalendar(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h), owned: true)

proc decimalPoint*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_decimalPoint(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc groupSeparator*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_groupSeparator(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc percent*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_percent(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc zeroDigit*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_zeroDigit(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc negativeSign*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_negativeSign(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc positiveSign*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_positiveSign(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc exponential*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_exponential(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc monthName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_monthNameInt(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_standaloneMonthNameInt(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dayName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_dayNameInt(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneDayName*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_standaloneDayNameInt(self.h, param1)
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
  let v_ms = fcQLocale_toUpper(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toLower*(self: gen_qlocale_types.QLocale, str: openArray[char]): string =
  let v_ms = fcQLocale_toLower(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currencySymbol*(self: gen_qlocale_types.QLocale): string =
  let v_ms = fcQLocale_currencySymbol(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: clonglong): string =
  let v_ms = fcQLocale_toCurrencyStringQlonglong(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: culonglong): string =
  let v_ms = fcQLocale_toCurrencyStringQulonglong(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cshort): string =
  let v_ms = fcQLocale_toCurrencyStringShort(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cushort): string =
  let v_ms = fcQLocale_toCurrencyStringUshort(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cint): string =
  let v_ms = fcQLocale_toCurrencyStringInt(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cuint): string =
  let v_ms = fcQLocale_toCurrencyStringUint(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: float64): string =
  let v_ms = fcQLocale_toCurrencyStringDouble(self.h, param1)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: float32): string =
  let v_ms = fcQLocale_toCurrencyStringFloat(self.h, i)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: gen_qlocale_types.QLocale, bytes: clonglong): string =
  let v_ms = fcQLocale_formattedDataSizeBytes(self.h, bytes)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc uiLanguages*(self: gen_qlocale_types.QLocale): seq[string] =
  var v_ma = fcQLocale_uiLanguages(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc languageToCode*(_: type gen_qlocale_types.QLocale, language: cint): string =
  let v_ms = fcQLocale_languageToCodeLanguage(cint(language))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc territoryToCode*(_: type gen_qlocale_types.QLocale, territory: cint): string =
  let v_ms = fcQLocale_territoryToCode(cint(territory))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc countryToCode*(_: type gen_qlocale_types.QLocale, country: cint): string =
  let v_ms = fcQLocale_countryToCode(cint(country))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc scriptToCode*(_: type gen_qlocale_types.QLocale, script: cint): string =
  let v_ms = fcQLocale_scriptToCode(cint(script))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc languageToString*(_: type gen_qlocale_types.QLocale, language: cint): string =
  let v_ms = fcQLocale_languageToString(cint(language))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc territoryToString*(_: type gen_qlocale_types.QLocale, territory: cint): string =
  let v_ms = fcQLocale_territoryToString(cint(territory))
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

proc matchingLocales*(_: type gen_qlocale_types.QLocale, language: cint, script: cint, territory: cint): seq[gen_qlocale_types.QLocale] =
  var v_ma = fcQLocale_matchingLocales(cint(language), cint(script), cint(territory))
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
  let v_ms = fcQLocale_quoteString_QString(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc createSeparatedList*(self: gen_qlocale_types.QLocale, strl: openArray[string]): string =
  var strl_CArray = newSeq[struct_seaqt_string](len(strl))
  for i in 0..<len(strl):
    strl_CArray[i] = struct_seaqt_string(data: if len(strl[i]) > 0: addr strl[i][0] else: nil, len: csize_t(len(strl[i])))

  let v_ms = fcQLocale_createSeparatedList(self.h, struct_seaqt_array(len: csize_t(len(strl)), data: if len(strl) == 0: nil else: addr(strl_CArray[0])))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qlocale_types.QLocale, separator: cint): string =
  let v_ms = fcQLocale_nameSeparator(self.h, cint(separator))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc bcp47Name*(self: gen_qlocale_types.QLocale, separator: cint): string =
  let v_ms = fcQLocale_bcp47NameSeparator(self.h, cint(separator))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toShort*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cshort =
  fcQLocale_toShort_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toUShort*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cushort =
  fcQLocale_toUShort_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toInt*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cint =
  fcQLocale_toInt_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toUInt*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): cuint =
  fcQLocale_toUInt_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toLong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): clong =
  fcQLocale_toLong_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toULong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): culong =
  fcQLocale_toULong_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toLongLong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): clonglong =
  fcQLocale_toLongLong_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toULongLong*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): culonglong =
  fcQLocale_toULongLong_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toFloat*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): float32 =
  fcQLocale_toFloat_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toDouble*(self: gen_qlocale_types.QLocale, s: openArray[char], ok: ptr bool): float64 =
  fcQLocale_toDouble_QStringBool(self.h, struct_seaqt_string(data: if len(s) > 0: addr s[0] else: nil, len: csize_t(len(s))), ok)

proc toString*(self: gen_qlocale_types.QLocale, f: float64, format: cchar): string =
  let v_ms = fcQLocale_toStringDoubleChar(self.h, f, format)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, f: float64, format: cchar, precision: cint): string =
  let v_ms = fcQLocale_toStringDoubleCharInt(self.h, f, format, precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, f: float32, format: cchar): string =
  let v_ms = fcQLocale_toStringFloatChar(self.h, f, format)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, f: float32, format: cchar, precision: cint): string =
  let v_ms = fcQLocale_toStringFloatCharInt(self.h, f, format, precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, date: gen_qdatetime_types.QDate, format: cint): string =
  let v_ms = fcQLocale_toString_QDate_QLocale_FormatType(self.h, date.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, time: gen_qdatetime_types.QTime, format: cint): string =
  let v_ms = fcQLocale_toString_QTime_QLocale_FormatType(self.h, time.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qlocale_types.QLocale, dateTime: gen_qdatetime_types.QDateTime, format: cint): string =
  let v_ms = fcQLocale_toString_QDateTime_QLocale_FormatType(self.h, dateTime.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dateFormat*(self: gen_qlocale_types.QLocale, format: cint): string =
  let v_ms = fcQLocale_dateFormatFormat(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc timeFormat*(self: gen_qlocale_types.QLocale, format: cint): string =
  let v_ms = fcQLocale_timeFormatFormat(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dateTimeFormat*(self: gen_qlocale_types.QLocale, format: cint): string =
  let v_ms = fcQLocale_dateTimeFormatFormat(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], param2: cint): gen_qdatetime_types.QTime =
  gen_qdatetime_types.QTime(h: fcQLocale_toTime_QString_QLocale_FormatType(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(param2)), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], param2: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QLocale_FormatType(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(param2)), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], param2: cint, baseYear: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QLocale_FormatTypeInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(param2), baseYear), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], baseYear: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QStringInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), baseYear), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QLocale_FormatType(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format)), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, baseYear: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QLocale_FormatTypeInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), baseYear), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], baseYear: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QStringInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), baseYear), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, cal: gen_qcalendar_types.QCalendar, baseYear: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QLocale_FormatType_QCalendarInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), cal.h, baseYear), owned: true)

proc toDate*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar, baseYear: cint): gen_qdatetime_types.QDate =
  gen_qdatetime_types.QDate(h: fcQLocale_toDate_QString_QString_QCalendarInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h, baseYear), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: cint, cal: gen_qcalendar_types.QCalendar, baseYear: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QLocale_FormatType_QCalendarInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), cint(format), cal.h, baseYear), owned: true)

proc toDateTime*(self: gen_qlocale_types.QLocale, stringVal: openArray[char], format: openArray[char], cal: gen_qcalendar_types.QCalendar, baseYear: cint): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQLocale_toDateTime_QString_QString_QCalendarInt(self.h, struct_seaqt_string(data: if len(stringVal) > 0: addr stringVal[0] else: nil, len: csize_t(len(stringVal))), struct_seaqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))), cal.h, baseYear), owned: true)

proc monthName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_monthNameInt_QLocale_FormatType(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneMonthName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_standaloneMonthNameInt_QLocale_FormatType(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc dayName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_dayNameInt_QLocale_FormatType(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc standaloneDayName*(self: gen_qlocale_types.QLocale, param1: cint, format: cint): string =
  let v_ms = fcQLocale_standaloneDayNameInt_QLocale_FormatType(self.h, param1, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currencySymbol*(self: gen_qlocale_types.QLocale, param1: cint): string =
  let v_ms = fcQLocale_currencySymbol_QLocale_CurrencySymbolFormat(self.h, cint(param1))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: clonglong, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringQlonglong_QString(self.h, param1, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: culonglong, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringQulonglong_QString(self.h, param1, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cshort, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringShort_QString(self.h, i, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cushort, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringUshort_QString(self.h, i, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cint, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringInt_QString(self.h, i, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: cuint, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringUint_QString(self.h, i, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: float64, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringDouble_QString(self.h, param1, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, param1: float64, symbol: openArray[char], precision: cint): string =
  let v_ms = fcQLocale_toCurrencyStringDouble_QStringInt(self.h, param1, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: float32, symbol: openArray[char]): string =
  let v_ms = fcQLocale_toCurrencyStringFloat_QString(self.h, i, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toCurrencyString*(self: gen_qlocale_types.QLocale, i: float32, symbol: openArray[char], precision: cint): string =
  let v_ms = fcQLocale_toCurrencyStringFloat_QStringInt(self.h, i, struct_seaqt_string(data: if len(symbol) > 0: addr symbol[0] else: nil, len: csize_t(len(symbol))), precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: gen_qlocale_types.QLocale, bytes: clonglong, precision: cint): string =
  let v_ms = fcQLocale_formattedDataSizeBytesPrecision(self.h, bytes, precision)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc formattedDataSize*(self: gen_qlocale_types.QLocale, bytes: clonglong, precision: cint, format: cint): string =
  let v_ms = fcQLocale_formattedDataSizeBytesPrecisionFormat(self.h, bytes, precision, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc uiLanguages*(self: gen_qlocale_types.QLocale, separator: cint): seq[string] =
  var v_ma = fcQLocale_uiLanguagesSeparator(self.h, cint(separator))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc languageToCode*(_: type gen_qlocale_types.QLocale, language: cint, codeTypes: cint): string =
  let v_ms = fcQLocale_languageToCodeLanguageCodeTypes(cint(language), cint(codeTypes))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc quoteString*(self: gen_qlocale_types.QLocale, str: openArray[char], style: cint): string =
  let v_ms = fcQLocale_quoteString_QString_QLocale_QuotationStyle(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), cint(style))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qlocale_types.QLocale): gen_qlocale_types.QLocale =
  let tmp = gen_qlocale_types.QLocale(h: fcQLocale_new(), owned: true)
  tmp
proc create*(T: type gen_qlocale_types.QLocale,
    name: openArray[char]): gen_qlocale_types.QLocale =
  let tmp = gen_qlocale_types.QLocale(h: fcQLocale_new2(struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)
  tmp
proc create*(T: type gen_qlocale_types.QLocale,
    language: cint, territory: cint): gen_qlocale_types.QLocale =
  let tmp = gen_qlocale_types.QLocale(h: fcQLocale_new3(cint(language), cint(territory)), owned: true)
  tmp
proc create*(T: type gen_qlocale_types.QLocale,
    language: cint): gen_qlocale_types.QLocale =
  let tmp = gen_qlocale_types.QLocale(h: fcQLocale_new4(cint(language)), owned: true)
  tmp
proc create*(T: type gen_qlocale_types.QLocale,
    fromVal: gen_qlocale_types.QLocale): gen_qlocale_types.QLocale =
  let tmp = gen_qlocale_types.QLocale(h: fcQLocale_new5(fromVal.h), owned: true)
  tmp
proc create2*(T: type gen_qlocale_types.QLocale,
    language: cint, script: cint): gen_qlocale_types.QLocale =
  let tmp = gen_qlocale_types.QLocale(h: fcQLocale_new6(cint(language), cint(script)), owned: true)
  tmp
proc create*(T: type gen_qlocale_types.QLocale,
    language: cint, script: cint, territory: cint): gen_qlocale_types.QLocale =
  let tmp = gen_qlocale_types.QLocale(h: fcQLocale_new7(cint(language), cint(script), cint(territory)), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qlocale_types.QLocale): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLocale_staticMetaObject())
