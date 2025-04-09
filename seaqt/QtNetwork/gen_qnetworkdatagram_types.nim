type QNetworkDatagram* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qnetworkdatagram.cpp", cflags).}

proc fcQNetworkDatagram_delete(self: pointer) {.importc: "QNetworkDatagram_delete".}
proc `=destroy`(self: var QNetworkDatagram) =
  if self.owned: fcQNetworkDatagram_delete(self.h)

proc `=sink`(dest: var QNetworkDatagram, source: QNetworkDatagram) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QNetworkDatagram, source: QNetworkDatagram) {.error.}
proc delete*(self: sink QNetworkDatagram) =
  let h = self.h
  wasMoved(self)
  fcQNetworkDatagram_delete(h)

