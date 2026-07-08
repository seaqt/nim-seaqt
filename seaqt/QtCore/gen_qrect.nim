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


import ./gen_qrect_types
export gen_qrect_types

import
  ./gen_qmargins_types,
  ./gen_qpoint_types,
  ./gen_qsize_types
export
  gen_qmargins_types,
  gen_qpoint_types,
  gen_qsize_types

type cQRect*{.exportc: "QRect", incompleteStruct.} = object
type cQRectF*{.exportc: "QRectF", incompleteStruct.} = object

proc fcQRect_isNull(self: pointer): bool {.importc: "QRect_isNull".}
proc fcQRect_isEmpty(self: pointer): bool {.importc: "QRect_isEmpty".}
proc fcQRect_isValid(self: pointer): bool {.importc: "QRect_isValid".}
proc fcQRect_left(self: pointer): cint {.importc: "QRect_left".}
proc fcQRect_top(self: pointer): cint {.importc: "QRect_top".}
proc fcQRect_right(self: pointer): cint {.importc: "QRect_right".}
proc fcQRect_bottom(self: pointer): cint {.importc: "QRect_bottom".}
proc fcQRect_normalized(self: pointer): pointer {.importc: "QRect_normalized".}
proc fcQRect_x(self: pointer): cint {.importc: "QRect_x".}
proc fcQRect_y(self: pointer): cint {.importc: "QRect_y".}
proc fcQRect_setLeft(self: pointer, pos: cint): void {.importc: "QRect_setLeft".}
proc fcQRect_setTop(self: pointer, pos: cint): void {.importc: "QRect_setTop".}
proc fcQRect_setRight(self: pointer, pos: cint): void {.importc: "QRect_setRight".}
proc fcQRect_setBottom(self: pointer, pos: cint): void {.importc: "QRect_setBottom".}
proc fcQRect_setX(self: pointer, x: cint): void {.importc: "QRect_setX".}
proc fcQRect_setY(self: pointer, y: cint): void {.importc: "QRect_setY".}
proc fcQRect_setTopLeft(self: pointer, p: pointer): void {.importc: "QRect_setTopLeft".}
proc fcQRect_setBottomRight(self: pointer, p: pointer): void {.importc: "QRect_setBottomRight".}
proc fcQRect_setTopRight(self: pointer, p: pointer): void {.importc: "QRect_setTopRight".}
proc fcQRect_setBottomLeft(self: pointer, p: pointer): void {.importc: "QRect_setBottomLeft".}
proc fcQRect_topLeft(self: pointer): pointer {.importc: "QRect_topLeft".}
proc fcQRect_bottomRight(self: pointer): pointer {.importc: "QRect_bottomRight".}
proc fcQRect_topRight(self: pointer): pointer {.importc: "QRect_topRight".}
proc fcQRect_bottomLeft(self: pointer): pointer {.importc: "QRect_bottomLeft".}
proc fcQRect_center(self: pointer): pointer {.importc: "QRect_center".}
proc fcQRect_moveLeft(self: pointer, pos: cint): void {.importc: "QRect_moveLeft".}
proc fcQRect_moveTop(self: pointer, pos: cint): void {.importc: "QRect_moveTop".}
proc fcQRect_moveRight(self: pointer, pos: cint): void {.importc: "QRect_moveRight".}
proc fcQRect_moveBottom(self: pointer, pos: cint): void {.importc: "QRect_moveBottom".}
proc fcQRect_moveTopLeft(self: pointer, p: pointer): void {.importc: "QRect_moveTopLeft".}
proc fcQRect_moveBottomRight(self: pointer, p: pointer): void {.importc: "QRect_moveBottomRight".}
proc fcQRect_moveTopRight(self: pointer, p: pointer): void {.importc: "QRect_moveTopRight".}
proc fcQRect_moveBottomLeft(self: pointer, p: pointer): void {.importc: "QRect_moveBottomLeft".}
proc fcQRect_moveCenter(self: pointer, p: pointer): void {.importc: "QRect_moveCenter".}
proc fcQRect_translateDxDy(self: pointer, dx: cint, dy: cint): void {.importc: "QRect_translate_dx_dy".}
proc fcQRect_translateP(self: pointer, p: pointer): void {.importc: "QRect_translate_p".}
proc fcQRect_translatedDxDy(self: pointer, dx: cint, dy: cint): pointer {.importc: "QRect_translated_dx_dy".}
proc fcQRect_translatedP(self: pointer, p: pointer): pointer {.importc: "QRect_translated_p".}
proc fcQRect_transposed(self: pointer): pointer {.importc: "QRect_transposed".}
proc fcQRect_moveToXT(self: pointer, x: cint, t: cint): void {.importc: "QRect_moveTo_x_t".}
proc fcQRect_moveToP(self: pointer, p: pointer): void {.importc: "QRect_moveTo_p".}
proc fcQRect_setRect(self: pointer, x: cint, y: cint, w: cint, h: cint): void {.importc: "QRect_setRect".}
proc fcQRect_getRect(self: pointer, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint): void {.importc: "QRect_getRect".}
proc fcQRect_setCoords(self: pointer, x1: cint, y1: cint, x2: cint, y2: cint): void {.importc: "QRect_setCoords".}
proc fcQRect_getCoords(self: pointer, x1: ptr cint, y1: ptr cint, x2: ptr cint, y2: ptr cint): void {.importc: "QRect_getCoords".}
proc fcQRect_adjust(self: pointer, x1: cint, y1: cint, x2: cint, y2: cint): void {.importc: "QRect_adjust".}
proc fcQRect_adjusted(self: pointer, x1: cint, y1: cint, x2: cint, y2: cint): pointer {.importc: "QRect_adjusted".}
proc fcQRect_size(self: pointer): pointer {.importc: "QRect_size".}
proc fcQRect_width(self: pointer): cint {.importc: "QRect_width".}
proc fcQRect_height(self: pointer): cint {.importc: "QRect_height".}
proc fcQRect_setWidth(self: pointer, w: cint): void {.importc: "QRect_setWidth".}
proc fcQRect_setHeight(self: pointer, h: cint): void {.importc: "QRect_setHeight".}
proc fcQRect_setSize(self: pointer, s: pointer): void {.importc: "QRect_setSize".}
proc fcQRect_operatorBitwiseOr(self: pointer, r: pointer): pointer {.importc: "QRect_operatorBitwiseOr".}
proc fcQRect_operatorBitwiseAnd(self: pointer, r: pointer): pointer {.importc: "QRect_operatorBitwiseAnd".}
proc fcQRect_operatorBitwiseOrAssign(self: pointer, r: pointer): void {.importc: "QRect_operatorBitwiseOrAssign".}
proc fcQRect_operatorBitwiseAndAssign(self: pointer, r: pointer): void {.importc: "QRect_operatorBitwiseAndAssign".}
proc fcQRect_containsR(self: pointer, r: pointer): bool {.importc: "QRect_contains_r".}
proc fcQRect_containsP(self: pointer, p: pointer): bool {.importc: "QRect_contains_p".}
proc fcQRect_containsXY(self: pointer, x: cint, y: cint): bool {.importc: "QRect_contains_x_y".}
proc fcQRect_containsXYProper(self: pointer, x: cint, y: cint, proper: bool): bool {.importc: "QRect_contains_x_y_proper".}
proc fcQRect_united(self: pointer, other: pointer): pointer {.importc: "QRect_united".}
proc fcQRect_intersected(self: pointer, other: pointer): pointer {.importc: "QRect_intersected".}
proc fcQRect_intersects(self: pointer, r: pointer): bool {.importc: "QRect_intersects".}
proc fcQRect_marginsAdded(self: pointer, margins: pointer): pointer {.importc: "QRect_marginsAdded".}
proc fcQRect_marginsRemoved(self: pointer, margins: pointer): pointer {.importc: "QRect_marginsRemoved".}
proc fcQRect_operatorPlusAssign(self: pointer, margins: pointer): pointer {.importc: "QRect_operatorPlusAssign".}
proc fcQRect_operatorMinusAssign(self: pointer, margins: pointer): pointer {.importc: "QRect_operatorMinusAssign".}
proc fcQRect_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QRect_operatorAssign".}
proc fcQRect_containsRProper(self: pointer, r: pointer, proper: bool): bool {.importc: "QRect_contains_r_proper".}
proc fcQRect_containsPProper(self: pointer, p: pointer, proper: bool): bool {.importc: "QRect_contains_p_proper".}
proc fcQRect_new(): ptr cQRect {.importc: "QRect_new".}
proc fcQRect_new2(topleft: pointer, bottomright: pointer): ptr cQRect {.importc: "QRect_new_topleft_bottomright".}
proc fcQRect_new3(topleft: pointer, size: pointer): ptr cQRect {.importc: "QRect_new_topleft_size".}
proc fcQRect_new4(left: cint, top: cint, width: cint, height: cint): ptr cQRect {.importc: "QRect_new_left_top_width_height".}
proc fcQRect_new5(fromVal: pointer): ptr cQRect {.importc: "QRect_new_from".}
proc fcQRectF_isNull(self: pointer): bool {.importc: "QRectF_isNull".}
proc fcQRectF_isEmpty(self: pointer): bool {.importc: "QRectF_isEmpty".}
proc fcQRectF_isValid(self: pointer): bool {.importc: "QRectF_isValid".}
proc fcQRectF_normalized(self: pointer): pointer {.importc: "QRectF_normalized".}
proc fcQRectF_left(self: pointer): float64 {.importc: "QRectF_left".}
proc fcQRectF_top(self: pointer): float64 {.importc: "QRectF_top".}
proc fcQRectF_right(self: pointer): float64 {.importc: "QRectF_right".}
proc fcQRectF_bottom(self: pointer): float64 {.importc: "QRectF_bottom".}
proc fcQRectF_x(self: pointer): float64 {.importc: "QRectF_x".}
proc fcQRectF_y(self: pointer): float64 {.importc: "QRectF_y".}
proc fcQRectF_setLeft(self: pointer, pos: float64): void {.importc: "QRectF_setLeft".}
proc fcQRectF_setTop(self: pointer, pos: float64): void {.importc: "QRectF_setTop".}
proc fcQRectF_setRight(self: pointer, pos: float64): void {.importc: "QRectF_setRight".}
proc fcQRectF_setBottom(self: pointer, pos: float64): void {.importc: "QRectF_setBottom".}
proc fcQRectF_setX(self: pointer, pos: float64): void {.importc: "QRectF_setX".}
proc fcQRectF_setY(self: pointer, pos: float64): void {.importc: "QRectF_setY".}
proc fcQRectF_topLeft(self: pointer): pointer {.importc: "QRectF_topLeft".}
proc fcQRectF_bottomRight(self: pointer): pointer {.importc: "QRectF_bottomRight".}
proc fcQRectF_topRight(self: pointer): pointer {.importc: "QRectF_topRight".}
proc fcQRectF_bottomLeft(self: pointer): pointer {.importc: "QRectF_bottomLeft".}
proc fcQRectF_center(self: pointer): pointer {.importc: "QRectF_center".}
proc fcQRectF_setTopLeft(self: pointer, p: pointer): void {.importc: "QRectF_setTopLeft".}
proc fcQRectF_setBottomRight(self: pointer, p: pointer): void {.importc: "QRectF_setBottomRight".}
proc fcQRectF_setTopRight(self: pointer, p: pointer): void {.importc: "QRectF_setTopRight".}
proc fcQRectF_setBottomLeft(self: pointer, p: pointer): void {.importc: "QRectF_setBottomLeft".}
proc fcQRectF_moveLeft(self: pointer, pos: float64): void {.importc: "QRectF_moveLeft".}
proc fcQRectF_moveTop(self: pointer, pos: float64): void {.importc: "QRectF_moveTop".}
proc fcQRectF_moveRight(self: pointer, pos: float64): void {.importc: "QRectF_moveRight".}
proc fcQRectF_moveBottom(self: pointer, pos: float64): void {.importc: "QRectF_moveBottom".}
proc fcQRectF_moveTopLeft(self: pointer, p: pointer): void {.importc: "QRectF_moveTopLeft".}
proc fcQRectF_moveBottomRight(self: pointer, p: pointer): void {.importc: "QRectF_moveBottomRight".}
proc fcQRectF_moveTopRight(self: pointer, p: pointer): void {.importc: "QRectF_moveTopRight".}
proc fcQRectF_moveBottomLeft(self: pointer, p: pointer): void {.importc: "QRectF_moveBottomLeft".}
proc fcQRectF_moveCenter(self: pointer, p: pointer): void {.importc: "QRectF_moveCenter".}
proc fcQRectF_translateDxDy(self: pointer, dx: float64, dy: float64): void {.importc: "QRectF_translate_dx_dy".}
proc fcQRectF_translateP(self: pointer, p: pointer): void {.importc: "QRectF_translate_p".}
proc fcQRectF_translatedDxDy(self: pointer, dx: float64, dy: float64): pointer {.importc: "QRectF_translated_dx_dy".}
proc fcQRectF_translatedP(self: pointer, p: pointer): pointer {.importc: "QRectF_translated_p".}
proc fcQRectF_transposed(self: pointer): pointer {.importc: "QRectF_transposed".}
proc fcQRectF_moveToXY(self: pointer, x: float64, y: float64): void {.importc: "QRectF_moveTo_x_y".}
proc fcQRectF_moveToP(self: pointer, p: pointer): void {.importc: "QRectF_moveTo_p".}
proc fcQRectF_setRect(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QRectF_setRect".}
proc fcQRectF_getRect(self: pointer, x: ptr float64, y: ptr float64, w: ptr float64, h: ptr float64): void {.importc: "QRectF_getRect".}
proc fcQRectF_setCoords(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): void {.importc: "QRectF_setCoords".}
proc fcQRectF_getCoords(self: pointer, x1: ptr float64, y1: ptr float64, x2: ptr float64, y2: ptr float64): void {.importc: "QRectF_getCoords".}
proc fcQRectF_adjust(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): void {.importc: "QRectF_adjust".}
proc fcQRectF_adjusted(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): pointer {.importc: "QRectF_adjusted".}
proc fcQRectF_size(self: pointer): pointer {.importc: "QRectF_size".}
proc fcQRectF_width(self: pointer): float64 {.importc: "QRectF_width".}
proc fcQRectF_height(self: pointer): float64 {.importc: "QRectF_height".}
proc fcQRectF_setWidth(self: pointer, w: float64): void {.importc: "QRectF_setWidth".}
proc fcQRectF_setHeight(self: pointer, h: float64): void {.importc: "QRectF_setHeight".}
proc fcQRectF_setSize(self: pointer, s: pointer): void {.importc: "QRectF_setSize".}
proc fcQRectF_operatorBitwiseOr(self: pointer, r: pointer): pointer {.importc: "QRectF_operatorBitwiseOr".}
proc fcQRectF_operatorBitwiseAnd(self: pointer, r: pointer): pointer {.importc: "QRectF_operatorBitwiseAnd".}
proc fcQRectF_operatorBitwiseOrAssign(self: pointer, r: pointer): void {.importc: "QRectF_operatorBitwiseOrAssign".}
proc fcQRectF_operatorBitwiseAndAssign(self: pointer, r: pointer): void {.importc: "QRectF_operatorBitwiseAndAssign".}
proc fcQRectF_containsR(self: pointer, r: pointer): bool {.importc: "QRectF_contains_r".}
proc fcQRectF_containsP(self: pointer, p: pointer): bool {.importc: "QRectF_contains_p".}
proc fcQRectF_containsXY(self: pointer, x: float64, y: float64): bool {.importc: "QRectF_contains_x_y".}
proc fcQRectF_united(self: pointer, other: pointer): pointer {.importc: "QRectF_united".}
proc fcQRectF_intersected(self: pointer, other: pointer): pointer {.importc: "QRectF_intersected".}
proc fcQRectF_intersects(self: pointer, r: pointer): bool {.importc: "QRectF_intersects".}
proc fcQRectF_marginsAdded(self: pointer, margins: pointer): pointer {.importc: "QRectF_marginsAdded".}
proc fcQRectF_marginsRemoved(self: pointer, margins: pointer): pointer {.importc: "QRectF_marginsRemoved".}
proc fcQRectF_operatorPlusAssign(self: pointer, margins: pointer): pointer {.importc: "QRectF_operatorPlusAssign".}
proc fcQRectF_operatorMinusAssign(self: pointer, margins: pointer): pointer {.importc: "QRectF_operatorMinusAssign".}
proc fcQRectF_toRect(self: pointer): pointer {.importc: "QRectF_toRect".}
proc fcQRectF_toAlignedRect(self: pointer): pointer {.importc: "QRectF_toAlignedRect".}
proc fcQRectF_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QRectF_operatorAssign".}
proc fcQRectF_new(): ptr cQRectF {.importc: "QRectF_new".}
proc fcQRectF_new2(topleft: pointer, size: pointer): ptr cQRectF {.importc: "QRectF_new_topleft_size".}
proc fcQRectF_new3(topleft: pointer, bottomRight: pointer): ptr cQRectF {.importc: "QRectF_new_topleft_bottomRight".}
proc fcQRectF_new4(left: float64, top: float64, width: float64, height: float64): ptr cQRectF {.importc: "QRectF_new_left_top_width_height".}
proc fcQRectF_new5(rect: pointer): ptr cQRectF {.importc: "QRectF_new_rect".}
proc fcQRectF_new6(fromVal: pointer): ptr cQRectF {.importc: "QRectF_new_from".}

proc isNull*(self: gen_qrect_types.QRect): bool =
  fcQRect_isNull(self.h)

proc isEmpty*(self: gen_qrect_types.QRect): bool =
  fcQRect_isEmpty(self.h)

proc isValid*(self: gen_qrect_types.QRect): bool =
  fcQRect_isValid(self.h)

proc left*(self: gen_qrect_types.QRect): cint =
  fcQRect_left(self.h)

proc top*(self: gen_qrect_types.QRect): cint =
  fcQRect_top(self.h)

proc right*(self: gen_qrect_types.QRect): cint =
  fcQRect_right(self.h)

proc bottom*(self: gen_qrect_types.QRect): cint =
  fcQRect_bottom(self.h)

proc normalized*(self: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_normalized(self.h), owned: true)

proc x*(self: gen_qrect_types.QRect): cint =
  fcQRect_x(self.h)

proc y*(self: gen_qrect_types.QRect): cint =
  fcQRect_y(self.h)

proc setLeft*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_setLeft(self.h, pos)

proc setTop*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_setTop(self.h, pos)

proc setRight*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_setRight(self.h, pos)

proc setBottom*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_setBottom(self.h, pos)

proc setX*(self: gen_qrect_types.QRect, x: cint): void =
  fcQRect_setX(self.h, x)

proc setY*(self: gen_qrect_types.QRect, y: cint): void =
  fcQRect_setY(self.h, y)

proc setTopLeft*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_setTopLeft(self.h, p.h)

proc setBottomRight*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_setBottomRight(self.h, p.h)

proc setTopRight*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_setTopRight(self.h, p.h)

proc setBottomLeft*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_setBottomLeft(self.h, p.h)

proc topLeft*(self: gen_qrect_types.QRect): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQRect_topLeft(self.h), owned: true)

