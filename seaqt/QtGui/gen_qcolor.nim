import ./Qt6Gui_libs

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


type QColorSpecEnum* = distinct cint
template Invalid*(_: type QColorSpecEnum): untyped = 0
template Rgb*(_: type QColorSpecEnum): untyped = 1
template Hsv*(_: type QColorSpecEnum): untyped = 2
template Cmyk*(_: type QColorSpecEnum): untyped = 3
template Hsl*(_: type QColorSpecEnum): untyped = 4
template ExtendedRgb*(_: type QColorSpecEnum): untyped = 5


type QColorNameFormatEnum* = distinct cint
template HexRgb*(_: type QColorNameFormatEnum): untyped = 0
template HexArgb*(_: type QColorNameFormatEnum): untyped = 1


import ./gen_qcolor_types
export gen_qcolor_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qrgba64_types
export
  gen_qvariant_types,
  gen_qrgba64_types

type cQColor*{.exportc: "QColor", incompleteStruct.} = object

proc fcQColor_fromString(name: struct_miqt_string): pointer {.importc: "QColor_fromString".}
proc fcQColor_operatorAssign(self: pointer, color: cint): void {.importc: "QColor_operatorAssign".}
proc fcQColor_isValid(self: pointer): bool {.importc: "QColor_isValid".}
proc fcQColor_name(self: pointer): struct_miqt_string {.importc: "QColor_name".}
proc fcQColor_setNamedColor(self: pointer, name: struct_miqt_string): void {.importc: "QColor_setNamedColor".}
proc fcQColor_colorNames(): struct_miqt_array {.importc: "QColor_colorNames".}
proc fcQColor_spec(self: pointer): cint {.importc: "QColor_spec".}
proc fcQColor_alpha(self: pointer): cint {.importc: "QColor_alpha".}
proc fcQColor_setAlpha(self: pointer, alpha: cint): void {.importc: "QColor_setAlpha".}
proc fcQColor_alphaF(self: pointer): float32 {.importc: "QColor_alphaF".}
proc fcQColor_setAlphaF(self: pointer, alpha: float32): void {.importc: "QColor_setAlphaF".}
proc fcQColor_red(self: pointer): cint {.importc: "QColor_red".}
proc fcQColor_green(self: pointer): cint {.importc: "QColor_green".}
proc fcQColor_blue(self: pointer): cint {.importc: "QColor_blue".}
proc fcQColor_setRed(self: pointer, red: cint): void {.importc: "QColor_setRed".}
proc fcQColor_setGreen(self: pointer, green: cint): void {.importc: "QColor_setGreen".}
proc fcQColor_setBlue(self: pointer, blue: cint): void {.importc: "QColor_setBlue".}
proc fcQColor_redF(self: pointer): float32 {.importc: "QColor_redF".}
proc fcQColor_greenF(self: pointer): float32 {.importc: "QColor_greenF".}
proc fcQColor_blueF(self: pointer): float32 {.importc: "QColor_blueF".}
proc fcQColor_setRedF(self: pointer, red: float32): void {.importc: "QColor_setRedF".}
proc fcQColor_setGreenF(self: pointer, green: float32): void {.importc: "QColor_setGreenF".}
proc fcQColor_setBlueF(self: pointer, blue: float32): void {.importc: "QColor_setBlueF".}
proc fcQColor_getRgb(self: pointer, r: ptr cint, g: ptr cint, b: ptr cint): void {.importc: "QColor_getRgb".}
proc fcQColor_setRgb(self: pointer, r: cint, g: cint, b: cint): void {.importc: "QColor_setRgb".}
proc fcQColor_getRgbF(self: pointer, r: ptr float32, g: ptr float32, b: ptr float32): void {.importc: "QColor_getRgbF".}
proc fcQColor_setRgbF(self: pointer, r: float32, g: float32, b: float32): void {.importc: "QColor_setRgbF".}
proc fcQColor_rgba64(self: pointer): pointer {.importc: "QColor_rgba64".}
proc fcQColor_setRgba64(self: pointer, rgba: pointer): void {.importc: "QColor_setRgba64".}
proc fcQColor_rgba(self: pointer): cuint {.importc: "QColor_rgba".}
proc fcQColor_setRgba(self: pointer, rgba: cuint): void {.importc: "QColor_setRgba".}
proc fcQColor_rgb(self: pointer): cuint {.importc: "QColor_rgb".}
proc fcQColor_setRgbWithRgb(self: pointer, rgb: cuint): void {.importc: "QColor_setRgbWithRgb".}
proc fcQColor_hue(self: pointer): cint {.importc: "QColor_hue".}
proc fcQColor_saturation(self: pointer): cint {.importc: "QColor_saturation".}
proc fcQColor_hsvHue(self: pointer): cint {.importc: "QColor_hsvHue".}
proc fcQColor_hsvSaturation(self: pointer): cint {.importc: "QColor_hsvSaturation".}
proc fcQColor_value(self: pointer): cint {.importc: "QColor_value".}
proc fcQColor_hueF(self: pointer): float32 {.importc: "QColor_hueF".}
proc fcQColor_saturationF(self: pointer): float32 {.importc: "QColor_saturationF".}
proc fcQColor_hsvHueF(self: pointer): float32 {.importc: "QColor_hsvHueF".}
proc fcQColor_hsvSaturationF(self: pointer): float32 {.importc: "QColor_hsvSaturationF".}
proc fcQColor_valueF(self: pointer): float32 {.importc: "QColor_valueF".}
proc fcQColor_getHsv(self: pointer, h: ptr cint, s: ptr cint, v: ptr cint): void {.importc: "QColor_getHsv".}
proc fcQColor_setHsv(self: pointer, h: cint, s: cint, v: cint): void {.importc: "QColor_setHsv".}
proc fcQColor_getHsvF(self: pointer, h: ptr float32, s: ptr float32, v: ptr float32): void {.importc: "QColor_getHsvF".}
proc fcQColor_setHsvF(self: pointer, h: float32, s: float32, v: float32): void {.importc: "QColor_setHsvF".}
proc fcQColor_cyan(self: pointer): cint {.importc: "QColor_cyan".}
proc fcQColor_magenta(self: pointer): cint {.importc: "QColor_magenta".}
proc fcQColor_yellow(self: pointer): cint {.importc: "QColor_yellow".}
proc fcQColor_black(self: pointer): cint {.importc: "QColor_black".}
proc fcQColor_cyanF(self: pointer): float32 {.importc: "QColor_cyanF".}
proc fcQColor_magentaF(self: pointer): float32 {.importc: "QColor_magentaF".}
proc fcQColor_yellowF(self: pointer): float32 {.importc: "QColor_yellowF".}
proc fcQColor_blackF(self: pointer): float32 {.importc: "QColor_blackF".}
proc fcQColor_getCmyk(self: pointer, c: ptr cint, m: ptr cint, y: ptr cint, k: ptr cint): void {.importc: "QColor_getCmyk".}
proc fcQColor_setCmyk(self: pointer, c: cint, m: cint, y: cint, k: cint): void {.importc: "QColor_setCmyk".}
proc fcQColor_getCmykF(self: pointer, c: ptr float32, m: ptr float32, y: ptr float32, k: ptr float32): void {.importc: "QColor_getCmykF".}
proc fcQColor_setCmykF(self: pointer, c: float32, m: float32, y: float32, k: float32): void {.importc: "QColor_setCmykF".}
proc fcQColor_hslHue(self: pointer): cint {.importc: "QColor_hslHue".}
proc fcQColor_hslSaturation(self: pointer): cint {.importc: "QColor_hslSaturation".}
proc fcQColor_lightness(self: pointer): cint {.importc: "QColor_lightness".}
proc fcQColor_hslHueF(self: pointer): float32 {.importc: "QColor_hslHueF".}
proc fcQColor_hslSaturationF(self: pointer): float32 {.importc: "QColor_hslSaturationF".}
proc fcQColor_lightnessF(self: pointer): float32 {.importc: "QColor_lightnessF".}
proc fcQColor_getHsl(self: pointer, h: ptr cint, s: ptr cint, l: ptr cint): void {.importc: "QColor_getHsl".}
proc fcQColor_setHsl(self: pointer, h: cint, s: cint, l: cint): void {.importc: "QColor_setHsl".}
proc fcQColor_getHslF(self: pointer, h: ptr float32, s: ptr float32, l: ptr float32): void {.importc: "QColor_getHslF".}
proc fcQColor_setHslF(self: pointer, h: float32, s: float32, l: float32): void {.importc: "QColor_setHslF".}
proc fcQColor_toRgb(self: pointer): pointer {.importc: "QColor_toRgb".}
proc fcQColor_toHsv(self: pointer): pointer {.importc: "QColor_toHsv".}
proc fcQColor_toCmyk(self: pointer): pointer {.importc: "QColor_toCmyk".}
proc fcQColor_toHsl(self: pointer): pointer {.importc: "QColor_toHsl".}
proc fcQColor_toExtendedRgb(self: pointer): pointer {.importc: "QColor_toExtendedRgb".}
proc fcQColor_convertTo(self: pointer, colorSpec: cint): pointer {.importc: "QColor_convertTo".}
proc fcQColor_fromRgb(rgb: cuint): pointer {.importc: "QColor_fromRgb".}
proc fcQColor_fromRgba(rgba: cuint): pointer {.importc: "QColor_fromRgba".}
proc fcQColor_fromRgb2(r: cint, g: cint, b: cint): pointer {.importc: "QColor_fromRgb2".}
proc fcQColor_fromRgbF(r: float32, g: float32, b: float32): pointer {.importc: "QColor_fromRgbF".}
proc fcQColor_fromRgba64(r: cushort, g: cushort, b: cushort): pointer {.importc: "QColor_fromRgba64".}
proc fcQColor_fromRgba64WithRgba(rgba: pointer): pointer {.importc: "QColor_fromRgba64WithRgba".}
proc fcQColor_fromHsv(h: cint, s: cint, v: cint): pointer {.importc: "QColor_fromHsv".}
proc fcQColor_fromHsvF(h: float32, s: float32, v: float32): pointer {.importc: "QColor_fromHsvF".}
proc fcQColor_fromCmyk(c: cint, m: cint, y: cint, k: cint): pointer {.importc: "QColor_fromCmyk".}
proc fcQColor_fromCmykF(c: float32, m: float32, y: float32, k: float32): pointer {.importc: "QColor_fromCmykF".}
proc fcQColor_fromHsl(h: cint, s: cint, l: cint): pointer {.importc: "QColor_fromHsl".}
proc fcQColor_fromHslF(h: float32, s: float32, l: float32): pointer {.importc: "QColor_fromHslF".}
proc fcQColor_lighter(self: pointer): pointer {.importc: "QColor_lighter".}
proc fcQColor_darker(self: pointer): pointer {.importc: "QColor_darker".}
proc fcQColor_operatorEqual(self: pointer, c: pointer): bool {.importc: "QColor_operatorEqual".}
proc fcQColor_operatorNotEqual(self: pointer, c: pointer): bool {.importc: "QColor_operatorNotEqual".}
proc fcQColor_ToQVariant(self: pointer): pointer {.importc: "QColor_ToQVariant".}
proc fcQColor_isValidColor(name: struct_miqt_string): bool {.importc: "QColor_isValidColor".}
proc fcQColor_isValidColorName(param1: struct_miqt_string): bool {.importc: "QColor_isValidColorName".}
proc fcQColor_name1(self: pointer, format: cint): struct_miqt_string {.importc: "QColor_name1".}
proc fcQColor_getRgb4(self: pointer, r: ptr cint, g: ptr cint, b: ptr cint, a: ptr cint): void {.importc: "QColor_getRgb4".}
proc fcQColor_setRgb4(self: pointer, r: cint, g: cint, b: cint, a: cint): void {.importc: "QColor_setRgb4".}
proc fcQColor_getRgbF4(self: pointer, r: ptr float32, g: ptr float32, b: ptr float32, a: ptr float32): void {.importc: "QColor_getRgbF4".}
proc fcQColor_setRgbF4(self: pointer, r: float32, g: float32, b: float32, a: float32): void {.importc: "QColor_setRgbF4".}
proc fcQColor_getHsv4(self: pointer, h: ptr cint, s: ptr cint, v: ptr cint, a: ptr cint): void {.importc: "QColor_getHsv4".}
proc fcQColor_setHsv4(self: pointer, h: cint, s: cint, v: cint, a: cint): void {.importc: "QColor_setHsv4".}
proc fcQColor_getHsvF4(self: pointer, h: ptr float32, s: ptr float32, v: ptr float32, a: ptr float32): void {.importc: "QColor_getHsvF4".}
proc fcQColor_setHsvF4(self: pointer, h: float32, s: float32, v: float32, a: float32): void {.importc: "QColor_setHsvF4".}
proc fcQColor_getCmyk5(self: pointer, c: ptr cint, m: ptr cint, y: ptr cint, k: ptr cint, a: ptr cint): void {.importc: "QColor_getCmyk5".}
proc fcQColor_setCmyk5(self: pointer, c: cint, m: cint, y: cint, k: cint, a: cint): void {.importc: "QColor_setCmyk5".}
proc fcQColor_getCmykF5(self: pointer, c: ptr float32, m: ptr float32, y: ptr float32, k: ptr float32, a: ptr float32): void {.importc: "QColor_getCmykF5".}
proc fcQColor_setCmykF5(self: pointer, c: float32, m: float32, y: float32, k: float32, a: float32): void {.importc: "QColor_setCmykF5".}
proc fcQColor_getHsl4(self: pointer, h: ptr cint, s: ptr cint, l: ptr cint, a: ptr cint): void {.importc: "QColor_getHsl4".}
proc fcQColor_setHsl4(self: pointer, h: cint, s: cint, l: cint, a: cint): void {.importc: "QColor_setHsl4".}
proc fcQColor_getHslF4(self: pointer, h: ptr float32, s: ptr float32, l: ptr float32, a: ptr float32): void {.importc: "QColor_getHslF4".}
proc fcQColor_setHslF4(self: pointer, h: float32, s: float32, l: float32, a: float32): void {.importc: "QColor_setHslF4".}
proc fcQColor_fromRgb4(r: cint, g: cint, b: cint, a: cint): pointer {.importc: "QColor_fromRgb4".}
proc fcQColor_fromRgbF4(r: float32, g: float32, b: float32, a: float32): pointer {.importc: "QColor_fromRgbF4".}
proc fcQColor_fromRgba644(r: cushort, g: cushort, b: cushort, a: cushort): pointer {.importc: "QColor_fromRgba644".}
proc fcQColor_fromHsv4(h: cint, s: cint, v: cint, a: cint): pointer {.importc: "QColor_fromHsv4".}
proc fcQColor_fromHsvF4(h: float32, s: float32, v: float32, a: float32): pointer {.importc: "QColor_fromHsvF4".}
proc fcQColor_fromCmyk5(c: cint, m: cint, y: cint, k: cint, a: cint): pointer {.importc: "QColor_fromCmyk5".}
proc fcQColor_fromCmykF5(c: float32, m: float32, y: float32, k: float32, a: float32): pointer {.importc: "QColor_fromCmykF5".}
proc fcQColor_fromHsl4(h: cint, s: cint, l: cint, a: cint): pointer {.importc: "QColor_fromHsl4".}
proc fcQColor_fromHslF4(h: float32, s: float32, l: float32, a: float32): pointer {.importc: "QColor_fromHslF4".}
proc fcQColor_lighter1(self: pointer, f: cint): pointer {.importc: "QColor_lighter1".}
proc fcQColor_darker1(self: pointer, f: cint): pointer {.importc: "QColor_darker1".}
proc fcQColor_new(): ptr cQColor {.importc: "QColor_new".}
proc fcQColor_new2(color: cint): ptr cQColor {.importc: "QColor_new2".}
proc fcQColor_new3(r: cint, g: cint, b: cint): ptr cQColor {.importc: "QColor_new3".}
proc fcQColor_new4(rgb: cuint): ptr cQColor {.importc: "QColor_new4".}
proc fcQColor_new5(rgba64: pointer): ptr cQColor {.importc: "QColor_new5".}
proc fcQColor_new6(name: struct_miqt_string): ptr cQColor {.importc: "QColor_new6".}
proc fcQColor_new7(aname: cstring): ptr cQColor {.importc: "QColor_new7".}
proc fcQColor_new8(spec: cint): ptr cQColor {.importc: "QColor_new8".}
proc fcQColor_new9(spec: cint, a1: cushort, a2: cushort, a3: cushort, a4: cushort): ptr cQColor {.importc: "QColor_new9".}
proc fcQColor_new10(param1: pointer): ptr cQColor {.importc: "QColor_new10".}
proc fcQColor_new11(r: cint, g: cint, b: cint, a: cint): ptr cQColor {.importc: "QColor_new11".}
proc fcQColor_new12(spec: cint, a1: cushort, a2: cushort, a3: cushort, a4: cushort, a5: cushort): ptr cQColor {.importc: "QColor_new12".}

