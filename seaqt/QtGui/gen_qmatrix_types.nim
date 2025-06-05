type QMatrix* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qmatrix.cpp", QtGuiCFlags).}

proc fcQMatrix_delete(self: pointer) {.importc: "QMatrix_delete".}
proc `=destroy`(self: var QMatrix) =
  if self.owned: fcQMatrix_delete(self.h)

proc `=sink`(dest: var QMatrix, source: QMatrix) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMatrix, source: QMatrix) {.error.}
proc delete*(self: sink QMatrix) =
  let h = self.h
  wasMoved(self)
  fcQMatrix_delete(h)

