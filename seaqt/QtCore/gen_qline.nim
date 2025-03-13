import ./Qt5Core_libs

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


type QLineFIntersectTypeEnum* = distinct cint
template NoIntersection*(_: type QLineFIntersectTypeEnum): untyped = 0
template BoundedIntersection*(_: type QLineFIntersectTypeEnum): untyped = 1
template UnboundedIntersection*(_: type QLineFIntersectTypeEnum): untyped = 2


import ./gen_qline_types
export gen_qline_types

import
  ./gen_qpoint_types
export
  gen_qpoint_types

type cQLine*{.exportc: "QLine", incompleteStruct.} = object
type cQLineF*{.exportc: "QLineF", incompleteStruct.} = object

proc fcQLine_isNull(self: pointer): bool {.importc: "QLine_isNull".}
proc fcQLine_p1(self: pointer): pointer {.importc: "QLine_p1".}
proc fcQLine_p2(self: pointer): pointer {.importc: "QLine_p2".}
proc fcQLine_x1(self: pointer): cint {.importc: "QLine_x1".}
proc fcQLine_y1(self: pointer): cint {.importc: "QLine_y1".}
proc fcQLine_x2(self: pointer): cint {.importc: "QLine_x2".}
proc fcQLine_y2(self: pointer): cint {.importc: "QLine_y2".}
proc fcQLine_dx(self: pointer): cint {.importc: "QLine_dx".}
proc fcQLine_dy(self: pointer): cint {.importc: "QLine_dy".}
proc fcQLine_translate(self: pointer, p: pointer): void {.importc: "QLine_translate".}
proc fcQLine_translate2(self: pointer, dx: cint, dy: cint): void {.importc: "QLine_translate2".}
proc fcQLine_translated(self: pointer, p: pointer): pointer {.importc: "QLine_translated".}
proc fcQLine_translated2(self: pointer, dx: cint, dy: cint): pointer {.importc: "QLine_translated2".}
proc fcQLine_center(self: pointer): pointer {.importc: "QLine_center".}
proc fcQLine_setP1(self: pointer, p1: pointer): void {.importc: "QLine_setP1".}
proc fcQLine_setP2(self: pointer, p2: pointer): void {.importc: "QLine_setP2".}
proc fcQLine_setPoints(self: pointer, p1: pointer, p2: pointer): void {.importc: "QLine_setPoints".}
proc fcQLine_setLine(self: pointer, x1: cint, y1: cint, x2: cint, y2: cint): void {.importc: "QLine_setLine".}
proc fcQLine_operatorEqual(self: pointer, d: pointer): bool {.importc: "QLine_operatorEqual".}
proc fcQLine_operatorNotEqual(self: pointer, d: pointer): bool {.importc: "QLine_operatorNotEqual".}
proc fcQLine_new(): ptr cQLine {.importc: "QLine_new".}
proc fcQLine_new2(pt1: pointer, pt2: pointer): ptr cQLine {.importc: "QLine_new2".}
proc fcQLine_new3(x1: cint, y1: cint, x2: cint, y2: cint): ptr cQLine {.importc: "QLine_new3".}
proc fcQLine_new4(param1: pointer): ptr cQLine {.importc: "QLine_new4".}
proc fcQLineF_fromPolar(length: float64, angle: float64): pointer {.importc: "QLineF_fromPolar".}
proc fcQLineF_isNull(self: pointer): bool {.importc: "QLineF_isNull".}
proc fcQLineF_p1(self: pointer): pointer {.importc: "QLineF_p1".}
proc fcQLineF_p2(self: pointer): pointer {.importc: "QLineF_p2".}
proc fcQLineF_x1(self: pointer): float64 {.importc: "QLineF_x1".}
proc fcQLineF_y1(self: pointer): float64 {.importc: "QLineF_y1".}
proc fcQLineF_x2(self: pointer): float64 {.importc: "QLineF_x2".}
proc fcQLineF_y2(self: pointer): float64 {.importc: "QLineF_y2".}
proc fcQLineF_dx(self: pointer): float64 {.importc: "QLineF_dx".}
proc fcQLineF_dy(self: pointer): float64 {.importc: "QLineF_dy".}
proc fcQLineF_length(self: pointer): float64 {.importc: "QLineF_length".}
proc fcQLineF_setLength(self: pointer, len: float64): void {.importc: "QLineF_setLength".}
proc fcQLineF_angle(self: pointer): float64 {.importc: "QLineF_angle".}
proc fcQLineF_setAngle(self: pointer, angle: float64): void {.importc: "QLineF_setAngle".}
proc fcQLineF_angleTo(self: pointer, l: pointer): float64 {.importc: "QLineF_angleTo".}
proc fcQLineF_unitVector(self: pointer): pointer {.importc: "QLineF_unitVector".}
proc fcQLineF_normalVector(self: pointer): pointer {.importc: "QLineF_normalVector".}
proc fcQLineF_intersects(self: pointer, l: pointer, intersectionPoint: pointer): cint {.importc: "QLineF_intersects".}
proc fcQLineF_intersect(self: pointer, l: pointer, intersectionPoint: pointer): cint {.importc: "QLineF_intersect".}
proc fcQLineF_angleWithQLineF(self: pointer, l: pointer): float64 {.importc: "QLineF_angleWithQLineF".}
proc fcQLineF_pointAt(self: pointer, t: float64): pointer {.importc: "QLineF_pointAt".}
proc fcQLineF_translate(self: pointer, p: pointer): void {.importc: "QLineF_translate".}
proc fcQLineF_translate2(self: pointer, dx: float64, dy: float64): void {.importc: "QLineF_translate2".}
proc fcQLineF_translated(self: pointer, p: pointer): pointer {.importc: "QLineF_translated".}
proc fcQLineF_translated2(self: pointer, dx: float64, dy: float64): pointer {.importc: "QLineF_translated2".}
proc fcQLineF_center(self: pointer): pointer {.importc: "QLineF_center".}
proc fcQLineF_setP1(self: pointer, p1: pointer): void {.importc: "QLineF_setP1".}
proc fcQLineF_setP2(self: pointer, p2: pointer): void {.importc: "QLineF_setP2".}
proc fcQLineF_setPoints(self: pointer, p1: pointer, p2: pointer): void {.importc: "QLineF_setPoints".}
proc fcQLineF_setLine(self: pointer, x1: float64, y1: float64, x2: float64, y2: float64): void {.importc: "QLineF_setLine".}
proc fcQLineF_operatorEqual(self: pointer, d: pointer): bool {.importc: "QLineF_operatorEqual".}
proc fcQLineF_operatorNotEqual(self: pointer, d: pointer): bool {.importc: "QLineF_operatorNotEqual".}
proc fcQLineF_toLine(self: pointer): pointer {.importc: "QLineF_toLine".}
proc fcQLineF_new(): ptr cQLineF {.importc: "QLineF_new".}
proc fcQLineF_new2(pt1: pointer, pt2: pointer): ptr cQLineF {.importc: "QLineF_new2".}
proc fcQLineF_new3(x1: float64, y1: float64, x2: float64, y2: float64): ptr cQLineF {.importc: "QLineF_new3".}
proc fcQLineF_new4(line: pointer): ptr cQLineF {.importc: "QLineF_new4".}
proc fcQLineF_new5(param1: pointer): ptr cQLineF {.importc: "QLineF_new5".}

