type QSslError* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qsslerror.cpp", cflags).}

proc fcQSslError_delete(self: pointer) {.importc: "QSslError_delete".}
proc `=destroy`(self: var QSslError) =
  if self.owned: fcQSslError_delete(self.h)

proc `=sink`(dest: var QSslError, source: QSslError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslError, source: QSslError) {.error.}
proc delete*(self: sink QSslError) =
  let h = self.h
  wasMoved(self)
  fcQSslError_delete(h)

