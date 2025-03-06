import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qvectornd.cpp", cflags).}


import ./gen_qvectornd_types
export gen_qvectornd_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qmatrix4x4_types
export
  gen_qpoint_types,
  gen_qrect_types,
  gen_qvariant_types,
  gen_qmatrix4x4_types

type cQVector2D*{.exportc: "QVector2D", incompleteStruct.} = object
type cQVector3D*{.exportc: "QVector3D", incompleteStruct.} = object
type cQVector4D*{.exportc: "QVector4D", incompleteStruct.} = object

proc fcQVector2D_isNull(self: pointer, ): bool {.importc: "QVector2D_isNull".}
proc fcQVector2D_x(self: pointer, ): float32 {.importc: "QVector2D_x".}
proc fcQVector2D_y(self: pointer, ): float32 {.importc: "QVector2D_y".}
proc fcQVector2D_setX(self: pointer, x: float32): void {.importc: "QVector2D_setX".}
proc fcQVector2D_setY(self: pointer, y: float32): void {.importc: "QVector2D_setY".}
proc fcQVector2D_operatorSubscript(self: pointer, i: cint): float32 {.importc: "QVector2D_operatorSubscript".}
proc fcQVector2D_length(self: pointer, ): float32 {.importc: "QVector2D_length".}
proc fcQVector2D_lengthSquared(self: pointer, ): float32 {.importc: "QVector2D_lengthSquared".}
proc fcQVector2D_normalized(self: pointer, ): pointer {.importc: "QVector2D_normalized".}
proc fcQVector2D_normalize(self: pointer, ): void {.importc: "QVector2D_normalize".}
proc fcQVector2D_distanceToPoint(self: pointer, point: pointer): float32 {.importc: "QVector2D_distanceToPoint".}
proc fcQVector2D_distanceToLine(self: pointer, point: pointer, direction: pointer): float32 {.importc: "QVector2D_distanceToLine".}
proc fcQVector2D_operatorPlusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorPlusAssign".}
proc fcQVector2D_operatorMinusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorMinusAssign".}
proc fcQVector2D_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QVector2D_operatorMultiplyAssign".}
proc fcQVector2D_operatorMultiplyAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorMultiplyAssignWithVector".}
proc fcQVector2D_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QVector2D_operatorDivideAssign".}
proc fcQVector2D_operatorDivideAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorDivideAssignWithVector".}
proc fcQVector2D_dotProduct(v1: pointer, v2: pointer): float32 {.importc: "QVector2D_dotProduct".}
proc fcQVector2D_toVector3D(self: pointer, ): pointer {.importc: "QVector2D_toVector3D".}
proc fcQVector2D_toVector4D(self: pointer, ): pointer {.importc: "QVector2D_toVector4D".}
proc fcQVector2D_toPoint(self: pointer, ): pointer {.importc: "QVector2D_toPoint".}
proc fcQVector2D_toPointF(self: pointer, ): pointer {.importc: "QVector2D_toPointF".}
proc fcQVector2D_ToQVariant(self: pointer, ): pointer {.importc: "QVector2D_ToQVariant".}
proc fcQVector2D_new(): ptr cQVector2D {.importc: "QVector2D_new".}
proc fcQVector2D_new2(param1: cint): ptr cQVector2D {.importc: "QVector2D_new2".}
proc fcQVector2D_new3(xpos: float32, ypos: float32): ptr cQVector2D {.importc: "QVector2D_new3".}
proc fcQVector2D_new4(point: pointer): ptr cQVector2D {.importc: "QVector2D_new4".}
proc fcQVector2D_new5(point: pointer): ptr cQVector2D {.importc: "QVector2D_new5".}
proc fcQVector2D_new6(vector: pointer): ptr cQVector2D {.importc: "QVector2D_new6".}
proc fcQVector2D_new7(vector: pointer): ptr cQVector2D {.importc: "QVector2D_new7".}
proc fcQVector2D_new8(param1: pointer): ptr cQVector2D {.importc: "QVector2D_new8".}
proc fcQVector2D_delete(self: pointer) {.importc: "QVector2D_delete".}
proc fcQVector3D_isNull(self: pointer, ): bool {.importc: "QVector3D_isNull".}
proc fcQVector3D_x(self: pointer, ): float32 {.importc: "QVector3D_x".}
proc fcQVector3D_y(self: pointer, ): float32 {.importc: "QVector3D_y".}
proc fcQVector3D_z(self: pointer, ): float32 {.importc: "QVector3D_z".}
proc fcQVector3D_setX(self: pointer, x: float32): void {.importc: "QVector3D_setX".}
proc fcQVector3D_setY(self: pointer, y: float32): void {.importc: "QVector3D_setY".}
proc fcQVector3D_setZ(self: pointer, z: float32): void {.importc: "QVector3D_setZ".}
proc fcQVector3D_operatorSubscript(self: pointer, i: cint): float32 {.importc: "QVector3D_operatorSubscript".}
proc fcQVector3D_length(self: pointer, ): float32 {.importc: "QVector3D_length".}
proc fcQVector3D_lengthSquared(self: pointer, ): float32 {.importc: "QVector3D_lengthSquared".}
proc fcQVector3D_normalized(self: pointer, ): pointer {.importc: "QVector3D_normalized".}
proc fcQVector3D_normalize(self: pointer, ): void {.importc: "QVector3D_normalize".}
proc fcQVector3D_operatorPlusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorPlusAssign".}
proc fcQVector3D_operatorMinusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorMinusAssign".}
proc fcQVector3D_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QVector3D_operatorMultiplyAssign".}
proc fcQVector3D_operatorMultiplyAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorMultiplyAssignWithVector".}
proc fcQVector3D_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QVector3D_operatorDivideAssign".}
proc fcQVector3D_operatorDivideAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector3D_operatorDivideAssignWithVector".}
proc fcQVector3D_dotProduct(v1: pointer, v2: pointer): float32 {.importc: "QVector3D_dotProduct".}
proc fcQVector3D_crossProduct(v1: pointer, v2: pointer): pointer {.importc: "QVector3D_crossProduct".}
proc fcQVector3D_normal(v1: pointer, v2: pointer): pointer {.importc: "QVector3D_normal".}
proc fcQVector3D_normal2(v1: pointer, v2: pointer, v3: pointer): pointer {.importc: "QVector3D_normal2".}
proc fcQVector3D_project(self: pointer, modelView: pointer, projection: pointer, viewport: pointer): pointer {.importc: "QVector3D_project".}
proc fcQVector3D_unproject(self: pointer, modelView: pointer, projection: pointer, viewport: pointer): pointer {.importc: "QVector3D_unproject".}
proc fcQVector3D_distanceToPoint(self: pointer, point: pointer): float32 {.importc: "QVector3D_distanceToPoint".}
proc fcQVector3D_distanceToPlane(self: pointer, plane: pointer, normal: pointer): float32 {.importc: "QVector3D_distanceToPlane".}
proc fcQVector3D_distanceToPlane2(self: pointer, plane1: pointer, plane2: pointer, plane3: pointer): float32 {.importc: "QVector3D_distanceToPlane2".}
proc fcQVector3D_distanceToLine(self: pointer, point: pointer, direction: pointer): float32 {.importc: "QVector3D_distanceToLine".}
proc fcQVector3D_toVector2D(self: pointer, ): pointer {.importc: "QVector3D_toVector2D".}
proc fcQVector3D_toVector4D(self: pointer, ): pointer {.importc: "QVector3D_toVector4D".}
proc fcQVector3D_toPoint(self: pointer, ): pointer {.importc: "QVector3D_toPoint".}
proc fcQVector3D_toPointF(self: pointer, ): pointer {.importc: "QVector3D_toPointF".}
proc fcQVector3D_ToQVariant(self: pointer, ): pointer {.importc: "QVector3D_ToQVariant".}
proc fcQVector3D_new(): ptr cQVector3D {.importc: "QVector3D_new".}
proc fcQVector3D_new2(param1: cint): ptr cQVector3D {.importc: "QVector3D_new2".}
proc fcQVector3D_new3(xpos: float32, ypos: float32, zpos: float32): ptr cQVector3D {.importc: "QVector3D_new3".}
proc fcQVector3D_new4(point: pointer): ptr cQVector3D {.importc: "QVector3D_new4".}
proc fcQVector3D_new5(point: pointer): ptr cQVector3D {.importc: "QVector3D_new5".}
proc fcQVector3D_new6(vector: pointer): ptr cQVector3D {.importc: "QVector3D_new6".}
proc fcQVector3D_new7(vector: pointer, zpos: float32): ptr cQVector3D {.importc: "QVector3D_new7".}
proc fcQVector3D_new8(vector: pointer): ptr cQVector3D {.importc: "QVector3D_new8".}
proc fcQVector3D_new9(param1: pointer): ptr cQVector3D {.importc: "QVector3D_new9".}
proc fcQVector3D_delete(self: pointer) {.importc: "QVector3D_delete".}
proc fcQVector4D_isNull(self: pointer, ): bool {.importc: "QVector4D_isNull".}
proc fcQVector4D_x(self: pointer, ): float32 {.importc: "QVector4D_x".}
proc fcQVector4D_y(self: pointer, ): float32 {.importc: "QVector4D_y".}
proc fcQVector4D_z(self: pointer, ): float32 {.importc: "QVector4D_z".}
proc fcQVector4D_w(self: pointer, ): float32 {.importc: "QVector4D_w".}
proc fcQVector4D_setX(self: pointer, x: float32): void {.importc: "QVector4D_setX".}
proc fcQVector4D_setY(self: pointer, y: float32): void {.importc: "QVector4D_setY".}
proc fcQVector4D_setZ(self: pointer, z: float32): void {.importc: "QVector4D_setZ".}
proc fcQVector4D_setW(self: pointer, w: float32): void {.importc: "QVector4D_setW".}
proc fcQVector4D_operatorSubscript(self: pointer, i: cint): float32 {.importc: "QVector4D_operatorSubscript".}
proc fcQVector4D_length(self: pointer, ): float32 {.importc: "QVector4D_length".}
proc fcQVector4D_lengthSquared(self: pointer, ): float32 {.importc: "QVector4D_lengthSquared".}
proc fcQVector4D_normalized(self: pointer, ): pointer {.importc: "QVector4D_normalized".}
proc fcQVector4D_normalize(self: pointer, ): void {.importc: "QVector4D_normalize".}
proc fcQVector4D_operatorPlusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorPlusAssign".}
proc fcQVector4D_operatorMinusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorMinusAssign".}
proc fcQVector4D_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QVector4D_operatorMultiplyAssign".}
proc fcQVector4D_operatorMultiplyAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorMultiplyAssignWithVector".}
proc fcQVector4D_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QVector4D_operatorDivideAssign".}
proc fcQVector4D_operatorDivideAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorDivideAssignWithVector".}
proc fcQVector4D_dotProduct(v1: pointer, v2: pointer): float32 {.importc: "QVector4D_dotProduct".}
proc fcQVector4D_toVector2D(self: pointer, ): pointer {.importc: "QVector4D_toVector2D".}
proc fcQVector4D_toVector2DAffine(self: pointer, ): pointer {.importc: "QVector4D_toVector2DAffine".}
proc fcQVector4D_toVector3D(self: pointer, ): pointer {.importc: "QVector4D_toVector3D".}
proc fcQVector4D_toVector3DAffine(self: pointer, ): pointer {.importc: "QVector4D_toVector3DAffine".}
proc fcQVector4D_toPoint(self: pointer, ): pointer {.importc: "QVector4D_toPoint".}
proc fcQVector4D_toPointF(self: pointer, ): pointer {.importc: "QVector4D_toPointF".}
proc fcQVector4D_ToQVariant(self: pointer, ): pointer {.importc: "QVector4D_ToQVariant".}
proc fcQVector4D_new(): ptr cQVector4D {.importc: "QVector4D_new".}
proc fcQVector4D_new2(param1: cint): ptr cQVector4D {.importc: "QVector4D_new2".}
proc fcQVector4D_new3(xpos: float32, ypos: float32, zpos: float32, wpos: float32): ptr cQVector4D {.importc: "QVector4D_new3".}
proc fcQVector4D_new4(point: pointer): ptr cQVector4D {.importc: "QVector4D_new4".}
proc fcQVector4D_new5(point: pointer): ptr cQVector4D {.importc: "QVector4D_new5".}
proc fcQVector4D_new6(vector: pointer): ptr cQVector4D {.importc: "QVector4D_new6".}
proc fcQVector4D_new7(vector: pointer, zpos: float32, wpos: float32): ptr cQVector4D {.importc: "QVector4D_new7".}
proc fcQVector4D_new8(vector: pointer): ptr cQVector4D {.importc: "QVector4D_new8".}
proc fcQVector4D_new9(vector: pointer, wpos: float32): ptr cQVector4D {.importc: "QVector4D_new9".}
proc fcQVector4D_new10(param1: pointer): ptr cQVector4D {.importc: "QVector4D_new10".}
proc fcQVector4D_delete(self: pointer) {.importc: "QVector4D_delete".}

