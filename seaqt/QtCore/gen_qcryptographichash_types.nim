type QCryptographicHash* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qcryptographichash.cpp", cflags).}

proc fcQCryptographicHash_delete(self: pointer) {.importc: "QCryptographicHash_delete".}
proc `=destroy`(self: var QCryptographicHash) =
  if self.owned: fcQCryptographicHash_delete(self.h)

proc `=sink`(dest: var QCryptographicHash, source: QCryptographicHash) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCryptographicHash, source: QCryptographicHash) {.error.}
proc delete*(self: sink QCryptographicHash) =
  let h = self.h
  wasMoved(self)
  fcQCryptographicHash_delete(h)

