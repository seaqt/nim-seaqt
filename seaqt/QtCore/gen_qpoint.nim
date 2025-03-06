import ./Qt5Core_libs

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


import ./gen_qpoint_types
export gen_qpoint_types


type cQPoint*{.exportc: "QPoint", incompleteStruct.} = object
type cQPointF*{.exportc: "QPointF", incompleteStruct.} = object

proc fcQPoint_isNull(self: pointer, ): bool {.importc: "QPoint_isNull".}
proc fcQPoint_x(self: pointer, ): cint {.importc: "QPoint_x".}
proc fcQPoint_y(self: pointer, ): cint {.importc: "QPoint_y".}
proc fcQPoint_setX(self: pointer, x: cint): void {.importc: "QPoint_setX".}
proc fcQPoint_setY(self: pointer, y: cint): void {.importc: "QPoint_setY".}
proc fcQPoint_manhattanLength(self: pointer, ): cint {.importc: "QPoint_manhattanLength".}
proc fcQPoint_transposed(self: pointer, ): pointer {.importc: "QPoint_transposed".}
proc fcQPoint_operatorPlusAssign(self: pointer, p: pointer): pointer {.importc: "QPoint_operatorPlusAssign".}
proc fcQPoint_operatorMinusAssign(self: pointer, p: pointer): pointer {.importc: "QPoint_operatorMinusAssign".}
proc fcQPoint_operatorMultiplyAssign(self: pointer, factor: float32): pointer {.importc: "QPoint_operatorMultiplyAssign".}
proc fcQPoint_operatorMultiplyAssignWithFactor(self: pointer, factor: float64): pointer {.importc: "QPoint_operatorMultiplyAssignWithFactor".}
proc fcQPoint_operatorMultiplyAssign2(self: pointer, factor: cint): pointer {.importc: "QPoint_operatorMultiplyAssign2".}
proc fcQPoint_operatorDivideAssign(self: pointer, divisor: float64): pointer {.importc: "QPoint_operatorDivideAssign".}
proc fcQPoint_dotProduct(p1: pointer, p2: pointer): cint {.importc: "QPoint_dotProduct".}
proc fcQPoint_new(): ptr cQPoint {.importc: "QPoint_new".}
proc fcQPoint_new2(xpos: cint, ypos: cint): ptr cQPoint {.importc: "QPoint_new2".}
proc fcQPoint_new3(param1: pointer): ptr cQPoint {.importc: "QPoint_new3".}
proc fcQPointF_manhattanLength(self: pointer, ): float64 {.importc: "QPointF_manhattanLength".}
proc fcQPointF_isNull(self: pointer, ): bool {.importc: "QPointF_isNull".}
proc fcQPointF_x(self: pointer, ): float64 {.importc: "QPointF_x".}
proc fcQPointF_y(self: pointer, ): float64 {.importc: "QPointF_y".}
proc fcQPointF_setX(self: pointer, x: float64): void {.importc: "QPointF_setX".}
proc fcQPointF_setY(self: pointer, y: float64): void {.importc: "QPointF_setY".}
proc fcQPointF_transposed(self: pointer, ): pointer {.importc: "QPointF_transposed".}
proc fcQPointF_operatorPlusAssign(self: pointer, p: pointer): pointer {.importc: "QPointF_operatorPlusAssign".}
proc fcQPointF_operatorMinusAssign(self: pointer, p: pointer): pointer {.importc: "QPointF_operatorMinusAssign".}
proc fcQPointF_operatorMultiplyAssign(self: pointer, c: float64): pointer {.importc: "QPointF_operatorMultiplyAssign".}
proc fcQPointF_operatorDivideAssign(self: pointer, c: float64): pointer {.importc: "QPointF_operatorDivideAssign".}
proc fcQPointF_dotProduct(p1: pointer, p2: pointer): float64 {.importc: "QPointF_dotProduct".}
proc fcQPointF_toPoint(self: pointer, ): pointer {.importc: "QPointF_toPoint".}
proc fcQPointF_new(): ptr cQPointF {.importc: "QPointF_new".}
proc fcQPointF_new2(p: pointer): ptr cQPointF {.importc: "QPointF_new2".}
proc fcQPointF_new3(xpos: float64, ypos: float64): ptr cQPointF {.importc: "QPointF_new3".}
proc fcQPointF_new4(param1: pointer): ptr cQPointF {.importc: "QPointF_new4".}

