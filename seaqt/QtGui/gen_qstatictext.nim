import ./Qt6Gui_libs

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


type QStaticTextPerformanceHintEnum* = distinct cint
template ModerateCaching*(_: type QStaticTextPerformanceHintEnum): untyped = 0
template AggressiveCaching*(_: type QStaticTextPerformanceHintEnum): untyped = 1


import ./gen_qstatictext_types
export gen_qstatictext_types

import
  ../QtCore/gen_qsize_types,
  ./gen_qfont_types,
  ./gen_qtextoption_types,
  ./gen_qtransform_types
export
  gen_qsize_types,
  gen_qfont_types,
  gen_qtextoption_types,
  gen_qtransform_types

type cQStaticText*{.exportc: "QStaticText", incompleteStruct.} = object

proc fcQStaticText_operatorAssign(self: pointer, param1: pointer): void {.importc: "QStaticText_operatorAssign".}
proc fcQStaticText_swap(self: pointer, other: pointer): void {.importc: "QStaticText_swap".}
proc fcQStaticText_setText(self: pointer, text: struct_miqt_string): void {.importc: "QStaticText_setText".}
proc fcQStaticText_text(self: pointer, ): struct_miqt_string {.importc: "QStaticText_text".}
proc fcQStaticText_setTextFormat(self: pointer, textFormat: cint): void {.importc: "QStaticText_setTextFormat".}
proc fcQStaticText_textFormat(self: pointer, ): cint {.importc: "QStaticText_textFormat".}
proc fcQStaticText_setTextWidth(self: pointer, textWidth: float64): void {.importc: "QStaticText_setTextWidth".}
proc fcQStaticText_textWidth(self: pointer, ): float64 {.importc: "QStaticText_textWidth".}
proc fcQStaticText_setTextOption(self: pointer, textOption: pointer): void {.importc: "QStaticText_setTextOption".}
proc fcQStaticText_textOption(self: pointer, ): pointer {.importc: "QStaticText_textOption".}
proc fcQStaticText_size(self: pointer, ): pointer {.importc: "QStaticText_size".}
proc fcQStaticText_prepare(self: pointer, ): void {.importc: "QStaticText_prepare".}
proc fcQStaticText_setPerformanceHint(self: pointer, performanceHint: cint): void {.importc: "QStaticText_setPerformanceHint".}
proc fcQStaticText_performanceHint(self: pointer, ): cint {.importc: "QStaticText_performanceHint".}
proc fcQStaticText_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QStaticText_operatorEqual".}
proc fcQStaticText_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QStaticText_operatorNotEqual".}
proc fcQStaticText_prepare1(self: pointer, matrix: pointer): void {.importc: "QStaticText_prepare1".}
proc fcQStaticText_prepare2(self: pointer, matrix: pointer, font: pointer): void {.importc: "QStaticText_prepare2".}
proc fcQStaticText_new(): ptr cQStaticText {.importc: "QStaticText_new".}
proc fcQStaticText_new2(text: struct_miqt_string): ptr cQStaticText {.importc: "QStaticText_new2".}
proc fcQStaticText_new3(other: pointer): ptr cQStaticText {.importc: "QStaticText_new3".}

proc operatorAssign*(self: gen_qstatictext_types.QStaticText, param1: gen_qstatictext_types.QStaticText): void =
  fcQStaticText_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qstatictext_types.QStaticText, other: gen_qstatictext_types.QStaticText): void =
  fcQStaticText_swap(self.h, other.h)

proc setText*(self: gen_qstatictext_types.QStaticText, text: string): void =
  fcQStaticText_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc text*(self: gen_qstatictext_types.QStaticText, ): string =
  let v_ms = fcQStaticText_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextFormat*(self: gen_qstatictext_types.QStaticText, textFormat: cint): void =
  fcQStaticText_setTextFormat(self.h, cint(textFormat))

proc textFormat*(self: gen_qstatictext_types.QStaticText, ): cint =
  cint(fcQStaticText_textFormat(self.h))

proc setTextWidth*(self: gen_qstatictext_types.QStaticText, textWidth: float64): void =
  fcQStaticText_setTextWidth(self.h, textWidth)

proc textWidth*(self: gen_qstatictext_types.QStaticText, ): float64 =
  fcQStaticText_textWidth(self.h)

proc setTextOption*(self: gen_qstatictext_types.QStaticText, textOption: gen_qtextoption_types.QTextOption): void =
  fcQStaticText_setTextOption(self.h, textOption.h)

proc textOption*(self: gen_qstatictext_types.QStaticText, ): gen_qtextoption_types.QTextOption =
  gen_qtextoption_types.QTextOption(h: fcQStaticText_textOption(self.h), owned: true)

proc size*(self: gen_qstatictext_types.QStaticText, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQStaticText_size(self.h), owned: true)

proc prepare*(self: gen_qstatictext_types.QStaticText, ): void =
  fcQStaticText_prepare(self.h)

proc setPerformanceHint*(self: gen_qstatictext_types.QStaticText, performanceHint: cint): void =
  fcQStaticText_setPerformanceHint(self.h, cint(performanceHint))

proc performanceHint*(self: gen_qstatictext_types.QStaticText, ): cint =
  cint(fcQStaticText_performanceHint(self.h))

proc operatorEqual*(self: gen_qstatictext_types.QStaticText, param1: gen_qstatictext_types.QStaticText): bool =
  fcQStaticText_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qstatictext_types.QStaticText, param1: gen_qstatictext_types.QStaticText): bool =
  fcQStaticText_operatorNotEqual(self.h, param1.h)

proc prepare*(self: gen_qstatictext_types.QStaticText, matrix: gen_qtransform_types.QTransform): void =
  fcQStaticText_prepare1(self.h, matrix.h)

proc prepare*(self: gen_qstatictext_types.QStaticText, matrix: gen_qtransform_types.QTransform, font: gen_qfont_types.QFont): void =
  fcQStaticText_prepare2(self.h, matrix.h, font.h)

proc create*(T: type gen_qstatictext_types.QStaticText): gen_qstatictext_types.QStaticText =
  gen_qstatictext_types.QStaticText(h: fcQStaticText_new(), owned: true)

proc create*(T: type gen_qstatictext_types.QStaticText,
    text: string): gen_qstatictext_types.QStaticText =
  gen_qstatictext_types.QStaticText(h: fcQStaticText_new2(struct_miqt_string(data: text, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qstatictext_types.QStaticText,
    other: gen_qstatictext_types.QStaticText): gen_qstatictext_types.QStaticText =
  gen_qstatictext_types.QStaticText(h: fcQStaticText_new3(other.h), owned: true)

