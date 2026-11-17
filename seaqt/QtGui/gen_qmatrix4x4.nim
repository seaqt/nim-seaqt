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


type QMatrix4x4FlagEnum* = distinct cint
template Identity*(_: type QMatrix4x4FlagEnum): untyped = 0
template Translation*(_: type QMatrix4x4FlagEnum): untyped = 1
template Scale*(_: type QMatrix4x4FlagEnum): untyped = 2
template Rotation2D*(_: type QMatrix4x4FlagEnum): untyped = 4
template Rotation*(_: type QMatrix4x4FlagEnum): untyped = 8
template Perspective*(_: type QMatrix4x4FlagEnum): untyped = 16
template General*(_: type QMatrix4x4FlagEnum): untyped = 31


import ./gen_qmatrix4x4_types
export gen_qmatrix4x4_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qquaternion_types,
  ./gen_qtransform_types,
  ./gen_qvectornd_types
export
  gen_qpoint_types,
  gen_qrect_types,
  gen_qvariant_types,
  gen_qquaternion_types,
  gen_qtransform_types,
  gen_qvectornd_types

type cQMatrix4x4*{.exportc: "QMatrix4x4", incompleteStruct.} = object

proc fcQMatrix4x4_column(self: pointer, index: cint): pointer {.importc: "QMatrix4x4_column".}
proc fcQMatrix4x4_setColumn(self: pointer, index: cint, value: pointer): void {.importc: "QMatrix4x4_setColumn".}
proc fcQMatrix4x4_row(self: pointer, index: cint): pointer {.importc: "QMatrix4x4_row".}
proc fcQMatrix4x4_setRow(self: pointer, index: cint, value: pointer): void {.importc: "QMatrix4x4_setRow".}
proc fcQMatrix4x4_isAffine(self: pointer): bool {.importc: "QMatrix4x4_isAffine".}
proc fcQMatrix4x4_isIdentity(self: pointer): bool {.importc: "QMatrix4x4_isIdentity".}
proc fcQMatrix4x4_setToIdentity(self: pointer): void {.importc: "QMatrix4x4_setToIdentity".}
proc fcQMatrix4x4_fill(self: pointer, value: float32): void {.importc: "QMatrix4x4_fill".}
proc fcQMatrix4x4_determinant(self: pointer): float64 {.importc: "QMatrix4x4_determinant".}
proc fcQMatrix4x4_inverted(self: pointer): pointer {.importc: "QMatrix4x4_inverted".}
proc fcQMatrix4x4_transposed(self: pointer): pointer {.importc: "QMatrix4x4_transposed".}
proc fcQMatrix4x4_operatorPlusAssign(self: pointer, other: pointer): pointer {.importc: "QMatrix4x4_operatorPlusAssign".}
proc fcQMatrix4x4_operatorMinusAssign(self: pointer, other: pointer): pointer {.importc: "QMatrix4x4_operatorMinusAssign".}
proc fcQMatrix4x4_operatorMultiplyAssignOther(self: pointer, other: pointer): pointer {.importc: "QMatrix4x4_operatorMultiplyAssign_other".}
proc fcQMatrix4x4_operatorMultiplyAssignFactor(self: pointer, factor: float32): pointer {.importc: "QMatrix4x4_operatorMultiplyAssign_factor".}
proc fcQMatrix4x4_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QMatrix4x4_operatorDivideAssign".}
proc fcQMatrix4x4_operatorEqual(self: pointer, other: pointer): bool {.importc: "QMatrix4x4_operatorEqual".}
proc fcQMatrix4x4_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QMatrix4x4_operatorNotEqual".}
proc fcQMatrix4x4_scaleVector(self: pointer, vector: pointer): void {.importc: "QMatrix4x4_scale_vector".}
proc fcQMatrix4x4_translateVector(self: pointer, vector: pointer): void {.importc: "QMatrix4x4_translate_vector".}
proc fcQMatrix4x4_rotateAngleVector(self: pointer, angle: float32, vector: pointer): void {.importc: "QMatrix4x4_rotate_angle_vector".}
proc fcQMatrix4x4_scaleXY(self: pointer, x: float32, y: float32): void {.importc: "QMatrix4x4_scale_x_y".}
proc fcQMatrix4x4_scaleXYZ(self: pointer, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_scale_x_y_z".}
proc fcQMatrix4x4_scaleFactor(self: pointer, factor: float32): void {.importc: "QMatrix4x4_scale_factor".}
proc fcQMatrix4x4_translateXY(self: pointer, x: float32, y: float32): void {.importc: "QMatrix4x4_translate_x_y".}
proc fcQMatrix4x4_translateXYZ(self: pointer, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_translate_x_y_z".}
proc fcQMatrix4x4_rotateAngleXY(self: pointer, angle: float32, x: float32, y: float32): void {.importc: "QMatrix4x4_rotate_angle_x_y".}
proc fcQMatrix4x4_rotateQuaternion(self: pointer, quaternion: pointer): void {.importc: "QMatrix4x4_rotate_quaternion".}
proc fcQMatrix4x4_ortho_QRect(self: pointer, rect: pointer): void {.importc: "QMatrix4x4_ortho_QRect".}
proc fcQMatrix4x4_ortho_QRectF(self: pointer, rect: pointer): void {.importc: "QMatrix4x4_ortho_QRectF".}
proc fcQMatrix4x4_orthoFloatFloatFloatFloatFloatFloat(self: pointer, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_ortho_float_float_float_float_float_float".}
proc fcQMatrix4x4_frustum(self: pointer, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_frustum".}
proc fcQMatrix4x4_perspective(self: pointer, verticalAngle: float32, aspectRatio: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_perspective".}
proc fcQMatrix4x4_lookAt(self: pointer, eye: pointer, center: pointer, up: pointer): void {.importc: "QMatrix4x4_lookAt".}
proc fcQMatrix4x4_viewportRect(self: pointer, rect: pointer): void {.importc: "QMatrix4x4_viewport_rect".}
proc fcQMatrix4x4_viewportLeftBottomWidthHeight(self: pointer, left: float32, bottom: float32, width: float32, height: float32): void {.importc: "QMatrix4x4_viewport_left_bottom_width_height".}
proc fcQMatrix4x4_flipCoordinates(self: pointer): void {.importc: "QMatrix4x4_flipCoordinates".}
proc fcQMatrix4x4_copyDataTo(self: pointer, values: ptr float32): void {.importc: "QMatrix4x4_copyDataTo".}
proc fcQMatrix4x4_toTransform(self: pointer): pointer {.importc: "QMatrix4x4_toTransform".}
proc fcQMatrix4x4_toTransformDistanceToPlane(self: pointer, distanceToPlane: float32): pointer {.importc: "QMatrix4x4_toTransform_distanceToPlane".}
proc fcQMatrix4x4_map_QPoint(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_map_QPoint".}
proc fcQMatrix4x4_map_QPointF(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_map_QPointF".}
proc fcQMatrix4x4_map_QVector3D(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_map_QVector3D".}
proc fcQMatrix4x4_mapVector(self: pointer, vector: pointer): pointer {.importc: "QMatrix4x4_mapVector".}
proc fcQMatrix4x4_map_QVector4D(self: pointer, point: pointer): pointer {.importc: "QMatrix4x4_map_QVector4D".}
proc fcQMatrix4x4_mapRect_QRect(self: pointer, rect: pointer): pointer {.importc: "QMatrix4x4_mapRect_QRect".}
proc fcQMatrix4x4_mapRect_QRectF(self: pointer, rect: pointer): pointer {.importc: "QMatrix4x4_mapRect_QRectF".}
proc fcQMatrix4x4_data(self: pointer): ptr float32 {.importc: "QMatrix4x4_data".}
proc fcQMatrix4x4_dataConst(self: pointer): ptr float32 {.importc: "QMatrix4x4_data_const".}
proc fcQMatrix4x4_constData(self: pointer): ptr float32 {.importc: "QMatrix4x4_constData".}
proc fcQMatrix4x4_optimize(self: pointer): void {.importc: "QMatrix4x4_optimize".}
proc fcQMatrix4x4_ToQVariant(self: pointer): pointer {.importc: "QMatrix4x4_ToQVariant".}
proc fcQMatrix4x4_projectedRotate(self: pointer, angle: float32, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_projectedRotate".}
proc fcQMatrix4x4_flags(self: pointer): cint {.importc: "QMatrix4x4_flags".}
proc fcQMatrix4x4_invertedInvertible(self: pointer, invertible: ptr bool): pointer {.importc: "QMatrix4x4_inverted_invertible".}
proc fcQMatrix4x4_rotateAngleXYZ(self: pointer, angle: float32, x: float32, y: float32, z: float32): void {.importc: "QMatrix4x4_rotate_angle_x_y_z".}
proc fcQMatrix4x4_viewportLeftBottomWidthHeightNearPlane(self: pointer, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32): void {.importc: "QMatrix4x4_viewport_left_bottom_width_height_nearPlane".}
proc fcQMatrix4x4_viewportLeftBottomWidthHeightNearPlaneFarPlane(self: pointer, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32, farPlane: float32): void {.importc: "QMatrix4x4_viewport_left_bottom_width_height_nearPlane_farPlane".}
proc fcQMatrix4x4_new(): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new".}
proc fcQMatrix4x4_new2(param1: cint): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new_Qt_Initialization".}
proc fcQMatrix4x4_new3(values: ptr float32): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new_float".}
proc fcQMatrix4x4_new4(m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new_float_float_float_float_float_float_float_float_float_float_float_float_float_float_float_float".}
proc fcQMatrix4x4_new5(values: ptr float32, cols: cint, rows: cint): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new_float_int_int".}
proc fcQMatrix4x4_new6(transform: pointer): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new_QTransform".}
proc fcQMatrix4x4_new7(fromVal: pointer): ptr cQMatrix4x4 {.importc: "QMatrix4x4_new_QMatrix4x4".}

proc column*(self: gen_qmatrix4x4_types.QMatrix4x4, index: cint): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQMatrix4x4_column(self.h, index), owned: true)

proc setColumn*(self: gen_qmatrix4x4_types.QMatrix4x4, index: cint, value: gen_qvectornd_types.QVector4D): void =
  fcQMatrix4x4_setColumn(self.h, index, value.h)

proc row*(self: gen_qmatrix4x4_types.QMatrix4x4, index: cint): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQMatrix4x4_row(self.h, index), owned: true)

proc setRow*(self: gen_qmatrix4x4_types.QMatrix4x4, index: cint, value: gen_qvectornd_types.QVector4D): void =
  fcQMatrix4x4_setRow(self.h, index, value.h)

proc isAffine*(self: gen_qmatrix4x4_types.QMatrix4x4): bool =
  fcQMatrix4x4_isAffine(self.h)

proc isIdentity*(self: gen_qmatrix4x4_types.QMatrix4x4): bool =
  fcQMatrix4x4_isIdentity(self.h)

proc setToIdentity*(self: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQMatrix4x4_setToIdentity(self.h)

proc fill*(self: gen_qmatrix4x4_types.QMatrix4x4, value: float32): void =
  fcQMatrix4x4_fill(self.h, value)

proc determinant*(self: gen_qmatrix4x4_types.QMatrix4x4): float64 =
  fcQMatrix4x4_determinant(self.h)

proc inverted*(self: gen_qmatrix4x4_types.QMatrix4x4): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_inverted(self.h), owned: true)

proc transposed*(self: gen_qmatrix4x4_types.QMatrix4x4): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_transposed(self.h), owned: true)

proc operatorPlusAssign*(self: gen_qmatrix4x4_types.QMatrix4x4, other: gen_qmatrix4x4_types.QMatrix4x4): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_operatorPlusAssign(self.h, other.h), owned: false)

proc operatorMinusAssign*(self: gen_qmatrix4x4_types.QMatrix4x4, other: gen_qmatrix4x4_types.QMatrix4x4): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_operatorMinusAssign(self.h, other.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qmatrix4x4_types.QMatrix4x4, other: gen_qmatrix4x4_types.QMatrix4x4): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_operatorMultiplyAssignOther(self.h, other.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qmatrix4x4_types.QMatrix4x4, factor: float32): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_operatorMultiplyAssignFactor(self.h, factor), owned: false)

proc operatorDivideAssign*(self: gen_qmatrix4x4_types.QMatrix4x4, divisor: float32): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_operatorDivideAssign(self.h, divisor), owned: false)

proc operatorEqual*(self: gen_qmatrix4x4_types.QMatrix4x4, other: gen_qmatrix4x4_types.QMatrix4x4): bool =
  fcQMatrix4x4_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qmatrix4x4_types.QMatrix4x4, other: gen_qmatrix4x4_types.QMatrix4x4): bool =
  fcQMatrix4x4_operatorNotEqual(self.h, other.h)

proc scale*(self: gen_qmatrix4x4_types.QMatrix4x4, vector: gen_qvectornd_types.QVector3D): void =
  fcQMatrix4x4_scaleVector(self.h, vector.h)

proc translate*(self: gen_qmatrix4x4_types.QMatrix4x4, vector: gen_qvectornd_types.QVector3D): void =
  fcQMatrix4x4_translateVector(self.h, vector.h)

proc rotate*(self: gen_qmatrix4x4_types.QMatrix4x4, angle: float32, vector: gen_qvectornd_types.QVector3D): void =
  fcQMatrix4x4_rotateAngleVector(self.h, angle, vector.h)

proc scale*(self: gen_qmatrix4x4_types.QMatrix4x4, x: float32, y: float32): void =
  fcQMatrix4x4_scaleXY(self.h, x, y)

proc scale*(self: gen_qmatrix4x4_types.QMatrix4x4, x: float32, y: float32, z: float32): void =
  fcQMatrix4x4_scaleXYZ(self.h, x, y, z)

proc scale*(self: gen_qmatrix4x4_types.QMatrix4x4, factor: float32): void =
  fcQMatrix4x4_scaleFactor(self.h, factor)

proc translate*(self: gen_qmatrix4x4_types.QMatrix4x4, x: float32, y: float32): void =
  fcQMatrix4x4_translateXY(self.h, x, y)

proc translate*(self: gen_qmatrix4x4_types.QMatrix4x4, x: float32, y: float32, z: float32): void =
  fcQMatrix4x4_translateXYZ(self.h, x, y, z)

proc rotate*(self: gen_qmatrix4x4_types.QMatrix4x4, angle: float32, x: float32, y: float32): void =
  fcQMatrix4x4_rotateAngleXY(self.h, angle, x, y)

proc rotate*(self: gen_qmatrix4x4_types.QMatrix4x4, quaternion: gen_qquaternion_types.QQuaternion): void =
  fcQMatrix4x4_rotateQuaternion(self.h, quaternion.h)

proc ortho*(self: gen_qmatrix4x4_types.QMatrix4x4, rect: gen_qrect_types.QRect): void =
  fcQMatrix4x4_ortho_QRect(self.h, rect.h)

proc ortho*(self: gen_qmatrix4x4_types.QMatrix4x4, rect: gen_qrect_types.QRectF): void =
  fcQMatrix4x4_ortho_QRectF(self.h, rect.h)

proc ortho*(self: gen_qmatrix4x4_types.QMatrix4x4, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void =
  fcQMatrix4x4_orthoFloatFloatFloatFloatFloatFloat(self.h, left, right, bottom, top, nearPlane, farPlane)

proc frustum*(self: gen_qmatrix4x4_types.QMatrix4x4, left: float32, right: float32, bottom: float32, top: float32, nearPlane: float32, farPlane: float32): void =
  fcQMatrix4x4_frustum(self.h, left, right, bottom, top, nearPlane, farPlane)

proc perspective*(self: gen_qmatrix4x4_types.QMatrix4x4, verticalAngle: float32, aspectRatio: float32, nearPlane: float32, farPlane: float32): void =
  fcQMatrix4x4_perspective(self.h, verticalAngle, aspectRatio, nearPlane, farPlane)

proc lookAt*(self: gen_qmatrix4x4_types.QMatrix4x4, eye: gen_qvectornd_types.QVector3D, center: gen_qvectornd_types.QVector3D, up: gen_qvectornd_types.QVector3D): void =
  fcQMatrix4x4_lookAt(self.h, eye.h, center.h, up.h)

proc viewport*(self: gen_qmatrix4x4_types.QMatrix4x4, rect: gen_qrect_types.QRectF): void =
  fcQMatrix4x4_viewportRect(self.h, rect.h)

proc viewport*(self: gen_qmatrix4x4_types.QMatrix4x4, left: float32, bottom: float32, width: float32, height: float32): void =
  fcQMatrix4x4_viewportLeftBottomWidthHeight(self.h, left, bottom, width, height)

proc flipCoordinates*(self: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQMatrix4x4_flipCoordinates(self.h)

proc copyDataTo*(self: gen_qmatrix4x4_types.QMatrix4x4, values: ptr float32): void =
  fcQMatrix4x4_copyDataTo(self.h, values)

proc toTransform*(self: gen_qmatrix4x4_types.QMatrix4x4): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQMatrix4x4_toTransform(self.h), owned: true)

proc toTransform*(self: gen_qmatrix4x4_types.QMatrix4x4, distanceToPlane: float32): gen_qtransform_types.QTransform =
  gen_qtransform_types.QTransform(h: fcQMatrix4x4_toTransformDistanceToPlane(self.h, distanceToPlane), owned: true)

proc map*(self: gen_qmatrix4x4_types.QMatrix4x4, point: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMatrix4x4_map_QPoint(self.h, point.h), owned: true)

proc map*(self: gen_qmatrix4x4_types.QMatrix4x4, point: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMatrix4x4_map_QPointF(self.h, point.h), owned: true)

proc map*(self: gen_qmatrix4x4_types.QMatrix4x4, point: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQMatrix4x4_map_QVector3D(self.h, point.h), owned: true)

proc mapVector*(self: gen_qmatrix4x4_types.QMatrix4x4, vector: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQMatrix4x4_mapVector(self.h, vector.h), owned: true)

proc map*(self: gen_qmatrix4x4_types.QMatrix4x4, point: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQMatrix4x4_map_QVector4D(self.h, point.h), owned: true)

proc mapRect*(self: gen_qmatrix4x4_types.QMatrix4x4, rect: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMatrix4x4_mapRect_QRect(self.h, rect.h), owned: true)

proc mapRect*(self: gen_qmatrix4x4_types.QMatrix4x4, rect: gen_qrect_types.QRectF): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQMatrix4x4_mapRect_QRectF(self.h, rect.h), owned: true)

proc data*(self: gen_qmatrix4x4_types.QMatrix4x4): ptr float32 =
  fcQMatrix4x4_data(self.h)

proc data2*(self: gen_qmatrix4x4_types.QMatrix4x4): ptr float32 =
  fcQMatrix4x4_dataConst(self.h)

proc constData*(self: gen_qmatrix4x4_types.QMatrix4x4): ptr float32 =
  fcQMatrix4x4_constData(self.h)

proc optimize*(self: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQMatrix4x4_optimize(self.h)

proc ToQVariant*(self: gen_qmatrix4x4_types.QMatrix4x4): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMatrix4x4_ToQVariant(self.h), owned: true)

proc projectedRotate*(self: gen_qmatrix4x4_types.QMatrix4x4, angle: float32, x: float32, y: float32, z: float32): void =
  fcQMatrix4x4_projectedRotate(self.h, angle, x, y, z)

proc flags*(self: gen_qmatrix4x4_types.QMatrix4x4): cint =
  cint(fcQMatrix4x4_flags(self.h))

proc inverted*(self: gen_qmatrix4x4_types.QMatrix4x4, invertible: ptr bool): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_invertedInvertible(self.h, invertible), owned: true)

proc rotate*(self: gen_qmatrix4x4_types.QMatrix4x4, angle: float32, x: float32, y: float32, z: float32): void =
  fcQMatrix4x4_rotateAngleXYZ(self.h, angle, x, y, z)

proc viewport*(self: gen_qmatrix4x4_types.QMatrix4x4, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32): void =
  fcQMatrix4x4_viewportLeftBottomWidthHeightNearPlane(self.h, left, bottom, width, height, nearPlane)

proc viewport*(self: gen_qmatrix4x4_types.QMatrix4x4, left: float32, bottom: float32, width: float32, height: float32, nearPlane: float32, farPlane: float32): void =
  fcQMatrix4x4_viewportLeftBottomWidthHeightNearPlaneFarPlane(self.h, left, bottom, width, height, nearPlane, farPlane)

proc create*(T: type gen_qmatrix4x4_types.QMatrix4x4): gen_qmatrix4x4_types.QMatrix4x4 =
  let tmp = gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_new(), owned: true)
  tmp
proc create*(T: type gen_qmatrix4x4_types.QMatrix4x4,
    param1: cint): gen_qmatrix4x4_types.QMatrix4x4 =
  let tmp = gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_new2(cint(param1)), owned: true)
  tmp