proc isNull*(self: gen_qvectornd_types.QVector2D, ): bool =
  fcQVector2D_isNull(self.h)

proc x*(self: gen_qvectornd_types.QVector2D, ): float32 =
  fcQVector2D_x(self.h)

proc y*(self: gen_qvectornd_types.QVector2D, ): float32 =
  fcQVector2D_y(self.h)

proc setX*(self: gen_qvectornd_types.QVector2D, x: float32): void =
  fcQVector2D_setX(self.h, x)

proc setY*(self: gen_qvectornd_types.QVector2D, y: float32): void =
  fcQVector2D_setY(self.h, y)

proc operatorSubscript*(self: gen_qvectornd_types.QVector2D, i: cint): float32 =
  fcQVector2D_operatorSubscript(self.h, i)

proc length*(self: gen_qvectornd_types.QVector2D, ): float32 =
  fcQVector2D_length(self.h)

proc lengthSquared*(self: gen_qvectornd_types.QVector2D, ): float32 =
  fcQVector2D_lengthSquared(self.h)

proc normalized*(self: gen_qvectornd_types.QVector2D, ): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_normalized(self.h))

proc normalize*(self: gen_qvectornd_types.QVector2D, ): void =
  fcQVector2D_normalize(self.h)

proc distanceToPoint*(self: gen_qvectornd_types.QVector2D, point: gen_qvectornd_types.QVector2D): float32 =
  fcQVector2D_distanceToPoint(self.h, point.h)

