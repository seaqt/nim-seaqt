type QHashSeed* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qhashfunctions.cpp", cflags).}

proc fcQHashSeed_delete(self: pointer) {.importc: "QHashSeed_delete".}
proc `=destroy`(self: var QHashSeed) =
  if self.owned: fcQHashSeed_delete(self.h)

proc `=sink`(dest: var QHashSeed, source: QHashSeed) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHashSeed, source: QHashSeed) {.error.}
proc delete*(self: sink QHashSeed) =
  let h = self.h
  wasMoved(self)
  fcQHashSeed_delete(h)

