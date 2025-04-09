type QNetworkAddressEntry* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qnetworkinterface.cpp", cflags).}

proc fcQNetworkAddressEntry_delete(self: pointer) {.importc: "QNetworkAddressEntry_delete".}
proc `=destroy`(self: var QNetworkAddressEntry) =
  if self.owned: fcQNetworkAddressEntry_delete(self.h)

proc `=sink`(dest: var QNetworkAddressEntry, source: QNetworkAddressEntry) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkAddressEntry, source: QNetworkAddressEntry) {.error.}
proc delete*(self: sink QNetworkAddressEntry) =
  let h = self.h
  wasMoved(self)
  fcQNetworkAddressEntry_delete(h)

type QNetworkInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQNetworkInterface_delete(self: pointer) {.importc: "QNetworkInterface_delete".}
proc `=destroy`(self: var QNetworkInterface) =
  if self.owned: fcQNetworkInterface_delete(self.h)

proc `=sink`(dest: var QNetworkInterface, source: QNetworkInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkInterface, source: QNetworkInterface) {.error.}
proc delete*(self: sink QNetworkInterface) =
  let h = self.h
  wasMoved(self)
  fcQNetworkInterface_delete(h)