proc distanceToLine*(self: gen_qvectornd_types.QVector2D, point: gen_qvectornd_types.QVector2D, direction: gen_qvectornd_types.QVector2D): float32 =
  fcQVector2D_distanceToLine(self.h, point.h, direction.h)

proc operatorPlusAssign*(self: gen_qvectornd_types.QVector2D, vector: gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_operatorPlusAssign(self.h, vector.h))

proc operatorMinusAssign*(self: gen_qvectornd_types.QVector2D, vector: gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_operatorMinusAssign(self.h, vector.h))

proc operatorMultiplyAssign*(self: gen_qvectornd_types.QVector2D, factor: float32): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_operatorMultiplyAssign(self.h, factor))

proc operatorMultiplyAssign*(self: gen_qvectornd_types.QVector2D, vector: gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_operatorMultiplyAssignWithVector(self.h, vector.h))

proc operatorDivideAssign*(self: gen_qvectornd_types.QVector2D, divisor: float32): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_operatorDivideAssign(self.h, divisor))

proc operatorDivideAssign*(self: gen_qvectornd_types.QVector2D, vector: gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_operatorDivideAssignWithVector(self.h, vector.h))

proc dotProduct*(_: type gen_qvectornd_types.QVector2D, v1: gen_qvectornd_types.QVector2D, v2: gen_qvectornd_types.QVector2D): float32 =
  fcQVector2D_dotProduct(v1.h, v2.h)

