import ./Qt5Core_libs

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
proc fcQMargins_operatorPlusAssign(self: pointer, margins: pointer): pointer {.importc: "QMargins_operatorPlusAssign".}
proc fcQMargins_operatorMinusAssign(self: pointer, margins: pointer): pointer {.importc: "QMargins_operatorMinusAssign".}
proc fcQMargins_operatorPlusAssignWithInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorPlusAssignWithInt".}
proc fcQMargins_operatorMinusAssignWithInt(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorMinusAssignWithInt".}
proc fcQMargins_operatorMultiplyAssign(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorMultiplyAssign".}
proc fcQMargins_operatorDivideAssign(self: pointer, param1: cint): pointer {.importc: "QMargins_operatorDivideAssign".}
proc fcQMargins_operatorMultiplyAssignWithQreal(self: pointer, param1: float64): pointer {.importc: "QMargins_operatorMultiplyAssignWithQreal".}
proc fcQMargins_operatorDivideAssignWithQreal(self: pointer, param1: float64): pointer {.importc: "QMargins_operatorDivideAssignWithQreal".}
proc fcQMargins_new(): ptr cQMargins {.importc: "QMargins_new".}
proc fcQMargins_new2(left: cint, top: cint, right: cint, bottom: cint): ptr cQMargins {.importc: "QMargins_new2".}
proc fcQMargins_new3(param1: pointer): ptr cQMargins {.importc: "QMargins_new3".}
proc fcQMarginsF_isNull(self: pointer): bool {.importc: "QMarginsF_isNull".}
proc fcQMarginsF_left(self: pointer): float64 {.importc: "QMarginsF_left".}
proc fcQMarginsF_top(self: pointer): float64 {.importc: "QMarginsF_top".}
proc fcQMarginsF_right(self: pointer): float64 {.importc: "QMarginsF_right".}
proc fcQMarginsF_bottom(self: pointer): float64 {.importc: "QMarginsF_bottom".}
proc fcQMarginsF_setLeft(self: pointer, left: float64): void {.importc: "QMarginsF_setLeft".}
proc fcQMarginsF_setTop(self: pointer, top: float64): void {.importc: "QMarginsF_setTop".}
proc fcQMarginsF_setRight(self: pointer, right: float64): void {.importc: "QMarginsF_setRight".}
proc fcQMarginsF_setBottom(self: pointer, bottom: float64): void {.importc: "QMarginsF_setBottom".}
proc fcQMarginsF_operatorPlusAssign(self: pointer, margins: pointer): pointer {.importc: "QMarginsF_operatorPlusAssign".}
proc fcQMarginsF_operatorMinusAssign(self: pointer, margins: pointer): pointer {.importc: "QMarginsF_operatorMinusAssign".}
proc fcQMarginsF_operatorPlusAssignWithAddend(self: pointer, addend: float64): pointer {.importc: "QMarginsF_operatorPlusAssignWithAddend".}
proc fcQMarginsF_operatorMinusAssignWithSubtrahend(self: pointer, subtrahend: float64): pointer {.importc: "QMarginsF_operatorMinusAssignWithSubtrahend".}
proc fcQMarginsF_operatorMultiplyAssign(self: pointer, factor: float64): pointer {.importc: "QMarginsF_operatorMultiplyAssign".}
proc fcQMarginsF_operatorDivideAssign(self: pointer, divisor: float64): pointer {.importc: "QMarginsF_operatorDivideAssign".}
proc fcQMarginsF_toMargins(self: pointer): pointer {.importc: "QMarginsF_toMargins".}
proc fcQMarginsF_new(): ptr cQMarginsF {.importc: "QMarginsF_new".}
proc fcQMarginsF_new2(left: float64, top: float64, right: float64, bottom: float64): ptr cQMarginsF {.importc: "QMarginsF_new2".}
proc fcQMarginsF_new3(margins: pointer): ptr cQMarginsF {.importc: "QMarginsF_new3".}
proc fcQMarginsF_new4(param1: pointer): ptr cQMarginsF {.importc: "QMarginsF_new4".}

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
  gen_qmargins_types.QMargins(h: fcQMargins_operatorPlusAssign(self.h, margins.h), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMargins, margins: gen_qmargins_types.QMargins): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMinusAssign(self.h, margins.h), owned: false)

proc operatorPlusAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorPlusAssignWithInt(self.h, param1), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMinusAssignWithInt(self.h, param1), owned: false)

proc operatorMultiplyAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMultiplyAssign(self.h, param1), owned: false)

proc operatorDivideAssign*(self: gen_qmargins_types.QMargins, param1: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorDivideAssign(self.h, param1), owned: false)

proc operatorMultiplyAssign*(self: gen_qmargins_types.QMargins, param1: float64): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorMultiplyAssignWithQreal(self.h, param1), owned: false)

proc operatorDivideAssign*(self: gen_qmargins_types.QMargins, param1: float64): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_operatorDivideAssignWithQreal(self.h, param1), owned: false)

proc create*(T: type gen_qmargins_types.QMargins): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_new(), owned: true)

proc create*(T: type gen_qmargins_types.QMargins,
    left: cint, top: cint, right: cint, bottom: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_new2(left, top, right, bottom), owned: true)

proc create*(T: type gen_qmargins_types.QMargins,
    param1: gen_qmargins_types.QMargins): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMargins_new3(param1.h), owned: true)

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

proc setLeft*(self: gen_qmargins_types.QMarginsF, left: float64): void =
  fcQMarginsF_setLeft(self.h, left)

proc setTop*(self: gen_qmargins_types.QMarginsF, top: float64): void =
  fcQMarginsF_setTop(self.h, top)

proc setRight*(self: gen_qmargins_types.QMarginsF, right: float64): void =
  fcQMarginsF_setRight(self.h, right)

proc setBottom*(self: gen_qmargins_types.QMarginsF, bottom: float64): void =
  fcQMarginsF_setBottom(self.h, bottom)

proc operatorPlusAssign*(self: gen_qmargins_types.QMarginsF, margins: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorPlusAssign(self.h, margins.h), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMarginsF, margins: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorMinusAssign(self.h, margins.h), owned: false)

proc operatorPlusAssign*(self: gen_qmargins_types.QMarginsF, addend: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorPlusAssignWithAddend(self.h, addend), owned: false)

proc operatorMinusAssign*(self: gen_qmargins_types.QMarginsF, subtrahend: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorMinusAssignWithSubtrahend(self.h, subtrahend), owned: false)

proc operatorMultiplyAssign*(self: gen_qmargins_types.QMarginsF, factor: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorMultiplyAssign(self.h, factor), owned: false)

proc operatorDivideAssign*(self: gen_qmargins_types.QMarginsF, divisor: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_operatorDivideAssign(self.h, divisor), owned: false)

proc toMargins*(self: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQMarginsF_toMargins(self.h), owned: true)

proc create*(T: type gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_new(), owned: true)

proc create*(T: type gen_qmargins_types.QMarginsF,
    left: float64, top: float64, right: float64, bottom: float64): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_new2(left, top, right, bottom), owned: true)

proc create*(T: type gen_qmargins_types.QMarginsF,
    margins: gen_qmargins_types.QMargins): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_new3(margins.h), owned: true)

proc create*(T: type gen_qmargins_types.QMarginsF,
    param1: gen_qmargins_types.QMarginsF): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQMarginsF_new4(param1.h), owned: true)