proc bottomRight*(self: gen_qrect_types.QRect): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQRect_bottomRight(self.h), owned: true)

proc topRight*(self: gen_qrect_types.QRect): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQRect_topRight(self.h), owned: true)

proc bottomLeft*(self: gen_qrect_types.QRect): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQRect_bottomLeft(self.h), owned: true)

proc center*(self: gen_qrect_types.QRect): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQRect_center(self.h), owned: true)

proc moveLeft*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_moveLeft(self.h, pos)

proc moveTop*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_moveTop(self.h, pos)

proc moveRight*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_moveRight(self.h, pos)

proc moveBottom*(self: gen_qrect_types.QRect, pos: cint): void =
  fcQRect_moveBottom(self.h, pos)

proc moveTopLeft*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_moveTopLeft(self.h, p.h)

proc moveBottomRight*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_moveBottomRight(self.h, p.h)

proc moveTopRight*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_moveTopRight(self.h, p.h)

proc moveBottomLeft*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_moveBottomLeft(self.h, p.h)

proc moveCenter*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_moveCenter(self.h, p.h)

proc translate*(self: gen_qrect_types.QRect, dx: cint, dy: cint): void =
  fcQRect_translateDxDy(self.h, dx, dy)

proc translate*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_translateP(self.h, p.h)

