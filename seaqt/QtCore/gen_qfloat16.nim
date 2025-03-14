import ./qtcore_pkg

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


import ./gen_qfloat16_types
export gen_qfloat16_types


type cqfloat16*{.exportc: "qfloat16", incompleteStruct.} = object

proc fcqfloat16_isInf(self: pointer): bool {.importc: "qfloat16_isInf".}
proc fcqfloat16_isNaN(self: pointer): bool {.importc: "qfloat16_isNaN".}
proc fcqfloat16_isFinite(self: pointer): bool {.importc: "qfloat16_isFinite".}
proc fcqfloat16_fpClassify(self: pointer): cint {.importc: "qfloat16_fpClassify".}
proc fcqfloat16_isNormal(self: pointer): bool {.importc: "qfloat16_isNormal".}
proc fcqfloat16_new(): ptr cqfloat16 {.importc: "qfloat16_new".}
proc fcqfloat16_new2(param1: cint): ptr cqfloat16 {.importc: "qfloat16_new2".}
proc fcqfloat16_new3(f: float32): ptr cqfloat16 {.importc: "qfloat16_new3".}

proc isInf*(self: gen_qfloat16_types.qfloat16): bool =
  fcqfloat16_isInf(self.h)

proc isNaN*(self: gen_qfloat16_types.qfloat16): bool =
  fcqfloat16_isNaN(self.h)

proc isFinite*(self: gen_qfloat16_types.qfloat16): bool =
  fcqfloat16_isFinite(self.h)

proc fpClassify*(self: gen_qfloat16_types.qfloat16): cint =
  fcqfloat16_fpClassify(self.h)

proc isNormal*(self: gen_qfloat16_types.qfloat16): bool =
  fcqfloat16_isNormal(self.h)

proc create*(T: type gen_qfloat16_types.qfloat16): gen_qfloat16_types.qfloat16 =
  gen_qfloat16_types.qfloat16(h: fcqfloat16_new(), owned: true)

proc create*(T: type gen_qfloat16_types.qfloat16,
    param1: cint): gen_qfloat16_types.qfloat16 =
  gen_qfloat16_types.qfloat16(h: fcqfloat16_new2(cint(param1)), owned: true)

proc create*(T: type gen_qfloat16_types.qfloat16,
    f: float32): gen_qfloat16_types.qfloat16 =
  gen_qfloat16_types.qfloat16(h: fcqfloat16_new3(f), owned: true)