proc isNull*(self: gen_qline_types.QLine): bool =
  fcQLine_isNull(self.h)

proc p1*(self: gen_qline_types.QLine): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQLine_p1(self.h), owned: true)

proc p2*(self: gen_qline_types.QLine): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQLine_p2(self.h), owned: true)

proc x1*(self: gen_qline_types.QLine): cint =
  fcQLine_x1(self.h)

proc y1*(self: gen_qline_types.QLine): cint =
  fcQLine_y1(self.h)

proc x2*(self: gen_qline_types.QLine): cint =
  fcQLine_x2(self.h)

proc y2*(self: gen_qline_types.QLine): cint =
  fcQLine_y2(self.h)

proc dx*(self: gen_qline_types.QLine): cint =
  fcQLine_dx(self.h)

proc dy*(self: gen_qline_types.QLine): cint =
  fcQLine_dy(self.h)

proc translate*(self: gen_qline_types.QLine, p: gen_qpoint_types.QPoint): void =
  fcQLine_translate(self.h, p.h)

proc translate*(self: gen_qline_types.QLine, dx: cint, dy: cint): void =
  fcQLine_translate2(self.h, dx, dy)

proc translated*(self: gen_qline_types.QLine, p: gen_qpoint_types.QPoint): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQLine_translated(self.h, p.h), owned: true)

