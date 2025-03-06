type QSslKey* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qsslkey.cpp", cflags).}

proc fcQSslKey_delete(self: pointer) {.importc: "QSslKey_delete".}
proc `=destroy`(self: var QSslKey) =
  if self.owned: fcQSslKey_delete(self.h)

proc `=sink`(dest: var QSslKey, source: QSslKey) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslKey, source: QSslKey) {.error.}
proc delete*(self: sink QSslKey) =
  let h = self.h
  wasMoved(self)
  fcQSslKey_delete(h)

