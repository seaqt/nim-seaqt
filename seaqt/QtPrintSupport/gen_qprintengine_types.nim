type QPrintEngine* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtprintsupport_pkg

{.compile("gen_qprintengine.cpp", QtPrintSupportCFlags).}

proc fcQPrintEngine_delete(self: pointer) {.importc: "QPrintEngine_delete".}
proc `=destroy`(self: var QPrintEngine) =
  if self.owned: fcQPrintEngine_delete(self.h)

proc `=sink`(dest: var QPrintEngine, source: QPrintEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPrintEngine, source: QPrintEngine) {.error.}
proc delete*(self: sink QPrintEngine) =
  let h = self.h
  wasMoved(self)
  fcQPrintEngine_delete(h)

