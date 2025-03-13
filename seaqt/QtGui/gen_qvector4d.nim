import ./Qt5Gui_libs

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


import ./gen_qvector4d_types
export gen_qvector4d_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qvector2d_types,
  ./gen_qvector3d_types
export
  gen_qpoint_types,
  gen_qvariant_types,
  gen_qvector2d_types,
  gen_qvector3d_types

type cQVector4D*{.exportc: "QVector4D", incompleteStruct.} = object

proc fcQVector4D_isNull(self: pointer): bool {.importc: "QVector4D_isNull".}
proc fcQVector4D_x(self: pointer): float32 {.importc: "QVector4D_x".}
proc fcQVector4D_y(self: pointer): float32 {.importc: "QVector4D_y".}
proc fcQVector4D_z(self: pointer): float32 {.importc: "QVector4D_z".}
proc fcQVector4D_w(self: pointer): float32 {.importc: "QVector4D_w".}
proc fcQVector4D_setX(self: pointer, x: float32): void {.importc: "QVector4D_setX".}
proc fcQVector4D_setY(self: pointer, y: float32): void {.importc: "QVector4D_setY".}
proc fcQVector4D_setZ(self: pointer, z: float32): void {.importc: "QVector4D_setZ".}
proc fcQVector4D_setW(self: pointer, w: float32): void {.importc: "QVector4D_setW".}
proc fcQVector4D_operatorSubscript(self: pointer, i: cint): float32 {.importc: "QVector4D_operatorSubscript".}
proc fcQVector4D_length(self: pointer): float32 {.importc: "QVector4D_length".}
proc fcQVector4D_lengthSquared(self: pointer): float32 {.importc: "QVector4D_lengthSquared".}
proc fcQVector4D_normalized(self: pointer): pointer {.importc: "QVector4D_normalized".}
proc fcQVector4D_normalize(self: pointer): void {.importc: "QVector4D_normalize".}
proc fcQVector4D_operatorPlusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorPlusAssign".}
proc fcQVector4D_operatorMinusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorMinusAssign".}
proc fcQVector4D_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QVector4D_operatorMultiplyAssign".}
proc fcQVector4D_operatorMultiplyAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorMultiplyAssignWithVector".}
proc fcQVector4D_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QVector4D_operatorDivideAssign".}
proc fcQVector4D_operatorDivideAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector4D_operatorDivideAssignWithVector".}
proc fcQVector4D_dotProduct(v1: pointer, v2: pointer): float32 {.importc: "QVector4D_dotProduct".}
proc fcQVector4D_toVector2D(self: pointer): pointer {.importc: "QVector4D_toVector2D".}
proc fcQVector4D_toVector2DAffine(self: pointer): pointer {.importc: "QVector4D_toVector2DAffine".}
proc fcQVector4D_toVector3D(self: pointer): pointer {.importc: "QVector4D_toVector3D".}
proc fcQVector4D_toVector3DAffine(self: pointer): pointer {.importc: "QVector4D_toVector3DAffine".}
proc fcQVector4D_toPoint(self: pointer): pointer {.importc: "QVector4D_toPoint".}
proc fcQVector4D_toPointF(self: pointer): pointer {.importc: "QVector4D_toPointF".}
proc fcQVector4D_ToQVariant(self: pointer): pointer {.importc: "QVector4D_ToQVariant".}
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

proc isNull*(self: gen_qvector4d_types.QVector4D): bool =
  fcQVector4D_isNull(self.h)

proc x*(self: gen_qvector4d_types.QVector4D): float32 =
  fcQVector4D_x(self.h)

proc y*(self: gen_qvector4d_types.QVector4D): float32 =
  fcQVector4D_y(self.h)

proc z*(self: gen_qvector4d_types.QVector4D): float32 =
  fcQVector4D_z(self.h)

proc w*(self: gen_qvector4d_types.QVector4D): float32 =
  fcQVector4D_w(self.h)

proc setX*(self: gen_qvector4d_types.QVector4D, x: float32): void =
  fcQVector4D_setX(self.h, x)

