type QPdfOutputIntent* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qpdfoutputintent.cpp", QtGuiCFlags).}

proc fcQPdfOutputIntent_delete(self: pointer) {.importc: "QPdfOutputIntent_delete".}
proc `=destroy`(self: var QPdfOutputIntent) =
  if self.owned: fcQPdfOutputIntent_delete(self.h)

proc `=sink`(dest: var QPdfOutputIntent, source: QPdfOutputIntent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPdfOutputIntent, source: QPdfOutputIntent) {.error.}
proc delete*(self: sink QPdfOutputIntent) =
  let h = self.h
  wasMoved(self)
  fcQPdfOutputIntent_delete(h)

