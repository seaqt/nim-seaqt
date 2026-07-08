type QNetworkConfiguration* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qnetworkconfiguration.cpp", QtNetworkCFlags).}

proc fcQNetworkConfiguration_delete(self: pointer) {.importc: "QNetworkConfiguration_delete".}
proc `=destroy`(self: var QNetworkConfiguration) =
  if self.owned: fcQNetworkConfiguration_delete(self.h)

proc `=sink`(dest: var QNetworkConfiguration, source: QNetworkConfiguration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkConfiguration, source: QNetworkConfiguration) {.error.}
proc delete*(self: sink QNetworkConfiguration) =
  let h = self.h
  wasMoved(self)
  fcQNetworkConfiguration_delete(h)