proc translated*(self: gen_qline_types.QLine, dx: cint, dy: cint): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQLine_translated2(self.h, dx, dy), owned: true)

proc center*(self: gen_qline_types.QLine): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQLine_center(self.h), owned: true)

proc setP1*(self: gen_qline_types.QLine, p1: gen_qpoint_types.QPoint): void =
  fcQLine_setP1(self.h, p1.h)

proc setP2*(self: gen_qline_types.QLine, p2: gen_qpoint_types.QPoint): void =
  fcQLine_setP2(self.h, p2.h)

proc setPoints*(self: gen_qline_types.QLine, p1: gen_qpoint_types.QPoint, p2: gen_qpoint_types.QPoint): void =
  fcQLine_setPoints(self.h, p1.h, p2.h)

proc setLine*(self: gen_qline_types.QLine, x1: cint, y1: cint, x2: cint, y2: cint): void =
  fcQLine_setLine(self.h, x1, y1, x2, y2)

proc operatorEqual*(self: gen_qline_types.QLine, d: gen_qline_types.QLine): bool =
  fcQLine_operatorEqual(self.h, d.h)

proc operatorNotEqual*(self: gen_qline_types.QLine, d: gen_qline_types.QLine): bool =
  fcQLine_operatorNotEqual(self.h, d.h)

proc create*(T: type gen_qline_types.QLine): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQLine_new(), owned: true)

proc create*(T: type gen_qline_types.QLine,
    pt1: gen_qpoint_types.QPoint, pt2: gen_qpoint_types.QPoint): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQLine_new2(pt1.h, pt2.h), owned: true)

proc create*(T: type gen_qline_types.QLine,
    x1: cint, y1: cint, x2: cint, y2: cint): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQLine_new3(x1, y1, x2, y2), owned: true)

proc create*(T: type gen_qline_types.QLine,
    param1: gen_qline_types.QLine): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQLine_new4(param1.h), owned: true)

proc fromPolar*(_: type gen_qline_types.QLineF, length: float64, angle: float64): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_fromPolar(length, angle), owned: true)

proc isNull*(self: gen_qline_types.QLineF): bool =
  fcQLineF_isNull(self.h)

proc p1*(self: gen_qline_types.QLineF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQLineF_p1(self.h), owned: true)

proc p2*(self: gen_qline_types.QLineF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQLineF_p2(self.h), owned: true)

proc x1*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_x1(self.h)

proc y1*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_y1(self.h)

proc x2*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_x2(self.h)

proc y2*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_y2(self.h)

proc dx*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_dx(self.h)

proc dy*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_dy(self.h)

proc length*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_length(self.h)

proc setLength*(self: gen_qline_types.QLineF, len: float64): void =
  fcQLineF_setLength(self.h, len)

proc angle*(self: gen_qline_types.QLineF): float64 =
  fcQLineF_angle(self.h)

