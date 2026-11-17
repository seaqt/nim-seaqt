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


import ./gen_qlatin1stringmatcher_types
export gen_qlatin1stringmatcher_types


type cQLatin1StringMatcher*{.exportc: "QLatin1StringMatcher", incompleteStruct.} = object

proc fcQLatin1StringMatcher_setCaseSensitivity(self: pointer, cs: cint): void {.importc: "QLatin1StringMatcher_setCaseSensitivity".}
proc fcQLatin1StringMatcher_caseSensitivity(self: pointer): cint {.importc: "QLatin1StringMatcher_caseSensitivity".}
proc fcQLatin1StringMatcher_new(): ptr cQLatin1StringMatcher {.importc: "QLatin1StringMatcher_new".}

proc setCaseSensitivity*(self: gen_qlatin1stringmatcher_types.QLatin1StringMatcher, cs: cint): void =
  fcQLatin1StringMatcher_setCaseSensitivity(self.h, cint(cs))

proc caseSensitivity*(self: gen_qlatin1stringmatcher_types.QLatin1StringMatcher): cint =
  cint(fcQLatin1StringMatcher_caseSensitivity(self.h))

proc create*(T: type gen_qlatin1stringmatcher_types.QLatin1StringMatcher): gen_qlatin1stringmatcher_types.QLatin1StringMatcher =
  let tmp = gen_qlatin1stringmatcher_types.QLatin1StringMatcher(h: fcQLatin1StringMatcher_new(), owned: true)
  tmp