proc fromString*(_: type gen_qcolor_types.QColor, name: openArray[char]): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromString(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc operatorAssign*(self: gen_qcolor_types.QColor, color: cint): void =
  fcQColor_operatorAssign(self.h, cint(color))

proc isValid*(self: gen_qcolor_types.QColor): bool =
  fcQColor_isValid(self.h)

proc name*(self: gen_qcolor_types.QColor): string =
  let v_ms = fcQColor_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setNamedColor*(self: gen_qcolor_types.QColor, name: openArray[char]): void =
  fcQColor_setNamedColor(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc colorNames*(_: type gen_qcolor_types.QColor): seq[string] =
  var v_ma = fcQColor_colorNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc spec*(self: gen_qcolor_types.QColor): cint =
  cint(fcQColor_spec(self.h))

proc alpha*(self: gen_qcolor_types.QColor): cint =
  fcQColor_alpha(self.h)

proc setAlpha*(self: gen_qcolor_types.QColor, alpha: cint): void =
  fcQColor_setAlpha(self.h, alpha)

proc alphaF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_alphaF(self.h)

proc setAlphaF*(self: gen_qcolor_types.QColor, alpha: float32): void =
  fcQColor_setAlphaF(self.h, alpha)

proc red*(self: gen_qcolor_types.QColor): cint =
  fcQColor_red(self.h)

proc green*(self: gen_qcolor_types.QColor): cint =
  fcQColor_green(self.h)

proc blue*(self: gen_qcolor_types.QColor): cint =
  fcQColor_blue(self.h)

proc setRed*(self: gen_qcolor_types.QColor, red: cint): void =
  fcQColor_setRed(self.h, red)

proc setGreen*(self: gen_qcolor_types.QColor, green: cint): void =
  fcQColor_setGreen(self.h, green)

proc setBlue*(self: gen_qcolor_types.QColor, blue: cint): void =
  fcQColor_setBlue(self.h, blue)

proc redF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_redF(self.h)

proc greenF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_greenF(self.h)

proc blueF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_blueF(self.h)

proc setRedF*(self: gen_qcolor_types.QColor, red: float32): void =
  fcQColor_setRedF(self.h, red)

proc setGreenF*(self: gen_qcolor_types.QColor, green: float32): void =
  fcQColor_setGreenF(self.h, green)

proc setBlueF*(self: gen_qcolor_types.QColor, blue: float32): void =
  fcQColor_setBlueF(self.h, blue)

proc getRgb*(self: gen_qcolor_types.QColor, r: ptr cint, g: ptr cint, b: ptr cint): void =
  fcQColor_getRgb(self.h, r, g, b)

proc setRgb*(self: gen_qcolor_types.QColor, r: cint, g: cint, b: cint): void =
  fcQColor_setRgb(self.h, r, g, b)

proc getRgbF*(self: gen_qcolor_types.QColor, r: ptr float32, g: ptr float32, b: ptr float32): void =
  fcQColor_getRgbF(self.h, r, g, b)

proc setRgbF*(self: gen_qcolor_types.QColor, r: float32, g: float32, b: float32): void =
  fcQColor_setRgbF(self.h, r, g, b)

proc rgba64*(self: gen_qcolor_types.QColor): gen_qrgba64_types.QRgba64 =
  gen_qrgba64_types.QRgba64(h: fcQColor_rgba64(self.h), owned: true)

proc setRgba64*(self: gen_qcolor_types.QColor, rgba: gen_qrgba64_types.QRgba64): void =
  fcQColor_setRgba64(self.h, rgba.h)

proc rgba*(self: gen_qcolor_types.QColor): cuint =
  fcQColor_rgba(self.h)

proc setRgba*(self: gen_qcolor_types.QColor, rgba: cuint): void =
  fcQColor_setRgba(self.h, rgba)

proc rgb*(self: gen_qcolor_types.QColor): cuint =
  fcQColor_rgb(self.h)

proc setRgb*(self: gen_qcolor_types.QColor, rgb: cuint): void =
  fcQColor_setRgbWithRgb(self.h, rgb)

proc hue*(self: gen_qcolor_types.QColor): cint =
  fcQColor_hue(self.h)

proc saturation*(self: gen_qcolor_types.QColor): cint =
  fcQColor_saturation(self.h)

proc hsvHue*(self: gen_qcolor_types.QColor): cint =
  fcQColor_hsvHue(self.h)

proc hsvSaturation*(self: gen_qcolor_types.QColor): cint =
  fcQColor_hsvSaturation(self.h)

proc value*(self: gen_qcolor_types.QColor): cint =
  fcQColor_value(self.h)

proc hueF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_hueF(self.h)

proc saturationF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_saturationF(self.h)

proc hsvHueF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_hsvHueF(self.h)

proc hsvSaturationF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_hsvSaturationF(self.h)

proc valueF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_valueF(self.h)

proc getHsv*(self: gen_qcolor_types.QColor, h: ptr cint, s: ptr cint, v: ptr cint): void =
  fcQColor_getHsv(self.h, h, s, v)

proc setHsv*(self: gen_qcolor_types.QColor, h: cint, s: cint, v: cint): void =
  fcQColor_setHsv(self.h, h, s, v)

proc getHsvF*(self: gen_qcolor_types.QColor, h: ptr float32, s: ptr float32, v: ptr float32): void =
  fcQColor_getHsvF(self.h, h, s, v)

proc setHsvF*(self: gen_qcolor_types.QColor, h: float32, s: float32, v: float32): void =
  fcQColor_setHsvF(self.h, h, s, v)

proc cyan*(self: gen_qcolor_types.QColor): cint =
  fcQColor_cyan(self.h)

proc magenta*(self: gen_qcolor_types.QColor): cint =
  fcQColor_magenta(self.h)

proc yellow*(self: gen_qcolor_types.QColor): cint =
  fcQColor_yellow(self.h)

proc black*(self: gen_qcolor_types.QColor): cint =
  fcQColor_black(self.h)

proc cyanF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_cyanF(self.h)

proc magentaF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_magentaF(self.h)

proc yellowF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_yellowF(self.h)

proc blackF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_blackF(self.h)

proc getCmyk*(self: gen_qcolor_types.QColor, c: ptr cint, m: ptr cint, y: ptr cint, k: ptr cint): void =
  fcQColor_getCmyk(self.h, c, m, y, k)

proc setCmyk*(self: gen_qcolor_types.QColor, c: cint, m: cint, y: cint, k: cint): void =
  fcQColor_setCmyk(self.h, c, m, y, k)

proc getCmykF*(self: gen_qcolor_types.QColor, c: ptr float32, m: ptr float32, y: ptr float32, k: ptr float32): void =
  fcQColor_getCmykF(self.h, c, m, y, k)

proc setCmykF*(self: gen_qcolor_types.QColor, c: float32, m: float32, y: float32, k: float32): void =
  fcQColor_setCmykF(self.h, c, m, y, k)

proc hslHue*(self: gen_qcolor_types.QColor): cint =
  fcQColor_hslHue(self.h)

proc hslSaturation*(self: gen_qcolor_types.QColor): cint =
  fcQColor_hslSaturation(self.h)

proc lightness*(self: gen_qcolor_types.QColor): cint =
  fcQColor_lightness(self.h)

proc hslHueF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_hslHueF(self.h)

proc hslSaturationF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_hslSaturationF(self.h)

proc lightnessF*(self: gen_qcolor_types.QColor): float32 =
  fcQColor_lightnessF(self.h)

proc getHsl*(self: gen_qcolor_types.QColor, h: ptr cint, s: ptr cint, l: ptr cint): void =
  fcQColor_getHsl(self.h, h, s, l)

proc setHsl*(self: gen_qcolor_types.QColor, h: cint, s: cint, l: cint): void =
  fcQColor_setHsl(self.h, h, s, l)

proc getHslF*(self: gen_qcolor_types.QColor, h: ptr float32, s: ptr float32, l: ptr float32): void =
  fcQColor_getHslF(self.h, h, s, l)

proc setHslF*(self: gen_qcolor_types.QColor, h: float32, s: float32, l: float32): void =
  fcQColor_setHslF(self.h, h, s, l)

proc toRgb*(self: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_toRgb(self.h), owned: true)

proc toHsv*(self: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_toHsv(self.h), owned: true)

proc toCmyk*(self: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_toCmyk(self.h), owned: true)

proc toHsl*(self: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_toHsl(self.h), owned: true)

proc toExtendedRgb*(self: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_toExtendedRgb(self.h), owned: true)

proc convertTo*(self: gen_qcolor_types.QColor, colorSpec: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_convertTo(self.h, cint(colorSpec)), owned: true)

proc fromRgb*(_: type gen_qcolor_types.QColor, rgb: cuint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgb(rgb), owned: true)

proc fromRgba*(_: type gen_qcolor_types.QColor, rgba: cuint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgba(rgba), owned: true)

proc fromRgb*(_: type gen_qcolor_types.QColor, r: cint, g: cint, b: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgb2(r, g, b), owned: true)

proc fromRgbF*(_: type gen_qcolor_types.QColor, r: float32, g: float32, b: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgbF(r, g, b), owned: true)

proc fromRgba64*(_: type gen_qcolor_types.QColor, r: cushort, g: cushort, b: cushort): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgba64(r, g, b), owned: true)

proc fromRgba64*(_: type gen_qcolor_types.QColor, rgba: gen_qrgba64_types.QRgba64): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgba64WithRgba(rgba.h), owned: true)