proc setAngle*(self: gen_qline_types.QLineF, angle: float64): void =
  fcQLineF_setAngle(self.h, angle)

proc angleTo*(self: gen_qline_types.QLineF, l: gen_qline_types.QLineF): float64 =
  fcQLineF_angleTo(self.h, l.h)

proc unitVector*(self: gen_qline_types.QLineF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_unitVector(self.h), owned: true)

proc normalVector*(self: gen_qline_types.QLineF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_normalVector(self.h), owned: true)

proc intersects*(self: gen_qline_types.QLineF, l: gen_qline_types.QLineF, intersectionPoint: gen_qpoint_types.QPointF): cint =
  cint(fcQLineF_intersects(self.h, l.h, intersectionPoint.h))

proc intersect*(self: gen_qline_types.QLineF, l: gen_qline_types.QLineF, intersectionPoint: gen_qpoint_types.QPointF): cint =
  cint(fcQLineF_intersect(self.h, l.h, intersectionPoint.h))

proc angle*(self: gen_qline_types.QLineF, l: gen_qline_types.QLineF): float64 =
  fcQLineF_angleWithQLineF(self.h, l.h)

proc pointAt*(self: gen_qline_types.QLineF, t: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQLineF_pointAt(self.h, t), owned: true)

proc translate*(self: gen_qline_types.QLineF, p: gen_qpoint_types.QPointF): void =
  fcQLineF_translate(self.h, p.h)

proc translate*(self: gen_qline_types.QLineF, dx: float64, dy: float64): void =
  fcQLineF_translate2(self.h, dx, dy)

proc translated*(self: gen_qline_types.QLineF, p: gen_qpoint_types.QPointF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_translated(self.h, p.h), owned: true)

proc translated*(self: gen_qline_types.QLineF, dx: float64, dy: float64): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_translated2(self.h, dx, dy), owned: true)

proc center*(self: gen_qline_types.QLineF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQLineF_center(self.h), owned: true)

proc setP1*(self: gen_qline_types.QLineF, p1: gen_qpoint_types.QPointF): void =
  fcQLineF_setP1(self.h, p1.h)

proc setP2*(self: gen_qline_types.QLineF, p2: gen_qpoint_types.QPointF): void =
  fcQLineF_setP2(self.h, p2.h)

proc setPoints*(self: gen_qline_types.QLineF, p1: gen_qpoint_types.QPointF, p2: gen_qpoint_types.QPointF): void =
  fcQLineF_setPoints(self.h, p1.h, p2.h)

proc setLine*(self: gen_qline_types.QLineF, x1: float64, y1: float64, x2: float64, y2: float64): void =
  fcQLineF_setLine(self.h, x1, y1, x2, y2)

proc operatorEqual*(self: gen_qline_types.QLineF, d: gen_qline_types.QLineF): bool =
  fcQLineF_operatorEqual(self.h, d.h)

proc operatorNotEqual*(self: gen_qline_types.QLineF, d: gen_qline_types.QLineF): bool =
  fcQLineF_operatorNotEqual(self.h, d.h)

proc toLine*(self: gen_qline_types.QLineF): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQLineF_toLine(self.h), owned: true)

proc create*(T: type gen_qline_types.QLineF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_new(), owned: true)

proc create*(T: type gen_qline_types.QLineF,
    pt1: gen_qpoint_types.QPointF, pt2: gen_qpoint_types.QPointF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_new2(pt1.h, pt2.h), owned: true)

proc create*(T: type gen_qline_types.QLineF,
    x1: float64, y1: float64, x2: float64, y2: float64): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_new3(x1, y1, x2, y2), owned: true)

proc create*(T: type gen_qline_types.QLineF,
    line: gen_qline_types.QLine): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_new4(line.h), owned: true)

proc create*(T: type gen_qline_types.QLineF,
    param1: gen_qline_types.QLineF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQLineF_new5(param1.h), owned: true)

