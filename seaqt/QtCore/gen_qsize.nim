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


import ./gen_qsize_types
export gen_qsize_types

import
  ./gen_qmargins_types
export
  gen_qmargins_types

type cQSize*{.exportc: "QSize", incompleteStruct.} = object
type cQSizeF*{.exportc: "QSizeF", incompleteStruct.} = object

proc fcQSize_isNull(self: pointer, ): bool {.importc: "QSize_isNull".}
proc fcQSize_isEmpty(self: pointer, ): bool {.importc: "QSize_isEmpty".}
proc fcQSize_isValid(self: pointer, ): bool {.importc: "QSize_isValid".}
proc fcQSize_width(self: pointer, ): cint {.importc: "QSize_width".}
proc fcQSize_height(self: pointer, ): cint {.importc: "QSize_height".}
proc fcQSize_setWidth(self: pointer, w: cint): void {.importc: "QSize_setWidth".}
proc fcQSize_setHeight(self: pointer, h: cint): void {.importc: "QSize_setHeight".}
proc fcQSize_transpose(self: pointer, ): void {.importc: "QSize_transpose".}
proc fcQSize_transposed(self: pointer, ): pointer {.importc: "QSize_transposed".}
proc fcQSize_scale(self: pointer, w: cint, h: cint, mode: cint): void {.importc: "QSize_scale".}
proc fcQSize_scale2(self: pointer, s: pointer, mode: cint): void {.importc: "QSize_scale2".}
proc fcQSize_scaled(self: pointer, w: cint, h: cint, mode: cint): pointer {.importc: "QSize_scaled".}
proc fcQSize_scaled2(self: pointer, s: pointer, mode: cint): pointer {.importc: "QSize_scaled2".}
proc fcQSize_expandedTo(self: pointer, param1: pointer): pointer {.importc: "QSize_expandedTo".}
proc fcQSize_boundedTo(self: pointer, param1: pointer): pointer {.importc: "QSize_boundedTo".}
proc fcQSize_grownBy(self: pointer, m: pointer): pointer {.importc: "QSize_grownBy".}
proc fcQSize_shrunkBy(self: pointer, m: pointer): pointer {.importc: "QSize_shrunkBy".}
proc fcQSize_operatorPlusAssign(self: pointer, param1: pointer): pointer {.importc: "QSize_operatorPlusAssign".}
proc fcQSize_operatorMinusAssign(self: pointer, param1: pointer): pointer {.importc: "QSize_operatorMinusAssign".}
proc fcQSize_operatorMultiplyAssign(self: pointer, c: float64): pointer {.importc: "QSize_operatorMultiplyAssign".}
proc fcQSize_operatorDivideAssign(self: pointer, c: float64): pointer {.importc: "QSize_operatorDivideAssign".}
proc fcQSize_new(): ptr cQSize {.importc: "QSize_new".}
proc fcQSize_new2(w: cint, h: cint): ptr cQSize {.importc: "QSize_new2".}
proc fcQSize_new3(param1: pointer): ptr cQSize {.importc: "QSize_new3".}
proc fcQSizeF_isNull(self: pointer, ): bool {.importc: "QSizeF_isNull".}
proc fcQSizeF_isEmpty(self: pointer, ): bool {.importc: "QSizeF_isEmpty".}
proc fcQSizeF_isValid(self: pointer, ): bool {.importc: "QSizeF_isValid".}
proc fcQSizeF_width(self: pointer, ): float64 {.importc: "QSizeF_width".}
proc fcQSizeF_height(self: pointer, ): float64 {.importc: "QSizeF_height".}
proc fcQSizeF_setWidth(self: pointer, w: float64): void {.importc: "QSizeF_setWidth".}
proc fcQSizeF_setHeight(self: pointer, h: float64): void {.importc: "QSizeF_setHeight".}
proc fcQSizeF_transpose(self: pointer, ): void {.importc: "QSizeF_transpose".}
proc fcQSizeF_transposed(self: pointer, ): pointer {.importc: "QSizeF_transposed".}
proc fcQSizeF_scale(self: pointer, w: float64, h: float64, mode: cint): void {.importc: "QSizeF_scale".}
proc fcQSizeF_scale2(self: pointer, s: pointer, mode: cint): void {.importc: "QSizeF_scale2".}
proc fcQSizeF_scaled(self: pointer, w: float64, h: float64, mode: cint): pointer {.importc: "QSizeF_scaled".}
proc fcQSizeF_scaled2(self: pointer, s: pointer, mode: cint): pointer {.importc: "QSizeF_scaled2".}
proc fcQSizeF_expandedTo(self: pointer, param1: pointer): pointer {.importc: "QSizeF_expandedTo".}
proc fcQSizeF_boundedTo(self: pointer, param1: pointer): pointer {.importc: "QSizeF_boundedTo".}
proc fcQSizeF_grownBy(self: pointer, m: pointer): pointer {.importc: "QSizeF_grownBy".}
proc fcQSizeF_shrunkBy(self: pointer, m: pointer): pointer {.importc: "QSizeF_shrunkBy".}
proc fcQSizeF_operatorPlusAssign(self: pointer, param1: pointer): pointer {.importc: "QSizeF_operatorPlusAssign".}
proc fcQSizeF_operatorMinusAssign(self: pointer, param1: pointer): pointer {.importc: "QSizeF_operatorMinusAssign".}
proc fcQSizeF_operatorMultiplyAssign(self: pointer, c: float64): pointer {.importc: "QSizeF_operatorMultiplyAssign".}
proc fcQSizeF_operatorDivideAssign(self: pointer, c: float64): pointer {.importc: "QSizeF_operatorDivideAssign".}
proc fcQSizeF_toSize(self: pointer, ): pointer {.importc: "QSizeF_toSize".}
proc fcQSizeF_new(): ptr cQSizeF {.importc: "QSizeF_new".}
proc fcQSizeF_new2(sz: pointer): ptr cQSizeF {.importc: "QSizeF_new2".}
proc fcQSizeF_new3(w: float64, h: float64): ptr cQSizeF {.importc: "QSizeF_new3".}
proc fcQSizeF_new4(param1: pointer): ptr cQSizeF {.importc: "QSizeF_new4".}

