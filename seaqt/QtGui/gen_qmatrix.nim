import ./qtgui_pkg

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


import ./gen_qmatrix_types
export gen_qmatrix_types

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

type cQMatrix*{.exportc: "QMatrix", incompleteStruct.} = object

proc fcQMatrix_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMatrix_operatorAssign".}
proc fcQMatrix_setMatrix(self: pointer, m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): void {.importc: "QMatrix_setMatrix".}
proc fcQMatrix_m11(self: pointer): float64 {.importc: "QMatrix_m11".}
proc fcQMatrix_m12(self: pointer): float64 {.importc: "QMatrix_m12".}
proc fcQMatrix_m21(self: pointer): float64 {.importc: "QMatrix_m21".}
proc fcQMatrix_m22(self: pointer): float64 {.importc: "QMatrix_m22".}
proc fcQMatrix_dx(self: pointer): float64 {.importc: "QMatrix_dx".}
proc fcQMatrix_dy(self: pointer): float64 {.importc: "QMatrix_dy".}
proc fcQMatrix_mapIntIntIntInt(self: pointer, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void {.importc: "QMatrix_map_int_int_int_int".}
proc fcQMatrix_mapQrealQrealQrealQreal(self: pointer, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void {.importc: "QMatrix_map_qreal_qreal_qreal_qreal".}
proc fcQMatrix_mapRect_QRect(self: pointer, param1: pointer): pointer {.importc: "QMatrix_mapRect_QRect".}
proc fcQMatrix_mapRect_QRectF(self: pointer, param1: pointer): pointer {.importc: "QMatrix_mapRect_QRectF".}
proc fcQMatrix_map_QPoint(self: pointer, p: pointer): pointer {.importc: "QMatrix_map_QPoint".}
proc fcQMatrix_map_QPointF(self: pointer, p: pointer): pointer {.importc: "QMatrix_map_QPointF".}
proc fcQMatrix_map_QLine(self: pointer, l: pointer): pointer {.importc: "QMatrix_map_QLine".}
proc fcQMatrix_map_QLineF(self: pointer, l: pointer): pointer {.importc: "QMatrix_map_QLineF".}
proc fcQMatrix_map_QRegion(self: pointer, r: pointer): pointer {.importc: "QMatrix_map_QRegion".}
proc fcQMatrix_map_QPainterPath(self: pointer, p: pointer): pointer {.importc: "QMatrix_map_QPainterPath".}
proc fcQMatrix_reset(self: pointer): void {.importc: "QMatrix_reset".}
proc fcQMatrix_isIdentity(self: pointer): bool {.importc: "QMatrix_isIdentity".}
proc fcQMatrix_translate(self: pointer, dx: float64, dy: float64): pointer {.importc: "QMatrix_translate".}
proc fcQMatrix_scale(self: pointer, sx: float64, sy: float64): pointer {.importc: "QMatrix_scale".}
proc fcQMatrix_shear(self: pointer, sh: float64, sv: float64): pointer {.importc: "QMatrix_shear".}
proc fcQMatrix_rotate(self: pointer, a: float64): pointer {.importc: "QMatrix_rotate".}
proc fcQMatrix_isInvertible(self: pointer): bool {.importc: "QMatrix_isInvertible".}
proc fcQMatrix_determinant(self: pointer): float64 {.importc: "QMatrix_determinant".}
proc fcQMatrix_inverted(self: pointer): pointer {.importc: "QMatrix_inverted".}
proc fcQMatrix_operatorEqual(self: pointer, param1: pointer): bool {.importc: "QMatrix_operatorEqual".}
proc fcQMatrix_operatorNotEqual(self: pointer, param1: pointer): bool {.importc: "QMatrix_operatorNotEqual".}
proc fcQMatrix_operatorMultiplyAssign(self: pointer, param1: pointer): pointer {.importc: "QMatrix_operatorMultiplyAssign".}
proc fcQMatrix_operatorMultiply(self: pointer, o: pointer): pointer {.importc: "QMatrix_operatorMultiply".}
proc fcQMatrix_ToQVariant(self: pointer): pointer {.importc: "QMatrix_ToQVariant".}
proc fcQMatrix_invertedInvertible(self: pointer, invertible: ptr bool): pointer {.importc: "QMatrix_inverted_invertible".}
proc fcQMatrix_new(param1: cint): ptr cQMatrix {.importc: "QMatrix_new_Qt_Initialization".}
proc fcQMatrix_new2(): ptr cQMatrix {.importc: "QMatrix_new".}
proc fcQMatrix_new3(m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): ptr cQMatrix {.importc: "QMatrix_new_qreal_qreal_qreal_qreal_qreal_qreal".}
proc fcQMatrix_new4(fromVal: pointer): ptr cQMatrix {.importc: "QMatrix_new_QMatrix".}

proc operatorAssign*(self: gen_qmatrix_types.QMatrix, fromVal: gen_qmatrix_types.QMatrix): void =
  fcQMatrix_operatorAssign(self.h, fromVal.h)

proc setMatrix*(self: gen_qmatrix_types.QMatrix, m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): void =
  fcQMatrix_setMatrix(self.h, m11, m12, m21, m22, dx, dy)

proc m11*(self: gen_qmatrix_types.QMatrix): float64 =
  fcQMatrix_m11(self.h)

proc m12*(self: gen_qmatrix_types.QMatrix): float64 =
  fcQMatrix_m12(self.h)

proc m21*(self: gen_qmatrix_types.QMatrix): float64 =
  fcQMatrix_m21(self.h)

proc m22*(self: gen_qmatrix_types.QMatrix): float64 =
  fcQMatrix_m22(self.h)

proc dx*(self: gen_qmatrix_types.QMatrix): float64 =
  fcQMatrix_dx(self.h)

proc dy*(self: gen_qmatrix_types.QMatrix): float64 =
  fcQMatrix_dy(self.h)

proc map*(self: gen_qmatrix_types.QMatrix, x: cint, y: cint, tx: ptr cint, ty: ptr cint): void =
  fcQMatrix_mapIntIntIntInt(self.h, x, y, tx, ty)

proc map*(self: gen_qmatrix_types.QMatrix, x: float64, y: float64, tx: ptr float64, ty: ptr float64): void =
  fcQMatrix_mapQrealQrealQrealQreal(self.h, x, y, tx, ty)

proc mapRect*(self: gen_qmatrix_types.QMatrix, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMatrix_mapRect_QRect(self.h, param1.h), owned: true)

proc mapRect*(self: gen_qmatrix_types.QMatrix, param1: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQMatrix_mapRect_QRectF(self.h, param1.h), owned: true)

proc map*(self: gen_qmatrix_types.QMatrix, p: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMatrix_map_QPoint(self.h, p.h), owned: true)

proc map*(self: gen_qmatrix_types.QMatrix, p: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMatrix_map_QPointF(self.h, p.h), owned: true)

proc map*(self: gen_qmatrix_types.QMatrix, l: gen_qline_types.QLine): gen_qline_types.QLine =
  gen_qline_types.QLine(h: fcQMatrix_map_QLine(self.h, l.h), owned: true)

proc map*(self: gen_qmatrix_types.QMatrix, l: gen_qline_types.QLineF): gen_qline_types.QLineF =
  gen_qline_types.QLineF(h: fcQMatrix_map_QLineF(self.h, l.h), owned: true)

proc map*(self: gen_qmatrix_types.QMatrix, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQMatrix_map_QRegion(self.h, r.h), owned: true)

proc map*(self: gen_qmatrix_types.QMatrix, p: gen_qpainterpath_types.QPainterPath): gen_qpainterpath_types.QPainterPath =
  gen_qpainterpath_types.QPainterPath(h: fcQMatrix_map_QPainterPath(self.h, p.h), owned: true)

proc reset*(self: gen_qmatrix_types.QMatrix): void =
  fcQMatrix_reset(self.h)

proc isIdentity*(self: gen_qmatrix_types.QMatrix): bool =
  fcQMatrix_isIdentity(self.h)

proc translate*(self: gen_qmatrix_types.QMatrix, dx: float64, dy: float64): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_translate(self.h, dx, dy), owned: false)

proc scale*(self: gen_qmatrix_types.QMatrix, sx: float64, sy: float64): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_scale(self.h, sx, sy), owned: false)

