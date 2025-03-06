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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qtransform.cpp", cflags).}


type QTransformTransformationTypeEnum* = distinct cint
template TxNone*(_: type QTransformTransformationTypeEnum): untyped = 0
template TxTranslate*(_: type QTransformTransformationTypeEnum): untyped = 1
template TxScale*(_: type QTransformTransformationTypeEnum): untyped = 2
template TxRotate*(_: type QTransformTransformationTypeEnum): untyped = 4
template TxShear*(_: type QTransformTransformationTypeEnum): untyped = 8
template TxProject*(_: type QTransformTransformationTypeEnum): untyped = 16


import ./gen_qtransform_types
export gen_qtransform_types

import
  ../QtCore/gen_qline_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qpainterpath_types,
  ./gen_qregion_types
export
  gen_qline_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qvariant_types,
  gen_qpainterpath_types,
  gen_qregion_types

type cQTransform*{.exportc: "QTransform", incompleteStruct.} = object

proc fcQTransform_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTransform_operatorAssign".}
proc fcQTransform_isAffine(self: pointer, ): bool {.importc: "QTransform_isAffine".}
proc fcQTransform_isIdentity(self: pointer, ): bool {.importc: "QTransform_isIdentity".}
proc fcQTransform_isInvertible(self: pointer, ): bool {.importc: "QTransform_isInvertible".}
proc fcQTransform_isScaling(self: pointer, ): bool {.importc: "QTransform_isScaling".}
proc fcQTransform_isRotating(self: pointer, ): bool {.importc: "QTransform_isRotating".}
proc fcQTransform_isTranslating(self: pointer, ): bool {.importc: "QTransform_isTranslating".}
proc fcQTransform_typeX(self: pointer, ): cint {.importc: "QTransform_type".}
proc fcQTransform_determinant(self: pointer, ): float64 {.importc: "QTransform_determinant".}
proc fcQTransform_m11(self: pointer, ): float64 {.importc: "QTransform_m11".}
proc fcQTransform_m12(self: pointer, ): float64 {.importc: "QTransform_m12".}
proc fcQTransform_m13(self: pointer, ): float64 {.importc: "QTransform_m13".}
proc fcQTransform_m21(self: pointer, ): float64 {.importc: "QTransform_m21".}
proc fcQTransform_m22(self: pointer, ): float64 {.importc: "QTransform_m22".}
proc fcQTransform_m23(self: pointer, ): float64 {.importc: "QTransform_m23".}
proc fcQTransform_m31(self: pointer, ): float64 {.importc: "QTransform_m31".}
proc fcQTransform_m32(self: pointer, ): float64 {.importc: "QTransform_m32".}
proc fcQTransform_m33(self: pointer, ): float64 {.importc: "QTransform_m33".}
proc fcQTransform_dx(self: pointer, ): float64 {.importc: "QTransform_dx".}
proc fcQTransform_dy(self: pointer, ): float64 {.importc: "QTransform_dy".}
proc fcQTransform_setMatrix(self: pointer, m11: float64, m12: float64, m13: float64, m21: float64, m22: float64, m23: float64, m31: float64, m32: float64, m33: float64): void {.importc: "QTransform_setMatrix".}
proc fcQTransform_inverted(self: pointer, ): pointer {.importc: "QTransform_inverted".}
proc fcQTransform_adjoint(self: pointer, ): pointer {.importc: "QTransform_adjoint".}
proc fcQTransform_transposed(self: pointer, ): pointer {.importc: "QTransform_transposed".}
proc fcQTransform_translate(self: pointer, dx: float64, dy: float64): pointer {.importc: "QTransform_translate".}
proc fcQTransform_scale(self: pointer, sx: float64, sy: float64): pointer {.importc: "QTransform_scale".}
proc fcQTransform_shear(self: pointer, sh: float64, sv: float64): pointer {.importc: "QTransform_shear".}
proc fcQTransform_rotate(self: pointer, a: float64): pointer {.importc: "QTransform_rotate".}
proc fcQTransform_rotateRadians(self: pointer, a: float64): pointer {.importc: "QTransform_rotateRadians".}
proc fcQTransform_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QTransform_operatorEqual".}
proc fcQTransform_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QTransform_operatorNotEqual".}
proc fcQTransform_operatorMultiplyAssign(self: pointer, param1: pointer): pointer {.importc: "QTransform_operatorMultiplyAssign".}
proc fcQTransform_operatorMultiply(self: pointer, o: pointer): pointer {.importc: "QTransform_operatorMultiply".}
proc fcQTransform_ToQVariant(self: pointer, ): pointer {.importc: "QTransform_ToQVariant".}
proc fcQTransform_reset(self: pointer, ): void {.importc: "QTransform_reset".}
proc fcQTransform_map(self: pointer, p: pointer): pointer {.importc: "QTransform_map".}
proc fcQTransform_mapWithQPointF(self: pointer, p: pointer): pointer {.importc: "QTransform_mapWithQPointF".}
proc fcQTransform_mapWithQLine(self: pointer, l: pointer): pointer {.importc: "QTransform_mapWithQLine".}
proc fcQTransform_mapWithQLineF(self: pointer, l: pointer): pointer {.importc: "QTransform_mapWithQLineF".}
proc fcQTransform_mapWithQRegion(self: pointer, r: pointer): pointer {.importc: "QTransform_mapWithQRegion".}
proc fcQTransform_mapWithQPainterPath(self: pointer, p: pointer): pointer {.importc: "QTransform_mapWithQPainterPath".}
proc fcQTransform_mapRect(self: pointer, param1: pointer): pointer {.importc: "QTransform_mapRect".}
proc fcQTransform_mapRectWithQRectF(self: pointer, param1: pointer): pointer {.importc: "QTransform_mapRectWithQRectF".}
proc fcQTransform_map2(self: pointer, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void {.importc: "QTransform_map2".}
proc fcQTransform_map3(self: pointer, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void {.importc: "QTransform_map3".}
proc fcQTransform_operatorMultiplyAssignWithDiv(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorMultiplyAssignWithDiv".}
proc fcQTransform_operatorDivideAssign(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorDivideAssign".}
proc fcQTransform_operatorPlusAssign(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorPlusAssign".}
proc fcQTransform_operatorMinusAssign(self: pointer, divVal: float64): pointer {.importc: "QTransform_operatorMinusAssign".}
proc fcQTransform_fromTranslate(dx: float64, dy: float64): pointer {.importc: "QTransform_fromTranslate".}
proc fcQTransform_fromScale(dx: float64, dy: float64): pointer {.importc: "QTransform_fromScale".}
proc fcQTransform_inverted1(self: pointer, invertible: ptr bool): pointer {.importc: "QTransform_inverted1".}
proc fcQTransform_rotate2(self: pointer, a: float64, axis: cint): pointer {.importc: "QTransform_rotate2".}
proc fcQTransform_rotateRadians2(self: pointer, a: float64, axis: cint): pointer {.importc: "QTransform_rotateRadians2".}
proc fcQTransform_new(param1: cint): ptr cQTransform {.importc: "QTransform_new".}
proc fcQTransform_new2(): ptr cQTransform {.importc: "QTransform_new2".}
proc fcQTransform_new3(h11: float64, h12: float64, h13: float64, h21: float64, h22: float64, h23: float64, h31: float64, h32: float64, h33: float64): ptr cQTransform {.importc: "QTransform_new3".}
proc fcQTransform_new4(h11: float64, h12: float64, h21: float64, h22: float64, dx: float64, dy: float64): ptr cQTransform {.importc: "QTransform_new4".}
proc fcQTransform_new5(other: pointer): ptr cQTransform {.importc: "QTransform_new5".}
proc fcQTransform_delete(self: pointer) {.importc: "QTransform_delete".}

proc operatorAssign*(self: gen_qtransform_types.QTransform, param1: gen_qtransform_types.QTransform): void =
  fcQTransform_operatorAssign(self.h, param1.h)

proc isAffine*(self: gen_qtransform_types.QTransform, ): bool =
  fcQTransform_isAffine(self.h)

proc isIdentity*(self: gen_qtransform_types.QTransform, ): bool =
  fcQTransform_isIdentity(self.h)

proc isInvertible*(self: gen_qtransform_types.QTransform, ): bool =
  fcQTransform_isInvertible(self.h)

proc isScaling*(self: gen_qtransform_types.QTransform, ): bool =
  fcQTransform_isScaling(self.h)

proc isRotating*(self: gen_qtransform_types.QTransform, ): bool =
  fcQTransform_isRotating(self.h)

proc isTranslating*(self: gen_qtransform_types.QTransform, ): bool =
  fcQTransform_isTranslating(self.h)

proc typeX*(self: gen_qtransform_types.QTransform, ): cint =
  cint(fcQTransform_typeX(self.h))

proc determinant*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_determinant(self.h)

proc m11*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m11(self.h)

proc m12*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m12(self.h)

proc m13*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m13(self.h)

proc m21*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m21(self.h)

proc m22*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m22(self.h)

proc m23*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m23(self.h)

proc m31*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m31(self.h)

proc m32*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m32(self.h)

proc m33*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_m33(self.h)

proc dx*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_dx(self.h)

proc dy*(self: gen_qtransform_types.QTransform, ): float64 =
  fcQTransform_dy(self.h)

proc setMatrix*(self: gen_qtransform_types.QTransform, m11: float64, m12: float64, m13: float64, m21: float64, m22: float64, m23: float64, m31: float64, m32: float64, m33: float64): void =
  fcQTransform_setMatrix(self.h, m11, m12, m13, m21, m22, m23, m31, m32, m33)

proc inverted*(self: gen_qtransform_types.QTransform, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_inverted(self.h))

proc adjoint*(self: gen_qtransform_types.QTransform, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_adjoint(self.h))

proc transposed*(self: gen_qtransform_types.QTransform, ): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_transposed(self.h))

proc translate*(self: gen_qtransform_types.QTransform, dx: float64, dy: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_translate(self.h, dx, dy))

proc scale*(self: gen_qtransform_types.QTransform, sx: float64, sy: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_scale(self.h, sx, sy))

proc shear*(self: gen_qtransform_types.QTransform, sh: float64, sv: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_shear(self.h, sh, sv))

proc rotate*(self: gen_qtransform_types.QTransform, a: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_rotate(self.h, a))

proc rotateRadians*(self: gen_qtransform_types.QTransform, a: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_rotateRadians(self.h, a))

proc operatorEqual*(self: gen_qtransform_types.QTransform, param1: gen_qtransform_types.QTransform): bool =
  fcQTransform_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qtransform_types.QTransform, param1: gen_qtransform_types.QTransform): bool =
  fcQTransform_operatorNotEqual(self.h, param1.h)

proc operatorMultiplyAssign*(self: gen_qtransform_types.QTransform, param1: gen_qtransform_types.QTransform): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_operatorMultiplyAssign(self.h, param1.h))

proc operatorMultiply*(self: gen_qtransform_types.QTransform, o: gen_qtransform_types.QTransform): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_operatorMultiply(self.h, o.h))

proc ToQVariant*(self: gen_qtransform_types.QTransform, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQTransform_ToQVariant(self.h))

proc reset*(self: gen_qtransform_types.QTransform, ): void =
  fcQTransform_reset(self.h)

proc map*(self: gen_qtransform_types.QTransform, p: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTransform_map(self.h, p.h))

proc map*(self: gen_qtransform_types.QTransform, p: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTransform_mapWithQPointF(self.h, p.h))

proc map*(self: gen_qtransform_types.QTransform, l: gen_qline_types.QLine): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQTransform_mapWithQLine(self.h, l.h))