proc isNull*(self: gen_qsize_types.QSize, ): bool =
  fcQSize_isNull(self.h)

proc isEmpty*(self: gen_qsize_types.QSize, ): bool =
  fcQSize_isEmpty(self.h)

proc isValid*(self: gen_qsize_types.QSize, ): bool =
  fcQSize_isValid(self.h)

proc width*(self: gen_qsize_types.QSize, ): cint =
  fcQSize_width(self.h)

proc height*(self: gen_qsize_types.QSize, ): cint =
  fcQSize_height(self.h)

proc setWidth*(self: gen_qsize_types.QSize, w: cint): void =
  fcQSize_setWidth(self.h, w)

proc setHeight*(self: gen_qsize_types.QSize, h: cint): void =
  fcQSize_setHeight(self.h, h)

proc transpose*(self: gen_qsize_types.QSize, ): void =
  fcQSize_transpose(self.h)

proc transposed*(self: gen_qsize_types.QSize, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_transposed(self.h), owned: true)

proc scale*(self: gen_qsize_types.QSize, w: cint, h: cint, mode: cint): void =
  fcQSize_scale(self.h, w, h, cint(mode))

proc scale*(self: gen_qsize_types.QSize, s: gen_qsize_types.QSize, mode: cint): void =
  fcQSize_scale2(self.h, s.h, cint(mode))

proc scaled*(self: gen_qsize_types.QSize, w: cint, h: cint, mode: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_scaled(self.h, w, h, cint(mode)), owned: true)

proc scaled*(self: gen_qsize_types.QSize, s: gen_qsize_types.QSize, mode: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_scaled2(self.h, s.h, cint(mode)), owned: true)

proc expandedTo*(self: gen_qsize_types.QSize, param1: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_expandedTo(self.h, param1.h), owned: true)

proc boundedTo*(self: gen_qsize_types.QSize, param1: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_boundedTo(self.h, param1.h), owned: true)

proc grownBy*(self: gen_qsize_types.QSize, m: gen_qmargins_types.QMargins): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_grownBy(self.h, m.h), owned: true)

proc shrunkBy*(self: gen_qsize_types.QSize, m: gen_qmargins_types.QMargins): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_shrunkBy(self.h, m.h), owned: true)

proc operatorPlusAssign*(self: gen_qsize_types.QSize, param1: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_operatorPlusAssign(self.h, param1.h), owned: false)

