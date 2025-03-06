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
{.compile("gen_qiodevicebase.cpp", cflags).}


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