proc translated*(self: gen_qrect_types.QRect, dx: cint, dy: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_translatedDxDy(self.h, dx, dy), owned: true)

proc translated*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_translatedP(self.h, p.h), owned: true)

proc transposed*(self: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_transposed(self.h), owned: true)

proc moveTo*(self: gen_qrect_types.QRect, x: cint, t: cint): void =
  fcQRect_moveToXT(self.h, x, t)

proc moveTo*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): void =
  fcQRect_moveToP(self.h, p.h)

proc setRect*(self: gen_qrect_types.QRect, x: cint, y: cint, w: cint, h: cint): void =
  fcQRect_setRect(self.h, x, y, w, h)

proc getRect*(self: gen_qrect_types.QRect, x: ptr cint, y: ptr cint, w: ptr cint, h: ptr cint): void =
  fcQRect_getRect(self.h, x, y, w, h)

proc setCoords*(self: gen_qrect_types.QRect, x1: cint, y1: cint, x2: cint, y2: cint): void =
  fcQRect_setCoords(self.h, x1, y1, x2, y2)

proc getCoords*(self: gen_qrect_types.QRect, x1: ptr cint, y1: ptr cint, x2: ptr cint, y2: ptr cint): void =
  fcQRect_getCoords(self.h, x1, y1, x2, y2)

