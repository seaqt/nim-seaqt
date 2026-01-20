import ./qtcore_pkg

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


import ./gen_qmargins_types
export gen_qmargins_types


type cQMargins*{.exportc: "QMargins", incompleteStruct.} = object
type cQMarginsF*{.exportc: "QMarginsF", incompleteStruct.} = object

proc fcQMargins_isNull(self: pointer): bool {.importc: "QMargins_isNull".}
proc fcQMargins_left(self: pointer): cint {.importc: "QMargins_left".}
proc fcQMargins_top(self: pointer): cint {.importc: "QMargins_top".}
proc fcQMargins_right(self: pointer): cint {.importc: "QMargins_right".}
proc fcQMargins_bottom(self: pointer): cint {.importc: "QMargins_bottom".}
proc fcQMargins_setLeft(self: pointer, left: cint): void {.importc: "QMargins_setLeft".}
proc fcQMargins_setTop(self: pointer, top: cint): void {.importc: "QMargins_setTop".}
proc fcQMargins_setRight(self: pointer, right: cint): void {.importc: "QMargins_setRight".}
proc fcQMargins_setBottom(self: pointer, bottom: cint): void {.importc: "QMargins_setBottom".}
proc fcQMargins_operatorPlusAssign_QMargins(self: pointer, margins: pointer): pointer {.importc: "QMargins_operatorPlusAssign_QMargins".}
proc fcQMargins_operatorMinusAssign_QMargins(self: pointer, margins: pointer): pointer {.importc: "QMargins_operatorMinusAssign_QMargins".}
proc fcQMargins_operatorPlusAssignInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorPlusAssign_int".}
proc fcQMargins_operatorMinusAssignInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorMinusAssign_int".}
proc fcQMargins_operatorMultiplyAssignInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorMultiplyAssign_int".}
proc fcQMargins_operatorDivideAssignInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorDivideAssign_int".}
proc fcQMargins_operatorMultiplyAssignQreal(self: pointer, param1: float64): pointer {.importc: "QMargins_operatorMultiplyAssign_qreal".}
proc fcQMargins_operatorDivideAssignQreal(self: pointer, param1: float64): pointer {.importc: "QMargins_operatorDivideAssign_qreal".}
proc fcQMargins_toMarginsF(self: pointer): pointer {.importc: "QMargins_toMarginsF".}
proc fcQMargins_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMargins_operatorAssign".}
proc fcQMargins_new(): ptr cQMargins {.importc: "QMargins_new".}
proc fcQMargins_new2(left: cint, top: cint, right: cint, bottom: cint): ptr cQMargins {.importc: "QMargins_new_left_top_right_bottom".}
proc fcQMargins_new3(fromVal: pointer): ptr cQMargins {.importc: "QMargins_new_from".}
proc fcQMarginsF_isNull(self: pointer): bool {.importc: "QMarginsF_isNull".}
proc fcQMarginsF_left(self: pointer): float64 {.importc: "QMarginsF_left".}
proc fcQMarginsF_top(self: pointer): float64 {.importc: "QMarginsF_top".}
proc fcQMarginsF_right(self: pointer): float64 {.importc: "QMarginsF_right".}
proc fcQMarginsF_bottom(self: pointer): float64 {.importc: "QMarginsF_bottom".}
proc fcQMarginsF_setLeft(self: pointer, aleft: float64): void {.importc: "QMarginsF_setLeft".}
proc fcQMarginsF_setTop(self: pointer, atop: float64): void {.importc: "QMarginsF_setTop".}
proc fcQMarginsF_setRight(self: pointer, aright: float64): void {.importc: "QMarginsF_setRight".}
proc fcQMarginsF_setBottom(self: pointer, abottom: float64): void {.importc: "QMarginsF_setBottom".}
proc fcQMarginsF_operatorPlusAssignMargins(self: pointer, margins: pointer): pointer {.importc: "QMarginsF_operatorPlusAssign_margins".}
proc fcQMarginsF_operatorMinusAssignMargins(self: pointer, margins: pointer): pointer {.importc: "QMarginsF_operatorMinusAssign_margins".}
proc fcQMarginsF_operatorPlusAssignAddend(self: pointer, addend: float64): pointer {.importc: "QMarginsF_operatorPlusAssign_addend".}
proc fcQMarginsF_operatorMinusAssignSubtrahend(self: pointer, subtrahend: float64): pointer {.importc: "QMarginsF_operatorMinusAssign_subtrahend".}
proc fcQMarginsF_operatorMultiplyAssign(self: pointer, factor: float64): pointer {.importc: "QMarginsF_operatorMultiplyAssign".}
proc fcQMarginsF_operatorDivideAssign(self: pointer, divisor: float64): pointer {.importc: "QMarginsF_operatorDivideAssign".}
proc fcQMarginsF_toMargins(self: pointer): pointer {.importc: "QMarginsF_toMargins".}
proc fcQMarginsF_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QMarginsF_operatorAssign".}
proc fcQMarginsF_new(): ptr cQMarginsF {.importc: "QMarginsF_new".}
proc fcQMarginsF_new2(left: float64, top: float64, right: float64, bottom: float64): ptr cQMarginsF {.importc: "QMarginsF_new_left_top_right_bottom".}
proc fcQMarginsF_new3(margins: pointer): ptr cQMarginsF {.importc: "QMarginsF_new_margins".}
proc fcQMarginsF_new4(fromVal: pointer): ptr cQMarginsF {.importc: "QMarginsF_new_from".}

