type QQmlNetworkAccessManagerFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtqml_pkg

{.compile("gen_qqmlnetworkaccessmanagerfactory.cpp", QtQmlCFlags).}

proc fcQQmlNetworkAccessManagerFactory_delete(self: pointer) {.importc: "QQmlNetworkAccessManagerFactory_delete".}
proc `=destroy`(self: var QQmlNetworkAccessManagerFactory) =
  if self.owned: fcQQmlNetworkAccessManagerFactory_delete(self.h)

proc `=sink`(dest: var QQmlNetworkAccessManagerFactory, source: QQmlNetworkAccessManagerFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlNetworkAccessManagerFactory, source: QQmlNetworkAccessManagerFactory) {.error.}
proc delete*(self: sink QQmlNetworkAccessManagerFactory) =
  let h = self.h
  wasMoved(self)
  fcQQmlNetworkAccessManagerFactory_delete(h)

