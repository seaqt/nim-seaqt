type QSslEllipticCurve* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qsslellipticcurve.cpp", cflags).}

proc fcQSslEllipticCurve_delete(self: pointer) {.importc: "QSslEllipticCurve_delete".}
proc `=destroy`(self: var QSslEllipticCurve) =
  if self.owned: fcQSslEllipticCurve_delete(self.h)

proc `=sink`(dest: var QSslEllipticCurve, source: QSslEllipticCurve) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslEllipticCurve, source: QSslEllipticCurve) {.error.}
proc delete*(self: sink QSslEllipticCurve) =
  let h = self.h
  wasMoved(self)
  fcQSslEllipticCurve_delete(h)

