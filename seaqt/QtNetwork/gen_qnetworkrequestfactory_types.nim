type QNetworkRequestFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qnetworkrequestfactory.cpp", QtNetworkCFlags).}

proc fcQNetworkRequestFactory_delete(self: pointer) {.importc: "QNetworkRequestFactory_delete".}
proc `=destroy`(self: var QNetworkRequestFactory) =
  if self.owned: fcQNetworkRequestFactory_delete(self.h)

proc `=sink`(dest: var QNetworkRequestFactory, source: QNetworkRequestFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkRequestFactory, source: QNetworkRequestFactory) {.error.}
proc delete*(self: sink QNetworkRequestFactory) =
  let h = self.h
  wasMoved(self)
  fcQNetworkRequestFactory_delete(h)

