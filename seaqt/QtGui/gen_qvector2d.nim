import ./qtgui_pkg

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


import ./gen_qvector2d_types
export gen_qvector2d_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qvector3d_types,
  ./gen_qvector4d_types
export
  gen_qpoint_types,
  gen_qvariant_types,
  gen_qvector3d_types,
  gen_qvector4d_types

type cQVector2D*{.exportc: "QVector2D", incompleteStruct.} = object

proc fcQVector2D_isNull(self: pointer): bool {.importc: "QVector2D_isNull".}
proc fcQVector2D_x(self: pointer): float32 {.importc: "QVector2D_x".}
proc fcQVector2D_y(self: pointer): float32 {.importc: "QVector2D_y".}
proc fcQVector2D_setX(self: pointer, x: float32): void {.importc: "QVector2D_setX".}
proc fcQVector2D_setY(self: pointer, y: float32): void {.importc: "QVector2D_setY".}
proc fcQVector2D_operatorSubscript(self: pointer, i: cint): float32 {.importc: "QVector2D_operatorSubscript".}
proc fcQVector2D_length(self: pointer): float32 {.importc: "QVector2D_length".}
proc fcQVector2D_lengthSquared(self: pointer): float32 {.importc: "QVector2D_lengthSquared".}
proc fcQVector2D_normalized(self: pointer): pointer {.importc: "QVector2D_normalized".}
proc fcQVector2D_normalize(self: pointer): void {.importc: "QVector2D_normalize".}
proc fcQVector2D_distanceToPoint(self: pointer, point: pointer): float32 {.importc: "QVector2D_distanceToPoint".}
proc fcQVector2D_distanceToLine(self: pointer, point: pointer, direction: pointer): float32 {.importc: "QVector2D_distanceToLine".}
proc fcQVector2D_operatorPlusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorPlusAssign".}
proc fcQVector2D_operatorMinusAssign(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorMinusAssign".}
proc fcQVector2D_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QVector2D_operatorMultiplyAssign".}
proc fcQVector2D_operatorMultiplyAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorMultiplyAssignWithVector".}
proc fcQVector2D_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QVector2D_operatorDivideAssign".}
proc fcQVector2D_operatorDivideAssignWithVector(self: pointer, vector: pointer): pointer {.importc: "QVector2D_operatorDivideAssignWithVector".}
proc fcQVector2D_dotProduct(v1: pointer, v2: pointer): float32 {.importc: "QVector2D_dotProduct".}
proc fcQVector2D_toVector3D(self: pointer): pointer {.importc: "QVector2D_toVector3D".}
proc fcQVector2D_toVector4D(self: pointer): pointer {.importc: "QVector2D_toVector4D".}
proc fcQVector2D_toPoint(self: pointer): pointer {.importc: "QVector2D_toPoint".}
proc fcQVector2D_toPointF(self: pointer): pointer {.importc: "QVector2D_toPointF".}
proc fcQVector2D_ToQVariant(self: pointer): pointer {.importc: "QVector2D_ToQVariant".}
proc fcQVector2D_new(): ptr cQVector2D {.importc: "QVector2D_new".}
proc fcQVector2D_new2(param1: cint): ptr cQVector2D {.importc: "QVector2D_new2".}
proc fcQVector2D_new3(xpos: float32, ypos: float32): ptr cQVector2D {.importc: "QVector2D_new3".}
proc fcQVector2D_new4(point: pointer): ptr cQVector2D {.importc: "QVector2D_new4".}
proc fcQVector2D_new5(point: pointer): ptr cQVector2D {.importc: "QVector2D_new5".}
proc fcQVector2D_new6(vector: pointer): ptr cQVector2D {.importc: "QVector2D_new6".}
proc fcQVector2D_new7(vector: pointer): ptr cQVector2D {.importc: "QVector2D_new7".}
proc fcQVector2D_new8(param1: pointer): ptr cQVector2D {.importc: "QVector2D_new8".}

proc isNull*(self: gen_qvector2d_types.QVector2D): bool =
  fcQVector2D_isNull(self.h)

proc x*(self: gen_qvector2d_types.QVector2D): float32 =
  fcQVector2D_x(self.h)

proc y*(self: gen_qvector2d_types.QVector2D): float32 =
  fcQVector2D_y(self.h)

proc setX*(self: gen_qvector2d_types.QVector2D, x: float32): void =
  fcQVector2D_setX(self.h, x)

proc setY*(self: gen_qvector2d_types.QVector2D, y: float32): void =
  fcQVector2D_setY(self.h, y)

proc operatorSubscript*(self: gen_qvector2d_types.QVector2D, i: cint): float32 =
  fcQVector2D_operatorSubscript(self.h, i)

proc length*(self: gen_qvector2d_types.QVector2D): float32 =
  fcQVector2D_length(self.h)

proc lengthSquared*(self: gen_qvector2d_types.QVector2D): float32 =
  fcQVector2D_lengthSquared(self.h)

proc normalized*(self: gen_qvector2d_types.QVector2D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_normalized(self.h), owned: true)

proc normalize*(self: gen_qvector2d_types.QVector2D): void =
  fcQVector2D_normalize(self.h)

proc distanceToPoint*(self: gen_qvector2d_types.QVector2D, point: gen_qvector2d_types.QVector2D): float32 =
  fcQVector2D_distanceToPoint(self.h, point.h)

proc distanceToLine*(self: gen_qvector2d_types.QVector2D, point: gen_qvector2d_types.QVector2D, direction: gen_qvector2d_types.QVector2D): float32 =
  fcQVector2D_distanceToLine(self.h, point.h, direction.h)

proc operatorPlusAssign*(self: gen_qvector2d_types.QVector2D, vector: gen_qvector2d_types.QVector2D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_operatorPlusAssign(self.h, vector.h), owned: false)

proc operatorMinusAssign*(self: gen_qvector2d_types.QVector2D, vector: gen_qvector2d_types.QVector2D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_operatorMinusAssign(self.h, vector.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qvector2d_types.QVector2D, factor: float32): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_operatorMultiplyAssign(self.h, factor), owned: false)

proc operatorMultiplyAssign*(self: gen_qvector2d_types.QVector2D, vector: gen_qvector2d_types.QVector2D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_operatorMultiplyAssignWithVector(self.h, vector.h), owned: false)

proc operatorDivideAssign*(self: gen_qvector2d_types.QVector2D, divisor: float32): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_operatorDivideAssign(self.h, divisor), owned: false)

