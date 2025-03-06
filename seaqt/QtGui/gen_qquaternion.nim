import ./Qt5Gui_libs

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


import ./gen_qquaternion_types
export gen_qquaternion_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qvector3d_types,
  ./gen_qvector4d_types
export
  gen_qvariant_types,
  gen_qvector3d_types,
  gen_qvector4d_types

type cQQuaternion*{.exportc: "QQuaternion", incompleteStruct.} = object

proc fcQQuaternion_isNull(self: pointer, ): bool {.importc: "QQuaternion_isNull".}
proc fcQQuaternion_isIdentity(self: pointer, ): bool {.importc: "QQuaternion_isIdentity".}
proc fcQQuaternion_vector(self: pointer, ): pointer {.importc: "QQuaternion_vector".}
proc fcQQuaternion_setVector(self: pointer, vector: pointer): void {.importc: "QQuaternion_setVector".}
proc fcQQuaternion_setVector2(self: pointer, x: float32, y: float32, z: float32): void {.importc: "QQuaternion_setVector2".}
proc fcQQuaternion_x(self: pointer, ): float32 {.importc: "QQuaternion_x".}
proc fcQQuaternion_y(self: pointer, ): float32 {.importc: "QQuaternion_y".}
proc fcQQuaternion_z(self: pointer, ): float32 {.importc: "QQuaternion_z".}
proc fcQQuaternion_scalar(self: pointer, ): float32 {.importc: "QQuaternion_scalar".}
proc fcQQuaternion_setX(self: pointer, x: float32): void {.importc: "QQuaternion_setX".}
proc fcQQuaternion_setY(self: pointer, y: float32): void {.importc: "QQuaternion_setY".}
proc fcQQuaternion_setZ(self: pointer, z: float32): void {.importc: "QQuaternion_setZ".}
proc fcQQuaternion_setScalar(self: pointer, scalar: float32): void {.importc: "QQuaternion_setScalar".}
proc fcQQuaternion_dotProduct(q1: pointer, q2: pointer): float32 {.importc: "QQuaternion_dotProduct".}
proc fcQQuaternion_length(self: pointer, ): float32 {.importc: "QQuaternion_length".}
proc fcQQuaternion_lengthSquared(self: pointer, ): float32 {.importc: "QQuaternion_lengthSquared".}
proc fcQQuaternion_normalized(self: pointer, ): pointer {.importc: "QQuaternion_normalized".}
proc fcQQuaternion_normalize(self: pointer, ): void {.importc: "QQuaternion_normalize".}
proc fcQQuaternion_inverted(self: pointer, ): pointer {.importc: "QQuaternion_inverted".}
proc fcQQuaternion_conjugated(self: pointer, ): pointer {.importc: "QQuaternion_conjugated".}
proc fcQQuaternion_conjugate(self: pointer, ): pointer {.importc: "QQuaternion_conjugate".}
proc fcQQuaternion_rotatedVector(self: pointer, vector: pointer): pointer {.importc: "QQuaternion_rotatedVector".}
proc fcQQuaternion_operatorPlusAssign(self: pointer, quaternion: pointer): pointer {.importc: "QQuaternion_operatorPlusAssign".}
proc fcQQuaternion_operatorMinusAssign(self: pointer, quaternion: pointer): pointer {.importc: "QQuaternion_operatorMinusAssign".}
proc fcQQuaternion_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QQuaternion_operatorMultiplyAssign".}
proc fcQQuaternion_operatorMultiplyAssignWithQuaternion(self: pointer, quaternion: pointer): pointer {.importc: "QQuaternion_operatorMultiplyAssignWithQuaternion".}
proc fcQQuaternion_operatorDivideAssign(self: pointer, divisor: float32): pointer {.importc: "QQuaternion_operatorDivideAssign".}
proc fcQQuaternion_toVector4D(self: pointer, ): pointer {.importc: "QQuaternion_toVector4D".}
proc fcQQuaternion_ToQVariant(self: pointer, ): pointer {.importc: "QQuaternion_ToQVariant".}
proc fcQQuaternion_getAxisAndAngle(self: pointer, axis: pointer, angle: ptr float32): void {.importc: "QQuaternion_getAxisAndAngle".}
proc fcQQuaternion_fromAxisAndAngle(axis: pointer, angle: float32): pointer {.importc: "QQuaternion_fromAxisAndAngle".}
proc fcQQuaternion_getAxisAndAngle2(self: pointer, x: ptr float32, y: ptr float32, z: ptr float32, angle: ptr float32): void {.importc: "QQuaternion_getAxisAndAngle2".}
proc fcQQuaternion_fromAxisAndAngle2(x: float32, y: float32, z: float32, angle: float32): pointer {.importc: "QQuaternion_fromAxisAndAngle2".}
proc fcQQuaternion_toEulerAngles(self: pointer, ): pointer {.importc: "QQuaternion_toEulerAngles".}
proc fcQQuaternion_fromEulerAngles(eulerAngles: pointer): pointer {.importc: "QQuaternion_fromEulerAngles".}
proc fcQQuaternion_getEulerAngles(self: pointer, pitch: ptr float32, yaw: ptr float32, roll: ptr float32): void {.importc: "QQuaternion_getEulerAngles".}
proc fcQQuaternion_fromEulerAngles2(pitch: float32, yaw: float32, roll: float32): pointer {.importc: "QQuaternion_fromEulerAngles2".}
proc fcQQuaternion_getAxes(self: pointer, xAxis: pointer, yAxis: pointer, zAxis: pointer): void {.importc: "QQuaternion_getAxes".}
proc fcQQuaternion_fromAxes(xAxis: pointer, yAxis: pointer, zAxis: pointer): pointer {.importc: "QQuaternion_fromAxes".}
proc fcQQuaternion_fromDirection(direction: pointer, up: pointer): pointer {.importc: "QQuaternion_fromDirection".}
proc fcQQuaternion_rotationTo(fromVal: pointer, to: pointer): pointer {.importc: "QQuaternion_rotationTo".}
proc fcQQuaternion_slerp(q1: pointer, q2: pointer, t: float32): pointer {.importc: "QQuaternion_slerp".}
proc fcQQuaternion_nlerp(q1: pointer, q2: pointer, t: float32): pointer {.importc: "QQuaternion_nlerp".}
proc fcQQuaternion_new(): ptr cQQuaternion {.importc: "QQuaternion_new".}
proc fcQQuaternion_new2(param1: cint): ptr cQQuaternion {.importc: "QQuaternion_new2".}
proc fcQQuaternion_new3(scalar: float32, xpos: float32, ypos: float32, zpos: float32): ptr cQQuaternion {.importc: "QQuaternion_new3".}
proc fcQQuaternion_new4(scalar: float32, vector: pointer): ptr cQQuaternion {.importc: "QQuaternion_new4".}
proc fcQQuaternion_new5(vector: pointer): ptr cQQuaternion {.importc: "QQuaternion_new5".}
proc fcQQuaternion_new6(param1: pointer): ptr cQQuaternion {.importc: "QQuaternion_new6".}