proc toVector3D*(self: gen_qvectornd_types.QVector2D, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector2D_toVector3D(self.h))

proc toVector4D*(self: gen_qvectornd_types.QVector2D, ): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector2D_toVector4D(self.h))

proc toPoint*(self: gen_qvectornd_types.QVector2D, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQVector2D_toPoint(self.h))

proc toPointF*(self: gen_qvectornd_types.QVector2D, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQVector2D_toPointF(self.h))

proc ToQVariant*(self: gen_qvectornd_types.QVector2D, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVector2D_ToQVariant(self.h))

proc create*(T: type gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new())

proc create*(T: type gen_qvectornd_types.QVector2D,
    param1: cint): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new2(cint(param1)))

proc create*(T: type gen_qvectornd_types.QVector2D,
    xpos: float32, ypos: float32): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new3(xpos, ypos))

proc create*(T: type gen_qvectornd_types.QVector2D,
    point: gen_qpoint_types.QPoint): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new4(point.h))

proc create*(T: type gen_qvectornd_types.QVector2D,
    point: gen_qpoint_types.QPointF): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new5(point.h))

proc create*(T: type gen_qvectornd_types.QVector2D,
    vector: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new6(vector.h))

proc create*(T: type gen_qvectornd_types.QVector2D,
    vector: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new7(vector.h))

