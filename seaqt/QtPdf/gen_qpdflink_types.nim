type QPdfLink* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtpdf_pkg

{.compile("gen_qpdflink.cpp", QtPdfCFlags).}

proc fcQPdfLink_delete(self: pointer) {.importc: "QPdfLink_delete".}
proc `=destroy`(self: var QPdfLink) =
  if self.owned: fcQPdfLink_delete(self.h)

proc `=sink`(dest: var QPdfLink, source: QPdfLink) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPdfLink, source: QPdfLink) {.error.}
proc delete*(self: sink QPdfLink) =
  let h = self.h
  wasMoved(self)
  fcQPdfLink_delete(h)