proc isNull*(self: gen_qquaternion_types.QQuaternion, ): bool =
  fcQQuaternion_isNull(self.h)

proc isIdentity*(self: gen_qquaternion_types.QQuaternion, ): bool =
  fcQQuaternion_isIdentity(self.h)

proc vector*(self: gen_qquaternion_types.QQuaternion, ): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQQuaternion_vector(self.h), owned: true)

proc setVector*(self: gen_qquaternion_types.QQuaternion, vector: gen_qvector3d_types.QVector3D): void =
  fcQQuaternion_setVector(self.h, vector.h)

proc setVector*(self: gen_qquaternion_types.QQuaternion, x: float32, y: float32, z: float32): void =
  fcQQuaternion_setVector2(self.h, x, y, z)

proc x*(self: gen_qquaternion_types.QQuaternion, ): float32 =
  fcQQuaternion_x(self.h)

proc y*(self: gen_qquaternion_types.QQuaternion, ): float32 =
  fcQQuaternion_y(self.h)

proc z*(self: gen_qquaternion_types.QQuaternion, ): float32 =
  fcQQuaternion_z(self.h)

proc scalar*(self: gen_qquaternion_types.QQuaternion, ): float32 =
  fcQQuaternion_scalar(self.h)

proc setX*(self: gen_qquaternion_types.QQuaternion, x: float32): void =
  fcQQuaternion_setX(self.h, x)