proc create*(T: type gen_qvectornd_types.QVector2D,
    param1: gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector2D_new8(param1.h))

proc delete*(self: gen_qvectornd_types.QVector2D) =
  fcQVector2D_delete(self.h)
proc isNull*(self: gen_qvectornd_types.QVector3D, ): bool =
  fcQVector3D_isNull(self.h)

proc x*(self: gen_qvectornd_types.QVector3D, ): float32 =
  fcQVector3D_x(self.h)

proc y*(self: gen_qvectornd_types.QVector3D, ): float32 =
  fcQVector3D_y(self.h)

proc z*(self: gen_qvectornd_types.QVector3D, ): float32 =
  fcQVector3D_z(self.h)

proc setX*(self: gen_qvectornd_types.QVector3D, x: float32): void =
  fcQVector3D_setX(self.h, x)

proc setY*(self: gen_qvectornd_types.QVector3D, y: float32): void =
  fcQVector3D_setY(self.h, y)

proc setZ*(self: gen_qvectornd_types.QVector3D, z: float32): void =
  fcQVector3D_setZ(self.h, z)

proc operatorSubscript*(self: gen_qvectornd_types.QVector3D, i: cint): float32 =
  fcQVector3D_operatorSubscript(self.h, i)

proc length*(self: gen_qvectornd_types.QVector3D, ): float32 =
  fcQVector3D_length(self.h)

proc lengthSquared*(self: gen_qvectornd_types.QVector3D, ): float32 =
  fcQVector3D_lengthSquared(self.h)

proc normalized*(self: gen_qvectornd_types.QVector3D, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_normalized(self.h))

proc normalize*(self: gen_qvectornd_types.QVector3D, ): void =
  fcQVector3D_normalize(self.h)

proc operatorPlusAssign*(self: gen_qvectornd_types.QVector3D, vector: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_operatorPlusAssign(self.h, vector.h))

proc operatorMinusAssign*(self: gen_qvectornd_types.QVector3D, vector: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_operatorMinusAssign(self.h, vector.h))

proc operatorMultiplyAssign*(self: gen_qvectornd_types.QVector3D, factor: float32): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_operatorMultiplyAssign(self.h, factor))

proc operatorMultiplyAssign*(self: gen_qvectornd_types.QVector3D, vector: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_operatorMultiplyAssignWithVector(self.h, vector.h))

proc operatorDivideAssign*(self: gen_qvectornd_types.QVector3D, divisor: float32): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_operatorDivideAssign(self.h, divisor))

proc operatorDivideAssign*(self: gen_qvectornd_types.QVector3D, vector: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_operatorDivideAssignWithVector(self.h, vector.h))

proc dotProduct*(_: type gen_qvectornd_types.QVector3D, v1: gen_qvectornd_types.QVector3D, v2: gen_qvectornd_types.QVector3D): float32 =
  fcQVector3D_dotProduct(v1.h, v2.h)

proc crossProduct*(_: type gen_qvectornd_types.QVector3D, v1: gen_qvectornd_types.QVector3D, v2: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_crossProduct(v1.h, v2.h))

proc normal*(_: type gen_qvectornd_types.QVector3D, v1: gen_qvectornd_types.QVector3D, v2: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_normal(v1.h, v2.h))

proc normal*(_: type gen_qvectornd_types.QVector3D, v1: gen_qvectornd_types.QVector3D, v2: gen_qvectornd_types.QVector3D, v3: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_normal2(v1.h, v2.h, v3.h))

proc project*(self: gen_qvectornd_types.QVector3D, modelView: gen_qmatrix4x4_types.QMatrix4x4, projection: gen_qmatrix4x4_types.QMatrix4x4, viewport: gen_qrect_types.QRect): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_project(self.h, modelView.h, projection.h, viewport.h))

