type QSurface* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qsurface.cpp", QtGuiCFlags).}

proc fcQSurface_delete(self: pointer) {.importc: "QSurface_delete".}
proc `=destroy`(self: var QSurface) =
  if self.owned: fcQSurface_delete(self.h)

proc `=sink`(dest: var QSurface, source: QSurface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSurface, source: QSurface) {.error.}
proc delete*(self: sink QSurface) =
  let h = self.h
  wasMoved(self)
  fcQSurface_delete(h)

