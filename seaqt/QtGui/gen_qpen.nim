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
{.compile("gen_qpen.cpp", cflags).}


import ./gen_qpen_types
export gen_qpen_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qbrush_types,
  ./gen_qcolor_types
export
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qcolor_types

type cQPen*{.exportc: "QPen", incompleteStruct.} = object

proc fcQPen_new(): ptr cQPen {.importc: "QPen_new".}
proc fcQPen_new2(param1: cint): ptr cQPen {.importc: "QPen_new2".}
proc fcQPen_new3(color: pointer): ptr cQPen {.importc: "QPen_new3".}
proc fcQPen_new4(brush: pointer, width: float64): ptr cQPen {.importc: "QPen_new4".}
proc fcQPen_new5(pen: pointer): ptr cQPen {.importc: "QPen_new5".}
proc fcQPen_new6(brush: pointer, width: float64, s: cint): ptr cQPen {.importc: "QPen_new6".}
proc fcQPen_new7(brush: pointer, width: float64, s: cint, c: cint): ptr cQPen {.importc: "QPen_new7".}
proc fcQPen_new8(brush: pointer, width: float64, s: cint, c: cint, j: cint): ptr cQPen {.importc: "QPen_new8".}
proc fcQPen_operatorAssign(self: pointer, pen: pointer): void {.importc: "QPen_operatorAssign".}
proc fcQPen_swap(self: pointer, other: pointer): void {.importc: "QPen_swap".}
proc fcQPen_style(self: pointer, ): cint {.importc: "QPen_style".}
proc fcQPen_setStyle(self: pointer, style: cint): void {.importc: "QPen_setStyle".}
proc fcQPen_dashPattern(self: pointer, ): struct_miqt_array {.importc: "QPen_dashPattern".}
proc fcQPen_setDashPattern(self: pointer, pattern: struct_miqt_array): void {.importc: "QPen_setDashPattern".}
proc fcQPen_dashOffset(self: pointer, ): float64 {.importc: "QPen_dashOffset".}
proc fcQPen_setDashOffset(self: pointer, doffset: float64): void {.importc: "QPen_setDashOffset".}
proc fcQPen_miterLimit(self: pointer, ): float64 {.importc: "QPen_miterLimit".}
proc fcQPen_setMiterLimit(self: pointer, limit: float64): void {.importc: "QPen_setMiterLimit".}
proc fcQPen_widthF(self: pointer, ): float64 {.importc: "QPen_widthF".}
proc fcQPen_setWidthF(self: pointer, width: float64): void {.importc: "QPen_setWidthF".}
proc fcQPen_width(self: pointer, ): cint {.importc: "QPen_width".}
proc fcQPen_setWidth(self: pointer, width: cint): void {.importc: "QPen_setWidth".}
proc fcQPen_color(self: pointer, ): pointer {.importc: "QPen_color".}
proc fcQPen_setColor(self: pointer, color: pointer): void {.importc: "QPen_setColor".}
proc fcQPen_brush(self: pointer, ): pointer {.importc: "QPen_brush".}
proc fcQPen_setBrush(self: pointer, brush: pointer): void {.importc: "QPen_setBrush".}
proc fcQPen_isSolid(self: pointer, ): bool {.importc: "QPen_isSolid".}
proc fcQPen_capStyle(self: pointer, ): cint {.importc: "QPen_capStyle".}
proc fcQPen_setCapStyle(self: pointer, pcs: cint): void {.importc: "QPen_setCapStyle".}
proc fcQPen_joinStyle(self: pointer, ): cint {.importc: "QPen_joinStyle".}
proc fcQPen_setJoinStyle(self: pointer, pcs: cint): void {.importc: "QPen_setJoinStyle".}
proc fcQPen_isCosmetic(self: pointer, ): bool {.importc: "QPen_isCosmetic".}
proc fcQPen_setCosmetic(self: pointer, cosmetic: bool): void {.importc: "QPen_setCosmetic".}
proc fcQPen_operatorEqual(self: pointer, p: pointer): bool {.importc: "QPen_operatorEqual".}
proc fcQPen_operatorNotEqual(self: pointer, p: pointer): bool {.importc: "QPen_operatorNotEqual".}
proc fcQPen_ToQVariant(self: pointer, ): pointer {.importc: "QPen_ToQVariant".}
proc fcQPen_isDetached(self: pointer, ): bool {.importc: "QPen_isDetached".}
proc fcQPen_delete(self: pointer) {.importc: "QPen_delete".}


func init*(T: type gen_qpen_types.QPen, h: ptr cQPen): gen_qpen_types.QPen =
  T(h: h)
proc create*(T: type gen_qpen_types.QPen, ): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new())

proc create*(T: type gen_qpen_types.QPen, param1: cint): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new2(cint(param1)))

proc create*(T: type gen_qpen_types.QPen, color: gen_qcolor_types.QColor): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new3(color.h))

