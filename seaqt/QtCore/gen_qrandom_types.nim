type QRandomGenerator* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qrandom.cpp", cflags).}

proc fcQRandomGenerator_delete(self: pointer) {.importc: "QRandomGenerator_delete".}
proc `=destroy`(self: var QRandomGenerator) =
  if self.owned: fcQRandomGenerator_delete(self.h)

proc `=sink`(dest: var QRandomGenerator, source: QRandomGenerator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRandomGenerator, source: QRandomGenerator) {.error.}
proc delete*(self: sink QRandomGenerator) =
  let h = self.h
  wasMoved(self)
  fcQRandomGenerator_delete(h)

type QRandomGenerator64* = object of QRandomGenerator
