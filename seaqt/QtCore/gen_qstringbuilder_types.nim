type QAbstractConcatenable* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qstringbuilder.cpp", cflags).}

proc fcQAbstractConcatenable_delete(self: pointer) {.importc: "QAbstractConcatenable_delete".}
proc `=destroy`(self: var QAbstractConcatenable) =
  if self.owned: fcQAbstractConcatenable_delete(self.h)

proc `=sink`(dest: var QAbstractConcatenable, source: QAbstractConcatenable) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractConcatenable, source: QAbstractConcatenable) {.error.}
proc delete*(self: sink QAbstractConcatenable) =
  let h = self.h
  wasMoved(self)
  fcQAbstractConcatenable_delete(h)

