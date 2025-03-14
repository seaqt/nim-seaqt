type QNetworkRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qnetworkrequest.cpp", QtNetworkCFlags).}

proc fcQNetworkRequest_delete(self: pointer) {.importc: "QNetworkRequest_delete".}
proc `=destroy`(self: var QNetworkRequest) =
  if self.owned: fcQNetworkRequest_delete(self.h)

proc `=sink`(dest: var QNetworkRequest, source: QNetworkRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkRequest, source: QNetworkRequest) {.error.}
proc delete*(self: sink QNetworkRequest) =
  let h = self.h
  wasMoved(self)
  fcQNetworkRequest_delete(h)

