type QFactoryInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qfactoryinterface.cpp", cflags).}

proc fcQFactoryInterface_delete(self: pointer) {.importc: "QFactoryInterface_delete".}
proc `=destroy`(self: var QFactoryInterface) =
  if self.owned: fcQFactoryInterface_delete(self.h)

proc `=sink`(dest: var QFactoryInterface, source: QFactoryInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFactoryInterface, source: QFactoryInterface) {.error.}
proc delete*(self: sink QFactoryInterface) =
  let h = self.h
  wasMoved(self)
  fcQFactoryInterface_delete(h)

