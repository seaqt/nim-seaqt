import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


import ./gen_qflags_types
export gen_qflags_types


type cQFlag*{.exportc: "QFlag", incompleteStruct.} = object
type cQIncompatibleFlag*{.exportc: "QIncompatibleFlag", incompleteStruct.} = object

proc fcQFlag_ToInt(self: pointer): cint {.importc: "QFlag_ToInt".}
proc fcQFlag_ToUnsignedInt(self: pointer): cuint {.importc: "QFlag_ToUnsignedInt".}
proc fcQFlag_new(value: cint): ptr cQFlag {.importc: "QFlag_new".}
proc fcQFlag_new2(value: cuint): ptr cQFlag {.importc: "QFlag_new2".}
proc fcQFlag_new3(value: cshort): ptr cQFlag {.importc: "QFlag_new3".}
proc fcQFlag_new4(value: cushort): ptr cQFlag {.importc: "QFlag_new4".}
proc fcQFlag_delete(self: pointer) {.importc: "QFlag_delete".}
proc fcQIncompatibleFlag_ToInt(self: pointer): cint {.importc: "QIncompatibleFlag_ToInt".}
proc fcQIncompatibleFlag_new(i: cint): ptr cQIncompatibleFlag {.importc: "QIncompatibleFlag_new".}
proc fcQIncompatibleFlag_new2(param1: pointer): ptr cQIncompatibleFlag {.importc: "QIncompatibleFlag_new2".}
proc fcQIncompatibleFlag_delete(self: pointer) {.importc: "QIncompatibleFlag_delete".}

proc ToInt*(self: gen_qflags_types.QFlag): cint =
  fcQFlag_ToInt(self.h)

proc ToUnsignedInt*(self: gen_qflags_types.QFlag): cuint =
  fcQFlag_ToUnsignedInt(self.h)

proc create*(T: type gen_qflags_types.QFlag,
    value: cint): gen_qflags_types.QFlag =
  let tmp = gen_qflags_types.QFlag(h: fcQFlag_new(value))
  tmp
proc create*(T: type gen_qflags_types.QFlag,
    value: cuint): gen_qflags_types.QFlag =
  let tmp = gen_qflags_types.QFlag(h: fcQFlag_new2(value))
  tmp
proc create*(T: type gen_qflags_types.QFlag,
    value: cshort): gen_qflags_types.QFlag =
  let tmp = gen_qflags_types.QFlag(h: fcQFlag_new3(value))
  tmp
proc create*(T: type gen_qflags_types.QFlag,
    value: cushort): gen_qflags_types.QFlag =
  let tmp = gen_qflags_types.QFlag(h: fcQFlag_new4(value))
  tmp
proc delete*(self: gen_qflags_types.QFlag) =
  fcQFlag_delete(self.h)
proc ToInt*(self: gen_qflags_types.QIncompatibleFlag): cint =
  fcQIncompatibleFlag_ToInt(self.h)

proc create*(T: type gen_qflags_types.QIncompatibleFlag,
    i: cint): gen_qflags_types.QIncompatibleFlag =
  let tmp = gen_qflags_types.QIncompatibleFlag(h: fcQIncompatibleFlag_new(i))
  tmp
proc create*(T: type gen_qflags_types.QIncompatibleFlag,
    param1: gen_qflags_types.QIncompatibleFlag): gen_qflags_types.QIncompatibleFlag =
  let tmp = gen_qflags_types.QIncompatibleFlag(h: fcQIncompatibleFlag_new2(param1.h))
  tmp
proc delete*(self: gen_qflags_types.QIncompatibleFlag) =
  fcQIncompatibleFlag_delete(self.h)
