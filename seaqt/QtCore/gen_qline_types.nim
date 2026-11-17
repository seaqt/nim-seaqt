type QLine* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qline.cpp", QtCoreCFlags).}

proc fcQLine_delete(self: pointer) {.importc: "QLine_delete".}
proc `=destroy`(self: var QLine) =
  if self.owned: fcQLine_delete(self.h)

proc `=sink`(dest: var QLine, source: QLine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLine, source: QLine) {.error.}
proc delete*(self: sink QLine) =
  let h = self.h
  wasMoved(self)
  fcQLine_delete(h)

type QLineF* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQLineF_delete(self: pointer) {.importc: "QLineF_delete".}
proc `=destroy`(self: var QLineF) =
  if self.owned: fcQLineF_delete(self.h)

proc `=sink`(dest: var QLineF, source: QLineF) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLineF, source: QLineF) {.error.}
proc delete*(self: sink QLineF) =
  let h = self.h
  wasMoved(self)
  fcQLineF_delete(h)

