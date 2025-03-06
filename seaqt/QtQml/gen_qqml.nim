import ./Qt6Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqml.cpp", cflags).}


type QQmlModuleImportSpecialVersionsEnum* = distinct cint
template QQmlModuleImportModuleAny*(_: type QQmlModuleImportSpecialVersionsEnum): untyped = -1
template QQmlModuleImportLatest*(_: type QQmlModuleImportSpecialVersionsEnum): untyped = -1
template QQmlModuleImportAuto*(_: type QQmlModuleImportSpecialVersionsEnum): untyped = -2


import ./gen_qqml_types
export gen_qqml_types