proc adjust*(self: gen_qrect_types.QRect, x1: cint, y1: cint, x2: cint, y2: cint): void =
  fcQRect_adjust(self.h, x1, y1, x2, y2)

proc adjusted*(self: gen_qrect_types.QRect, x1: cint, y1: cint, x2: cint, y2: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_adjusted(self.h, x1, y1, x2, y2), owned: true)

proc size*(self: gen_qrect_types.QRect): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRect_size(self.h), owned: true)

proc width*(self: gen_qrect_types.QRect): cint =
  fcQRect_width(self.h)

proc height*(self: gen_qrect_types.QRect): cint =
  fcQRect_height(self.h)

proc setWidth*(self: gen_qrect_types.QRect, w: cint): void =
  fcQRect_setWidth(self.h, w)

proc setHeight*(self: gen_qrect_types.QRect, h: cint): void =
  fcQRect_setHeight(self.h, h)

proc setSize*(self: gen_qrect_types.QRect, s: gen_qsize_types.QSize): void =
  fcQRect_setSize(self.h, s.h)

proc operatorBitwiseOr*(self: gen_qrect_types.QRect, r: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_operatorBitwiseOr(self.h, r.h), owned: true)

proc operatorBitwiseAnd*(self: gen_qrect_types.QRect, r: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_operatorBitwiseAnd(self.h, r.h), owned: true)