proc unproject*(self: gen_qvectornd_types.QVector3D, modelView: gen_qmatrix4x4_types.QMatrix4x4, projection: gen_qmatrix4x4_types.QMatrix4x4, viewport: gen_qrect_types.QRect): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_unproject(self.h, modelView.h, projection.h, viewport.h))

proc distanceToPoint*(self: gen_qvectornd_types.QVector3D, point: gen_qvectornd_types.QVector3D): float32 =
  fcQVector3D_distanceToPoint(self.h, point.h)

proc distanceToPlane*(self: gen_qvectornd_types.QVector3D, plane: gen_qvectornd_types.QVector3D, normal: gen_qvectornd_types.QVector3D): float32 =
  fcQVector3D_distanceToPlane(self.h, plane.h, normal.h)

proc distanceToPlane*(self: gen_qvectornd_types.QVector3D, plane1: gen_qvectornd_types.QVector3D, plane2: gen_qvectornd_types.QVector3D, plane3: gen_qvectornd_types.QVector3D): float32 =
  fcQVector3D_distanceToPlane2(self.h, plane1.h, plane2.h, plane3.h)

proc distanceToLine*(self: gen_qvectornd_types.QVector3D, point: gen_qvectornd_types.QVector3D, direction: gen_qvectornd_types.QVector3D): float32 =
  fcQVector3D_distanceToLine(self.h, point.h, direction.h)

proc toVector2D*(self: gen_qvectornd_types.QVector3D, ): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector3D_toVector2D(self.h))

proc toVector4D*(self: gen_qvectornd_types.QVector3D, ): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector3D_toVector4D(self.h))

proc toPoint*(self: gen_qvectornd_types.QVector3D, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQVector3D_toPoint(self.h))

proc toPointF*(self: gen_qvectornd_types.QVector3D, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQVector3D_toPointF(self.h))

proc ToQVariant*(self: gen_qvectornd_types.QVector3D, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVector3D_ToQVariant(self.h))

proc create*(T: type gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new())

proc create*(T: type gen_qvectornd_types.QVector3D,
    param1: cint): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new2(cint(param1)))

proc create*(T: type gen_qvectornd_types.QVector3D,
    xpos: float32, ypos: float32, zpos: float32): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new3(xpos, ypos, zpos))

proc create*(T: type gen_qvectornd_types.QVector3D,
    point: gen_qpoint_types.QPoint): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new4(point.h))

proc create*(T: type gen_qvectornd_types.QVector3D,
    point: gen_qpoint_types.QPointF): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new5(point.h))

proc create*(T: type gen_qvectornd_types.QVector3D,
    vector: gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new6(vector.h))

proc create*(T: type gen_qvectornd_types.QVector3D,
    vector: gen_qvectornd_types.QVector2D, zpos: float32): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new7(vector.h, zpos))

proc create*(T: type gen_qvectornd_types.QVector3D,
    vector: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new8(vector.h))

proc create*(T: type gen_qvectornd_types.QVector3D,
    param1: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector3D_new9(param1.h))

proc delete*(self: gen_qvectornd_types.QVector3D) =
  fcQVector3D_delete(self.h)
proc isNull*(self: gen_qvectornd_types.QVector4D, ): bool =
  fcQVector4D_isNull(self.h)

proc x*(self: gen_qvectornd_types.QVector4D, ): float32 =
  fcQVector4D_x(self.h)

proc y*(self: gen_qvectornd_types.QVector4D, ): float32 =
  fcQVector4D_y(self.h)

proc z*(self: gen_qvectornd_types.QVector4D, ): float32 =
  fcQVector4D_z(self.h)

proc w*(self: gen_qvectornd_types.QVector4D, ): float32 =
  fcQVector4D_w(self.h)

proc setX*(self: gen_qvectornd_types.QVector4D, x: float32): void =
  fcQVector4D_setX(self.h, x)

proc setY*(self: gen_qvectornd_types.QVector4D, y: float32): void =
  fcQVector4D_setY(self.h, y)

proc setZ*(self: gen_qvectornd_types.QVector4D, z: float32): void =
  fcQVector4D_setZ(self.h, z)

proc setW*(self: gen_qvectornd_types.QVector4D, w: float32): void =
  fcQVector4D_setW(self.h, w)

proc operatorSubscript*(self: gen_qvectornd_types.QVector4D, i: cint): float32 =
  fcQVector4D_operatorSubscript(self.h, i)