proc operatorDivideAssign*(self: gen_qvector2d_types.QVector2D, vector: gen_qvector2d_types.QVector2D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_operatorDivideAssignWithVector(self.h, vector.h), owned: false)

proc dotProduct*(_: type gen_qvector2d_types.QVector2D, v1: gen_qvector2d_types.QVector2D, v2: gen_qvector2d_types.QVector2D): float32 =
  fcQVector2D_dotProduct(v1.h, v2.h)

proc toVector3D*(self: gen_qvector2d_types.QVector2D): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQVector2D_toVector3D(self.h), owned: true)

proc toVector4D*(self: gen_qvector2d_types.QVector2D): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQVector2D_toVector4D(self.h), owned: true)

proc toPoint*(self: gen_qvector2d_types.QVector2D): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQVector2D_toPoint(self.h), owned: true)

proc toPointF*(self: gen_qvector2d_types.QVector2D): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQVector2D_toPointF(self.h), owned: true)

proc ToQVariant*(self: gen_qvector2d_types.QVector2D): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVector2D_ToQVariant(self.h), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new(), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D,
    param1: cint): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new2(cint(param1)), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D,
    xpos: float32, ypos: float32): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new3(xpos, ypos), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D,
    point: gen_qpoint_types.QPoint): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new4(point.h), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D,
    point: gen_qpoint_types.QPointF): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new5(point.h), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D,
    vector: gen_qvector3d_types.QVector3D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new6(vector.h), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D,
    vector: gen_qvector4d_types.QVector4D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new7(vector.h), owned: true)

proc create*(T: type gen_qvector2d_types.QVector2D,
    param1: gen_qvector2d_types.QVector2D): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQVector2D_new8(param1.h), owned: true)

