type QNetworkProxyQuery* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qnetworkproxy.cpp", QtNetworkCFlags).}

proc fcQNetworkProxyQuery_delete(self: pointer) {.importc: "QNetworkProxyQuery_delete".}
proc `=destroy`(self: var QNetworkProxyQuery) =
  if self.owned: fcQNetworkProxyQuery_delete(self.h)

proc `=sink`(dest: var QNetworkProxyQuery, source: QNetworkProxyQuery) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkProxyQuery, source: QNetworkProxyQuery) {.error.}
proc delete*(self: sink QNetworkProxyQuery) =
  let h = self.h
  wasMoved(self)
  fcQNetworkProxyQuery_delete(h)

type QNetworkProxy* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQNetworkProxy_delete(self: pointer) {.importc: "QNetworkProxy_delete".}
proc `=destroy`(self: var QNetworkProxy) =
  if self.owned: fcQNetworkProxy_delete(self.h)

proc `=sink`(dest: var QNetworkProxy, source: QNetworkProxy) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkProxy, source: QNetworkProxy) {.error.}
proc delete*(self: sink QNetworkProxy) =
  let h = self.h
  wasMoved(self)
  fcQNetworkProxy_delete(h)

type QNetworkProxyFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQNetworkProxyFactory_delete(self: pointer) {.importc: "QNetworkProxyFactory_delete".}
proc `=destroy`(self: var QNetworkProxyFactory) =
  if self.owned: fcQNetworkProxyFactory_delete(self.h)

proc `=sink`(dest: var QNetworkProxyFactory, source: QNetworkProxyFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkProxyFactory, source: QNetworkProxyFactory) {.error.}
proc delete*(self: sink QNetworkProxyFactory) =
  let h = self.h
  wasMoved(self)
  fcQNetworkProxyFactory_delete(h)

