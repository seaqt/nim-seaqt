import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qrandom.cpp", cflags).}


import ./gen_qrandom_types
export gen_qrandom_types


type cQRandomGenerator*{.exportc: "QRandomGenerator", incompleteStruct.} = object
type cQRandomGenerator64*{.exportc: "QRandomGenerator64", incompleteStruct.} = object

proc fcQRandomGenerator_operatorAssign(self: pointer, other: pointer): void {.importc: "QRandomGenerator_operatorAssign".}
proc fcQRandomGenerator_generate(self: pointer, ): cuint {.importc: "QRandomGenerator_generate".}
proc fcQRandomGenerator_generate64(self: pointer, ): culonglong {.importc: "QRandomGenerator_generate64".}
proc fcQRandomGenerator_generateDouble(self: pointer, ): float64 {.importc: "QRandomGenerator_generateDouble".}
proc fcQRandomGenerator_bounded(self: pointer, highest: float64): float64 {.importc: "QRandomGenerator_bounded".}
proc fcQRandomGenerator_boundedWithHighest(self: pointer, highest: cuint): cuint {.importc: "QRandomGenerator_boundedWithHighest".}
proc fcQRandomGenerator_bounded2(self: pointer, lowest: cuint, highest: cuint): cuint {.importc: "QRandomGenerator_bounded2".}
proc fcQRandomGenerator_bounded3(self: pointer, highest: cint): cint {.importc: "QRandomGenerator_bounded3".}
proc fcQRandomGenerator_bounded4(self: pointer, lowest: cint, highest: cint): cint {.importc: "QRandomGenerator_bounded4".}
proc fcQRandomGenerator_bounded5(self: pointer, highest: culonglong): culonglong {.importc: "QRandomGenerator_bounded5".}
proc fcQRandomGenerator_bounded6(self: pointer, lowest: culonglong, highest: culonglong): culonglong {.importc: "QRandomGenerator_bounded6".}
proc fcQRandomGenerator_bounded7(self: pointer, highest: clonglong): clonglong {.importc: "QRandomGenerator_bounded7".}
proc fcQRandomGenerator_bounded8(self: pointer, lowest: clonglong, highest: clonglong): clonglong {.importc: "QRandomGenerator_bounded8".}
proc fcQRandomGenerator_bounded9(self: pointer, lowest: cint, highest: clonglong): clonglong {.importc: "QRandomGenerator_bounded9".}
proc fcQRandomGenerator_bounded10(self: pointer, lowest: clonglong, highest: cint): clonglong {.importc: "QRandomGenerator_bounded10".}
proc fcQRandomGenerator_bounded11(self: pointer, lowest: cuint, highest: culonglong): culonglong {.importc: "QRandomGenerator_bounded11".}
proc fcQRandomGenerator_bounded12(self: pointer, lowest: culonglong, highest: cuint): culonglong {.importc: "QRandomGenerator_bounded12".}
proc fcQRandomGenerator_generate2(self: pointer, begin: ptr cuint, endVal: ptr cuint): void {.importc: "QRandomGenerator_generate2".}
proc fcQRandomGenerator_operatorCall(self: pointer, ): cuint {.importc: "QRandomGenerator_operatorCall".}
proc fcQRandomGenerator_seed(self: pointer, ): void {.importc: "QRandomGenerator_seed".}
proc fcQRandomGenerator_discardX(self: pointer, z: culonglong): void {.importc: "QRandomGenerator_discard".}
proc fcQRandomGenerator_min(): cuint {.importc: "QRandomGenerator_min".}
proc fcQRandomGenerator_max(): cuint {.importc: "QRandomGenerator_max".}
proc fcQRandomGenerator_system(): pointer {.importc: "QRandomGenerator_system".}
proc fcQRandomGenerator_global(): pointer {.importc: "QRandomGenerator_global".}
proc fcQRandomGenerator_securelySeeded(): pointer {.importc: "QRandomGenerator_securelySeeded".}
proc fcQRandomGenerator_seed1(self: pointer, s: cuint): void {.importc: "QRandomGenerator_seed1".}
proc fcQRandomGenerator_new(): ptr cQRandomGenerator {.importc: "QRandomGenerator_new".}
proc fcQRandomGenerator_new2(seedBuffer: ptr cuint, len: int64): ptr cQRandomGenerator {.importc: "QRandomGenerator_new2".}
proc fcQRandomGenerator_new3(begin: ptr cuint, endVal: ptr cuint): ptr cQRandomGenerator {.importc: "QRandomGenerator_new3".}
proc fcQRandomGenerator_new4(other: pointer): ptr cQRandomGenerator {.importc: "QRandomGenerator_new4".}
proc fcQRandomGenerator_new5(seedValue: cuint): ptr cQRandomGenerator {.importc: "QRandomGenerator_new5".}
proc fcQRandomGenerator_delete(self: pointer) {.importc: "QRandomGenerator_delete".}
proc fcQRandomGenerator64_generate(self: pointer, ): culonglong {.importc: "QRandomGenerator64_generate".}
proc fcQRandomGenerator64_operatorCall(self: pointer, ): culonglong {.importc: "QRandomGenerator64_operatorCall".}
proc fcQRandomGenerator64_discardX(self: pointer, z: culonglong): void {.importc: "QRandomGenerator64_discard".}
proc fcQRandomGenerator64_min(): culonglong {.importc: "QRandomGenerator64_min".}
proc fcQRandomGenerator64_max(): culonglong {.importc: "QRandomGenerator64_max".}
proc fcQRandomGenerator64_system(): pointer {.importc: "QRandomGenerator64_system".}
proc fcQRandomGenerator64_global(): pointer {.importc: "QRandomGenerator64_global".}
proc fcQRandomGenerator64_securelySeeded(): pointer {.importc: "QRandomGenerator64_securelySeeded".}
proc fcQRandomGenerator64_operatorAssign(self: pointer, param1: pointer): void {.importc: "QRandomGenerator64_operatorAssign".}
proc fcQRandomGenerator64_new(): ptr cQRandomGenerator64 {.importc: "QRandomGenerator64_new".}
proc fcQRandomGenerator64_new2(seedBuffer: ptr cuint, len: int64): ptr cQRandomGenerator64 {.importc: "QRandomGenerator64_new2".}
proc fcQRandomGenerator64_new3(begin: ptr cuint, endVal: ptr cuint): ptr cQRandomGenerator64 {.importc: "QRandomGenerator64_new3".}
proc fcQRandomGenerator64_new4(other: pointer): ptr cQRandomGenerator64 {.importc: "QRandomGenerator64_new4".}
proc fcQRandomGenerator64_new5(param1: pointer): ptr cQRandomGenerator64 {.importc: "QRandomGenerator64_new5".}
proc fcQRandomGenerator64_new6(seedValue: cuint): ptr cQRandomGenerator64 {.importc: "QRandomGenerator64_new6".}
proc fcQRandomGenerator64_delete(self: pointer) {.importc: "QRandomGenerator64_delete".}

