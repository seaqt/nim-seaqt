type QDirIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qdiriterator.cpp", cflags).}

proc fcQDirIterator_delete(self: pointer) {.importc: "QDirIterator_delete".}
proc `=destroy`(self: var QDirIterator) =
  if self.owned: fcQDirIterator_delete(self.h)

proc `=sink`(dest: var QDirIterator, source: QDirIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDirIterator, source: QDirIterator) {.error.}
proc delete*(self: sink QDirIterator) =
  let h = self.h
  wasMoved(self)
  fcQDirIterator_delete(h)

