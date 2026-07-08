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


{.compile("gen_qtmocconstants.cpp", QtCoreCFlags).}


type QtMocConstantsEnumEnum* = distinct cint
template OutputRevision*(_: type QtMocConstantsEnumEnum): untyped = 13


type QtMocConstantsPropertyFlagsEnum* = distinct cuint
template Invalid*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 0
template Readable*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 1
template Writable*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 2
template Resettable*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 4
template EnumOrFlag*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 8
template Alias*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 16
template Virtual*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 32
template Override*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 64
template StdCppSet*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 256
template Constant*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 1024
template Final*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 2048
template Designable*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 4096
template Scriptable*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 16384
template Stored*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 65536
template User*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 1048576
template Required*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 16777216
template Bindable*(_: type QtMocConstantsPropertyFlagsEnum): untyped = 33554432


type QtMocConstantsMethodFlagsEnum* = distinct cuint
template AccessPrivate*(_: type QtMocConstantsMethodFlagsEnum): untyped = 0
template AccessProtected*(_: type QtMocConstantsMethodFlagsEnum): untyped = 1
template AccessPublic*(_: type QtMocConstantsMethodFlagsEnum): untyped = 2
template AccessMask*(_: type QtMocConstantsMethodFlagsEnum): untyped = 3
template MethodMethod*(_: type QtMocConstantsMethodFlagsEnum): untyped = 0
template MethodSignal*(_: type QtMocConstantsMethodFlagsEnum): untyped = 4
template MethodSlot*(_: type QtMocConstantsMethodFlagsEnum): untyped = 8
template MethodConstructor*(_: type QtMocConstantsMethodFlagsEnum): untyped = 12
template MethodTypeMask*(_: type QtMocConstantsMethodFlagsEnum): untyped = 12
template MethodCompatibility*(_: type QtMocConstantsMethodFlagsEnum): untyped = 16
template MethodCloned*(_: type QtMocConstantsMethodFlagsEnum): untyped = 32
template MethodScriptable*(_: type QtMocConstantsMethodFlagsEnum): untyped = 64
template MethodRevisioned*(_: type QtMocConstantsMethodFlagsEnum): untyped = 128
template MethodIsConst*(_: type QtMocConstantsMethodFlagsEnum): untyped = 256


type QtMocConstantsMetaObjectFlagEnum* = distinct cuint
template DynamicMetaObject*(_: type QtMocConstantsMetaObjectFlagEnum): untyped = 1
template RequiresVariantMetaObject*(_: type QtMocConstantsMetaObjectFlagEnum): untyped = 2
template PropertyAccessInStaticMetaCall*(_: type QtMocConstantsMetaObjectFlagEnum): untyped = 4
template AllocatedMetaObject*(_: type QtMocConstantsMetaObjectFlagEnum): untyped = 8


type QtMocConstantsMetaDataFlagsEnum* = distinct cuint
template IsUnresolvedType*(_: type QtMocConstantsMetaDataFlagsEnum): untyped = 2147483648
template TypeNameIndexMask*(_: type QtMocConstantsMetaDataFlagsEnum): untyped = 2147483647
template IsUnresolvedSignal*(_: type QtMocConstantsMetaDataFlagsEnum): untyped = 1879048192


type QtMocConstantsEnumFlagsEnum* = distinct cuint
template EnumIsFlag*(_: type QtMocConstantsEnumFlagsEnum): untyped = 1
template EnumIsScoped*(_: type QtMocConstantsEnumFlagsEnum): untyped = 2
template EnumIs64Bit*(_: type QtMocConstantsEnumFlagsEnum): untyped = 64


import ./gen_qtmocconstants_types
export gen_qtmocconstants_types




