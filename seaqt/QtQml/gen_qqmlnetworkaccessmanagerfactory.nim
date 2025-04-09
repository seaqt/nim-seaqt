import ./Qt6Qml_libs

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
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


import ./gen_qqmlnetworkaccessmanagerfactory_types
export gen_qqmlnetworkaccessmanagerfactory_types


type cQQmlNetworkAccessManagerFactory*{.exportc: "QQmlNetworkAccessManagerFactory", incompleteStruct.} = object

proc fcQQmlNetworkAccessManagerFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlNetworkAccessManagerFactory_operatorAssign".}

proc operatorAssign*(self: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory, param1: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory): void =
  fcQQmlNetworkAccessManagerFactory_operatorAssign(self.h, param1.h)

