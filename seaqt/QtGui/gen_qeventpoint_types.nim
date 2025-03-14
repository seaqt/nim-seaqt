type QEventPoint* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qeventpoint.cpp", QtGuiCFlags).}

proc fcQEventPoint_delete(self: pointer) {.importc: "QEventPoint_delete".}
proc `=destroy`(self: var QEventPoint) =
  if self.owned: fcQEventPoint_delete(self.h)

proc `=sink`(dest: var QEventPoint, source: QEventPoint) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QEventPoint, source: QEventPoint) {.error.}
proc delete*(self: sink QEventPoint) =
  let h = self.h
  wasMoved(self)
  fcQEventPoint_delete(h)

