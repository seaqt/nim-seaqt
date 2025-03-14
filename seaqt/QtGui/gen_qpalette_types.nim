type QPalette* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qpalette.cpp", QtGuiCFlags).}

proc fcQPalette_delete(self: pointer) {.importc: "QPalette_delete".}
proc `=destroy`(self: var QPalette) =
  if self.owned: fcQPalette_delete(self.h)

proc `=sink`(dest: var QPalette, source: QPalette) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPalette, source: QPalette) {.error.}
proc delete*(self: sink QPalette) =
  let h = self.h
  wasMoved(self)
  fcQPalette_delete(h)

