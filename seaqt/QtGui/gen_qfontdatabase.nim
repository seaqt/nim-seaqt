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
{.compile("gen_qfontdatabase.cpp", cflags).}


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

proc fcQFontDatabase_new(): ptr cQFontDatabase {.importc: "QFontDatabase_new".}
proc fcQFontDatabase_standardSizes(): struct_miqt_array {.importc: "QFontDatabase_standardSizes".}
proc fcQFontDatabase_writingSystems(self: pointer, ): struct_miqt_array {.importc: "QFontDatabase_writingSystems".}
proc fcQFontDatabase_writingSystemsWithFamily(self: pointer, family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_writingSystemsWithFamily".}
proc fcQFontDatabase_families(self: pointer, ): struct_miqt_array {.importc: "QFontDatabase_families".}
proc fcQFontDatabase_styles(self: pointer, family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_styles".}
proc fcQFontDatabase_pointSizes(self: pointer, family: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_pointSizes".}
proc fcQFontDatabase_smoothSizes(self: pointer, family: struct_miqt_string, style: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_smoothSizes".}
proc fcQFontDatabase_styleString(self: pointer, font: pointer): struct_miqt_string {.importc: "QFontDatabase_styleString".}
proc fcQFontDatabase_styleStringWithFontInfo(self: pointer, fontInfo: pointer): struct_miqt_string {.importc: "QFontDatabase_styleStringWithFontInfo".}
proc fcQFontDatabase_font(self: pointer, family: struct_miqt_string, style: struct_miqt_string, pointSize: cint): pointer {.importc: "QFontDatabase_font".}
proc fcQFontDatabase_isBitmapScalable(self: pointer, family: struct_miqt_string): bool {.importc: "QFontDatabase_isBitmapScalable".}
proc fcQFontDatabase_isSmoothlyScalable(self: pointer, family: struct_miqt_string): bool {.importc: "QFontDatabase_isSmoothlyScalable".}
proc fcQFontDatabase_isScalable(self: pointer, family: struct_miqt_string): bool {.importc: "QFontDatabase_isScalable".}
proc fcQFontDatabase_isFixedPitch(self: pointer, family: struct_miqt_string): bool {.importc: "QFontDatabase_isFixedPitch".}
proc fcQFontDatabase_italic(self: pointer, family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_italic".}
proc fcQFontDatabase_bold(self: pointer, family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_bold".}
proc fcQFontDatabase_weight(self: pointer, family: struct_miqt_string, style: struct_miqt_string): cint {.importc: "QFontDatabase_weight".}
proc fcQFontDatabase_hasFamily(self: pointer, family: struct_miqt_string): bool {.importc: "QFontDatabase_hasFamily".}
proc fcQFontDatabase_isPrivateFamily(self: pointer, family: struct_miqt_string): bool {.importc: "QFontDatabase_isPrivateFamily".}
proc fcQFontDatabase_writingSystemName(writingSystem: cint): struct_miqt_string {.importc: "QFontDatabase_writingSystemName".}
proc fcQFontDatabase_writingSystemSample(writingSystem: cint): struct_miqt_string {.importc: "QFontDatabase_writingSystemSample".}
proc fcQFontDatabase_addApplicationFont(fileName: struct_miqt_string): cint {.importc: "QFontDatabase_addApplicationFont".}
proc fcQFontDatabase_addApplicationFontFromData(fontData: struct_miqt_string): cint {.importc: "QFontDatabase_addApplicationFontFromData".}
proc fcQFontDatabase_applicationFontFamilies(id: cint): struct_miqt_array {.importc: "QFontDatabase_applicationFontFamilies".}
proc fcQFontDatabase_removeApplicationFont(id: cint): bool {.importc: "QFontDatabase_removeApplicationFont".}
proc fcQFontDatabase_removeAllApplicationFonts(): bool {.importc: "QFontDatabase_removeAllApplicationFonts".}
proc fcQFontDatabase_supportsThreadedFontRendering(): bool {.importc: "QFontDatabase_supportsThreadedFontRendering".}
proc fcQFontDatabase_systemFont(typeVal: cint): pointer {.importc: "QFontDatabase_systemFont".}
proc fcQFontDatabase_families1(self: pointer, writingSystem: cint): struct_miqt_array {.importc: "QFontDatabase_families1".}
proc fcQFontDatabase_pointSizes2(self: pointer, family: struct_miqt_string, style: struct_miqt_string): struct_miqt_array {.importc: "QFontDatabase_pointSizes2".}
proc fcQFontDatabase_isBitmapScalable2(self: pointer, family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isBitmapScalable2".}
proc fcQFontDatabase_isSmoothlyScalable2(self: pointer, family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isSmoothlyScalable2".}
proc fcQFontDatabase_isScalable2(self: pointer, family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isScalable2".}
proc fcQFontDatabase_isFixedPitch2(self: pointer, family: struct_miqt_string, style: struct_miqt_string): bool {.importc: "QFontDatabase_isFixedPitch2".}
proc fcQFontDatabase_staticMetaObject(): pointer {.importc: "QFontDatabase_staticMetaObject".}
proc fcQFontDatabase_delete(self: pointer) {.importc: "QFontDatabase_delete".}


func init*(T: type gen_qfontdatabase_types.QFontDatabase, h: ptr cQFontDatabase): gen_qfontdatabase_types.QFontDatabase =
  T(h: h)
proc create*(T: type gen_qfontdatabase_types.QFontDatabase, ): gen_qfontdatabase_types.QFontDatabase =
  gen_qfontdatabase_types.QFontDatabase.init(fcQFontDatabase_new())

proc standardSizes*(_: type gen_qfontdatabase_types.QFontDatabase, ): seq[cint] =
  var v_ma = fcQFontDatabase_standardSizes()
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc writingSystems*(self: gen_qfontdatabase_types.QFontDatabase, ): seq[cint] =
  var v_ma = fcQFontDatabase_writingSystems(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc writingSystems*(self: gen_qfontdatabase_types.QFontDatabase, family: string): seq[cint] =
  var v_ma = fcQFontDatabase_writingSystemsWithFamily(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  vx_ret

proc families*(self: gen_qfontdatabase_types.QFontDatabase, ): seq[string] =
  var v_ma = fcQFontDatabase_families(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc styles*(self: gen_qfontdatabase_types.QFontDatabase, family: string): seq[string] =
  var v_ma = fcQFontDatabase_styles(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc pointSizes*(self: gen_qfontdatabase_types.QFontDatabase, family: string): seq[cint] =
  var v_ma = fcQFontDatabase_pointSizes(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc smoothSizes*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): seq[cint] =
  var v_ma = fcQFontDatabase_smoothSizes(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc styleString*(self: gen_qfontdatabase_types.QFontDatabase, font: gen_qfont_types.QFont): string =
  let v_ms = fcQFontDatabase_styleString(self.h, font.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc styleString*(self: gen_qfontdatabase_types.QFontDatabase, fontInfo: gen_qfontinfo_types.QFontInfo): string =
  let v_ms = fcQFontDatabase_styleStringWithFontInfo(self.h, fontInfo.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc font*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string, pointSize: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDatabase_font(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))), pointSize))

proc isBitmapScalable*(self: gen_qfontdatabase_types.QFontDatabase, family: string): bool =
  fcQFontDatabase_isBitmapScalable(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc isSmoothlyScalable*(self: gen_qfontdatabase_types.QFontDatabase, family: string): bool =
  fcQFontDatabase_isSmoothlyScalable(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc isScalable*(self: gen_qfontdatabase_types.QFontDatabase, family: string): bool =
  fcQFontDatabase_isScalable(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc isFixedPitch*(self: gen_qfontdatabase_types.QFontDatabase, family: string): bool =
  fcQFontDatabase_isFixedPitch(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc italic*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): bool =
  fcQFontDatabase_italic(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc bold*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): bool =
  fcQFontDatabase_bold(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc weight*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): cint =
  fcQFontDatabase_weight(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc hasFamily*(self: gen_qfontdatabase_types.QFontDatabase, family: string): bool =
  fcQFontDatabase_hasFamily(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc isPrivateFamily*(self: gen_qfontdatabase_types.QFontDatabase, family: string): bool =
  fcQFontDatabase_isPrivateFamily(self.h, struct_miqt_string(data: family, len: csize_t(len(family))))

proc writingSystemName*(_: type gen_qfontdatabase_types.QFontDatabase, writingSystem: cint): string =
  let v_ms = fcQFontDatabase_writingSystemName(cint(writingSystem))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc writingSystemSample*(_: type gen_qfontdatabase_types.QFontDatabase, writingSystem: cint): string =
  let v_ms = fcQFontDatabase_writingSystemSample(cint(writingSystem))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addApplicationFont*(_: type gen_qfontdatabase_types.QFontDatabase, fileName: string): cint =
  fcQFontDatabase_addApplicationFont(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc addApplicationFontFromData*(_: type gen_qfontdatabase_types.QFontDatabase, fontData: seq[byte]): cint =
  fcQFontDatabase_addApplicationFontFromData(struct_miqt_string(data: cast[cstring](if len(fontData) == 0: nil else: unsafeAddr fontData[0]), len: csize_t(len(fontData))))

proc applicationFontFamilies*(_: type gen_qfontdatabase_types.QFontDatabase, id: cint): seq[string] =
  var v_ma = fcQFontDatabase_applicationFontFamilies(id)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc removeApplicationFont*(_: type gen_qfontdatabase_types.QFontDatabase, id: cint): bool =
  fcQFontDatabase_removeApplicationFont(id)

proc removeAllApplicationFonts*(_: type gen_qfontdatabase_types.QFontDatabase, ): bool =
  fcQFontDatabase_removeAllApplicationFonts()

proc supportsThreadedFontRendering*(_: type gen_qfontdatabase_types.QFontDatabase, ): bool =
  fcQFontDatabase_supportsThreadedFontRendering()

proc systemFont*(_: type gen_qfontdatabase_types.QFontDatabase, typeVal: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDatabase_systemFont(cint(typeVal)))

proc families*(self: gen_qfontdatabase_types.QFontDatabase, writingSystem: cint): seq[string] =
  var v_ma = fcQFontDatabase_families1(self.h, cint(writingSystem))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc pointSizes*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): seq[cint] =
  var v_ma = fcQFontDatabase_pointSizes2(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc isBitmapScalable*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): bool =
  fcQFontDatabase_isBitmapScalable2(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc isSmoothlyScalable*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): bool =
  fcQFontDatabase_isSmoothlyScalable2(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc isScalable*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): bool =
  fcQFontDatabase_isScalable2(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc isFixedPitch*(self: gen_qfontdatabase_types.QFontDatabase, family: string, style: string): bool =
  fcQFontDatabase_isFixedPitch2(self.h, struct_miqt_string(data: family, len: csize_t(len(family))), struct_miqt_string(data: style, len: csize_t(len(style))))

proc staticMetaObject*(_: type gen_qfontdatabase_types.QFontDatabase): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDatabase_staticMetaObject())
proc delete*(self: gen_qfontdatabase_types.QFontDatabase) =
  fcQFontDatabase_delete(self.h)