proc isNull*(self: gen_qmargins_types.QMargins): bool =
  fcQMargins_isNull(self.h)

proc left*(self: gen_qmargins_types.QMargins): cint =
  fcQMargins_left(self.h)

proc top*(self: gen_qmargins_types.QMargins): cint =
  fcQMargins_top(self.h)

proc right*(self: gen_qmargins_types.QMargins): cint =
  fcQMargins_right(self.h)

proc bottom*(self: gen_qmargins_types.QMargins): cint =
  fcQMargins_bottom(self.h)

proc setLeft*(self: gen_qmargins_types.QMargins, left: cint): void =
  fcQMargins_setLeft(self.h, left)

proc setTop*(self: gen_qmargins_types.QMargins, top: cint): void =
  fcQMargins_setTop(self.h, top)

proc setRight*(self: gen_qmargins_types.QMargins, right: cint): void =
  fcQMargins_setRight(self.h, right)

proc setBottom*(self: gen_qmargins_types.QMargins, bottom: cint): void =
  fcQMargins_setBottom(self.h, bottom)

proc operatorPlusAssign*(self: gen_qmargins_types.QMargins, margins: gen_qmargins_types.QMargins): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorPlusAssign_QMargins(self.h, margins.h), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMargins, margins: gen_qmargins_types.QMargins): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMinusAssign_QMargins(self.h, margins.h), owned: false)

proc operatorPlusAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorPlusAssignInt(self.h, param1), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMinusAssignInt(self.h, param1), owned: false)

proc operatorMultiplyAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMultiplyAssignInt(self.h, param1), owned: false)

proc operatorDivideAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorDivideAssignInt(self.h, param1), owned: false)

proc operatorMultiplyAssign*(self: gen_qmargins_types.QMargins, param1: float64): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMultiplyAssignQreal(self.h, param1), owned: false)

proc operatorDivideAssign*(self: gen_qmargins_types.QMargins, param1: float64): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorDivideAssignQreal(self.h, param1), owned: false)

proc toMarginsF*(self: gen_qmargins_types.QMargins): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMargins_toMarginsF(self.h), owned: true)

proc operatorAssign*(self: gen_qmargins_types.QMargins, fromVal: gen_qmargins_types.QMargins): void =
  fcQMargins_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qmargins_types.QMargins): gen_qmargins_types.QMargins =
  let tmp = gen_qmargins_types.QMargins(h: fcQMargins_new(), owned: true)
  tmp
