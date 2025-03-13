import ./Qt6Widgets_libs

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


import ./gen_qtooltip_types
export gen_qtooltip_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qpalette_types,
  ./gen_qwidget_types
export
  gen_qpoint_types,
  gen_qrect_types,
  gen_qfont_types,
  gen_qpalette_types,
  gen_qwidget_types

type cQToolTip*{.exportc: "QToolTip", incompleteStruct.} = object

proc fcQToolTip_showText(pos: pointer, text: struct_miqt_string): void {.importc: "QToolTip_showText".}
proc fcQToolTip_hideText(): void {.importc: "QToolTip_hideText".}
proc fcQToolTip_isVisible(): bool {.importc: "QToolTip_isVisible".}
proc fcQToolTip_text(): struct_miqt_string {.importc: "QToolTip_text".}
proc fcQToolTip_palette(): pointer {.importc: "QToolTip_palette".}
proc fcQToolTip_setPalette(palette: pointer): void {.importc: "QToolTip_setPalette".}
proc fcQToolTip_font(): pointer {.importc: "QToolTip_font".}
proc fcQToolTip_setFont(font: pointer): void {.importc: "QToolTip_setFont".}
proc fcQToolTip_showText3(pos: pointer, text: struct_miqt_string, w: pointer): void {.importc: "QToolTip_showText3".}
proc fcQToolTip_showText4(pos: pointer, text: struct_miqt_string, w: pointer, rect: pointer): void {.importc: "QToolTip_showText4".}
proc fcQToolTip_showText5(pos: pointer, text: struct_miqt_string, w: pointer, rect: pointer, msecShowTime: cint): void {.importc: "QToolTip_showText5".}

proc showText*(_: type gen_qtooltip_types.QToolTip, pos: gen_qpoint_types.QPoint, text: openArray[char]): void =
  fcQToolTip_showText(pos.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc hideText*(_: type gen_qtooltip_types.QToolTip): void =
  fcQToolTip_hideText()

proc isVisible*(_: type gen_qtooltip_types.QToolTip): bool =
  fcQToolTip_isVisible()

proc text*(_: type gen_qtooltip_types.QToolTip): string =
  let v_ms = fcQToolTip_text()
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc palette*(_: type gen_qtooltip_types.QToolTip): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQToolTip_palette(), owned: true)

proc setPalette*(_: type gen_qtooltip_types.QToolTip, palette: gen_qpalette_types.QPalette): void =
  fcQToolTip_setPalette(palette.h)

proc font*(_: type gen_qtooltip_types.QToolTip): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQToolTip_font(), owned: true)

proc setFont*(_: type gen_qtooltip_types.QToolTip, font: gen_qfont_types.QFont): void =
  fcQToolTip_setFont(font.h)

proc showText*(_: type gen_qtooltip_types.QToolTip, pos: gen_qpoint_types.QPoint, text: openArray[char], w: gen_qwidget_types.QWidget): void =
  fcQToolTip_showText3(pos.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), w.h)

proc showText*(_: type gen_qtooltip_types.QToolTip, pos: gen_qpoint_types.QPoint, text: openArray[char], w: gen_qwidget_types.QWidget, rect: gen_qrect_types.QRect): void =
  fcQToolTip_showText4(pos.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), w.h, rect.h)

proc showText*(_: type gen_qtooltip_types.QToolTip, pos: gen_qpoint_types.QPoint, text: openArray[char], w: gen_qwidget_types.QWidget, rect: gen_qrect_types.QRect, msecShowTime: cint): void =
  fcQToolTip_showText5(pos.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), w.h, rect.h, msecShowTime)