proc operatorBitwiseOrAssign*(self: gen_qrect_types.QRect, r: gen_qrect_types.QRect): void =
  fcQRect_operatorBitwiseOrAssign(self.h, r.h)

proc operatorBitwiseAndAssign*(self: gen_qrect_types.QRect, r: gen_qrect_types.QRect): void =
  fcQRect_operatorBitwiseAndAssign(self.h, r.h)

proc contains*(self: gen_qrect_types.QRect, r: gen_qrect_types.QRect): bool =
  fcQRect_containsR(self.h, r.h)

proc contains*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint): bool =
  fcQRect_containsP(self.h, p.h)

proc contains*(self: gen_qrect_types.QRect, x: cint, y: cint): bool =
  fcQRect_containsXY(self.h, x, y)

proc contains*(self: gen_qrect_types.QRect, x: cint, y: cint, proper: bool): bool =
  fcQRect_containsXYProper(self.h, x, y, proper)

proc united*(self: gen_qrect_types.QRect, other: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_united(self.h, other.h), owned: true)

proc intersected*(self: gen_qrect_types.QRect, other: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_intersected(self.h, other.h), owned: true)

proc intersects*(self: gen_qrect_types.QRect, r: gen_qrect_types.QRect): bool =
  fcQRect_intersects(self.h, r.h)

