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


import ./gen_qqmlnetworkaccessmanagerfactory_types
export gen_qqmlnetworkaccessmanagerfactory_types

import
  ../QtCore/gen_qobject_types,
  ../QtNetwork/gen_qnetworkaccessmanager_types
export
  gen_qobject_types,
  gen_qnetworkaccessmanager_types

type cQQmlNetworkAccessManagerFactory*{.exportc: "QQmlNetworkAccessManagerFactory", incompleteStruct.} = object

proc fcQQmlNetworkAccessManagerFactory_create(self: pointer, parent: pointer): pointer {.importc: "QQmlNetworkAccessManagerFactory_create".}
proc fcQQmlNetworkAccessManagerFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlNetworkAccessManagerFactory_operatorAssign".}

proc create*(self: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory, parent: gen_qobject_types.QObject): gen_qnetworkaccessmanager_types.QNetworkAccessManager =
  gen_qnetworkaccessmanager_types.QNetworkAccessManager(h: fcQQmlNetworkAccessManagerFactory_create(self.h, parent.h), owned: false)

proc operatorAssign*(self: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory, param1: gen_qqmlnetworkaccessmanagerfactory_types.QQmlNetworkAccessManagerFactory): void =
  fcQQmlNetworkAccessManagerFactory_operatorAssign(self.h, param1.h)

