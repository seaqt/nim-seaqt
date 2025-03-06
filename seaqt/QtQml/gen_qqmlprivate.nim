import ./Qt6Qml_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt6Qml")  & " -fPIC"
{.compile("gen_qqmlprivate.cpp", cflags).}


type QQmlPrivateConstructionModeEnum* = distinct cint
template None*(_: type QQmlPrivateConstructionModeEnum): untyped = 0
template Constructor*(_: type QQmlPrivateConstructionModeEnum): untyped = 1
template Factory*(_: type QQmlPrivateConstructionModeEnum): untyped = 2
template FactoryWrapper*(_: type QQmlPrivateConstructionModeEnum): untyped = 3


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
template SequentialContainerRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 9
template SequentialContainerAndRevisionsRegistration*(_: type QQmlPrivateRegistrationTypeEnum): untyped = 10


type QQmlPrivateAOTCompiledContextEnumEnum* = distinct cuint
template InvalidStringId*(_: type QQmlPrivateAOTCompiledContextEnumEnum): untyped = 4294967295


import ./gen_qqmlprivate_types
export gen_qqmlprivate_types