proc fromHsv*(_: type gen_qcolor_types.QColor, h: cint, s: cint, v: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHsv(h, s, v), owned: true)

proc fromHsvF*(_: type gen_qcolor_types.QColor, h: float32, s: float32, v: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHsvF(h, s, v), owned: true)

proc fromCmyk*(_: type gen_qcolor_types.QColor, c: cint, m: cint, y: cint, k: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromCmyk(c, m, y, k), owned: true)

proc fromCmykF*(_: type gen_qcolor_types.QColor, c: float32, m: float32, y: float32, k: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromCmykF(c, m, y, k), owned: true)

proc fromHsl*(_: type gen_qcolor_types.QColor, h: cint, s: cint, l: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHsl(h, s, l), owned: true)

proc fromHslF*(_: type gen_qcolor_types.QColor, h: float32, s: float32, l: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHslF(h, s, l), owned: true)

proc lighter*(self: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_lighter(self.h), owned: true)

proc darker*(self: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_darker(self.h), owned: true)

proc operatorEqual*(self: gen_qcolor_types.QColor, c: gen_qcolor_types.QColor): bool =
  fcQColor_operatorEqual(self.h, c.h)

proc operatorNotEqual*(self: gen_qcolor_types.QColor, c: gen_qcolor_types.QColor): bool =
  fcQColor_operatorNotEqual(self.h, c.h)