proc isNull*(self: gen_qpoint_types.QPoint, ): bool =
  fcQPoint_isNull(self.h)

proc x*(self: gen_qpoint_types.QPoint, ): cint =
  fcQPoint_x(self.h)

proc y*(self: gen_qpoint_types.QPoint, ): cint =
  fcQPoint_y(self.h)

proc setX*(self: gen_qpoint_types.QPoint, x: cint): void =
  fcQPoint_setX(self.h, x)

proc setY*(self: gen_qpoint_types.QPoint, y: cint): void =
  fcQPoint_setY(self.h, y)

proc manhattanLength*(self: gen_qpoint_types.QPoint, ): cint =
  fcQPoint_manhattanLength(self.h)

proc transposed*(self: gen_qpoint_types.QPoint, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_transposed(self.h), owned: true)

proc operatorPlusAssign*(self: gen_qpoint_types.QPoint, p: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_operatorPlusAssign(self.h, p.h), owned: false)

proc operatorMinusAssign*(self: gen_qpoint_types.QPoint, p: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_operatorMinusAssign(self.h, p.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qpoint_types.QPoint, factor: float32): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_operatorMultiplyAssign(self.h, factor), owned: false)

proc operatorMultiplyAssign*(self: gen_qpoint_types.QPoint, factor: float64): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_operatorMultiplyAssignWithFactor(self.h, factor), owned: false)

proc operatorMultiplyAssign*(self: gen_qpoint_types.QPoint, factor: cint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_operatorMultiplyAssign2(self.h, factor), owned: false)

proc operatorDivideAssign*(self: gen_qpoint_types.QPoint, divisor: float64): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_operatorDivideAssign(self.h, divisor), owned: false)

proc dotProduct*(_: type gen_qpoint_types.QPoint, p1: gen_qpoint_types.QPoint, p2: gen_qpoint_types.QPoint): cint =
  fcQPoint_dotProduct(p1.h, p2.h)

proc create*(T: type gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_new(), owned: true)

proc create*(T: type gen_qpoint_types.QPoint,
    xpos: cint, ypos: cint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_new2(xpos, ypos), owned: true)

proc create*(T: type gen_qpoint_types.QPoint,
    param1: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPoint_new3(param1.h), owned: true)

proc manhattanLength*(self: gen_qpoint_types.QPointF, ): float64 =
  fcQPointF_manhattanLength(self.h)

proc isNull*(self: gen_qpoint_types.QPointF, ): bool =
  fcQPointF_isNull(self.h)

proc x*(self: gen_qpoint_types.QPointF, ): float64 =
  fcQPointF_x(self.h)

proc y*(self: gen_qpoint_types.QPointF, ): float64 =
  fcQPointF_y(self.h)

proc setX*(self: gen_qpoint_types.QPointF, x: float64): void =
  fcQPointF_setX(self.h, x)

proc setY*(self: gen_qpoint_types.QPointF, y: float64): void =
  fcQPointF_setY(self.h, y)

proc transposed*(self: gen_qpoint_types.QPointF, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_transposed(self.h), owned: true)

proc operatorPlusAssign*(self: gen_qpoint_types.QPointF, p: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_operatorPlusAssign(self.h, p.h), owned: false)

proc operatorMinusAssign*(self: gen_qpoint_types.QPointF, p: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_operatorMinusAssign(self.h, p.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qpoint_types.QPointF, c: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_operatorMultiplyAssign(self.h, c), owned: false)

proc operatorDivideAssign*(self: gen_qpoint_types.QPointF, c: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_operatorDivideAssign(self.h, c), owned: false)

proc dotProduct*(_: type gen_qpoint_types.QPointF, p1: gen_qpoint_types.QPointF, p2: gen_qpoint_types.QPointF): float64 =
  fcQPointF_dotProduct(p1.h, p2.h)

proc toPoint*(self: gen_qpoint_types.QPointF, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQPointF_toPoint(self.h), owned: true)

proc create*(T: type gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_new(), owned: true)

proc create*(T: type gen_qpoint_types.QPointF,
    p: gen_qpoint_types.QPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_new2(p.h), owned: true)

proc create*(T: type gen_qpoint_types.QPointF,
    xpos: float64, ypos: float64): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_new3(xpos, ypos), owned: true)

proc create*(T: type gen_qpoint_types.QPointF,
    param1: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPointF_new4(param1.h), owned: true)