proc setY*(self: gen_qquaternion_types.QQuaternion, y: float32): void =
  fcQQuaternion_setY(self.h, y)

proc setZ*(self: gen_qquaternion_types.QQuaternion, z: float32): void =
  fcQQuaternion_setZ(self.h, z)

proc setScalar*(self: gen_qquaternion_types.QQuaternion, scalar: float32): void =
  fcQQuaternion_setScalar(self.h, scalar)

proc dotProduct*(_: type gen_qquaternion_types.QQuaternion, q1: gen_qquaternion_types.QQuaternion, q2: gen_qquaternion_types.QQuaternion): float32 =
  fcQQuaternion_dotProduct(q1.h, q2.h)

proc length*(self: gen_qquaternion_types.QQuaternion, ): float32 =
  fcQQuaternion_length(self.h)

proc lengthSquared*(self: gen_qquaternion_types.QQuaternion, ): float32 =
  fcQQuaternion_lengthSquared(self.h)

proc normalized*(self: gen_qquaternion_types.QQuaternion, ): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_normalized(self.h), owned: true)

proc normalize*(self: gen_qquaternion_types.QQuaternion, ): void =
  fcQQuaternion_normalize(self.h)

proc inverted*(self: gen_qquaternion_types.QQuaternion, ): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_inverted(self.h), owned: true)

proc conjugated*(self: gen_qquaternion_types.QQuaternion, ): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_conjugated(self.h), owned: true)

proc conjugate*(self: gen_qquaternion_types.QQuaternion, ): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_conjugate(self.h), owned: true)

proc rotatedVector*(self: gen_qquaternion_types.QQuaternion, vector: gen_qvector3d_types.QVector3D): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQQuaternion_rotatedVector(self.h, vector.h), owned: true)

proc operatorPlusAssign*(self: gen_qquaternion_types.QQuaternion, quaternion: gen_qquaternion_types.QQuaternion): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_operatorPlusAssign(self.h, quaternion.h), owned: false)

proc operatorMinusAssign*(self: gen_qquaternion_types.QQuaternion, quaternion: gen_qquaternion_types.QQuaternion): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_operatorMinusAssign(self.h, quaternion.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qquaternion_types.QQuaternion, factor: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_operatorMultiplyAssign(self.h, factor), owned: false)

proc operatorMultiplyAssign*(self: gen_qquaternion_types.QQuaternion, quaternion: gen_qquaternion_types.QQuaternion): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_operatorMultiplyAssignWithQuaternion(self.h, quaternion.h), owned: false)

proc operatorDivideAssign*(self: gen_qquaternion_types.QQuaternion, divisor: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_operatorDivideAssign(self.h, divisor), owned: false)

proc toVector4D*(self: gen_qquaternion_types.QQuaternion, ): gen_qvector4d_types.QVector4D =
  gen_qvector4d_types.QVector4D(h: fcQQuaternion_toVector4D(self.h), owned: true)

proc ToQVariant*(self: gen_qquaternion_types.QQuaternion, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQQuaternion_ToQVariant(self.h), owned: true)

proc getAxisAndAngle*(self: gen_qquaternion_types.QQuaternion, axis: gen_qvector3d_types.QVector3D, angle: ptr float32): void =
  fcQQuaternion_getAxisAndAngle(self.h, axis.h, angle)

proc fromAxisAndAngle*(_: type gen_qquaternion_types.QQuaternion, axis: gen_qvector3d_types.QVector3D, angle: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_fromAxisAndAngle(axis.h, angle), owned: true)

