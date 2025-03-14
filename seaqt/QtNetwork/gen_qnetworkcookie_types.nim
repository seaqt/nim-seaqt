type QNetworkCookie* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qnetworkcookie.cpp", QtNetworkCFlags).}

proc fcQNetworkCookie_delete(self: pointer) {.importc: "QNetworkCookie_delete".}
proc `=destroy`(self: var QNetworkCookie) =
  if self.owned: fcQNetworkCookie_delete(self.h)

proc `=sink`(dest: var QNetworkCookie, source: QNetworkCookie) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkCookie, source: QNetworkCookie) {.error.}
proc delete*(self: sink QNetworkCookie) =
  let h = self.h
  wasMoved(self)
  fcQNetworkCookie_delete(h)