proc ToQVariant*(self: gen_qcolor_types.QColor): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQColor_ToQVariant(self.h), owned: true)

proc isValidColor*(_: type gen_qcolor_types.QColor, name: openArray[char]): bool =
  fcQColor_isValidColor(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc isValidColorName*(_: type gen_qcolor_types.QColor, param1: openArray[char]): bool =
  fcQColor_isValidColorName(struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))

proc name*(self: gen_qcolor_types.QColor, format: cint): string =
  let v_ms = fcQColor_name1(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getRgb*(self: gen_qcolor_types.QColor, r: ptr cint, g: ptr cint, b: ptr cint, a: ptr cint): void =
  fcQColor_getRgb4(self.h, r, g, b, a)

proc setRgb*(self: gen_qcolor_types.QColor, r: cint, g: cint, b: cint, a: cint): void =
  fcQColor_setRgb4(self.h, r, g, b, a)

proc getRgbF*(self: gen_qcolor_types.QColor, r: ptr float32, g: ptr float32, b: ptr float32, a: ptr float32): void =
  fcQColor_getRgbF4(self.h, r, g, b, a)

proc setRgbF*(self: gen_qcolor_types.QColor, r: float32, g: float32, b: float32, a: float32): void =
  fcQColor_setRgbF4(self.h, r, g, b, a)

proc getHsv*(self: gen_qcolor_types.QColor, h: ptr cint, s: ptr cint, v: ptr cint, a: ptr cint): void =
  fcQColor_getHsv4(self.h, h, s, v, a)

proc setHsv*(self: gen_qcolor_types.QColor, h: cint, s: cint, v: cint, a: cint): void =
  fcQColor_setHsv4(self.h, h, s, v, a)

proc getHsvF*(self: gen_qcolor_types.QColor, h: ptr float32, s: ptr float32, v: ptr float32, a: ptr float32): void =
  fcQColor_getHsvF4(self.h, h, s, v, a)

proc setHsvF*(self: gen_qcolor_types.QColor, h: float32, s: float32, v: float32, a: float32): void =
  fcQColor_setHsvF4(self.h, h, s, v, a)

proc getCmyk*(self: gen_qcolor_types.QColor, c: ptr cint, m: ptr cint, y: ptr cint, k: ptr cint, a: ptr cint): void =
  fcQColor_getCmyk5(self.h, c, m, y, k, a)

proc setCmyk*(self: gen_qcolor_types.QColor, c: cint, m: cint, y: cint, k: cint, a: cint): void =
  fcQColor_setCmyk5(self.h, c, m, y, k, a)

proc getCmykF*(self: gen_qcolor_types.QColor, c: ptr float32, m: ptr float32, y: ptr float32, k: ptr float32, a: ptr float32): void =
  fcQColor_getCmykF5(self.h, c, m, y, k, a)

proc setCmykF*(self: gen_qcolor_types.QColor, c: float32, m: float32, y: float32, k: float32, a: float32): void =
  fcQColor_setCmykF5(self.h, c, m, y, k, a)

proc getHsl*(self: gen_qcolor_types.QColor, h: ptr cint, s: ptr cint, l: ptr cint, a: ptr cint): void =
  fcQColor_getHsl4(self.h, h, s, l, a)

proc setHsl*(self: gen_qcolor_types.QColor, h: cint, s: cint, l: cint, a: cint): void =
  fcQColor_setHsl4(self.h, h, s, l, a)

proc getHslF*(self: gen_qcolor_types.QColor, h: ptr float32, s: ptr float32, l: ptr float32, a: ptr float32): void =
  fcQColor_getHslF4(self.h, h, s, l, a)

proc setHslF*(self: gen_qcolor_types.QColor, h: float32, s: float32, l: float32, a: float32): void =
  fcQColor_setHslF4(self.h, h, s, l, a)

proc fromRgb*(_: type gen_qcolor_types.QColor, r: cint, g: cint, b: cint, a: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgb4(r, g, b, a), owned: true)

proc fromRgbF*(_: type gen_qcolor_types.QColor, r: float32, g: float32, b: float32, a: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgbF4(r, g, b, a), owned: true)

proc fromRgba64*(_: type gen_qcolor_types.QColor, r: cushort, g: cushort, b: cushort, a: cushort): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromRgba644(r, g, b, a), owned: true)