proc create*(T: type gen_qmargins_types.QMargins,
    left: cint, top: cint, right: cint, bottom: cint): gen_qmargins_types.QMargins =
  let tmp = gen_qmargins_types.QMargins(h: fcQMargins_new2(left, top, right, bottom), owned: true)
  tmp
proc create*(T: type gen_qmargins_types.QMargins,
    fromVal: gen_qmargins_types.QMargins): gen_qmargins_types.QMargins =
  let tmp = gen_qmargins_types.QMargins(h: fcQMargins_new3(fromVal.h), owned: true)
  tmp
proc isNull*(self: gen_qmargins_types.QMarginsF): bool =
  fcQMarginsF_isNull(self.h)

proc left*(self: gen_qmargins_types.QMarginsF): float64 =
  fcQMarginsF_left(self.h)

proc top*(self: gen_qmargins_types.QMarginsF): float64 =
  fcQMarginsF_top(self.h)

proc right*(self: gen_qmargins_types.QMarginsF): float64 =
  fcQMarginsF_right(self.h)

proc bottom*(self: gen_qmargins_types.QMarginsF): float64 =
  fcQMarginsF_bottom(self.h)

proc setLeft*(self: gen_qmargins_types.QMarginsF, aleft: float64): void =
  fcQMarginsF_setLeft(self.h, aleft)

proc setTop*(self: gen_qmargins_types.QMarginsF, atop: float64): void =
  fcQMarginsF_setTop(self.h, atop)

proc setRight*(self: gen_qmargins_types.QMarginsF, aright: float64): void =
  fcQMarginsF_setRight(self.h, aright)

proc setBottom*(self: gen_qmargins_types.QMarginsF, abottom: float64): void =
  fcQMarginsF_setBottom(self.h, abottom)

proc operatorPlusAssign*(self: gen_qmargins_types.QMarginsF, margins: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorPlusAssignMargins(self.h, margins.h), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMarginsF, margins: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorMinusAssignMargins(self.h, margins.h), owned: false)

proc operatorPlusAssign*(self: gen_qmargins_types.QMarginsF, addend: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorPlusAssignAddend(self.h, addend), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMarginsF, subtrahend: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorMinusAssignSubtrahend(self.h, subtrahend), owned: false)

proc operatorMultiplyAssign*(self: gen_qmargins_types.QMarginsF, factor: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorMultiplyAssign(self.h, factor), owned: false)

proc operatorDivideAssign*(self: gen_qmargins_types.QMarginsF, divisor: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorDivideAssign(self.h, divisor), owned: false)

proc toMargins*(self: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMarginsF_toMargins(self.h), owned: true)

proc operatorAssign*(self: gen_qmargins_types.QMarginsF, fromVal: gen_qmargins_types.QMarginsF): void =
  fcQMarginsF_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  let tmp = gen_qmargins_types.QMarginsF(h: fcQMarginsF_new(), owned: true)
  tmp
proc create*(T: type gen_qmargins_types.QMarginsF,
    left: float64, top: float64, right: float64, bottom: float64): gen_qmargins_types.QMarginsF =
  let tmp = gen_qmargins_types.QMarginsF(h: fcQMarginsF_new2(left, top, right, bottom), owned: true)
  tmp
proc create*(T: type gen_qmargins_types.QMarginsF,
    margins: gen_qmargins_types.QMargins): gen_qmargins_types.QMarginsF =
  let tmp = gen_qmargins_types.QMarginsF(h: fcQMarginsF_new3(margins.h), owned: true)
  tmp
proc create*(T: type gen_qmargins_types.QMarginsF,
    fromVal: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  let tmp = gen_qmargins_types.QMarginsF(h: fcQMarginsF_new4(fromVal.h), owned: true)
  tmp