proc map*(self: gen_qtransform_types.QTransform, l: gen_qline_types.QLineF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQTransform_mapWithQLineF(self.h, l.h))

proc map*(self: gen_qtransform_types.QTransform, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQTransform_mapWithQRegion(self.h, r.h))

proc map*(self: gen_qtransform_types.QTransform, p: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQTransform_mapWithQPainterPath(self.h, p.h))

proc mapRect*(self: gen_qtransform_types.QTransform, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQTransform_mapRect(self.h, param1.h))

proc mapRect*(self: gen_qtransform_types.QTransform, param1: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTransform_mapRectWithQRectF(self.h, param1.h))

proc map*(self: gen_qtransform_types.QTransform, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void =
  fcQTransform_map2(self.h, x, y, tx, ty)

proc map*(self: gen_qtransform_types.QTransform, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void =
  fcQTransform_map3(self.h, x, y, tx, ty)

proc operatorMultiplyAssign*(self: gen_qtransform_types.QTransform, divVal: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_operatorMultiplyAssignWithDiv(self.h, divVal))

proc operatorDivideAssign*(self: gen_qtransform_types.QTransform, divVal: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_operatorDivideAssign(self.h, divVal))

proc operatorPlusAssign*(self: gen_qtransform_types.QTransform, divVal: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_operatorPlusAssign(self.h, divVal))

proc operatorMinusAssign*(self: gen_qtransform_types.QTransform, divVal: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_operatorMinusAssign(self.h, divVal))

proc fromTranslate*(_: type gen_qtransform_types.QTransform, dx: float64, dy: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_fromTranslate(dx, dy))

proc fromScale*(_: type gen_qtransform_types.QTransform, dx: float64, dy: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_fromScale(dx, dy))

proc inverted*(self: gen_qtransform_types.QTransform, invertible: ptr bool): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_inverted1(self.h, invertible))

proc rotate*(self: gen_qtransform_types.QTransform, a: float64, axis: cint): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_rotate2(self.h, a, cint(axis)))

proc rotateRadians*(self: gen_qtransform_types.QTransform, a: float64, axis: cint): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_rotateRadians2(self.h, a, cint(axis)))

proc create*(T: type gen_qtransform_types.QTransform,
    param1: cint): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_new(cint(param1)))

proc create*(T: type gen_qtransform_types.QTransform): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_new2())

proc create*(T: type gen_qtransform_types.QTransform,
    h11: float64, h12: float64, h13: float64, h21: float64, h22: float64, h23: float64, h31: float64, h32: float64, h33: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_new3(h11, h12, h13, h21, h22, h23, h31, h32, h33))

proc create*(T: type gen_qtransform_types.QTransform,
    h11: float64, h12: float64, h21: float64, h22: float64, dx: float64, dy: float64): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_new4(h11, h12, h21, h22, dx, dy))

proc create*(T: type gen_qtransform_types.QTransform,
    other: gen_qtransform_types.QTransform): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQTransform_new5(other.h))

proc delete*(self: gen_qtransform_types.QTransform) =
  fcQTransform_delete(self.h)