proc operatorAssign*(self: gen_qrandom_types.QRandomGenerator, other: gen_qrandom_types.QRandomGenerator): void =
  fcQRandomGenerator_operatorAssign(self.h, other.h)

proc generate*(self: gen_qrandom_types.QRandomGenerator, ): cuint =
  fcQRandomGenerator_generate(self.h)

proc generate64*(self: gen_qrandom_types.QRandomGenerator, ): culonglong =
  fcQRandomGenerator_generate64(self.h)

proc generateDouble*(self: gen_qrandom_types.QRandomGenerator, ): float64 =
  fcQRandomGenerator_generateDouble(self.h)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, highest: float64): float64 =
  fcQRandomGenerator_bounded(self.h, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, highest: cuint): cuint =
  fcQRandomGenerator_boundedWithHighest(self.h, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: cuint, highest: cuint): cuint =
  fcQRandomGenerator_bounded2(self.h, lowest, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, highest: cint): cint =
  fcQRandomGenerator_bounded3(self.h, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: cint, highest: cint): cint =
  fcQRandomGenerator_bounded4(self.h, lowest, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, highest: culonglong): culonglong =
  fcQRandomGenerator_bounded5(self.h, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: culonglong, highest: culonglong): culonglong =
  fcQRandomGenerator_bounded6(self.h, lowest, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, highest: clonglong): clonglong =
  fcQRandomGenerator_bounded7(self.h, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: clonglong, highest: clonglong): clonglong =
  fcQRandomGenerator_bounded8(self.h, lowest, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: cint, highest: clonglong): clonglong =
  fcQRandomGenerator_bounded9(self.h, lowest, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: clonglong, highest: cint): clonglong =
  fcQRandomGenerator_bounded10(self.h, lowest, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: cuint, highest: culonglong): culonglong =
  fcQRandomGenerator_bounded11(self.h, lowest, highest)

proc bounded*(self: gen_qrandom_types.QRandomGenerator, lowest: culonglong, highest: cuint): culonglong =
  fcQRandomGenerator_bounded12(self.h, lowest, highest)

