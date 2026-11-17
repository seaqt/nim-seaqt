import ./qtsvg_pkg

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


{.compile("gen_qtsvgglobal.cpp", QtSvgCFlags).}


type QtSvgOptionEnum* = distinct cuint
template NoOption*(_: type QtSvgOptionEnum): untyped = 0
template Tiny12FeaturesOnly*(_: type QtSvgOptionEnum): untyped = 1
template AssumeTrustedSource*(_: type QtSvgOptionEnum): untyped = 2
template DisableSMILAnimations*(_: type QtSvgOptionEnum): untyped = 16
template DisableCSSAnimations*(_: type QtSvgOptionEnum): untyped = 32
template DisableAnimations*(_: type QtSvgOptionEnum): untyped = 240


import ./gen_qtsvgglobal_types
export gen_qtsvgglobal_types




