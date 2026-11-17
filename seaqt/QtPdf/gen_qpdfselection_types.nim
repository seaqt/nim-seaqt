type QPdfSelection* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtpdf_pkg

{.compile("gen_qpdfselection.cpp", QtPdfCFlags).}

proc fcQPdfSelection_delete(self: pointer) {.importc: "QPdfSelection_delete".}
proc `=destroy`(self: var QPdfSelection) =
  if self.owned: fcQPdfSelection_delete(self.h)

proc `=sink`(dest: var QPdfSelection, source: QPdfSelection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPdfSelection, source: QPdfSelection) {.error.}
proc delete*(self: sink QPdfSelection) =
  let h = self.h
  wasMoved(self)
  fcQPdfSelection_delete(h)