proc create*(T: type gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush, width: float64): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new4(brush.h, width))

proc create*(T: type gen_qpen_types.QPen, pen: gen_qpen_types.QPen): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new5(pen.h))

proc create*(T: type gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush, width: float64, s: cint): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new6(brush.h, width, cint(s)))

proc create*(T: type gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush, width: float64, s: cint, c: cint): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new7(brush.h, width, cint(s), cint(c)))

proc create*(T: type gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush, width: float64, s: cint, c: cint, j: cint): gen_qpen_types.QPen =
  gen_qpen_types.QPen.init(fcQPen_new8(brush.h, width, cint(s), cint(c), cint(j)))

proc operatorAssign*(self: gen_qpen_types.QPen, pen: gen_qpen_types.QPen): void =
  fcQPen_operatorAssign(self.h, pen.h)

proc swap*(self: gen_qpen_types.QPen, other: gen_qpen_types.QPen): void =
  fcQPen_swap(self.h, other.h)

proc style*(self: gen_qpen_types.QPen, ): cint =
  cint(fcQPen_style(self.h))

proc setStyle*(self: gen_qpen_types.QPen, style: cint): void =
  fcQPen_setStyle(self.h, cint(style))

proc dashPattern*(self: gen_qpen_types.QPen, ): seq[float64] =
  var v_ma = fcQPen_dashPattern(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setDashPattern*(self: gen_qpen_types.QPen, pattern: seq[float64]): void =
  var pattern_CArray = newSeq[float64](len(pattern))
  for i in 0..<len(pattern):
    pattern_CArray[i] = pattern[i]

  fcQPen_setDashPattern(self.h, struct_miqt_array(len: csize_t(len(pattern)), data: if len(pattern) == 0: nil else: addr(pattern_CArray[0])))

proc dashOffset*(self: gen_qpen_types.QPen, ): float64 =
  fcQPen_dashOffset(self.h)

proc setDashOffset*(self: gen_qpen_types.QPen, doffset: float64): void =
  fcQPen_setDashOffset(self.h, doffset)

proc miterLimit*(self: gen_qpen_types.QPen, ): float64 =
  fcQPen_miterLimit(self.h)

proc setMiterLimit*(self: gen_qpen_types.QPen, limit: float64): void =
  fcQPen_setMiterLimit(self.h, limit)

proc widthF*(self: gen_qpen_types.QPen, ): float64 =
  fcQPen_widthF(self.h)

proc setWidthF*(self: gen_qpen_types.QPen, width: float64): void =
  fcQPen_setWidthF(self.h, width)

proc width*(self: gen_qpen_types.QPen, ): cint =
  fcQPen_width(self.h)

proc setWidth*(self: gen_qpen_types.QPen, width: cint): void =
  fcQPen_setWidth(self.h, width)

proc color*(self: gen_qpen_types.QPen, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQPen_color(self.h))

proc setColor*(self: gen_qpen_types.QPen, color: gen_qcolor_types.QColor): void =
  fcQPen_setColor(self.h, color.h)

proc brush*(self: gen_qpen_types.QPen, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPen_brush(self.h))

proc setBrush*(self: gen_qpen_types.QPen, brush: gen_qbrush_types.QBrush): void =
  fcQPen_setBrush(self.h, brush.h)

proc isSolid*(self: gen_qpen_types.QPen, ): bool =
  fcQPen_isSolid(self.h)

proc capStyle*(self: gen_qpen_types.QPen, ): cint =
  cint(fcQPen_capStyle(self.h))

proc setCapStyle*(self: gen_qpen_types.QPen, pcs: cint): void =
  fcQPen_setCapStyle(self.h, cint(pcs))

proc joinStyle*(self: gen_qpen_types.QPen, ): cint =
  cint(fcQPen_joinStyle(self.h))

proc setJoinStyle*(self: gen_qpen_types.QPen, pcs: cint): void =
  fcQPen_setJoinStyle(self.h, cint(pcs))

proc isCosmetic*(self: gen_qpen_types.QPen, ): bool =
  fcQPen_isCosmetic(self.h)

proc setCosmetic*(self: gen_qpen_types.QPen, cosmetic: bool): void =
  fcQPen_setCosmetic(self.h, cosmetic)

proc operatorEqual*(self: gen_qpen_types.QPen, p: gen_qpen_types.QPen): bool =
  fcQPen_operatorEqual(self.h, p.h)

proc operatorNotEqual*(self: gen_qpen_types.QPen, p: gen_qpen_types.QPen): bool =
  fcQPen_operatorNotEqual(self.h, p.h)

proc ToQVariant*(self: gen_qpen_types.QPen, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPen_ToQVariant(self.h))

proc isDetached*(self: gen_qpen_types.QPen, ): bool =
  fcQPen_isDetached(self.h)

proc delete*(self: gen_qpen_types.QPen) =
  fcQPen_delete(self.h)
