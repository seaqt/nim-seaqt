type QSGRendererInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
{.compile("gen_qsgrendererinterface.cpp", cflags).}

proc fcQSGRendererInterface_delete(self: pointer) {.importc: "QSGRendererInterface_delete".}
proc `=destroy`(self: var QSGRendererInterface) =
  if self.owned: fcQSGRendererInterface_delete(self.h)

proc `=sink`(dest: var QSGRendererInterface, source: QSGRendererInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGRendererInterface, source: QSGRendererInterface) {.error.}
proc delete*(self: sink QSGRendererInterface) =
  let h = self.h
  wasMoved(self)
  fcQSGRendererInterface_delete(h)

