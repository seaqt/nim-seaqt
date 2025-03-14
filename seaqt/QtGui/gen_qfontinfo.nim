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


import ./gen_qfontinfo_types
export gen_qfontinfo_types

import
  ./gen_qfont_types
export
  gen_qfont_types

type cQFontInfo*{.exportc: "QFontInfo", incompleteStruct.} = object

proc fcQFontInfo_operatorAssign(self: pointer, param1: pointer): void {.importc: "QFontInfo_operatorAssign".}
proc fcQFontInfo_swap(self: pointer, other: pointer): void {.importc: "QFontInfo_swap".}
proc fcQFontInfo_family(self: pointer): struct_miqt_string {.importc: "QFontInfo_family".}
proc fcQFontInfo_styleName(self: pointer): struct_miqt_string {.importc: "QFontInfo_styleName".}
proc fcQFontInfo_pixelSize(self: pointer): cint {.importc: "QFontInfo_pixelSize".}
proc fcQFontInfo_pointSize(self: pointer): cint {.importc: "QFontInfo_pointSize".}
proc fcQFontInfo_pointSizeF(self: pointer): float64 {.importc: "QFontInfo_pointSizeF".}
proc fcQFontInfo_italic(self: pointer): bool {.importc: "QFontInfo_italic".}
proc fcQFontInfo_style(self: pointer): cint {.importc: "QFontInfo_style".}
proc fcQFontInfo_weight(self: pointer): cint {.importc: "QFontInfo_weight".}
proc fcQFontInfo_bold(self: pointer): bool {.importc: "QFontInfo_bold".}
proc fcQFontInfo_underline(self: pointer): bool {.importc: "QFontInfo_underline".}
proc fcQFontInfo_overline(self: pointer): bool {.importc: "QFontInfo_overline".}
proc fcQFontInfo_strikeOut(self: pointer): bool {.importc: "QFontInfo_strikeOut".}
proc fcQFontInfo_fixedPitch(self: pointer): bool {.importc: "QFontInfo_fixedPitch".}
proc fcQFontInfo_styleHint(self: pointer): cint {.importc: "QFontInfo_styleHint".}
proc fcQFontInfo_legacyWeight(self: pointer): cint {.importc: "QFontInfo_legacyWeight".}
proc fcQFontInfo_exactMatch(self: pointer): bool {.importc: "QFontInfo_exactMatch".}
proc fcQFontInfo_new(param1: pointer): ptr cQFontInfo {.importc: "QFontInfo_new".}
proc fcQFontInfo_new2(param1: pointer): ptr cQFontInfo {.importc: "QFontInfo_new2".}

proc operatorAssign*(self: gen_qfontinfo_types.QFontInfo, param1: gen_qfontinfo_types.QFontInfo): void =
  fcQFontInfo_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qfontinfo_types.QFontInfo, other: gen_qfontinfo_types.QFontInfo): void =
  fcQFontInfo_swap(self.h, other.h)

proc family*(self: gen_qfontinfo_types.QFontInfo): string =
  let v_ms = fcQFontInfo_family(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc styleName*(self: gen_qfontinfo_types.QFontInfo): string =
  let v_ms = fcQFontInfo_styleName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pixelSize*(self: gen_qfontinfo_types.QFontInfo): cint =
  fcQFontInfo_pixelSize(self.h)

proc pointSize*(self: gen_qfontinfo_types.QFontInfo): cint =
  fcQFontInfo_pointSize(self.h)

proc pointSizeF*(self: gen_qfontinfo_types.QFontInfo): float64 =
  fcQFontInfo_pointSizeF(self.h)

proc italic*(self: gen_qfontinfo_types.QFontInfo): bool =
  fcQFontInfo_italic(self.h)

proc style*(self: gen_qfontinfo_types.QFontInfo): cint =
  cint(fcQFontInfo_style(self.h))

proc weight*(self: gen_qfontinfo_types.QFontInfo): cint =
  fcQFontInfo_weight(self.h)

proc bold*(self: gen_qfontinfo_types.QFontInfo): bool =
  fcQFontInfo_bold(self.h)

proc underline*(self: gen_qfontinfo_types.QFontInfo): bool =
  fcQFontInfo_underline(self.h)

proc overline*(self: gen_qfontinfo_types.QFontInfo): bool =
  fcQFontInfo_overline(self.h)

proc strikeOut*(self: gen_qfontinfo_types.QFontInfo): bool =
  fcQFontInfo_strikeOut(self.h)

proc fixedPitch*(self: gen_qfontinfo_types.QFontInfo): bool =
  fcQFontInfo_fixedPitch(self.h)

proc styleHint*(self: gen_qfontinfo_types.QFontInfo): cint =
  cint(fcQFontInfo_styleHint(self.h))

proc legacyWeight*(self: gen_qfontinfo_types.QFontInfo): cint =
  fcQFontInfo_legacyWeight(self.h)

proc exactMatch*(self: gen_qfontinfo_types.QFontInfo): bool =
  fcQFontInfo_exactMatch(self.h)

proc create*(T: type gen_qfontinfo_types.QFontInfo,
    param1: gen_qfont_types.QFont): gen_qfontinfo_types.QFontInfo =
  gen_qfontinfo_types.QFontInfo(h: fcQFontInfo_new(param1.h), owned: true)

proc create*(T: type gen_qfontinfo_types.QFontInfo,
    param1: gen_qfontinfo_types.QFontInfo): gen_qfontinfo_types.QFontInfo =
  gen_qfontinfo_types.QFontInfo(h: fcQFontInfo_new2(param1.h), owned: true)