proc length*(self: gen_qvectornd_types.QVector4D, ): float32 =
  fcQVector4D_length(self.h)

proc lengthSquared*(self: gen_qvectornd_types.QVector4D, ): float32 =
  fcQVector4D_lengthSquared(self.h)

proc normalized*(self: gen_qvectornd_types.QVector4D, ): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_normalized(self.h))

proc normalize*(self: gen_qvectornd_types.QVector4D, ): void =
  fcQVector4D_normalize(self.h)

proc operatorPlusAssign*(self: gen_qvectornd_types.QVector4D, vector: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_operatorPlusAssign(self.h, vector.h))

proc operatorMinusAssign*(self: gen_qvectornd_types.QVector4D, vector: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_operatorMinusAssign(self.h, vector.h))

proc operatorMultiplyAssign*(self: gen_qvectornd_types.QVector4D, factor: float32): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_operatorMultiplyAssign(self.h, factor))

proc operatorMultiplyAssign*(self: gen_qvectornd_types.QVector4D, vector: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_operatorMultiplyAssignWithVector(self.h, vector.h))

proc operatorDivideAssign*(self: gen_qvectornd_types.QVector4D, divisor: float32): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_operatorDivideAssign(self.h, divisor))

proc operatorDivideAssign*(self: gen_qvectornd_types.QVector4D, vector: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_operatorDivideAssignWithVector(self.h, vector.h))

proc dotProduct*(_: type gen_qvectornd_types.QVector4D, v1: gen_qvectornd_types.QVector4D, v2: gen_qvectornd_types.QVector4D): float32 =
  fcQVector4D_dotProduct(v1.h, v2.h)

proc toVector2D*(self: gen_qvectornd_types.QVector4D, ): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector4D_toVector2D(self.h))

proc toVector2DAffine*(self: gen_qvectornd_types.QVector4D, ): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQVector4D_toVector2DAffine(self.h))

proc toVector3D*(self: gen_qvectornd_types.QVector4D, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector4D_toVector3D(self.h))

proc toVector3DAffine*(self: gen_qvectornd_types.QVector4D, ): gen_qvectornd_types.QVector3D =
  gen_qvectornd_types.QVector3D(h: fcQVector4D_toVector3DAffine(self.h))

proc toPoint*(self: gen_qvectornd_types.QVector4D, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQVector4D_toPoint(self.h))

proc toPointF*(self: gen_qvectornd_types.QVector4D, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQVector4D_toPointF(self.h))

proc ToQVariant*(self: gen_qvectornd_types.QVector4D, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVector4D_ToQVariant(self.h))

proc create*(T: type gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new())

proc create*(T: type gen_qvectornd_types.QVector4D,
    param1: cint): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new2(cint(param1)))

proc create*(T: type gen_qvectornd_types.QVector4D,
    xpos: float32, ypos: float32, zpos: float32, wpos: float32): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new3(xpos, ypos, zpos, wpos))

proc create*(T: type gen_qvectornd_types.QVector4D,
    point: gen_qpoint_types.QPoint): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new4(point.h))

proc create*(T: type gen_qvectornd_types.QVector4D,
    point: gen_qpoint_types.QPointF): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new5(point.h))

proc create*(T: type gen_qvectornd_types.QVector4D,
    vector: gen_qvectornd_types.QVector2D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new6(vector.h))

proc create*(T: type gen_qvectornd_types.QVector4D,
    vector: gen_qvectornd_types.QVector2D, zpos: float32, wpos: float32): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new7(vector.h, zpos, wpos))

proc create*(T: type gen_qvectornd_types.QVector4D,
    vector: gen_qvectornd_types.QVector3D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new8(vector.h))

proc create*(T: type gen_qvectornd_types.QVector4D,
    vector: gen_qvectornd_types.QVector3D, wpos: float32): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new9(vector.h, wpos))

proc create*(T: type gen_qvectornd_types.QVector4D,
    param1: gen_qvectornd_types.QVector4D): gen_qvectornd_types.QVector4D =
  gen_qvectornd_types.QVector4D(h: fcQVector4D_new10(param1.h))

proc delete*(self: gen_qvectornd_types.QVector4D) =
  fcQVector4D_delete(self.h)
