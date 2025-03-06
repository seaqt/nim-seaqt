type QStyleFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qstylefactory.cpp", cflags).}

proc fcQStyleFactory_delete(self: pointer) {.importc: "QStyleFactory_delete".}
proc `=destroy`(self: var QStyleFactory) =
  if self.owned: fcQStyleFactory_delete(self.h)

proc `=sink`(dest: var QStyleFactory, source: QStyleFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStyleFactory, source: QStyleFactory) {.error.}
proc delete*(self: sink QStyleFactory) =
  let h = self.h
  wasMoved(self)
  fcQStyleFactory_delete(h)