proc operatorMinusAssign*(self: gen_qsize_types.QSize, param1: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_operatorMinusAssign(self.h, param1.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qsize_types.QSize, c: float64): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_operatorMultiplyAssign(self.h, c), owned: false)

proc operatorDivideAssign*(self: gen_qsize_types.QSize, c: float64): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_operatorDivideAssign(self.h, c), owned: false)

proc create*(T: type gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_new(), owned: true)

proc create*(T: type gen_qsize_types.QSize,
    w: cint, h: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_new2(w, h), owned: true)

proc create*(T: type gen_qsize_types.QSize,
    param1: gen_qsize_types.QSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSize_new3(param1.h), owned: true)

proc isNull*(self: gen_qsize_types.QSizeF, ): bool =
  fcQSizeF_isNull(self.h)

proc isEmpty*(self: gen_qsize_types.QSizeF, ): bool =
  fcQSizeF_isEmpty(self.h)

proc isValid*(self: gen_qsize_types.QSizeF, ): bool =
  fcQSizeF_isValid(self.h)

proc width*(self: gen_qsize_types.QSizeF, ): float64 =
  fcQSizeF_width(self.h)

proc height*(self: gen_qsize_types.QSizeF, ): float64 =
  fcQSizeF_height(self.h)

proc setWidth*(self: gen_qsize_types.QSizeF, w: float64): void =
  fcQSizeF_setWidth(self.h, w)

proc setHeight*(self: gen_qsize_types.QSizeF, h: float64): void =
  fcQSizeF_setHeight(self.h, h)

proc transpose*(self: gen_qsize_types.QSizeF, ): void =
  fcQSizeF_transpose(self.h)

proc transposed*(self: gen_qsize_types.QSizeF, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_transposed(self.h), owned: true)

proc scale*(self: gen_qsize_types.QSizeF, w: float64, h: float64, mode: cint): void =
  fcQSizeF_scale(self.h, w, h, cint(mode))

proc scale*(self: gen_qsize_types.QSizeF, s: gen_qsize_types.QSizeF, mode: cint): void =
  fcQSizeF_scale2(self.h, s.h, cint(mode))

proc scaled*(self: gen_qsize_types.QSizeF, w: float64, h: float64, mode: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_scaled(self.h, w, h, cint(mode)), owned: true)

proc scaled*(self: gen_qsize_types.QSizeF, s: gen_qsize_types.QSizeF, mode: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_scaled2(self.h, s.h, cint(mode)), owned: true)

proc expandedTo*(self: gen_qsize_types.QSizeF, param1: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_expandedTo(self.h, param1.h), owned: true)

proc boundedTo*(self: gen_qsize_types.QSizeF, param1: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_boundedTo(self.h, param1.h), owned: true)

proc grownBy*(self: gen_qsize_types.QSizeF, m: gen_qmargins_types.QMarginsF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_grownBy(self.h, m.h), owned: true)

proc shrunkBy*(self: gen_qsize_types.QSizeF, m: gen_qmargins_types.QMarginsF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_shrunkBy(self.h, m.h), owned: true)

proc operatorPlusAssign*(self: gen_qsize_types.QSizeF, param1: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_operatorPlusAssign(self.h, param1.h), owned: false)

proc operatorMinusAssign*(self: gen_qsize_types.QSizeF, param1: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_operatorMinusAssign(self.h, param1.h), owned: false)

proc operatorMultiplyAssign*(self: gen_qsize_types.QSizeF, c: float64): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_operatorMultiplyAssign(self.h, c), owned: false)

proc operatorDivideAssign*(self: gen_qsize_types.QSizeF, c: float64): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_operatorDivideAssign(self.h, c), owned: false)

proc toSize*(self: gen_qsize_types.QSizeF, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeF_toSize(self.h), owned: true)

proc create*(T: type gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_new(), owned: true)

proc create*(T: type gen_qsize_types.QSizeF,
    sz: gen_qsize_types.QSize): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_new2(sz.h), owned: true)

proc create*(T: type gen_qsize_types.QSizeF,
    w: float64, h: float64): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_new3(w, h), owned: true)

proc create*(T: type gen_qsize_types.QSizeF,
    param1: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQSizeF_new4(param1.h), owned: true)

