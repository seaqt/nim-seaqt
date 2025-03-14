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


{.compile("gen_qiodevicebase.cpp", QtCoreCFlags).}


type QIODeviceBaseOpenModeFlagEnum* = distinct cint
template NotOpen*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 0
template ReadOnly*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 1
template WriteOnly*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 2
template ReadWrite*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 3
template Append*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 4
template Truncate*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 8
template Text*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 16
template Unbuffered*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 32
template NewOnly*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 64
template ExistingOnly*(_: type QIODeviceBaseOpenModeFlagEnum): untyped = 128


import ./gen_qiodevicebase_types
export gen_qiodevicebase_types


type cQIODeviceBase*{.exportc: "QIODeviceBase", incompleteStruct.} = object


