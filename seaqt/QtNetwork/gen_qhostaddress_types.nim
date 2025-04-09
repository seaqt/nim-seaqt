type QIPv6Address* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qhostaddress.cpp", cflags).}

proc fcQIPv6Address_delete(self: pointer) {.importc: "QIPv6Address_delete".}
proc `=destroy`(self: var QIPv6Address) =
  if self.owned: fcQIPv6Address_delete(self.h)

proc `=sink`(dest: var QIPv6Address, source: QIPv6Address) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QIPv6Address, source: QIPv6Address) {.error.}
proc delete*(self: sink QIPv6Address) =
  let h = self.h
  wasMoved(self)
  fcQIPv6Address_delete(h)

type QHostAddress* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQHostAddress_delete(self: pointer) {.importc: "QHostAddress_delete".}
proc `=destroy`(self: var QHostAddress) =
  if self.owned: fcQHostAddress_delete(self.h)

proc `=sink`(dest: var QHostAddress, source: QHostAddress) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHostAddress, source: QHostAddress) {.error.}
proc delete*(self: sink QHostAddress) =
  let h = self.h
  wasMoved(self)
  fcQHostAddress_delete(h)

