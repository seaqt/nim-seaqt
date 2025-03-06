type QSslCipher* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qsslcipher.cpp", cflags).}

proc fcQSslCipher_delete(self: pointer) {.importc: "QSslCipher_delete".}
proc `=destroy`(self: var QSslCipher) =
  if self.owned: fcQSslCipher_delete(self.h)

proc `=sink`(dest: var QSslCipher, source: QSslCipher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslCipher, source: QSslCipher) {.error.}
proc delete*(self: sink QSslCipher) =
  let h = self.h
  wasMoved(self)
  fcQSslCipher_delete(h)

