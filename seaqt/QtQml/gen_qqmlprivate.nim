import ./qtqml_pkg

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


{.compile("gen_qqmlprivate.cpp", QtQmlCFlags).}


type QQmlPrivateAutoParentResultEnum* = distinct cint
template Parented*(_: type QQmlPrivateAutoParentResultEnum): untyped = 0
template IncompatibleObject*(_: type QQmlPrivateAutoParentResultEnum): untyped = 1
template IncompatibleParent*(_: type QQmlPrivateAutoParentResultEnum): untyped = 2


type QQmlPrivateRegistrationTypeEnum* = distinct cint
template TypeRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 0
template InterfaceRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 1
template AutoParentRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 2
template SingletonRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 3
template CompositeRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 4
template CompositeSingletonRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 5
template QmlUnitCacheHookRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 6
template TypeAndRevisionsRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 7
template SingletonAndRevisionsRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 8


import ./gen_qqmlprivate_types
export gen_qqmlprivate_types