proc marginsAdded*(self: gen_qrect_types.QRect, margins: gen_qmargins_types.QMargins): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_marginsAdded(self.h, margins.h), owned: true)

proc marginsRemoved*(self: gen_qrect_types.QRect, margins: gen_qmargins_types.QMargins): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_marginsRemoved(self.h, margins.h), owned: true)

proc operatorPlusAssign*(self: gen_qrect_types.QRect, margins: gen_qmargins_types.QMargins): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_operatorPlusAssign(self.h, margins.h), owned: false)

proc operatorMinusAssign*(self: gen_qrect_types.QRect, margins: gen_qmargins_types.QMargins): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRect_operatorMinusAssign(self.h, margins.h), owned: false)

proc operatorAssign*(self: gen_qrect_types.QRect, fromVal: gen_qrect_types.QRect): void =
  fcQRect_operatorAssign(self.h, fromVal.h)

proc contains*(self: gen_qrect_types.QRect, r: gen_qrect_types.QRect, proper: bool): bool =
  fcQRect_containsRProper(self.h, r.h, proper)

proc contains*(self: gen_qrect_types.QRect, p: gen_qpoint_types.QPoint, proper: bool): bool =
  fcQRect_containsPProper(self.h, p.h, proper)

proc create*(T: type gen_qrect_types.QRect): gen_qrect_types.QRect =
  let tmp = gen_qrect_types.QRect(h: fcQRect_new(), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRect,
    topleft: gen_qpoint_types.QPoint, bottomright: gen_qpoint_types.QPoint): gen_qrect_types.QRect =
  let tmp = gen_qrect_types.QRect(h: fcQRect_new2(topleft.h, bottomright.h), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRect,
    topleft: gen_qpoint_types.QPoint, size: gen_qsize_types.QSize): gen_qrect_types.QRect =
  let tmp = gen_qrect_types.QRect(h: fcQRect_new3(topleft.h, size.h), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRect,
    left: cint, top: cint, width: cint, height: cint): gen_qrect_types.QRect =
  let tmp = gen_qrect_types.QRect(h: fcQRect_new4(left, top, width, height), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRect,
    fromVal: gen_qrect_types.QRect): gen_qrect_types.QRect =
  let tmp = gen_qrect_types.QRect(h: fcQRect_new5(fromVal.h), owned: true)
  tmp
