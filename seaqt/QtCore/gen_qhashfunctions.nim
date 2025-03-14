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


import ./gen_qhashfunctions_types
export gen_qhashfunctions_types


type cQHashSeed*{.exportc: "QHashSeed", incompleteStruct.} = object

proc fcQHashSeed_globalSeed(): pointer {.importc: "QHashSeed_globalSeed".}
proc fcQHashSeed_setDeterministicGlobalSeed(): void {.importc: "QHashSeed_setDeterministicGlobalSeed".}
proc fcQHashSeed_resetRandomGlobalSeed(): void {.importc: "QHashSeed_resetRandomGlobalSeed".}
proc fcQHashSeed_new(): ptr cQHashSeed {.importc: "QHashSeed_new".}
proc fcQHashSeed_new2(d: csize_t): ptr cQHashSeed {.importc: "QHashSeed_new2".}

proc globalSeed*(_: type gen_qhashfunctions_types.QHashSeed): gen_qhashfunctions_types.QHashSeed =
  gen_qhashfunctions_types.QHashSeed(h: fcQHashSeed_globalSeed(), owned: true)

proc setDeterministicGlobalSeed*(_: type gen_qhashfunctions_types.QHashSeed): void =
  fcQHashSeed_setDeterministicGlobalSeed()

proc resetRandomGlobalSeed*(_: type gen_qhashfunctions_types.QHashSeed): void =
  fcQHashSeed_resetRandomGlobalSeed()

proc create*(T: type gen_qhashfunctions_types.QHashSeed): gen_qhashfunctions_types.QHashSeed =
  gen_qhashfunctions_types.QHashSeed(h: fcQHashSeed_new(), owned: true)

proc create*(T: type gen_qhashfunctions_types.QHashSeed,
    d: csize_t): gen_qhashfunctions_types.QHashSeed =
  gen_qhashfunctions_types.QHashSeed(h: fcQHashSeed_new2(d), owned: true)