proc generate*(self: gen_qrandom_types.QRandomGenerator, begin: ptr cuint, endVal: ptr cuint): void =
  fcQRandomGenerator_generate2(self.h, begin, endVal)

proc operatorCall*(self: gen_qrandom_types.QRandomGenerator, ): cuint =
  fcQRandomGenerator_operatorCall(self.h)

proc seed*(self: gen_qrandom_types.QRandomGenerator, ): void =
  fcQRandomGenerator_seed(self.h)

proc discardX*(self: gen_qrandom_types.QRandomGenerator, z: culonglong): void =
  fcQRandomGenerator_discardX(self.h, z)

proc min*(_: type gen_qrandom_types.QRandomGenerator, ): cuint =
  fcQRandomGenerator_min()

proc max*(_: type gen_qrandom_types.QRandomGenerator, ): cuint =
  fcQRandomGenerator_max()

proc system*(_: type gen_qrandom_types.QRandomGenerator, ): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_system())

proc global*(_: type gen_qrandom_types.QRandomGenerator, ): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_global())

proc securelySeeded*(_: type gen_qrandom_types.QRandomGenerator, ): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_securelySeeded())

proc seed*(self: gen_qrandom_types.QRandomGenerator, s: cuint): void =
  fcQRandomGenerator_seed1(self.h, s)

proc create*(T: type gen_qrandom_types.QRandomGenerator): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_new())

proc create*(T: type gen_qrandom_types.QRandomGenerator,
    seedBuffer: ptr cuint, len: int64): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_new2(seedBuffer, len))

proc create*(T: type gen_qrandom_types.QRandomGenerator,
    begin: ptr cuint, endVal: ptr cuint): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_new3(begin, endVal))

proc create*(T: type gen_qrandom_types.QRandomGenerator,
    other: gen_qrandom_types.QRandomGenerator): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_new4(other.h))

proc create*(T: type gen_qrandom_types.QRandomGenerator,
    seedValue: cuint): gen_qrandom_types.QRandomGenerator =
  gen_qrandom_types.QRandomGenerator(h: fcQRandomGenerator_new5(seedValue))

proc delete*(self: gen_qrandom_types.QRandomGenerator) =
  fcQRandomGenerator_delete(self.h)
proc generate*(self: gen_qrandom_types.QRandomGenerator64, ): culonglong =
  fcQRandomGenerator64_generate(self.h)

proc operatorCall*(self: gen_qrandom_types.QRandomGenerator64, ): culonglong =
  fcQRandomGenerator64_operatorCall(self.h)

proc discardX*(self: gen_qrandom_types.QRandomGenerator64, z: culonglong): void =
  fcQRandomGenerator64_discardX(self.h, z)

proc min*(_: type gen_qrandom_types.QRandomGenerator64, ): culonglong =
  fcQRandomGenerator64_min()

proc max*(_: type gen_qrandom_types.QRandomGenerator64, ): culonglong =
  fcQRandomGenerator64_max()

proc system*(_: type gen_qrandom_types.QRandomGenerator64, ): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_system())

proc global*(_: type gen_qrandom_types.QRandomGenerator64, ): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_global())

proc securelySeeded*(_: type gen_qrandom_types.QRandomGenerator64, ): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_securelySeeded())

proc operatorAssign*(self: gen_qrandom_types.QRandomGenerator64, param1: gen_qrandom_types.QRandomGenerator64): void =
  fcQRandomGenerator64_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qrandom_types.QRandomGenerator64): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_new())

proc create*(T: type gen_qrandom_types.QRandomGenerator64,
    seedBuffer: ptr cuint, len: int64): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_new2(seedBuffer, len))

proc create*(T: type gen_qrandom_types.QRandomGenerator64,
    begin: ptr cuint, endVal: ptr cuint): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_new3(begin, endVal))

proc create*(T: type gen_qrandom_types.QRandomGenerator64,
    other: gen_qrandom_types.QRandomGenerator): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_new4(other.h))

proc create*(T: type gen_qrandom_types.QRandomGenerator64,
    param1: gen_qrandom_types.QRandomGenerator64): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_new5(param1.h))

proc create*(T: type gen_qrandom_types.QRandomGenerator64,
    seedValue: cuint): gen_qrandom_types.QRandomGenerator64 =
  gen_qrandom_types.QRandomGenerator64(h: fcQRandomGenerator64_new6(seedValue))

proc delete*(self: gen_qrandom_types.QRandomGenerator64) =
  fcQRandomGenerator64_delete(self.h)