proc fromHsv*(_: type gen_qcolor_types.QColor, h: cint, s: cint, v: cint, a: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHsv4(h, s, v, a), owned: true)

proc fromHsvF*(_: type gen_qcolor_types.QColor, h: float32, s: float32, v: float32, a: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHsvF4(h, s, v, a), owned: true)

proc fromCmyk*(_: type gen_qcolor_types.QColor, c: cint, m: cint, y: cint, k: cint, a: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromCmyk5(c, m, y, k, a), owned: true)

proc fromCmykF*(_: type gen_qcolor_types.QColor, c: float32, m: float32, y: float32, k: float32, a: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromCmykF5(c, m, y, k, a), owned: true)

proc fromHsl*(_: type gen_qcolor_types.QColor, h: cint, s: cint, l: cint, a: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHsl4(h, s, l, a), owned: true)

proc fromHslF*(_: type gen_qcolor_types.QColor, h: float32, s: float32, l: float32, a: float32): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_fromHslF4(h, s, l, a), owned: true)

proc lighter*(self: gen_qcolor_types.QColor, f: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_lighter1(self.h, f), owned: true)

proc darker*(self: gen_qcolor_types.QColor, f: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_darker1(self.h, f), owned: true)

proc create*(T: type gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new(), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    color: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new2(cint(color)), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    r: cint, g: cint, b: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new3(r, g, b), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    rgb: cuint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new4(rgb), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    rgba64: gen_qrgba64_types.QRgba64): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new5(rgba64.h), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    name: openArray[char]): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new6(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    aname: cstring): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new7(aname), owned: true)

proc create2*(T: type gen_qcolor_types.QColor,
    spec: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new8(cint(spec)), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    spec: cint, a1: cushort, a2: cushort, a3: cushort, a4: cushort): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new9(cint(spec), a1, a2, a3, a4), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    param1: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new10(param1.h), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    r: cint, g: cint, b: cint, a: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new11(r, g, b, a), owned: true)

proc create*(T: type gen_qcolor_types.QColor,
    spec: cint, a1: cushort, a2: cushort, a3: cushort, a4: cushort, a5: cushort): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColor_new12(cint(spec), a1, a2, a3, a4, a5), owned: true)