proc setY*(self: gen_qvector4d_types.QVector4D, y: float32): void =
  fcQVector4D_setY(self.h, y)

proc setZ*(self: gen_qvector4d_types.QVector4D, z: float32): void =
  fcQVector4D_setZ(self.h, z)

proc setW*(self: gen_qvector4d_types.QVector4D, w: float32): void =
  fcQVector4D_setW(self.h, w)

proc operatorSubscript*(self: gen_qvector4d_types.QVector4D, i: cint): float32 =
  fcQVector4D_operatorSubscript(self.h, i)

proc length*(self: gen_qvector4d_types.QVector4D): float32 =
  fcQVector4D_length(self.h)

proc lengthSquared*(self: gen_qvector4d_types.QVector4D): float32 =
  fcQVector4D_lengthSquared(self.h)

proc normalized*(self: gen_qvector4d_types.QVector4D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_normalized(self.h), owned: true)

proc normalize*(self: gen_qvector4d_types.QVector4D): void =
  fcQVector4D_normalize(self.h)

proc operatorPlusAssign*(self: gen_qvector4d_types.QVector4D, vector: gen_qvector4d_types.QVector4D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_operatorPlusAssign(self.h, vector.h), owned: false)

proc operatorMinusAssign*(self: gen_qvector4d_types.QVector4D, vector: gen_qvector4d_types.QVector4D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_operatorMinusAssign(self.h, vector.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qvector4d_types.QVector4D, factor: float32): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_operatorMultiplyAssign(self.h, factor), owned: false)

proc operatorMultiplyAssign*(self: gen_qvector4d_types.QVector4D, vector: gen_qvector4d_types.QVector4D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_operatorMultiplyAssignWithVector(self.h, vector.h), owned: false)

proc operatorDivideAssign*(self: gen_qvector4d_types.QVector4D, divisor: float32): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_operatorDivideAssign(self.h, divisor), owned: false)

proc operatorDivideAssign*(self: gen_qvector4d_types.QVector4D, vector: gen_qvector4d_types.QVector4D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_operatorDivideAssignWithVector(self.h, vector.h), owned: false)

proc dotProduct*(_: type gen_qvector4d_types.QVector4D, v1: gen_qvector4d_types.QVector4D, v2: gen_qvector4d_types.QVector4D): float32 =
  fcQVector4D_dotProduct(v1.h, v2.h)

proc toVector2D*(self: gen_qvector4d_types.QVector4D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector4D_toVector2D(self.h), owned: true)

proc toVector2DAffine*(self: gen_qvector4d_types.QVector4D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector4D_toVector2DAffine(self.h), owned: true)

proc toVector3D*(self: gen_qvector4d_types.QVector4D): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQVector4D_toVector3D(self.h), owned: true)

proc toVector3DAffine*(self: gen_qvector4d_types.QVector4D): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQVector4D_toVector3DAffine(self.h), owned: true)

proc toPoint*(self: gen_qvector4d_types.QVector4D): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQVector4D_toPoint(self.h), owned: true)

proc toPointF*(self: gen_qvector4d_types.QVector4D): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQVector4D_toPointF(self.h), owned: true)

proc ToQVariant*(self: gen_qvector4d_types.QVector4D): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVector4D_ToQVariant(self.h), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new(), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    param1: cint): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new2(cint(param1)), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    xpos: float32, ypos: float32, zpos: float32, wpos: float32): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new3(xpos, ypos, zpos, wpos), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    point: gen_qpoint_types.QPoint): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new4(point.h), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    point: gen_qpoint_types.QPointF): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new5(point.h), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    vector: gen_qvector2d_types.QVector2D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new6(vector.h), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    vector: gen_qvector2d_types.QVector2D, zpos: float32, wpos: float32): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new7(vector.h, zpos, wpos), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    vector: gen_qvector3d_types.QVector3D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new8(vector.h), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    vector: gen_qvector3d_types.QVector3D, wpos: float32): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new9(vector.h, wpos), owned: true)

proc create*(T: type gen_qvector4d_types.QVector4D,
    param1: gen_qvector4d_types.QVector4D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector4D_new10(param1.h), owned: true)

