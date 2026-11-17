type QTextBoundaryFinder* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qtextboundaryfinder.cpp", QtCoreCFlags).}

proc fcQTextBoundaryFinder_delete(self: pointer) {.importc: "QTextBoundaryFinder_delete".}
proc `=destroy`(self: var QTextBoundaryFinder) =
  if self.owned: fcQTextBoundaryFinder_delete(self.h)

proc `=sink`(dest: var QTextBoundaryFinder, source: QTextBoundaryFinder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextBoundaryFinder, source: QTextBoundaryFinder) {.error.}
proc delete*(self: sink QTextBoundaryFinder) =
  let h = self.h
  wasMoved(self)
  fcQTextBoundaryFinder_delete(h)

