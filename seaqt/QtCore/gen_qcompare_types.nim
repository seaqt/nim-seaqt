type QPartialOrdering* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qcompare.cpp", cflags).}

proc fcQPartialOrdering_delete(self: pointer) {.importc: "QPartialOrdering_delete".}
proc `=destroy`(self: var QPartialOrdering) =
  if self.owned: fcQPartialOrdering_delete(self.h)

proc `=sink`(dest: var QPartialOrdering, source: QPartialOrdering) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPartialOrdering, source: QPartialOrdering) {.error.}
proc delete*(self: sink QPartialOrdering) =
  let h = self.h
  wasMoved(self)
  fcQPartialOrdering_delete(h)

