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


type QFontDatabaseWritingSystemEnum* = distinct cint
template Any*(_: type QFontDatabaseWritingSystemEnum): untyped = 0
template Latin*(_: type QFontDatabaseWritingSystemEnum): untyped = 1
template Greek*(_: type QFontDatabaseWritingSystemEnum): untyped = 2
template Cyrillic*(_: type QFontDatabaseWritingSystemEnum): untyped = 3
template Armenian*(_: type QFontDatabaseWritingSystemEnum): untyped = 4
template Hebrew*(_: type QFontDatabaseWritingSystemEnum): untyped = 5
template Arabic*(_: type QFontDatabaseWritingSystemEnum): untyped = 6
template Syriac*(_: type QFontDatabaseWritingSystemEnum): untyped = 7
template Thaana*(_: type QFontDatabaseWritingSystemEnum): untyped = 8
template Devanagari*(_: type QFontDatabaseWritingSystemEnum): untyped = 9
template Bengali*(_: type QFontDatabaseWritingSystemEnum): untyped = 10
template Gurmukhi*(_: type QFontDatabaseWritingSystemEnum): untyped = 11
template Gujarati*(_: type QFontDatabaseWritingSystemEnum): untyped = 12
template Oriya*(_: type QFontDatabaseWritingSystemEnum): untyped = 13
template Tamil*(_: type QFontDatabaseWritingSystemEnum): untyped = 14
template Telugu*(_: type QFontDatabaseWritingSystemEnum): untyped = 15
template Kannada*(_: type QFontDatabaseWritingSystemEnum): untyped = 16
template Malayalam*(_: type QFontDatabaseWritingSystemEnum): untyped = 17
template Sinhala*(_: type QFontDatabaseWritingSystemEnum): untyped = 18
template Thai*(_: type QFontDatabaseWritingSystemEnum): untyped = 19
template Lao*(_: type QFontDatabaseWritingSystemEnum): untyped = 20
template Tibetan*(_: type QFontDatabaseWritingSystemEnum): untyped = 21
template Myanmar*(_: type QFontDatabaseWritingSystemEnum): untyped = 22
template Georgian*(_: type QFontDatabaseWritingSystemEnum): untyped = 23
template Khmer*(_: type QFontDatabaseWritingSystemEnum): untyped = 24
template SimplifiedChinese*(_: type QFontDatabaseWritingSystemEnum): untyped = 25
template TraditionalChinese*(_: type QFontDatabaseWritingSystemEnum): untyped = 26
template Japanese*(_: type QFontDatabaseWritingSystemEnum): untyped = 27
template Korean*(_: type QFontDatabaseWritingSystemEnum): untyped = 28
template Vietnamese*(_: type QFontDatabaseWritingSystemEnum): untyped = 29
template Symbol*(_: type QFontDatabaseWritingSystemEnum): untyped = 30
template Other*(_: type QFontDatabaseWritingSystemEnum): untyped = 30
template Ogham*(_: type QFontDatabaseWritingSystemEnum): untyped = 31
template Runic*(_: type QFontDatabaseWritingSystemEnum): untyped = 32
template Nko*(_: type QFontDatabaseWritingSystemEnum): untyped = 33
template WritingSystemsCount*(_: type QFontDatabaseWritingSystemEnum): untyped = 34


type QFontDatabaseSystemFontEnum* = distinct cint
template GeneralFont*(_: type QFontDatabaseSystemFontEnum): untyped = 0
template FixedFont*(_: type QFontDatabaseSystemFontEnum): untyped = 1
template TitleFont*(_: type QFontDatabaseSystemFontEnum): untyped = 2
template SmallestReadableFont*(_: type QFontDatabaseSystemFontEnum): untyped = 3


import ./gen_qfontdatabase_types
export gen_qfontdatabase_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qfont_types,
  ./gen_qfontinfo_types
export
  gen_qobjectdefs_types,
  gen_qfont_types,
  gen_qfontinfo_types

type cQFontDatabase*{.exportc: "QFontDatabase", incompleteStruct.} = object