proc isNull*(self: gen_qrect_types.QRectF): bool =
  fcQRectF_isNull(self.h)

proc isEmpty*(self: gen_qrect_types.QRectF): bool =
  fcQRectF_isEmpty(self.h)

proc isValid*(self: gen_qrect_types.QRectF): bool =
  fcQRectF_isValid(self.h)

proc normalized*(self: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_normalized(self.h), owned: true)

proc left*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_left(self.h)

proc top*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_top(self.h)

proc right*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_right(self.h)

proc bottom*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_bottom(self.h)

proc x*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_x(self.h)

proc y*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_y(self.h)

proc setLeft*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_setLeft(self.h, pos)

proc setTop*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_setTop(self.h, pos)

proc setRight*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_setRight(self.h, pos)

proc setBottom*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_setBottom(self.h, pos)

proc setX*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_setX(self.h, pos)

proc setY*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_setY(self.h, pos)

proc topLeft*(self: gen_qrect_types.QRectF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQRectF_topLeft(self.h), owned: true)

proc bottomRight*(self: gen_qrect_types.QRectF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQRectF_bottomRight(self.h), owned: true)

proc topRight*(self: gen_qrect_types.QRectF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQRectF_topRight(self.h), owned: true)

proc bottomLeft*(self: gen_qrect_types.QRectF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQRectF_bottomLeft(self.h), owned: true)

proc center*(self: gen_qrect_types.QRectF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQRectF_center(self.h), owned: true)

proc setTopLeft*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_setTopLeft(self.h, p.h)

proc setBottomRight*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_setBottomRight(self.h, p.h)

proc setTopRight*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_setTopRight(self.h, p.h)

proc setBottomLeft*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_setBottomLeft(self.h, p.h)

proc moveLeft*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_moveLeft(self.h, pos)

proc moveTop*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_moveTop(self.h, pos)

proc moveRight*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_moveRight(self.h, pos)

proc moveBottom*(self: gen_qrect_types.QRectF, pos: float64): void =
  fcQRectF_moveBottom(self.h, pos)

proc moveTopLeft*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_moveTopLeft(self.h, p.h)

proc moveBottomRight*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_moveBottomRight(self.h, p.h)

proc moveTopRight*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_moveTopRight(self.h, p.h)

proc moveBottomLeft*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_moveBottomLeft(self.h, p.h)

proc moveCenter*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_moveCenter(self.h, p.h)

proc translate*(self: gen_qrect_types.QRectF, dx: float64, dy: float64): void =
  fcQRectF_translateDxDy(self.h, dx, dy)

proc translate*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_translateP(self.h, p.h)

proc translated*(self: gen_qrect_types.QRectF, dx: float64, dy: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_translatedDxDy(self.h, dx, dy), owned: true)

proc translated*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_translatedP(self.h, p.h), owned: true)

proc transposed*(self: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_transposed(self.h), owned: true)

proc moveTo*(self: gen_qrect_types.QRectF, x: float64, y: float64): void =
  fcQRectF_moveToXY(self.h, x, y)

proc moveTo*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): void =
  fcQRectF_moveToP(self.h, p.h)

proc setRect*(self: gen_qrect_types.QRectF, x: float64, y: float64, w: float64, h: float64): void =
  fcQRectF_setRect(self.h, x, y, w, h)

proc getRect*(self: gen_qrect_types.QRectF, x: ptr float64, y: ptr float64, w: ptr float64, h: ptr float64): void =
  fcQRectF_getRect(self.h, x, y, w, h)

proc setCoords*(self: gen_qrect_types.QRectF, x1: float64, y1: float64, x2: float64, y2: float64): void =
  fcQRectF_setCoords(self.h, x1, y1, x2, y2)

proc getCoords*(self: gen_qrect_types.QRectF, x1: ptr float64, y1: ptr float64, x2: ptr float64, y2: ptr float64): void =
  fcQRectF_getCoords(self.h, x1, y1, x2, y2)

proc adjust*(self: gen_qrect_types.QRectF, x1: float64, y1: float64, x2: float64, y2: float64): void =
  fcQRectF_adjust(self.h, x1, y1, x2, y2)

proc adjusted*(self: gen_qrect_types.QRectF, x1: float64, y1: float64, x2: float64, y2: float64): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_adjusted(self.h, x1, y1, x2, y2), owned: true)

