type QPdfDestination* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtpdf_pkg

{.compile("gen_qpdfdestination.cpp", QtPdfCFlags).}

proc fcQPdfDestination_delete(self: pointer) {.importc: "QPdfDestination_delete".}
proc `=destroy`(self: var QPdfDestination) =
  if self.owned: fcQPdfDestination_delete(self.h)

proc `=sink`(dest: var QPdfDestination, source: QPdfDestination) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPdfDestination, source: QPdfDestination) {.error.}
proc delete*(self: sink QPdfDestination) =
  let h = self.h
  wasMoved(self)
  fcQPdfDestination_delete(h)