proc fcQFontDatabase_standardSizes(): struct_miqt_array {.importc: "QFontDatabase_standardSizes".}
proc fcQFontDatabase_writingSystems(): struct_miqt_array {.importc: "QFontDatabase_writingSystems".}
proc fcQFontDatabase_writingSystemsWithFamily(family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_writingSystemsWithFamily".}
proc fcQFontDatabase_families(): struct_miqt_array {.importc: "QFontDatabase_families".}
proc fcQFontDatabase_styles(family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_styles".}
proc fcQFontDatabase_pointSizes(family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_pointSizes".}
proc fcQFontDatabase_smoothSizes(family: struct_miqt_string, style: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_smoothSizes".}
proc fcQFontDatabase_styleString(font: pointer): struct_miqt_string {.importc: "QFontDatabase_styleString".}
proc fcQFontDatabase_styleStringWithFontInfo(fontInfo: pointer): struct_miqt_string {.importc: "QFontDatabase_styleStringWithFontInfo".}
proc fcQFontDatabase_font(family: struct_miqt_string, style: struct_miqt_string, pointSize: cint): pointer {.importc: "QFontDatabase_font".}
proc fcQFontDatabase_isBitmapScalable(family: struct_miqt_string): bool {.importc: "QFontDatabase_isBitmapScalable".}
proc fcQFontDatabase_isSmoothlyScalable(family: struct_miqt_string): bool {.importc: "QFontDatabase_isSmoothlyScalable".}
proc fcQFontDatabase_isScalable(family: struct_miqt_string): bool {.importc: "QFontDatabase_isScalable".}
proc fcQFontDatabase_isFixedPitch(family: struct_miqt_string): bool {.importc: "QFontDatabase_isFixedPitch".}
proc fcQFontDatabase_italic(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_italic".}
proc fcQFontDatabase_bold(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_bold".}
proc fcQFontDatabase_weight(family: struct_miqt_string, style: struct_miqt_string): cint {.importc: "QFontDatabase_weight".}
proc fcQFontDatabase_hasFamily(family: struct_miqt_string): bool {.importc: "QFontDatabase_hasFamily".}
proc fcQFontDatabase_isPrivateFamily(family: struct_miqt_string): bool {.importc: "QFontDatabase_isPrivateFamily".}
proc fcQFontDatabase_writingSystemName(writingSystem: cint): struct_miqt_string {.importc: "QFontDatabase_writingSystemName".}
proc fcQFontDatabase_writingSystemSample(writingSystem: cint): struct_miqt_string {.importc: "QFontDatabase_writingSystemSample".}
proc fcQFontDatabase_addApplicationFont(fileName: struct_miqt_string): cint {.importc: "QFontDatabase_addApplicationFont".}
proc fcQFontDatabase_addApplicationFontFromData(fontData: struct_miqt_string): cint {.importc: "QFontDatabase_addApplicationFontFromData".}
proc fcQFontDatabase_applicationFontFamilies(id: cint): struct_miqt_array {.importc: "QFontDatabase_applicationFontFamilies".}
proc fcQFontDatabase_removeApplicationFont(id: cint): bool {.importc: "QFontDatabase_removeApplicationFont".}
proc fcQFontDatabase_removeAllApplicationFonts(): bool {.importc: "QFontDatabase_removeAllApplicationFonts".}
proc fcQFontDatabase_systemFont(typeVal: cint): pointer {.importc: "QFontDatabase_systemFont".}
proc fcQFontDatabase_families1(writingSystem: cint): struct_miqt_array {.importc: "QFontDatabase_families1".}
proc fcQFontDatabase_pointSizes2(family: struct_miqt_string, style: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_pointSizes2".}
proc fcQFontDatabase_isBitmapScalable2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isBitmapScalable2".}
proc fcQFontDatabase_isSmoothlyScalable2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isSmoothlyScalable2".}
proc fcQFontDatabase_isScalable2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isScalable2".}
proc fcQFontDatabase_isFixedPitch2(family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isFixedPitch2".}
proc fcQFontDatabase_new(): ptr cQFontDatabase {.importc: "QFontDatabase_new".}
proc fcQFontDatabase_staticMetaObject(): pointer {.importc: "QFontDatabase_staticMetaObject".}

proc standardSizes*(_: type gen_qfontdatabase_types.QFontDatabase): seq[cint] =
  var v_ma = fcQFontDatabase_standardSizes()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc writingSystems*(_: type gen_qfontdatabase_types.QFontDatabase): seq[cint] =
  var v_ma = fcQFontDatabase_writingSystems()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc writingSystems*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): seq[cint] =
  var v_ma = fcQFontDatabase_writingSystemsWithFamily(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc families*(_: type gen_qfontdatabase_types.QFontDatabase): seq[string] =
  var v_ma = fcQFontDatabase_families()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc styles*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): seq[string] =
  var v_ma = fcQFontDatabase_styles(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc pointSizes*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): seq[cint] =
  var v_ma = fcQFontDatabase_pointSizes(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc smoothSizes*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): seq[cint] =
  var v_ma = fcQFontDatabase_smoothSizes(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc styleString*(_: type gen_qfontdatabase_types.QFontDatabase, font: gen_qfont_types.QFont): string =
  let v_ms = fcQFontDatabase_styleString(font.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc styleString*(_: type gen_qfontdatabase_types.QFontDatabase, fontInfo: gen_qfontinfo_types.QFontInfo): string =
  let v_ms = fcQFontDatabase_styleStringWithFontInfo(fontInfo.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc font*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char], pointSize: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDatabase_font(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))), pointSize), owned: true)

proc isBitmapScalable*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): bool =
  fcQFontDatabase_isBitmapScalable(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))

proc isSmoothlyScalable*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): bool =
  fcQFontDatabase_isSmoothlyScalable(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))

proc isScalable*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): bool =
  fcQFontDatabase_isScalable(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))