proc getAxisAndAngle*(self: gen_qquaternion_types.QQuaternion, x: ptr float32, y: ptr float32, z: ptr float32, angle: ptr float32): void =
  fcQQuaternion_getAxisAndAngle2(self.h, x, y, z, angle)

proc fromAxisAndAngle*(_: type gen_qquaternion_types.QQuaternion, x: float32, y: float32, z: float32, angle: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_fromAxisAndAngle2(x, y, z, angle), owned: true)

proc toEulerAngles*(self: gen_qquaternion_types.QQuaternion, ): gen_qvector3d_types.QVector3D =
  gen_qvector3d_types.QVector3D(h: fcQQuaternion_toEulerAngles(self.h), owned: true)

proc fromEulerAngles*(_: type gen_qquaternion_types.QQuaternion, eulerAngles: gen_qvector3d_types.QVector3D): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_fromEulerAngles(eulerAngles.h), owned: true)

proc getEulerAngles*(self: gen_qquaternion_types.QQuaternion, pitch: ptr float32, yaw: ptr float32, roll: ptr float32): void =
  fcQQuaternion_getEulerAngles(self.h, pitch, yaw, roll)

proc fromEulerAngles*(_: type gen_qquaternion_types.QQuaternion, pitch: float32, yaw: float32, roll: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_fromEulerAngles2(pitch, yaw, roll), owned: true)

proc getAxes*(self: gen_qquaternion_types.QQuaternion, xAxis: gen_qvector3d_types.QVector3D, yAxis: gen_qvector3d_types.QVector3D, zAxis: gen_qvector3d_types.QVector3D): void =
  fcQQuaternion_getAxes(self.h, xAxis.h, yAxis.h, zAxis.h)

proc fromAxes*(_: type gen_qquaternion_types.QQuaternion, xAxis: gen_qvector3d_types.QVector3D, yAxis: gen_qvector3d_types.QVector3D, zAxis: gen_qvector3d_types.QVector3D): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_fromAxes(xAxis.h, yAxis.h, zAxis.h), owned: true)

proc fromDirection*(_: type gen_qquaternion_types.QQuaternion, direction: gen_qvector3d_types.QVector3D, up: gen_qvector3d_types.QVector3D): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_fromDirection(direction.h, up.h), owned: true)

proc rotationTo*(_: type gen_qquaternion_types.QQuaternion, fromVal: gen_qvector3d_types.QVector3D, to: gen_qvector3d_types.QVector3D): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_rotationTo(fromVal.h, to.h), owned: true)

proc slerp*(_: type gen_qquaternion_types.QQuaternion, q1: gen_qquaternion_types.QQuaternion, q2: gen_qquaternion_types.QQuaternion, t: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_slerp(q1.h, q2.h, t), owned: true)

proc nlerp*(_: type gen_qquaternion_types.QQuaternion, q1: gen_qquaternion_types.QQuaternion, q2: gen_qquaternion_types.QQuaternion, t: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_nlerp(q1.h, q2.h, t), owned: true)

proc create*(T: type gen_qquaternion_types.QQuaternion): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_new(), owned: true)

proc create*(T: type gen_qquaternion_types.QQuaternion,
    param1: cint): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_new2(cint(param1)), owned: true)

proc create*(T: type gen_qquaternion_types.QQuaternion,
    scalar: float32, xpos: float32, ypos: float32, zpos: float32): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_new3(scalar, xpos, ypos, zpos), owned: true)

proc create*(T: type gen_qquaternion_types.QQuaternion,
    scalar: float32, vector: gen_qvector3d_types.QVector3D): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_new4(scalar, vector.h), owned: true)

proc create*(T: type gen_qquaternion_types.QQuaternion,
    vector: gen_qvector4d_types.QVector4D): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_new5(vector.h), owned: true)

proc create*(T: type gen_qquaternion_types.QQuaternion,
    param1: gen_qquaternion_types.QQuaternion): gen_qquaternion_types.QQuaternion =
  gen_qquaternion_types.QQuaternion(h: fcQQuaternion_new6(param1.h), owned: true)

