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


import ./gen_qtyperevision_types
export gen_qtyperevision_types


type cQTypeRevision*{.exportc: "QTypeRevision", incompleteStruct.} = object

proc fcQTypeRevision_zero(): pointer {.importc: "QTypeRevision_zero".}
proc fcQTypeRevision_hasMajorVersion(self: pointer): bool {.importc: "QTypeRevision_hasMajorVersion".}
proc fcQTypeRevision_majorVersion(self: pointer): uint8 {.importc: "QTypeRevision_majorVersion".}
proc fcQTypeRevision_hasMinorVersion(self: pointer): bool {.importc: "QTypeRevision_hasMinorVersion".}
proc fcQTypeRevision_minorVersion(self: pointer): uint8 {.importc: "QTypeRevision_minorVersion".}
proc fcQTypeRevision_isValid(self: pointer): bool {.importc: "QTypeRevision_isValid".}
proc fcQTypeRevision_new(): ptr cQTypeRevision {.importc: "QTypeRevision_new".}
proc fcQTypeRevision_new2(fromVal: pointer): ptr cQTypeRevision {.importc: "QTypeRevision_new_from".}

proc zero*(_: type gen_qtyperevision_types.QTypeRevision): gen_qtyperevision_types.QTypeRevision =
  gen_qtyperevision_types.QTypeRevision(h: fcQTypeRevision_zero(), owned: true)

proc hasMajorVersion*(self: gen_qtyperevision_types.QTypeRevision): bool =
  fcQTypeRevision_hasMajorVersion(self.h)

proc majorVersion*(self: gen_qtyperevision_types.QTypeRevision): uint8 =
  fcQTypeRevision_majorVersion(self.h)

proc hasMinorVersion*(self: gen_qtyperevision_types.QTypeRevision): bool =
  fcQTypeRevision_hasMinorVersion(self.h)

proc minorVersion*(self: gen_qtyperevision_types.QTypeRevision): uint8 =
  fcQTypeRevision_minorVersion(self.h)

proc isValid*(self: gen_qtyperevision_types.QTypeRevision): bool =
  fcQTypeRevision_isValid(self.h)

proc create*(T: type gen_qtyperevision_types.QTypeRevision): gen_qtyperevision_types.QTypeRevision =
  let tmp = gen_qtyperevision_types.QTypeRevision(h: fcQTypeRevision_new(), owned: true)
  tmp
proc create*(T: type gen_qtyperevision_types.QTypeRevision,
    fromVal: gen_qtyperevision_types.QTypeRevision): gen_qtyperevision_types.QTypeRevision =
  let tmp = gen_qtyperevision_types.QTypeRevision(h: fcQTypeRevision_new2(fromVal.h), owned: true)
  tmp