proc shear*(self: gen_qmatrix_types.QMatrix, sh: float64, sv: float64): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_shear(self.h, sh, sv), owned: false)

proc rotate*(self: gen_qmatrix_types.QMatrix, a: float64): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_rotate(self.h, a), owned: false)

proc isInvertible*(self: gen_qmatrix_types.QMatrix): bool =
  fcQMatrix_isInvertible(self.h)

proc determinant*(self: gen_qmatrix_types.QMatrix): float64 =
  fcQMatrix_determinant(self.h)

proc inverted*(self: gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_inverted(self.h), owned: true)

proc operatorEqual*(self: gen_qmatrix_types.QMatrix, param1: gen_qmatrix_types.QMatrix): bool =
  fcQMatrix_operatorEqual(self.h, param1.h)

proc operatorNotEqual*(self: gen_qmatrix_types.QMatrix, param1: gen_qmatrix_types.QMatrix): bool =
  fcQMatrix_operatorNotEqual(self.h, param1.h)

proc operatorMultiplyAssign*(self: gen_qmatrix_types.QMatrix, param1: gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_operatorMultiplyAssign(self.h, param1.h), owned: false)

proc operatorMultiply*(self: gen_qmatrix_types.QMatrix, o: gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_operatorMultiply(self.h, o.h), owned: true)

proc ToQVariant*(self: gen_qmatrix_types.QMatrix): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMatrix_ToQVariant(self.h), owned: true)

proc inverted*(self: gen_qmatrix_types.QMatrix, invertible: ptr bool): gen_qmatrix_types.QMatrix =
  gen_qmatrix_types.QMatrix(h: fcQMatrix_invertedInvertible(self.h, invertible), owned: true)

proc create*(T: type gen_qmatrix_types.QMatrix,
    param1: cint): gen_qmatrix_types.QMatrix =
  let tmp = gen_qmatrix_types.QMatrix(h: fcQMatrix_new(cint(param1)), owned: true)
  tmp
proc create*(T: type gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =
  let tmp = gen_qmatrix_types.QMatrix(h: fcQMatrix_new2(), owned: true)
  tmp
proc create*(T: type gen_qmatrix_types.QMatrix,
    m11: float64, m12: float64, m21: float64, m22: float64, dx: float64, dy: float64): gen_qmatrix_types.QMatrix =
  let tmp = gen_qmatrix_types.QMatrix(h: fcQMatrix_new3(m11, m12, m21, m22, dx, dy), owned: true)
  tmp
proc create*(T: type gen_qmatrix_types.QMatrix,
    fromVal: gen_qmatrix_types.QMatrix): gen_qmatrix_types.QMatrix =
  let tmp = gen_qmatrix_types.QMatrix(h: fcQMatrix_new4(fromVal.h), owned: true)
  tmp