proc size*(self: gen_qrect_types.QRectF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQRectF_size(self.h), owned: true)

proc width*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_width(self.h)

proc height*(self: gen_qrect_types.QRectF): float64 =
  fcQRectF_height(self.h)

proc setWidth*(self: gen_qrect_types.QRectF, w: float64): void =
  fcQRectF_setWidth(self.h, w)

proc setHeight*(self: gen_qrect_types.QRectF, h: float64): void =
  fcQRectF_setHeight(self.h, h)

proc setSize*(self: gen_qrect_types.QRectF, s: gen_qsize_types.QSizeF): void =
  fcQRectF_setSize(self.h, s.h)

proc operatorBitwiseOr*(self: gen_qrect_types.QRectF, r: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_operatorBitwiseOr(self.h, r.h), owned: true)

proc operatorBitwiseAnd*(self: gen_qrect_types.QRectF, r: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_operatorBitwiseAnd(self.h, r.h), owned: true)

proc operatorBitwiseOrAssign*(self: gen_qrect_types.QRectF, r: gen_qrect_types.QRectF): void =
  fcQRectF_operatorBitwiseOrAssign(self.h, r.h)

proc operatorBitwiseAndAssign*(self: gen_qrect_types.QRectF, r: gen_qrect_types.QRectF): void =
  fcQRectF_operatorBitwiseAndAssign(self.h, r.h)

proc contains*(self: gen_qrect_types.QRectF, r: gen_qrect_types.QRectF): bool =
  fcQRectF_containsR(self.h, r.h)

proc contains*(self: gen_qrect_types.QRectF, p: gen_qpoint_types.QPointF): bool =
  fcQRectF_containsP(self.h, p.h)

proc contains*(self: gen_qrect_types.QRectF, x: float64, y: float64): bool =
  fcQRectF_containsXY(self.h, x, y)

proc united*(self: gen_qrect_types.QRectF, other: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_united(self.h, other.h), owned: true)

proc intersected*(self: gen_qrect_types.QRectF, other: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_intersected(self.h, other.h), owned: true)

proc intersects*(self: gen_qrect_types.QRectF, r: gen_qrect_types.QRectF): bool =
  fcQRectF_intersects(self.h, r.h)

proc marginsAdded*(self: gen_qrect_types.QRectF, margins: gen_qmargins_types.QMarginsF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_marginsAdded(self.h, margins.h), owned: true)

proc marginsRemoved*(self: gen_qrect_types.QRectF, margins: gen_qmargins_types.QMarginsF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_marginsRemoved(self.h, margins.h), owned: true)

proc operatorPlusAssign*(self: gen_qrect_types.QRectF, margins: gen_qmargins_types.QMarginsF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_operatorPlusAssign(self.h, margins.h), owned: false)

proc operatorMinusAssign*(self: gen_qrect_types.QRectF, margins: gen_qmargins_types.QMarginsF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQRectF_operatorMinusAssign(self.h, margins.h), owned: false)

proc toRect*(self: gen_qrect_types.QRectF): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRectF_toRect(self.h), owned: true)

proc toAlignedRect*(self: gen_qrect_types.QRectF): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRectF_toAlignedRect(self.h), owned: true)

proc operatorAssign*(self: gen_qrect_types.QRectF, fromVal: gen_qrect_types.QRectF): void =
  fcQRectF_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  let tmp = gen_qrect_types.QRectF(h: fcQRectF_new(), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRectF,
    topleft: gen_qpoint_types.QPointF, size: gen_qsize_types.QSizeF): gen_qrect_types.QRectF =
  let tmp = gen_qrect_types.QRectF(h: fcQRectF_new2(topleft.h, size.h), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRectF,
    topleft: gen_qpoint_types.QPointF, bottomRight: gen_qpoint_types.QPointF): gen_qrect_types.QRectF =
  let tmp = gen_qrect_types.QRectF(h: fcQRectF_new3(topleft.h, bottomRight.h), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRectF,
    left: float64, top: float64, width: float64, height: float64): gen_qrect_types.QRectF =
  let tmp = gen_qrect_types.QRectF(h: fcQRectF_new4(left, top, width, height), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRectF,
    rect: gen_qrect_types.QRect): gen_qrect_types.QRectF =
  let tmp = gen_qrect_types.QRectF(h: fcQRectF_new5(rect.h), owned: true)
  tmp
proc create*(T: type gen_qrect_types.QRectF,
    fromVal: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  let tmp = gen_qrect_types.QRectF(h: fcQRectF_new6(fromVal.h), owned: true)
  tmp