proc isFixedPitch*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): bool =
  fcQFontDatabase_isFixedPitch(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))

proc italic*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): bool =
  fcQFontDatabase_italic(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))

proc bold*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): bool =
  fcQFontDatabase_bold(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))

proc weight*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): cint =
  fcQFontDatabase_weight(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))

proc hasFamily*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): bool =
  fcQFontDatabase_hasFamily(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))

proc isPrivateFamily*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char]): bool =
  fcQFontDatabase_isPrivateFamily(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))))

proc writingSystemName*(_: type gen_qfontdatabase_types.QFontDatabase, writingSystem: cint): string =
  let v_ms = fcQFontDatabase_writingSystemName(cint(writingSystem))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc writingSystemSample*(_: type gen_qfontdatabase_types.QFontDatabase, writingSystem: cint): string =
  let v_ms = fcQFontDatabase_writingSystemSample(cint(writingSystem))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addApplicationFont*(_: type gen_qfontdatabase_types.QFontDatabase, fileName: openArray[char]): cint =
  fcQFontDatabase_addApplicationFont(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc addApplicationFontFromData*(_: type gen_qfontdatabase_types.QFontDatabase, fontData: openArray[byte]): cint =
  fcQFontDatabase_addApplicationFontFromData(struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))))

proc applicationFontFamilies*(_: type gen_qfontdatabase_types.QFontDatabase, id: cint): seq[string] =
  var v_ma = fcQFontDatabase_applicationFontFamilies(id)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc removeApplicationFont*(_: type gen_qfontdatabase_types.QFontDatabase, id: cint): bool =
  fcQFontDatabase_removeApplicationFont(id)

proc removeAllApplicationFonts*(_: type gen_qfontdatabase_types.QFontDatabase): bool =
  fcQFontDatabase_removeAllApplicationFonts()

proc systemFont*(_: type gen_qfontdatabase_types.QFontDatabase, typeVal: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDatabase_systemFont(cint(typeVal)), owned: true)

proc families*(_: type gen_qfontdatabase_types.QFontDatabase, writingSystem: cint): seq[string] =
  var v_ma = fcQFontDatabase_families1(cint(writingSystem))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc pointSizes*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): seq[cint] =
  var v_ma = fcQFontDatabase_pointSizes2(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc isBitmapScalable*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): bool =
  fcQFontDatabase_isBitmapScalable2(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))

proc isSmoothlyScalable*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): bool =
  fcQFontDatabase_isSmoothlyScalable2(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))

proc isScalable*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): bool =
  fcQFontDatabase_isScalable2(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))

proc isFixedPitch*(_: type gen_qfontdatabase_types.QFontDatabase, family: openArray[char], style: openArray[char]): bool =
  fcQFontDatabase_isFixedPitch2(struct_miqt_string(data: if len(family) > 0: addr family[0] else: nil, len: csize_t(len(family))), struct_miqt_string(data: if len(style) > 0: addr style[0] else: nil, len: csize_t(len(style))))

proc create*(T: type gen_qfontdatabase_types.QFontDatabase): gen_qfontdatabase_types.QFontDatabase =
  gen_qfontdatabase_types.QFontDatabase(h: fcQFontDatabase_new(), owned: true)

proc staticMetaObject*(_: type gen_qfontdatabase_types.QFontDatabase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDatabase_staticMetaObject())