proc create*(T: type gen_qmatrix4x4_types.QMatrix4x4,
    values: ptr float32): gen_qmatrix4x4_types.QMatrix4x4 =
  let tmp = gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_new3(values), owned: true)
  tmp
proc create*(T: type gen_qmatrix4x4_types.QMatrix4x4,
    m11: float32, m12: float32, m13: float32, m14: float32, m21: float32, m22: float32, m23: float32, m24: float32, m31: float32, m32: float32, m33: float32, m34: float32, m41: float32, m42: float32, m43: float32, m44: float32): gen_qmatrix4x4_types.QMatrix4x4 =
  let tmp = gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_new4(m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44), owned: true)
  tmp
proc create*(T: type gen_qmatrix4x4_types.QMatrix4x4,
    values: ptr float32, cols: cint, rows: cint): gen_qmatrix4x4_types.QMatrix4x4 =
  let tmp = gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_new5(values, cols, rows), owned: true)
  tmp
proc create*(T: type gen_qmatrix4x4_types.QMatrix4x4,
    transform: gen_qtransform_types.QTransform): gen_qmatrix4x4_types.QMatrix4x4 =
  let tmp = gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_new6(transform.h), owned: true)
  tmp
proc create*(T: type gen_qmatrix4x4_types.QMatrix4x4,
    fromVal: gen_qmatrix4x4_types.QMatrix4x4): gen_qmatrix4x4_types.QMatrix4x4 =
  let tmp = gen_qmatrix4x4_types.QMatrix4x4(h: fcQMatrix4x4_new7(fromVal.h), owned: true)
  tmp
